//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Kaktus.DB
{
    using System;
    using System.Collections.Generic;
    
    public partial class Vistavka
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Vistavka()
        {
            this.Vistavka_Caktusov = new HashSet<Vistavka_Caktusov>();
        }
    
        public int Vistavka_ID { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string Mesto { get; set; }
        public string Nagrada { get; set; }
        public string Koment { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Vistavka_Caktusov> Vistavka_Caktusov { get; set; }
    }
}
