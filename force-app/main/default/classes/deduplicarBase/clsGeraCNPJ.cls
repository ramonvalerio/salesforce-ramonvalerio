public with sharing class clsGeraCNPJ {

    public clsGeraCNPJ() {

    }

    public static Integer mod(Integer dividendo,integer divisor) 
    {
        return Math.round(dividendo - (Math.floor(dividendo / divisor) * divisor));
    }

    public static Integer randomiza(integer n) {
        Integer ranNum = Math.round(Math.random() * n);
        return ranNum;
    }

    public static String gerarCNPJ(boolean comPontos) {
        
        //var comPontos = true;
        String cnpj='';
        Integer n = 9;
        Integer n1 = randomiza(n);
        Integer n2 = randomiza(n);
        Integer n3 = randomiza(n);
        Integer n4 = randomiza(n);
        Integer n5 = randomiza(n);
        Integer n6 = randomiza(n);
        Integer n7 = randomiza(n);
        Integer n8 = randomiza(n);
        Integer n9 = 0; //randomiza(n);
        Integer n10 = 0; //randomiza(n);
        Integer n11 = 0; //randomiza(n);
        Integer n12 = 1; //randomiza(n);
        Integer d1 = n12 * 2 + n11 * 3 + n10 * 4 + n9 * 5 + n8 * 
        6 + n7 * 7 + n6 * 8 + n5 * 9 + n4 * 2 + n3 * 3 + n2 * 4 + n1 * 5;

        d1 = 11 - ( mod(d1,11) );
        
        if (d1 >= 10) 
            d1 = 0;

        integer d2 = d1 * 2 + n12 * 3 + n11 * 4 + n10 * 5 + n9 * 6 + n8 * 7 + n7 * 
        8 + n6 * 9+ n5 * 2 + n4 * 3 + n3 * 4 + n2 * 5 + n1 * 6;

        d2 = 11 - ( mod(d2,11) );

        if (d2 >= 10) 
            d2 = 0;

        string retorno = '';

        if (comPontos)
        {
            cnpj = ''+ n1 + n2 +'.'+ n3 + n4 + n5 + '.' + n6 + n7 + n8 + '/' + 
            n9 + n10 + n11 + n12 + '-' + d1 + d2;
        }
        else
        {
            cnpj = '' + n1 + n2 + n3 + n4 + n5 + n6 + n7 + n8 + n9 + n10 + 
            n11 + n12 + d1 + d2;
        }
        
        return cnpj;
    }
}