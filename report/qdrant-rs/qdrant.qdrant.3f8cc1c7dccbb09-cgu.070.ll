Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.070?download=true
inline.NumInlined: 575
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8Settings17validate_and_warn:bb.a
  br i1 %i.oy, label %bb.it, label %bb.e

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  store ptr @94, ptr %i.dd, align 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4123.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  store ptr @98, ptr %i.dc, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 16, ptr %i.oz, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr @98, ptr %i.pa, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store i64 16, ptr %i.pb, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store ptr @97, ptr %i.pc, align 8
  call void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @95, ptr noundef nonnull %i.dd, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %bb.e

bb.iu:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  store ptr @98, ptr %i.de, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 16, ptr %i.pd, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr @98, ptr %i.pe, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store i64 16, ptr %i.pf, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store ptr @100, ptr %i.pg, align 8
  call void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @99, ptr noundef nonnull inttoptr (i64 127 to ptr), i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  br label %bb.e

bb.iv:                                            ; preds = %_RNvXsu_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8SettingsNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate.exit
  invoke void @_RNvNtNtCsPYQCUnoTxQ_10collection10operations10validation22warn_validation_errors(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.db)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEECsl8OoimOLbh_6qdrant.exit136 unwind label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.ph = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.db)
          to label %common.resume unwind label %bb.ix

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEECsl8OoimOLbh_6qdrant.exit136: ; preds = %bb.iv
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.db)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvXsu_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8SettingsNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate.exit, %_RNvXsu_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8SettingsNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEECsl8OoimOLbh_6qdrant.exit136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  ret void

bb.ix:                                            ; preds = %bb.iw
  %i.pi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.iy:                                            ; preds = %bb.je, %bb.jf, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  store ptr @13, ptr %i.di, align 8, !captures !689
  store i64 11, ptr %i.dm, align 8
  %i.pj = load i64, ptr %i.dk, align 8, !range !5, !noundef !6
  %.not132.1 = icmp ne i64 %i.pj, -1
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.pl = load i64, ptr %i.pk, align 8
  %i.pm = icmp eq i64 %i.pl, 0
  %or.cond163 = select i1 %.not132.1, i1 %i.pm, i1 false
  br i1 %or.cond163, label %bb.iz, label %bb.jb

bb.iz:                                            ; preds = %bb.iy
  %i.pn = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.po = icmp ult i64 %i.pn, 6
  call void @llvm.assume(i1 %i.po)
  %i.pp = icmp samesign ugt i64 %i.pn, 1
  br i1 %i.pp, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  store ptr %i.di, ptr %i.dh, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.481.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  store ptr @98, ptr %i.dg, align 8
  store i64 16, ptr %i.dn, align 8
  store ptr @98, ptr %i.do, align 8
  store i64 16, ptr %i.dp, align 8
  store ptr @103, ptr %i.dq, align 8
  call void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @102, ptr noundef nonnull %i.dh, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  br label %bb.jb

bb.jb:                                            ; preds = %bb.iy, %bb.iz, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  store ptr @14, ptr %i.di, align 8, !captures !689
  store i64 17, ptr %i.dm, align 8
  %i.pq = load i64, ptr %i.dl, align 8, !range !5, !noundef !6
  %.not132.2 = icmp ne i64 %i.pq, -1
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ps = load i64, ptr %i.pr, align 8
  %i.pt = icmp eq i64 %i.ps, 0
  %or.cond166 = select i1 %.not132.2, i1 %i.pt, i1 false
  br i1 %or.cond166, label %bb.jc, label %_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReRINtNtBb_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEEE4nextCsl8OoimOLbh_6qdrant.exit.thread

bb.jc:                                            ; preds = %bb.jb
  %i.pu = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.pv = icmp ult i64 %i.pu, 6
  call void @llvm.assume(i1 %i.pv)
  %i.pw = icmp samesign ugt i64 %i.pu, 1
  br i1 %i.pw, label %bb.jd, label %_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReRINtNtBb_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEEE4nextCsl8OoimOLbh_6qdrant.exit.thread

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  store ptr %i.di, ptr %i.dh, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.481.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  store ptr @98, ptr %i.dg, align 8
  store i64 16, ptr %i.dn, align 8
  store ptr @98, ptr %i.do, align 8
  store i64 16, ptr %i.dp, align 8
  store ptr @103, ptr %i.dq, align 8
  call void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @102, ptr noundef nonnull %i.dh, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  br label %_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReRINtNtBb_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEEE4nextCsl8OoimOLbh_6qdrant.exit.thread

bb.je:                                            ; preds = %bb.a
  %i.px = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.py = icmp ult i64 %i.px, 6
  tail call void @llvm.assume(i1 %i.py)
  %i.pz = icmp samesign ugt i64 %i.px, 1
  br i1 %i.pz, label %bb.jf, label %bb.iy

bb.jf:                                            ; preds = %bb.je
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  store ptr %i.di, ptr %i.dh, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.481.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  store ptr @98, ptr %i.dg, align 8
  store i64 16, ptr %i.dn, align 8
  store ptr @98, ptr %i.do, align 8
  store i64 16, ptr %i.dp, align 8
  store ptr @103, ptr %i.dq, align 8
  call void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @102, ptr noundef nonnull %i.dh, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  br label %bb.iy
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8Settings29tls_config_is_undefined_error() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 51) #21
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8Settings3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2048 x i8]) align 16 captures(none) dereferenceable(2048) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [224 x i8], align 16              ; 7 uses
  %i.c = alloca [1088 x i8], align 16             ; 6 uses
  %i.d = alloca [112 x i8], align 16              ; 6 uses
  %i.e = alloca [112 x i8], align 16              ; 6 uses
  %i.f = alloca [112 x i8], align 16              ; 6 uses
  %i.g = alloca [224 x i8], align 16              ; 7 uses
  %i.h = alloca [1088 x i8], align 16             ; 6 uses
  %i.i = alloca [208 x i8], align 16              ; 6 uses
  %.sroa.0209.i.i.i.i = alloca [1280 x i8], align 8 ; 5 uses
  %.sroa.3152.i.i.i.i = alloca [104 x i8], align 8 ; 5 uses
  %.sroa.4154.i.i.i.i = alloca [112 x i8], align 16 ; 5 uses
  %.sroa.5158.sroa.6.i.i.i.i = alloca [3 x i8], align 1 ; 4 uses
  %.sroa.11.i8.i.i.i = alloca [6 x i8], align 2   ; 4 uses
  %.sroa.3407.i.i.i.i = alloca [80 x i8], align 8 ; 4 uses
  %.sroa.3197.i.i.i.i = alloca [56 x i8], align 8 ; 4 uses
  %.sroa.3201.i.i.i.i = alloca [80 x i8], align 8 ; 4 uses
  %.sroa.3412.i.i.i.i = alloca [96 x i8], align 8 ; 4 uses
  %.sroa.3207.i.i.i.i = alloca [32 x i8], align 8 ; 4 uses
  %i.j = alloca [1080 x i8], align 8              ; 7 uses
  %i.k = alloca [200 x i8], align 8               ; 17 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [96 x i8], align 16               ; 6 uses
  %i.n = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.0131.i.i.i.i = alloca [72 x i8], align 16 ; 7 uses
  %i.o = alloca [96 x i8], align 16               ; 4 uses
  %i.p = alloca [96 x i8], align 16               ; 9 uses
  %i.q = alloca [96 x i8], align 16               ; 4 uses
  %i.r = alloca [96 x i8], align 16               ; 4 uses
  %i.s = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.097.i.i.i.i = alloca [72 x i8], align 16 ; 7 uses
  %i.t = alloca [96 x i8], align 16               ; 4 uses
  %i.u = alloca [96 x i8], align 16               ; 4 uses
  %i.v = alloca [96 x i8], align 16               ; 4 uses
  %i.w = alloca [96 x i8], align 16               ; 8 uses
  %i.x = alloca [96 x i8], align 16               ; 4 uses
  %i.y = alloca [112 x i8], align 16              ; 20 uses
  %.sroa.571.sroa.5.sroa.7.sroa.10.i.i.i.i = alloca [3 x i8], align 1 ; 7 uses
  %.sroa.571.sroa.5.sroa.13.i.i.i.i = alloca [6 x i8], align 2 ; 7 uses
  %.sroa.568.sroa.2.sroa.5.i.i.i.i = alloca [3 x i8], align 1 ; 4 uses
  %.sroa.568.sroa.8.i.i.i.i = alloca [6 x i8], align 2 ; 4 uses
  %i.z = alloca [96 x i8], align 16               ; 4 uses
  %i.aa = alloca [96 x i8], align 16              ; 4 uses
  %i.ab = alloca [96 x i8], align 16              ; 4 uses
  %i.ac = alloca [96 x i8], align 16              ; 4 uses
  %i.ad = alloca [96 x i8], align 16              ; 8 uses
  %.sroa.037.i.i.i.i = alloca [72 x i8], align 16 ; 7 uses
  %i.ae = alloca [96 x i8], align 16              ; 4 uses
  %i.af = alloca [96 x i8], align 16              ; 8 uses
  %i.ag = alloca [40 x i8], align 8               ; 19 uses
  %i.ah = alloca [88 x i8], align 8               ; 15 uses
  %i.ai = alloca [64 x i8], align 8               ; 15 uses
  %i.aj = alloca [104 x i8], align 8              ; 15 uses
  %i.ak = alloca [88 x i8], align 8               ; 15 uses
  %i.al = alloca [224 x i8], align 8              ; 16 uses
  %i.am = alloca [1080 x i8], align 8             ; 15 uses
  %i.an = alloca [200 x i8], align 8              ; 15 uses
  %i.ao = alloca [24 x i8], align 8               ; 19 uses
  %i.ap = alloca [224 x i8], align 16             ; 7 uses
  %.sroa.0174.i.i.i.i = alloca [1504 x i8], align 8 ; 6 uses
  %.sroa.3173.i.i.i.i = alloca [32 x i8], align 8 ; 4 uses
  %.sroa.0157.sroa.7.i.i.i.i = alloca [32 x i8], align 8 ; 5 uses
  %i.aq = alloca [96 x i8], align 16              ; 9 uses
  %i.ar = alloca [96 x i8], align 16              ; 9 uses
  %.sroa.5130.sroa.5.i.i.i.i = alloca [96 x i8], align 16 ; 6 uses
  %i.as = alloca [112 x i8], align 16             ; 8 uses
  %i.at = alloca [88 x i8], align 8               ; 8 uses
  %.sroa.0111.sroa.7.i.i.i.i = alloca [56 x i8], align 8 ; 5 uses
  %i.au = alloca [96 x i8], align 16              ; 9 uses
  %i.av = alloca [64 x i8], align 8               ; 8 uses
  %i.aw = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.5104.sroa.5.i.i.i.i = alloca [96 x i8], align 16 ; 6 uses
  %i.ax = alloca [112 x i8], align 16             ; 8 uses
  %i.ay = alloca [104 x i8], align 8              ; 8 uses
  %i.az = alloca [96 x i8], align 16              ; 4 uses
  %.sroa.596.sroa.5.i.i.i.i = alloca [96 x i8], align 16 ; 6 uses
  %i.ba = alloca [112 x i8], align 16             ; 8 uses
  %i.bb = alloca [88 x i8], align 8               ; 8 uses
  %i.bc = alloca [96 x i8], align 16              ; 8 uses
  %.sroa.547.sroa.6.i.i.i.i = alloca [3 x i8], align 1 ; 4 uses
  %.sroa.11.i.i.i.i = alloca [6 x i8], align 2    ; 4 uses
  %.sroa.540.sroa.5.sroa.7.sroa.10.i.i.i.i = alloca [3 x i8], align 1 ; 6 uses
  %.sroa.540.sroa.5.sroa.13.i.i.i.i = alloca [6 x i8], align 2 ; 6 uses
  %i.bd = alloca [112 x i8], align 16             ; 29 uses
  %i.be = alloca [96 x i8], align 16              ; 4 uses
  %i.bf = alloca [224 x i8], align 8              ; 9 uses
  %i.bg = alloca [96 x i8], align 16              ; 4 uses
  %.sroa.520.sroa.5.i.i.i.i = alloca [1072 x i8], align 16 ; 6 uses
  %i.bh = alloca [1088 x i8], align 16            ; 8 uses
  %i.bi = alloca [1080 x i8], align 8             ; 8 uses
  %.sroa.512.sroa.5.i.i.i.i = alloca [192 x i8], align 16 ; 6 uses
  %i.bj = alloca [208 x i8], align 16             ; 8 uses
  %i.bk = alloca [200 x i8], align 8              ; 17 uses
  %.sroa.0.sroa.7.i.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.bl = alloca [96 x i8], align 16              ; 9 uses
  %i.bm = alloca [24 x i8], align 8               ; 10 uses
  %i.bn = alloca [24 x i8], align 8               ; 5 uses
  %i.bo = alloca [24 x i8], align 8               ; 5 uses
  %i.bp = alloca [24 x i8], align 8               ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 4 uses
  %i.bs = alloca [32 x i8], align 8               ; 23 uses
  %.sroa.010 = alloca [192 x i8], align 16        ; 7 uses
  %i.bt = alloca [40 x i8], align 8               ; 21 uses
  %i.bu = alloca [24 x i8], align 8               ; 4 uses
  %i.bv = alloca [96 x i8], align 16              ; 15 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [32 x i8], align 8               ; 7 uses
  %i.by = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.517 = alloca [1936 x i8], align 16       ; 4 uses
  %i.bz = alloca [224 x i8], align 16             ; 8 uses
  %i.ca = alloca [120 x i8], align 8              ; 4 uses
  %i.cb = alloca [224 x i8], align 16             ; 8 uses
  %i.cc = alloca [2048 x i8], align 16            ; 219 uses
  %.sroa.66 = alloca [104 x i8], align 8          ; 6 uses
  %i.cd = alloca [2048 x i8], align 8             ; 9 uses
  %i.ce = alloca [176 x i8], align 8              ; 4 uses
  %i.cf = alloca [176 x i8], align 8              ; 4 uses
  %i.cg = alloca [120 x i8], align 8              ; 5 uses
  %i.ch = alloca [120 x i8], align 8              ; 4 uses
  %i.ci = alloca [32 x i8], align 8               ; 3 uses
  %i.cj = alloca [120 x i8], align 8              ; 5 uses
  %i.ck = alloca [120 x i8], align 8              ; 4 uses
  %i.cl = alloca [24 x i8], align 8               ; 9 uses
  %i.cm = alloca [32 x i8], align 8               ; 3 uses
  %i.cn = alloca [32 x i8], align 8               ; 3 uses
  %i.co = alloca [32 x i8], align 8               ; 3 uses
  %i.cp = alloca [32 x i8], align 8               ; 4 uses
  %i.cq = alloca [120 x i8], align 8              ; 5 uses
  %i.cr = alloca [120 x i8], align 8              ; 5 uses
  %i.cs = alloca [120 x i8], align 8              ; 5 uses
  %i.ct = alloca [120 x i8], align 8              ; 5 uses
  %i.cu = alloca [120 x i8], align 8              ; 10 uses
  %i.cv = alloca [56 x i8], align 8               ; 10 uses
  %i.cw = alloca [16 x i8], align 8               ; 5 uses
  %i.cx = alloca [24 x i8], align 8               ; 4 uses
  %i.cy = alloca [24 x i8], align 8               ; 13 uses
  %i.cz = alloca [32 x i8], align 8               ; 5 uses
  %i.da = alloca [24 x i8], align 8               ; 15 uses
  %i.db = alloca [16 x i8], align 8               ; 5 uses
  %i.dc = alloca [24 x i8], align 8               ; 2 uses
  %i.dd = alloca [32 x i8], align 8               ; 6 uses
  %i.de = alloca [8 x i8], align 8                ; 4 uses
  %i.df = alloca [24 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  store i64 0, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 4 uses
  store i64 0, ptr %i.dh, align 8
  %i.di = load i64, ptr %1, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %i.di, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  store ptr %1, ptr %i.de, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !6, !noundef !6
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !6
  %i.dn = invoke fastcc noundef zeroext i1 @_RNCNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB7_8Settings3new0B9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dm)
          to label %bb.e unwind label %.body.thread144

.sink.split:                                      ; preds = %bb.e, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  invoke void @_RINvNtCsG258MDvU3F_3std3env3varReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 8)
          to label %bb.k unwind label %.body.thread144

bb.d:                                             ; preds = %.body102
  br i1 %.sroa.025.2, label %.body.thread, label %.body.thread139

.body.thread144:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i123, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant.exit.i.i, %bb.c, %bb.b, %bb.f
  %.sroa.026.1.ph = phi i1 [ true, %bb.f ], [ true, %bb.b ], [ true, %bb.c ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant.exit.i.i ], [ %.not74, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i123 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i107
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread139

bb.e:                                             ; preds = %bb.b
  br i1 %i.dn, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  store ptr %i.de, ptr %i.db, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.430.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dc, ptr noundef nonnull @105, ptr noundef nonnull %i.db)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit unwind label %.body.thread144

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false)
  store i64 1, ptr %i.dd, align 8
  %i.dp = load i64, ptr %i.dh, align 8, !alias.scope !816, !noalias !817, !noundef !6 ; 3 uses
  %i.dq = load i64, ptr %i.df, align 8, !range !11, !alias.scope !816, !noalias !817, !noundef !6
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsl8OoimOLbh_6qdrant8settings6LogMsgE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %bb.j unwind label %bb.h, !noalias !817

bb.h:                                             ; preds = %bb.g
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl8OoimOLbh_6qdrant8settings6LogMsgEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dd) #18
          to label %.body.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.j:                                             ; preds = %bb.g, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit
  %i.du = load ptr, ptr %i.dg, align 8, !alias.scope !816, !noalias !817, !nonnull !6, !noundef !6
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.du, i64 %i.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i64 32, i1 false)
  %i.dw = add i64 %i.dp, 1
  store i64 %i.dw, ptr %i.dh, align 8, !alias.scope !816, !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %.sink.split

bb.k:                                             ; preds = %bb.c
  %i.dx = load i64, ptr %i.cz, align 8, !range !10, !noundef !6
  %i.dy = trunc nuw i64 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  br i1 %i.dy, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !820
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bw, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.n unwind label %bb.m, !noalias !820

bb.m:                                             ; preds = %bb.o, %bb.l
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env8VarErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by) #18
          to label %.body.thread unwind label %bb.u, !noalias !818

bb.n:                                             ; preds = %bb.l
  %i.eb = load i64, ptr %i.bw, align 8, !range !10, !noalias !820, !noundef !6
  %i.ec = trunc nuw i64 %i.eb to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !821, !noalias !820, !noundef !6 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  br i1 %i.ec, label %bb.o, label %bb.p, !prof !17

bb.o:                                             ; preds = %bb.n
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !820
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ee, i64 %i.eg) #22
          to label %bb.t unwind label %bb.m, !noalias !820

bb.p:                                             ; preds = %bb.n
  %i.eh = load ptr, ptr %i.ef, align 8, !noalias !820, !nonnull !6, !noundef !6 ; 2 uses
  %i.ei = icmp samesign ugt i64 %i.ee, 10
  call void @llvm.assume(i1 %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !820
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.eh, ptr noundef nonnull align 1 dereferenceable(11) @91, i64 11, i1 false), !noalias !820
  store i64 %i.ee, ptr %i.da, align 8, !alias.scope !818, !noalias !819
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.eh, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !818, !noalias !819
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i64 11, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !818, !noalias !819
  %i.ej = load i64, ptr %i.by, align 8, !range !5, !alias.scope !822, !noalias !818, !noundef !6
  %i.ek = icmp eq i64 %i.ej, -1
  br i1 %i.ek, label %_RNCNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB7_8Settings3news_0B9_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.r, !noalias !818

bb.r:                                             ; preds = %bb.q
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body.thread unwind label %bb.s, !noalias !818

bb.s:                                             ; preds = %bb.r
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !818
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RNCNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB7_8Settings3news_0B9_.exit unwind label %.body.thread144

bb.t:                                             ; preds = %bb.o
  unreachable

bb.u:                                             ; preds = %bb.m
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !818
  unreachable

bb.v:                                             ; preds = %bb.k
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8Settings3new:bb.a
bb.ea:                                            ; preds = %bb.dw, %bb.du
  %.sink.i.i.i = phi i64 [ %i.jy, %bb.dw ], [ %i.jv, %bb.du ]
  %.sroa.6366.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  store i64 %.sink.i.i.i, ptr %.sroa.6366.0..sroa_idx.i.i.i.i, align 8, !alias.scope !849, !noalias !848
  store i64 2, ptr %i.cc, align 16, !alias.scope !849, !noalias !848
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEB11_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.at)
          to label %bb.eb unwind label %bb.do, !noalias !831

bb.eb:                                            ; preds = %bb.ea, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !847
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEB15_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.av)
          to label %bb.ed unwind label %bb.di, !noalias !831

bb.ec:                                            ; preds = %bb.ee, %bb.dt, %bb.dn, %bb.dh, %bb.db, %bb.co, %bb.ci, %bb.cb, %bb.bu, %.body.i.i.i.i
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !831
  unreachable

bb.ed:                                            ; preds = %bb.eb, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !847
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsl8OoimOLbh_6qdrant8settings6LogMsgEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw)
          to label %bb.eg unwind label %bb.ef, !noalias !831

bb.ee:                                            ; preds = %bb.ef, %bb.dh
  %.pn389.i.i.i.i = phi { ptr, i32 } [ %i.kb, %bb.ef ], [ %.pn387.i.i.i.i, %bb.dh ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ay) #18
          to label %bb.db unwind label %bb.ec, !noalias !831

bb.ef:                                            ; preds = %bb.ed
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.eg:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !847
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ay)
          to label %bb.eh unwind label %bb.dc, !noalias !831

bb.eh:                                            ; preds = %bb.eg, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !847
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEB11_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.bb)
          to label %bb.ei unwind label %bb.cp, !noalias !831

bb.ei:                                            ; preds = %bb.eh, %bb.da, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !847
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.cu, %bb.cq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.bf)
          to label %bb.ek unwind label %bb.cj, !noalias !831

bb.ek:                                            ; preds = %bb.ej, %bb.cn, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !847
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1080) %i.bi)
          to label %bb.el unwind label %bb.cc, !noalias !831

bb.el:                                            ; preds = %bb.ek, %bb.ch, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !847
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(200) %i.bk)
          to label %bb.em unwind label %bb.bv, !noalias !831

bb.em:                                            ; preds = %bb.el, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !847
  %i.kc = load i64, ptr %i.bm, align 8, !range !5, !alias.scope !851, !noalias !847, !noundef !6
  %i.kd = icmp eq i64 %i.kc, -1
  br i1 %i.kd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.invoke.i.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i unwind label %bb.eo, !noalias !831

bb.eo:                                            ; preds = %bb.en
  %i.ke = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.body.i.i.i.i unwind label %bb.ep, !noalias !831

bb.ep:                                            ; preds = %bb.eo
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !831
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.en
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.invoke.i.i.i unwind label %bb.bp, !noalias !831

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.invoke.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i, %bb.em, %bb.dz, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !847
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshE3sgg5Qsfb_6config5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bt)
          to label %bb.me unwind label %bb.eq, !noalias !831

.body.i.i.i:                                      ; preds = %.body513.i.i.i.i, %bb.lo, %bb.km, %bb.ew, %bb.eq, %.body.i.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %.pn401.i.i.i.i, %.body.i.i.i.i ], [ %i.kh, %bb.eq ], [ %i.kn, %bb.ew ], [ %i.rl, %bb.lo ], [ %i.pw, %bb.km ], [ %.pn474.i.i.i.i, %.body513.i.i.i.i ]
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.kg) #18
          to label %.body.i.i unwind label %bb.mf, !noalias !852

bb.eq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.invoke.i.i.i, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.er:                                            ; preds = %bb.me, %bb.md, %bb.ev, %_RINvYNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss4_1__NtBa_8SettingsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB11_7Visitor9visit_f64NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBc_.exit.i.i.i, %bb.bk, %_RINvYNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss4_1__NtBa_8SettingsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB11_7Visitor9visit_u64NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBc_.exit.i.i.i, %bb.bi, %_RINvYNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss4_1__NtBa_8SettingsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB11_7Visitor9visit_i64NtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBc_.exit.i.i.i, %_RINvYNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss4_1__NtBa_8SettingsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB11_7Visitor10visit_boolNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBc_.exit.i.i.i, %_RINvYNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss4_1__NtBa_8SettingsNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserialize9___VisitorNtB11_7Visitor10visit_unitNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorEBc_.exit.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.bv, i64 64 ; 4 uses
  %i.kj = load i64, ptr %i.ki, align 16, !range !5, !alias.scope !853, !noalias !828, !noundef !6
  %i.kk = icmp eq i64 %i.kj, -1
  br i1 %i.kk, label %_RINvXNtCshE3sgg5Qsfb_6config2deNtNtB5_5value5ValueNtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss4_1__NtB1V_8SettingsNtBO_11Deserialize11deserialize9___VisitorEB1X_.exit.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ki)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.et, !noalias !852

bb.et:                                            ; preds = %bb.es
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ki)
          to label %.body.i.i unwind label %bb.eu, !noalias !852

bb.eu:                                            ; preds = %bb.et
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !852
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.es
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ki)
          to label %_RINvXNtCshE3sgg5Qsfb_6config2deNtNtB5_5value5ValueNtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss4_1__NtB1V_8SettingsNtBO_11Deserialize11deserialize9___VisitorEB1X_.exit.i.i unwind label %bb.mg, !noalias !852

bb.ev:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !845
  br label %bb.er

bb.ew:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshE3sgg5Qsfb_6config2de9MapAccessECsl8OoimOLbh_6qdrant.exit512.i.i.i.i, %bb.bn
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ex:                                            ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !845
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3152.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4154.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5158.sroa.6.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3407.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3197.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3201.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3412.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3207.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0131.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.097.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.568.sroa.2.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.568.sroa.8.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.037.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !855
  store i64 -2, ptr %i.ao, align 8, !noalias !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !855
  store i64 2, ptr %i.an, align 8, !noalias !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !855
  store i64 2, ptr %i.am, align 8, !noalias !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !855
  store i64 2, ptr %i.al, align 8, !noalias !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !855
  store i64 -1, ptr %i.ak, align 8, !noalias !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !855
  store i64 -2, ptr %i.aj, align 8, !noalias !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !855
  store i64 -1, ptr %i.ai, align 8, !noalias !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !855
  store i64 -1, ptr %i.ah, align 8, !noalias !855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !855
  store i64 -2, ptr %i.ag, align 8, !noalias !855
  %i.ko = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.kp = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.kq = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.kr = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.4319.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ku = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.kx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4262.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %.sroa.5263.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.5263.sroa.4.0..sroa.5263.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %.sroa.5263.sroa.5.0..sroa.5263.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 34
  %.sroa.5263.sroa.6.0..sroa.5263.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 36 ; 2 uses
  %.sroa.5263.sroa.7.0..sroa.5263.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 37 ; 2 uses
  %.sroa.6264.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %.sroa.8266.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %.sroa.8266.sroa.5.0..sroa.8266.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %.sroa.8266.sroa.7.0..sroa.8266.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 88 ; 2 uses
  %.sroa.9267.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 2 uses
  %.sroa.10268.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 97 ; 2 uses
  %.sroa.11269.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 98 ; 2 uses
  %.sroa.4259.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.5260.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  %.sroa.661.0..sroa_idx62.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %.sroa.763.0..sroa_idx64.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  br label %bb.ey

bb.ey:                                            ; preds = %.backedge, %bb.ex
  %.sroa.568.sroa.2.sroa.0.0.i.i.i.i = phi i64 [ undef, %bb.ex ], [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i.be, %.backedge ] ; 13 uses
  %.sroa.568.sroa.2.sroa.2.0.i.i.i.i = phi i16 [ undef, %bb.ex ], [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i.be, %.backedge ] ; 13 uses
  %.sroa.568.sroa.2.sroa.3.0.i.i.i.i = phi i16 [ undef, %bb.ex ], [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i.be, %.backedge ] ; 13 uses
  %.sroa.568.sroa.2.sroa.4.0.i.i.i.i = phi i8 [ undef, %bb.ex ], [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i.be, %.backedge ] ; 13 uses
  %.sroa.568.sroa.7.0.i.i.i.i = phi i8 [ undef, %bb.ex ], [ %.sroa.568.sroa.7.0.i.i.i.i.be, %.backedge ] ; 13 uses
  %.sroa.568.sroa.6.0.i.i.i.i = phi i8 [ undef, %bb.ex ], [ %.sroa.568.sroa.6.0.i.i.i.i.be, %.backedge ] ; 13 uses
  %.sroa.568.sroa.0.0.i.i.i.i.a = phi i64 [ undef, %bb.ex ], [ %.sroa.568.sroa.0.0.i.i.i.i.be.a, %.backedge ] ; 13 uses
  %.sroa.568.sroa.5.sroa.5.0.i.i.i.i = phi i64 [ undef, %bb.ex ], [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i.be, %.backedge ] ; 13 uses
  %.sroa.5112.0.i.i.i.i = phi i64 [ undef, %bb.ex ], [ %.sroa.5112.0.i.i.i.i.be, %.backedge ] ; 13 uses
  %.sroa.0109.0.i.i.i.i = phi i8 [ 2, %bb.ex ], [ %.sroa.0109.0.i.i.i.i.be, %.backedge ] ; 15 uses
  %.sroa.075.0.i.i.i.i = phi i8 [ 2, %bb.ex ], [ %.sroa.075.0.i.i.i.i.be, %.backedge ] ; 15 uses
  %.sroa.065.0.i.i.i.i = phi i64 [ 2, %bb.ex ], [ %.sroa.065.0.i.i.i.i.be, %.backedge ] ; 15 uses
  %2 = phi <6 x i64> [ undef, %bb.ex ], [ %.be, %.backedge ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !855
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess13next_key_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss4_1__NtB2w_8SettingsNtBN_11Deserialize11deserialize7___FieldEEB2y_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss4_1__NtB1C_8SettingsNtBH_11Deserialize11deserialize7___FieldEB1E_.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.ez:                                            ; preds = %bb.jz, %.body495.i.i.i.i, %bb.ie, %bb.hx, %bb.hq, %bb.hj, %bb.gs, %bb.gl, %bb.ge, %.body.i21.i.i.i, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.0224.1.i.i.i.i = phi i8 [ %.sroa.0224.8.i.i.i.i, %bb.jz ], [ 1, %.body.i21.i.i.i ], [ 1, %bb.ge ], [ 1, %bb.gl ], [ 1, %bb.gs ], [ 1, %bb.hj ], [ 1, %bb.hq ], [ 1, %bb.hx ], [ 1, %bb.ie ], [ 1, %.body495.i.i.i.i ], [ 1, %.loopexit.i.i.i.i ], [ %.sroa.0224.2.ph.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0226.1.i.i.i.i = phi i8 [ %.sroa.0226.4.i.i.i.i, %bb.jz ], [ 1, %.body.i21.i.i.i ], [ 1, %bb.ge ], [ 1, %bb.gl ], [ 1, %bb.gs ], [ 1, %bb.hj ], [ 1, %bb.hq ], [ 1, %bb.hx ], [ 1, %bb.ie ], [ 1, %.body495.i.i.i.i ], [ 1, %.loopexit.i.i.i.i ], [ %.sroa.0226.2.ph.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0228.1.i.i.i.i = phi i8 [ %.sroa.0228.4.i.i.i.i, %bb.jz ], [ 1, %.body.i21.i.i.i ], [ 1, %bb.ge ], [ 1, %bb.gl ], [ 1, %bb.gs ], [ 1, %bb.hj ], [ 1, %bb.hq ], [ 1, %bb.hx ], [ 1, %bb.ie ], [ 1, %.body495.i.i.i.i ], [ 1, %.loopexit.i.i.i.i ], [ %.sroa.0228.2.ph.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.pn448.i.i.i.i = phi { ptr, i32 } [ %.pn420.i.i.i.i, %bb.jz ], [ %eh.lpad-body.i.i.i.i, %.body.i21.i.i.i ], [ %i.mc, %bb.ge ], [ %i.mk, %bb.gl ], [ %i.ms, %bb.gs ], [ %i.nn, %bb.hj ], [ %i.nv, %bb.hq ], [ %i.ob, %bb.hx ], [ %i.oj, %bb.ie ], [ %eh.lpad-body496.i.i.i.i, %.body495.i.i.i.i ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.lb = load i64, ptr %i.ag, align 8, !range !7, !noalias !855, !noundef !6
  %.not450.i.i.i.i = icmp eq i64 %i.lb, -2
  br i1 %.not450.i.i.i.i, label %.body501.i.i.i.i, label %bb.lu

.loopexit.i.i.i.i:                                ; preds = %bb.il, %bb.ig, %bb.hz, %bb.hs, %bb.hl, %bb.he, %bb.gz, %bb.gu, %bb.gn, %bb.gg, %bb.fz, %bb.fq, %bb.fp, %bb.ey
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.jr, %bb.im, %bb.ih, %bb.ia, %bb.ht, %bb.hm, %bb.hf, %bb.ha, %bb.gv, %bb.go, %bb.gh, %bb.ga, %bb.fr
  %.sroa.0224.2.ph.i.i.i.i = phi i8 [ 1, %bb.hf ], [ 1, %bb.ia ], [ 1, %bb.ha ], [ %.sroa.0224.7.i.i.i.i, %bb.jr ], [ 1, %bb.gv ], [ 1, %bb.ht ], [ 1, %bb.go ], [ 1, %bb.ih ], [ 1, %bb.gh ], [ 1, %bb.hm ], [ 1, %bb.ga ], [ 1, %bb.im ], [ 1, %bb.fr ]
  %.sroa.0226.2.ph.i.i.i.i = phi i8 [ 1, %bb.hf ], [ 1, %bb.ia ], [ 1, %bb.ha ], [ %.sroa.0226.4.i.i.i.i, %bb.jr ], [ 1, %bb.gv ], [ 1, %bb.ht ], [ 1, %bb.go ], [ 1, %bb.ih ], [ 1, %bb.gh ], [ 1, %bb.hm ], [ 1, %bb.ga ], [ 1, %bb.im ], [ 1, %bb.fr ]
  %.sroa.0228.2.ph.i.i.i.i = phi i8 [ 1, %bb.hf ], [ 1, %bb.ia ], [ 1, %bb.ha ], [ %.sroa.0228.4.i.i.i.i, %bb.jr ], [ 1, %bb.gv ], [ 1, %bb.ht ], [ 1, %bb.go ], [ 1, %bb.ih ], [ 1, %bb.gh ], [ 1, %bb.hm ], [ 1, %bb.ga ], [ 1, %bb.im ], [ 1, %bb.fr ]
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss4_1__NtB1C_8SettingsNtBH_11Deserialize11deserialize7___FieldEB1E_.exit.i.i.i.i: ; preds = %bb.ey
  %i.lc = load i64, ptr %i.ko, align 8, !range !16, !noalias !855, !noundef !6 ; 2 uses
  %.not.i9.i.i.i = icmp eq i64 %i.lc, -2
  %i.ld = load i8, ptr %i.af, align 16, !noalias !855 ; 2 uses
  br i1 %.not.i9.i.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss4_1__NtB1C_8SettingsNtBH_11Deserialize11deserialize7___FieldEB1E_.exit.i.i.i.i
  %.sroa.4242.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %.sroa.4246.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4246.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4242.0..sroa_idx.i.i.i.i, i64 71, i1 false), !noalias !856
  %.sroa.6244.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %.sroa.6248.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6248.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6244.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !855
  %i.le = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i8 %i.ld, ptr %i.le, align 16, !alias.scope !857, !noalias !856
  %.sroa.5247.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  store i64 %i.lc, ptr %.sroa.5247.0..sroa_idx.i.i.i.i, align 8, !alias.scope !857, !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.fb:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsl8OoimOLbh_6qdrant8settingss4_1__NtB1C_8SettingsNtBH_11Deserialize11deserialize7___FieldEB1E_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !855
  switch i8 %i.ld, label %default.unreachable [
    i8 -1, label %bb.fc
    i8 0, label %bb.fd
    i8 1, label %bb.fe
    i8 2, label %bb.ff
    i8 3, label %bb.fg
    i8 4, label %bb.fh
    i8 5, label %bb.fi
    i8 6, label %bb.fj
    i8 7, label %bb.fk
    i8 8, label %bb.fl
    i8 9, label %bb.fm
    i8 10, label %bb.fn
    i8 11, label %bb.fo
    i8 12, label %bb.fp
  ]

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !855
  %i.lf = load i64, ptr %i.ao, align 8, !range !7, !noalias !855, !noundef !6
  %.not415.i.i.i.i = icmp eq i64 %i.lf, -2
  br i1 %.not415.i.i.i.i, label %bb.ix, label %bb.iw

bb.fd:                                            ; preds = %bb.fb
  %i.lg = load i64, ptr %i.ao, align 8, !range !7, !noalias !855, !noundef !6
  %.not446.i.i.i.i = icmp eq i64 %i.lg, -2
  br i1 %.not446.i.i.i.i, label %bb.fq, label %bb.fr, !prof !18

bb.fe:                                            ; preds = %bb.fb
  %i.lh = load i64, ptr %i.an, align 8, !range !8, !noalias !855, !noundef !6
  %.not445.i.i.i.i = icmp eq i64 %i.lh, 2
  br i1 %.not445.i.i.i.i, label %bb.fz, label %bb.ga, !prof !18

bb.ff:                                            ; preds = %bb.fb
  %i.li = load i64, ptr %i.am, align 8, !range !8, !noalias !855, !noundef !6
  %.not444.i.i.i.i = icmp eq i64 %i.li, 2
  br i1 %.not444.i.i.i.i, label %bb.gg, label %bb.gh, !prof !18

bb.fg:                                            ; preds = %bb.fb
  %i.lj = load i64, ptr %i.al, align 8, !range !8, !noalias !855, !noundef !6
  %.not443.i.i.i.i = icmp eq i64 %i.lj, 2
  br i1 %.not443.i.i.i.i, label %bb.gn, label %bb.go, !prof !18

bb.fh:                                            ; preds = %bb.fb
  %.not442.i.i.i.i = icmp eq i64 %.sroa.065.0.i.i.i.i, 2
  br i1 %.not442.i.i.i.i, label %bb.gu, label %bb.gv, !prof !18

bb.fi:                                            ; preds = %bb.fb
  %.not440.i.i.i.i = icmp eq i8 %.sroa.075.0.i.i.i.i, 2
  br i1 %.not440.i.i.i.i, label %bb.gz, label %bb.ha, !prof !18

bb.fj:                                            ; preds = %bb.fb
  %i.lk = load i64, ptr %i.ak, align 8, !range !9, !noalias !855, !noundef !6
  %.not439.i.i.i.i = icmp eq i64 %i.lk, -1
  br i1 %.not439.i.i.i.i, label %bb.he, label %bb.hf, !prof !18

bb.fk:                                            ; preds = %bb.fb
  %i.ll = load i64, ptr %i.aj, align 8, !range !7, !noalias !855, !noundef !6
  %.not438.i.i.i.i = icmp eq i64 %i.ll, -2
  br i1 %.not438.i.i.i.i, label %bb.hl, label %bb.hm, !prof !18

bb.fl:                                            ; preds = %bb.fb
  %i.lm = load i64, ptr %i.ai, align 8, !range !9, !noalias !855, !noundef !6
  %.not436.i.i.i.i = icmp eq i64 %i.lm, -1
  br i1 %.not436.i.i.i.i, label %bb.hs, label %bb.ht, !prof !18

bb.fm:                                            ; preds = %bb.fb
  %i.ln = load i64, ptr %i.ah, align 8, !range !9, !noalias !855, !noundef !6
  %.not435.i.i.i.i = icmp eq i64 %i.ln, -1
  br i1 %.not435.i.i.i.i, label %bb.hz, label %bb.ia, !prof !18

bb.fn:                                            ; preds = %bb.fb
  %.not433.i.i.i.i = icmp eq i8 %.sroa.0109.0.i.i.i.i, 2
  br i1 %.not433.i.i.i.i, label %bb.ig, label %bb.ih, !prof !18

bb.fo:                                            ; preds = %bb.fb
  %i.lo = load i64, ptr %i.ag, align 8, !range !7, !noalias !855, !noundef !6
  %.not431.i.i.i.i = icmp eq i64 %i.lo, -2
  br i1 %.not431.i.i.i.i, label %bb.il, label %bb.im, !prof !18

bb.fp:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !855
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtBN_11ignored_any10IgnoredAnyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtBH_11ignored_any10IgnoredAnyECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.fq:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !855
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.fr:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !855
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15duplicate_fieldCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 9)
          to label %bb.fy unwind label %.loopexit.split-lp.i.i.i.i, !noalias !831

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.fq
  %i.lp = load i64, ptr %i.la, align 8, !range !16, !noalias !855, !noundef !6 ; 2 uses
  %.not447.i.i.i.i = icmp eq i64 %i.lp, -2
  br i1 %.not447.i.i.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.037.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(72) %i.ad, i64 72, i1 false), !noalias !855
  %.sroa.5254.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %.sroa.5257.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5257.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5254.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !855
  %i.lq = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.lq, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.037.i.i.i.i, i64 72, i1 false), !noalias !856
  %.sroa.4256.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  store i64 %i.lp, ptr %.sroa.4256.0..sroa_idx.i.i.i.i, align 8, !alias.scope !857, !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.ft:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.037.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !855
  %i.lr = load i64, ptr %i.ao, align 8, !range !7, !alias.scope !858, !noalias !855, !noundef !6
  %switch.i.i.i.i.i = icmp ugt i64 %i.lr, -3
  br i1 %switch.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i unwind label %bb.fv, !noalias !831

bb.fv:                                            ; preds = %bb.fu
  %i.ls = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body.i21.i.i.i unwind label %bb.fw, !noalias !831

bb.fw:                                            ; preds = %bb.fv
  %i.lt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !831
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.fu
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.fx, !noalias !831

bb.fx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i21.i.i.i

.body.i21.i.i.i:                                  ; preds = %bb.fx, %bb.fv
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.lu, %bb.fx ], [ %i.ls, %bb.fv ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.037.i.i.i.i, i64 24, i1 false), !noalias !855
  br label %bb.ez

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %bb.ft
end_hunk_1
begin_hunk_2_@_RNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8Settings3new:bb.a
bb.gb:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEB1E_.exit.i.i.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.lz, ptr noundef nonnull align 16 dereferenceable(96) %i.ly, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.gc:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEB1E_.exit.i.i.i.i
  %i.ma = load i64, ptr %i.an, align 8, !range !8, !alias.scope !859, !noalias !855, !noundef !6
  %i.mb = icmp eq i64 %i.ma, 2
  br i1 %i.mb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.an)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i unwind label %bb.ge, !noalias !831

bb.ge:                                            ; preds = %bb.gd
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.an, ptr noundef nonnull align 8 dereferenceable(200) %i.kz, i64 200, i1 false), !noalias !855
  br label %bb.ez

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i: ; preds = %bb.gd, %bb.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.an, ptr noundef nonnull align 8 dereferenceable(200) %i.kz, i64 200, i1 false), !noalias !855
  br label %.backedge

bb.gf:                                            ; preds = %bb.ga
  %i.md = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.md, ptr noundef nonnull align 16 dereferenceable(96) %i.ac, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !855
  br label %bb.jt

bb.gg:                                            ; preds = %bb.ff
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([1088 x i8]) align 16 captures(address) dereferenceable(1088) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.gh:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !855
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15duplicate_fieldCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 7)
          to label %bb.gm unwind label %.loopexit.split-lp.i.i.i.i, !noalias !831

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.gg
  %i.me = load i64, ptr %i.h, align 16, !range !10, !noalias !855, !noundef !6
  %i.mf = trunc nuw i64 %i.me to i1
  br i1 %i.mf, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.mh, ptr noundef nonnull align 16 dereferenceable(96) %i.mg, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.gj:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.mi = load i64, ptr %i.am, align 8, !range !8, !alias.scope !860, !noalias !855, !noundef !6
  %i.mj = icmp eq i64 %i.mi, 2
  br i1 %i.mj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(1080) %i.am)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.gl, !noalias !831

bb.gl:                                            ; preds = %bb.gk
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.am, ptr noundef nonnull align 8 dereferenceable(1080) %i.ky, i64 1080, i1 false), !noalias !855
  br label %bb.ez

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.gk, %bb.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.am, ptr noundef nonnull align 8 dereferenceable(1080) %i.ky, i64 1080, i1 false), !noalias !855
  br label %.backedge

bb.gm:                                            ; preds = %bb.gh
  %i.ml = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ml, ptr noundef nonnull align 16 dereferenceable(96) %i.ab, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !855
  br label %bb.jt

bb.gn:                                            ; preds = %bb.fg
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB2v_(ptr noalias nofree noundef nonnull sret([224 x i8]) align 16 captures(address) dereferenceable(224) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEB1C_.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.go:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !855
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15duplicate_fieldCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 7)
          to label %bb.gt unwind label %.loopexit.split-lp.i.i.i.i, !noalias !831

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEB1C_.exit.i.i.i.i: ; preds = %bb.gn
  %i.mm = load i64, ptr %i.g, align 16, !range !8, !noalias !855, !noundef !6 ; 3 uses
  %i.mn = icmp eq i64 %i.mm, 2
  br i1 %i.mn, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEB1C_.exit.i.i.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.mp = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.mp, ptr noundef nonnull align 16 dereferenceable(96) %i.mo, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.gq:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEB1C_.exit.i.i.i.i
  %i.mq = load i64, ptr %i.al, align 8, !range !8, !alias.scope !861, !noalias !855, !noundef !6
  %i.mr = icmp eq i64 %i.mq, 2
  br i1 %i.mr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i unwind label %bb.gs, !noalias !831

bb.gs:                                            ; preds = %bb.gr
  %i.ms = landingpad { ptr, i32 }
          cleanup
  store i64 %i.mm, ptr %i.al, align 8, !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.661.0..sroa_idx62.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4259.0..sroa_idx.i.i.i.i, i64 104, i1 false), !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.763.0..sroa_idx64.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.5260.0..sroa_idx.i.i.i.i, i64 112, i1 false), !noalias !855
  br label %bb.ez

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i: ; preds = %bb.gr, %bb.gq
  store i64 %i.mm, ptr %i.al, align 8, !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.661.0..sroa_idx62.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4259.0..sroa_idx.i.i.i.i, i64 104, i1 false), !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.763.0..sroa_idx64.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.5260.0..sroa_idx.i.i.i.i, i64 112, i1 false), !noalias !855
  br label %.backedge

bb.gt:                                            ; preds = %bb.go
  %i.mt = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.mt, ptr noundef nonnull align 16 dereferenceable(96) %i.aa, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !855
  br label %bb.jt

bb.gu:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.571.sroa.5.sroa.7.sroa.10.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.571.sroa.5.sroa.13.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !855
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsl8OoimOLbh_6qdrant8settings13ClusterConfigEEB2v_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCsl8OoimOLbh_6qdrant8settings13ClusterConfigEB1C_.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.gv:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !855
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15duplicate_fieldCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 7)
          to label %bb.gy unwind label %.loopexit.split-lp.i.i.i.i, !noalias !831

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCsl8OoimOLbh_6qdrant8settings13ClusterConfigEB1C_.exit.i.i.i.i: ; preds = %bb.gu
  %i.mu = load i64, ptr %i.y, align 16, !range !10, !noalias !855, !noundef !6
  %i.mv = trunc nuw i64 %i.mu to i1
  br i1 %i.mv, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCsl8OoimOLbh_6qdrant8settings13ClusterConfigEB1C_.exit.i.i.i.i
  %.sroa.4280.sroa.6.0.copyload.i.i.i.i = load i8, ptr %.sroa.5263.sroa.6.0..sroa.5263.0..sroa_idx.sroa_idx.i.i.i.i, align 4, !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.571.sroa.5.sroa.7.sroa.10.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5263.sroa.7.0..sroa.5263.0..sroa_idx.sroa_idx.i.i.i.i, i64 3, i1 false), !noalias !855
  %.sroa.7283.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.8266.sroa.7.0..sroa.8266.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.8284.0.copyload.i.i.i.i = load i8, ptr %.sroa.9267.0..sroa_idx.i.i.i.i, align 16, !noalias !855
  %.sroa.9285.0.copyload.i.i.i.i = load i8, ptr %.sroa.10268.0..sroa_idx.i.i.i.i, align 1, !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.571.sroa.5.sroa.13.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11269.0..sroa_idx.i.i.i.i, i64 6, i1 false), !noalias !855
  %.sroa.11287.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %.sroa.11287.0.copyload.i.i.i.i = load i64, ptr %.sroa.11287.0..sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.4289.sroa.7.0..sroa.4289.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 37
  %.sroa.10295.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 98
  %i.mw = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.4289.sroa.4.0..sroa.4289.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.mx = load <2 x i16>, ptr %.sroa.5263.sroa.4.0..sroa.5263.0..sroa_idx.sroa_idx.i.i.i.i, align 16, !noalias !855
  %i.my = load <2 x i64>, ptr %.sroa.4262.0..sroa_idx.i.i.i.i, align 16, !noalias !855
  %.sroa.4289.sroa.6.0..sroa.4289.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 36
  %.sroa.5290.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.mz = load <2 x i64>, ptr %.sroa.6264.0..sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.7292.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.na = load <2 x i64>, ptr %.sroa.8266.0..sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.7292.sroa.5.0..sroa.7292.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.nb = load <2 x i64>, ptr %.sroa.8266.sroa.5.0..sroa.8266.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4289.sroa.7.0..sroa.4289.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.571.sroa.5.sroa.7.sroa.10.i.i.i.i, i64 3, i1 false), !noalias !856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.10295.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.571.sroa.5.sroa.13.i.i.i.i, i64 6, i1 false), !noalias !856
  store <2 x i64> %i.my, ptr %i.mw, align 16, !alias.scope !857, !noalias !856
  store <2 x i16> %i.mx, ptr %.sroa.4289.sroa.4.0..sroa.4289.0..sroa_idx.sroa_idx.i.i.i.i, align 16, !alias.scope !857, !noalias !856
  store i8 %.sroa.4280.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.4289.sroa.6.0..sroa.4289.0..sroa_idx.sroa_idx.i.i.i.i, align 4, !alias.scope !857, !noalias !856
  store <2 x i64> %i.mz, ptr %.sroa.5290.0..sroa_idx.i.i.i.i, align 8, !alias.scope !857, !noalias !856
  store <2 x i64> %i.na, ptr %.sroa.7292.0..sroa_idx.i.i.i.i, align 8, !alias.scope !857, !noalias !856
  store <2 x i64> %i.nb, ptr %.sroa.7292.sroa.5.0..sroa.7292.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !857, !noalias !856
  %.sroa.7292.sroa.7.0..sroa.7292.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  store i64 %.sroa.7283.sroa.7.0.copyload.i.i.i.i, ptr %.sroa.7292.sroa.7.0..sroa.7292.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !857, !noalias !856
  %.sroa.8293.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  store i8 %.sroa.8284.0.copyload.i.i.i.i, ptr %.sroa.8293.0..sroa_idx.i.i.i.i, align 16, !alias.scope !857, !noalias !856
  %.sroa.9294.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 97
  store i8 %.sroa.9285.0.copyload.i.i.i.i, ptr %.sroa.9294.0..sroa_idx.i.i.i.i, align 1, !alias.scope !857, !noalias !856
  %.sroa.11296.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 104
  store i64 %.sroa.11287.0.copyload.i.i.i.i, ptr %.sroa.11296.0..sroa_idx.i.i.i.i, align 8, !alias.scope !857, !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.571.sroa.5.sroa.7.sroa.10.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.571.sroa.5.sroa.13.i.i.i.i)
  br label %bb.jt

bb.gx:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCsl8OoimOLbh_6qdrant8settings13ClusterConfigEB1C_.exit.i.i.i.i
  %.sroa.0261.0.copyload.i.i.i.i = load i64, ptr %i.kx, align 8, !noalias !855
  %.sroa.4262.0.copyload.i.i.i.i = load i64, ptr %.sroa.4262.0..sroa_idx.i.i.i.i, align 16, !noalias !855
  %.sroa.5263.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.sroa.5263.0..sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.5263.sroa.4.0.copyload.i.i.i.i = load i16, ptr %.sroa.5263.sroa.4.0..sroa.5263.0..sroa_idx.sroa_idx.i.i.i.i, align 16, !noalias !855
  %.sroa.5263.sroa.5.0.copyload.i.i.i.i = load i16, ptr %.sroa.5263.sroa.5.0..sroa.5263.0..sroa_idx.sroa_idx.i.i.i.i, align 2, !noalias !855
  %.sroa.5263.sroa.6.0.copyload.i.i.i.i = load i8, ptr %.sroa.5263.sroa.6.0..sroa.5263.0..sroa_idx.sroa_idx.i.i.i.i, align 4, !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.571.sroa.5.sroa.7.sroa.10.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5263.sroa.7.0..sroa.5263.0..sroa_idx.sroa_idx.i.i.i.i, i64 3, i1 false), !noalias !855
  %3 = load <6 x i64>, ptr %.sroa.6264.0..sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.8266.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.8266.sroa.7.0..sroa.8266.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.9267.0.copyload.i.i.i.i = load i8, ptr %.sroa.9267.0..sroa_idx.i.i.i.i, align 16, !noalias !855
  %.sroa.10268.0.copyload.i.i.i.i = load i8, ptr %.sroa.10268.0..sroa_idx.i.i.i.i, align 1, !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.571.sroa.5.sroa.13.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11269.0..sroa_idx.i.i.i.i, i64 6, i1 false), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.568.sroa.2.sroa.5.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.571.sroa.5.sroa.7.sroa.10.i.i.i.i, i64 3, i1 false), !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.568.sroa.8.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.571.sroa.5.sroa.13.i.i.i.i, i64 6, i1 false), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.571.sroa.5.sroa.7.sroa.10.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.571.sroa.5.sroa.13.i.i.i.i)
  br label %.backedge

bb.gy:                                            ; preds = %bb.gv
  %i.nc = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.nc, ptr noundef nonnull align 16 dereferenceable(96) %i.z, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !855
  br label %bb.jt

bb.gz:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !855
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDatabEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valuebECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.ha:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !855
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15duplicate_fieldCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 18)
          to label %bb.hd unwind label %.loopexit.split-lp.i.i.i.i, !noalias !831

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valuebECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.gz
  %i.nd = load i64, ptr %i.kw, align 8, !range !16, !noalias !855, !noundef !6 ; 2 uses
  %.not441.i.i.i.i = icmp eq i64 %i.nd, -2
  %i.ne = load i8, ptr %i.w, align 16, !noalias !855 ; 2 uses
  br i1 %.not441.i.i.i.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valuebECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %.sroa.4302.0..sroa_idx.i16.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.4306.0..sroa_idx.i17.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4306.0..sroa_idx.i17.i.i.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4302.0..sroa_idx.i16.i.i.i, i64 71, i1 false), !noalias !856
  %.sroa.6304.0..sroa_idx.i18.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %.sroa.6308.0..sroa_idx.i19.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6308.0..sroa_idx.i19.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6304.0..sroa_idx.i18.i.i.i, i64 16, i1 false), !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !855
  %i.nf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i8 %i.ne, ptr %i.nf, align 16, !alias.scope !857, !noalias !856
  %.sroa.5307.0..sroa_idx.i20.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  store i64 %i.nd, ptr %.sroa.5307.0..sroa_idx.i20.i.i.i, align 8, !alias.scope !857, !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.hc:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valuebECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !855
  br label %.backedge

bb.hd:                                            ; preds = %bb.ha
  %i.ng = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ng, ptr noundef nonnull align 16 dereferenceable(96) %i.x, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !855
  br label %bb.jt

bb.he:                                            ; preds = %bb.fj
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB2S_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEB2e_.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.hf:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !855
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15duplicate_fieldCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 3)
          to label %bb.hk unwind label %.loopexit.split-lp.i.i.i.i, !noalias !831

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEB2e_.exit.i.i.i.i: ; preds = %bb.he
  %i.nh = load i64, ptr %i.f, align 16, !range !10, !noalias !855, !noundef !6
  %i.ni = trunc nuw i64 %i.nh to i1
  br i1 %i.ni, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEB2e_.exit.i.i.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.nk = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.nk, ptr noundef nonnull align 16 dereferenceable(96) %i.nj, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.hh:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEB2e_.exit.i.i.i.i
  %i.nl = load i64, ptr %i.ak, align 8, !range !9, !alias.scope !862, !noalias !855, !noundef !6
  %i.nm = icmp eq i64 %i.nl, -1
  br i1 %i.nm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ak)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i unwind label %bb.hj, !noalias !831

bb.hj:                                            ; preds = %bb.hi
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr noundef nonnull align 8 dereferenceable(88) %i.kv, i64 88, i1 false), !noalias !855
  br label %bb.ez

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i: ; preds = %bb.hi, %bb.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr noundef nonnull align 8 dereferenceable(88) %i.kv, i64 88, i1 false), !noalias !855
  br label %.backedge

bb.hk:                                            ; preds = %bb.hf
  %i.no = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.no, ptr noundef nonnull align 16 dereferenceable(96) %i.v, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !855
  br label %bb.jt

bb.hl:                                            ; preds = %bb.fk
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB2x_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEB1E_.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.hm:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !855
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15duplicate_fieldCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 8)
          to label %bb.hr unwind label %.loopexit.split-lp.i.i.i.i, !noalias !831

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEB1E_.exit.i.i.i.i: ; preds = %bb.hl
  %i.np = load i64, ptr %i.e, align 16, !range !10, !noalias !855, !noundef !6
  %i.nq = trunc nuw i64 %i.np to i1
  br i1 %i.nq, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEB1E_.exit.i.i.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ns = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ns, ptr noundef nonnull align 16 dereferenceable(96) %i.nr, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.ho:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEB1E_.exit.i.i.i.i
  %i.nt = load i64, ptr %i.aj, align 8, !range !7, !alias.scope !863, !noalias !855, !noundef !6
  %i.nu = icmp eq i64 %i.nt, -2
  br i1 %i.nu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i unwind label %bb.hq, !noalias !831

bb.hq:                                            ; preds = %bb.hp
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, ptr noundef nonnull align 8 dereferenceable(104) %i.ku, i64 104, i1 false), !noalias !855
  br label %bb.ez

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i: ; preds = %bb.hp, %bb.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, ptr noundef nonnull align 8 dereferenceable(104) %i.ku, i64 104, i1 false), !noalias !855
  br label %.backedge

bb.hr:                                            ; preds = %bb.hm
  %i.nw = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.nw, ptr noundef nonnull align 16 dereferenceable(96) %i.u, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !855
  br label %bb.jt

bb.hs:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !855
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB2W_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEB2i_.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.ht:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !855
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15duplicate_fieldCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 9)
          to label %bb.hy unwind label %.loopexit.split-lp.i.i.i.i, !noalias !831

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEB2i_.exit.i.i.i.i: ; preds = %bb.hs
  %i.nx = load i64, ptr %i.kt, align 8, !range !16, !noalias !855, !noundef !6 ; 2 uses
  %.not437.i.i.i.i = icmp eq i64 %i.nx, -2
  br i1 %.not437.i.i.i.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEB2i_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.097.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(72) %i.s, i64 72, i1 false), !noalias !855
  %.sroa.5314.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %.sroa.5317.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5317.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5314.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !855
  %i.ny = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ny, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.097.i.i.i.i, i64 72, i1 false), !noalias !856
  %.sroa.4316.0..sroa_idx.i14.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  store i64 %i.nx, ptr %.sroa.4316.0..sroa_idx.i14.i.i.i, align 8, !alias.scope !857, !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.hv:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEB2i_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.097.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.s, i64 64, i1 false), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !855
  %i.nz = load i64, ptr %i.ai, align 8, !range !9, !alias.scope !864, !noalias !855, !noundef !6
  %i.oa = icmp eq i64 %i.nz, -1
  br i1 %i.oa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i unwind label %bb.hx, !noalias !831

bb.hx:                                            ; preds = %bb.hw
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.097.i.i.i.i, i64 64, i1 false), !noalias !855
  br label %bb.ez

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i: ; preds = %bb.hw, %bb.hv
end_hunk_2
begin_hunk_3_@_RNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8Settings3new:bb.a
  br label %.backedge

bb.hy:                                            ; preds = %bb.ht
  %i.oc = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.oc, ptr noundef nonnull align 16 dereferenceable(96) %i.t, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !855
  br label %bb.jt

bb.hz:                                            ; preds = %bb.fm
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB2S_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEB2e_.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.ia:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !855
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15duplicate_fieldCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 3)
          to label %bb.if unwind label %.loopexit.split-lp.i.i.i.i, !noalias !831

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEB2e_.exit.i.i.i.i: ; preds = %bb.hz
  %i.od = load i64, ptr %i.d, align 16, !range !10, !noalias !855, !noundef !6
  %i.oe = trunc nuw i64 %i.od to i1
  br i1 %i.oe, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEB2e_.exit.i.i.i.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.og = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.og, ptr noundef nonnull align 16 dereferenceable(96) %i.of, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.ic:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEB2e_.exit.i.i.i.i
  %i.oh = load i64, ptr %i.ah, align 8, !range !9, !alias.scope !865, !noalias !855, !noundef !6
  %i.oi = icmp eq i64 %i.oh, -1
  br i1 %i.oi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i unwind label %bb.ie, !noalias !831

bb.ie:                                            ; preds = %bb.id
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(88) %i.ks, i64 88, i1 false), !noalias !855
  br label %bb.ez

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i: ; preds = %bb.id, %bb.ic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(88) %i.ks, i64 88, i1 false), !noalias !855
  br label %.backedge

bb.if:                                            ; preds = %bb.ia
  %i.ok = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ok, ptr noundef nonnull align 16 dereferenceable(96) %i.r, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !855
  br label %bb.jt

bb.ig:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !855
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCslmvYCXbQjWR_6common5flags12FeatureFlagsEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCslmvYCXbQjWR_6common5flags12FeatureFlagsECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.ih:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !855
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15duplicate_fieldCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 13)
          to label %bb.ik unwind label %.loopexit.split-lp.i.i.i.i, !noalias !831

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCslmvYCXbQjWR_6common5flags12FeatureFlagsECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.ig
  %i.ol = load i64, ptr %i.kr, align 8, !range !16, !noalias !855, !noundef !6 ; 2 uses
  %.not434.i.i.i.i = icmp eq i64 %i.ol, -2
  %.sroa.0318.0.copyload.i.i.i.i = load i8, ptr %i.p, align 16, !noalias !855 ; 2 uses
  %.sroa.4319.0.copyload.i.i.i.i = load i64, ptr %.sroa.4319.0..sroa_idx.i.i.i.i, align 1, !noalias !855 ; 2 uses
  br i1 %.not434.i.i.i.i, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCslmvYCXbQjWR_6common5flags12FeatureFlagsECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %.sroa.5327.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %.sroa.5332.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.5332.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.5327.0..sroa_idx.i.i.i.i, i64 63, i1 false), !noalias !856
  %.sroa.7329.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.7334.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7334.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.7329.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !855
  %i.om = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i8 %.sroa.0318.0.copyload.i.i.i.i, ptr %i.om, align 16, !alias.scope !857, !noalias !856
  %.sroa.4331.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 17
  store i64 %.sroa.4319.0.copyload.i.i.i.i, ptr %.sroa.4331.0..sroa_idx.i.i.i.i, align 1, !alias.scope !857, !noalias !856
  %.sroa.6333.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  store i64 %i.ol, ptr %.sroa.6333.0..sroa_idx.i.i.i.i, align 8, !alias.scope !857, !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.ij:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtCslmvYCXbQjWR_6common5flags12FeatureFlagsECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !855
  br label %.backedge

bb.ik:                                            ; preds = %bb.ih
  %i.on = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.on, ptr noundef nonnull align 16 dereferenceable(96) %i.q, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !855
  br label %bb.jt

bb.il:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !855
  invoke void @_RINvXs3_NtCshE3sgg5Qsfb_6config2deNtB6_9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess15next_value_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataINtNtB1O_6option6OptionNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !831

bb.im:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !855
  invoke void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15duplicate_fieldCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 5)
          to label %bb.it unwind label %.loopexit.split-lp.i.i.i.i, !noalias !831

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.il
  %i.oo = load i64, ptr %i.kq, align 8, !range !16, !noalias !855, !noundef !6 ; 2 uses
  %.not432.i.i.i.i = icmp eq i64 %i.oo, -2
  br i1 %.not432.i.i.i.i, label %bb.io, label %bb.in

bb.in:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.0131.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !855
  %.sroa.5340.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %.sroa.5343.0..sroa_idx.i12.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5343.0..sroa_idx.i12.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5340.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !855
  %i.op = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.op, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.0131.i.i.i.i, i64 72, i1 false), !noalias !856
  %.sroa.4342.0..sroa_idx.i13.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  store i64 %i.oo, ptr %.sroa.4342.0..sroa_idx.i13.i.i.i, align 8, !alias.scope !857, !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.io:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.0131.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(40) %i.n, i64 40, i1 false), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !855
  %i.oq = load i64, ptr %i.ag, align 8, !range !7, !alias.scope !866, !noalias !855, !noundef !6
  %switch.i494.i.i.i.i = icmp ugt i64 %i.oq, -3
  br i1 %switch.i494.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i unwind label %bb.iq, !noalias !831

bb.iq:                                            ; preds = %bb.ip
  %i.or = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %.body495.i.i.i.i unwind label %bb.ir, !noalias !831

bb.ir:                                            ; preds = %bb.iq
  %i.os = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !831
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.ip
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.is, !noalias !831

bb.is:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %.body495.i.i.i.i

.body495.i.i.i.i:                                 ; preds = %bb.is, %bb.iq
  %eh.lpad-body496.i.i.i.i = phi { ptr, i32 } [ %i.ot, %bb.is ], [ %i.or, %bb.iq ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.0131.i.i.i.i, i64 40, i1 false), !noalias !855
  br label %bb.ez

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %bb.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.0131.i.i.i.i, i64 40, i1 false), !noalias !855
  br label %.backedge

bb.it:                                            ; preds = %bb.im
  %i.ou = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ou, ptr noundef nonnull align 16 dereferenceable(96) %i.o, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !855
  br label %bb.jt

_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtBH_11ignored_any10IgnoredAnyECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.fp
  %i.ov = load i64, ptr %i.kp, align 8, !range !16, !noalias !855, !noundef !6
  %.not430.i.i.i.i = icmp eq i64 %i.ov, -2
  br i1 %.not430.i.i.i.i, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtBH_11ignored_any10IgnoredAnyECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ow, ptr noundef nonnull align 16 dereferenceable(96) %i.m, i64 96, i1 false), !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !855
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.jt

bb.iv:                                            ; preds = %_RINvYNtNtCshE3sgg5Qsfb_6config2de9MapAccessNtNtCs4NSHK7GLW4I_10serde_core2de9MapAccess10next_valueNtNtBH_11ignored_any10IgnoredAnyECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !855
  br label %.backedge

.backedge:                                        ; preds = %bb.iv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.ij, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i, %bb.hc, %bb.gx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %.sroa.568.sroa.2.sroa.0.0.i.i.i.i.be = phi i64 [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %.sroa.5263.sroa.0.0.copyload.i.i.i.i, %bb.gx ], [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %bb.hc ], [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %bb.ij ], [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %bb.iv ]
  %.sroa.568.sroa.2.sroa.2.0.i.i.i.i.be = phi i16 [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %.sroa.5263.sroa.4.0.copyload.i.i.i.i, %bb.gx ], [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %bb.hc ], [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %bb.ij ], [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %bb.iv ]
  %.sroa.568.sroa.2.sroa.3.0.i.i.i.i.be = phi i16 [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %.sroa.5263.sroa.5.0.copyload.i.i.i.i, %bb.gx ], [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %bb.hc ], [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %bb.ij ], [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %bb.iv ]
  %.sroa.568.sroa.2.sroa.4.0.i.i.i.i.be = phi i8 [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %.sroa.5263.sroa.6.0.copyload.i.i.i.i, %bb.gx ], [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %bb.hc ], [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %bb.ij ], [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %bb.iv ]
  %.sroa.568.sroa.7.0.i.i.i.i.be = phi i8 [ %.sroa.568.sroa.7.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.7.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.7.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.7.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %.sroa.10268.0.copyload.i.i.i.i, %bb.gx ], [ %.sroa.568.sroa.7.0.i.i.i.i, %bb.hc ], [ %.sroa.568.sroa.7.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.7.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.7.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %.sroa.568.sroa.7.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.7.0.i.i.i.i, %bb.ij ], [ %.sroa.568.sroa.7.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.7.0.i.i.i.i, %bb.iv ]
  %.sroa.568.sroa.6.0.i.i.i.i.be = phi i8 [ %.sroa.568.sroa.6.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.6.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.6.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.6.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %.sroa.9267.0.copyload.i.i.i.i, %bb.gx ], [ %.sroa.568.sroa.6.0.i.i.i.i, %bb.hc ], [ %.sroa.568.sroa.6.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.6.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.6.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %.sroa.568.sroa.6.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.6.0.i.i.i.i, %bb.ij ], [ %.sroa.568.sroa.6.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.6.0.i.i.i.i, %bb.iv ]
  %.sroa.568.sroa.0.0.i.i.i.i.be.a = phi i64 [ %.sroa.568.sroa.0.0.i.i.i.i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.0.0.i.i.i.i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.0.0.i.i.i.i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.0.0.i.i.i.i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %.sroa.4262.0.copyload.i.i.i.i, %bb.gx ], [ %.sroa.568.sroa.0.0.i.i.i.i.a, %bb.hc ], [ %.sroa.568.sroa.0.0.i.i.i.i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.0.0.i.i.i.i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.0.0.i.i.i.i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %.sroa.568.sroa.0.0.i.i.i.i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.0.0.i.i.i.i.a, %bb.ij ], [ %.sroa.568.sroa.0.0.i.i.i.i.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.0.0.i.i.i.i.a, %bb.iv ]
  %.sroa.568.sroa.5.sroa.5.0.i.i.i.i.be = phi i64 [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %.sroa.8266.sroa.7.0.copyload.i.i.i.i, %bb.gx ], [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %bb.hc ], [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %bb.ij ], [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %bb.iv ]
  %.sroa.5112.0.i.i.i.i.be = phi i64 [ %.sroa.5112.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.5112.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.5112.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.5112.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %.sroa.5112.0.i.i.i.i, %bb.gx ], [ %.sroa.5112.0.i.i.i.i, %bb.hc ], [ %.sroa.5112.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.5112.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.5112.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %.sroa.5112.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.4319.0.copyload.i.i.i.i, %bb.ij ], [ %.sroa.5112.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.5112.0.i.i.i.i, %bb.iv ]
  %.sroa.0109.0.i.i.i.i.be = phi i8 [ %.sroa.0109.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.0109.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.0109.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.0109.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %.sroa.0109.0.i.i.i.i, %bb.gx ], [ %.sroa.0109.0.i.i.i.i, %bb.hc ], [ %.sroa.0109.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.0109.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.0109.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %.sroa.0109.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.0318.0.copyload.i.i.i.i, %bb.ij ], [ %.sroa.0109.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.0109.0.i.i.i.i, %bb.iv ]
  %.sroa.075.0.i.i.i.i.be = phi i8 [ %.sroa.075.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.075.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.075.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.075.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %.sroa.075.0.i.i.i.i, %bb.gx ], [ %i.ne, %bb.hc ], [ %.sroa.075.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.075.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.075.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %.sroa.075.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.075.0.i.i.i.i, %bb.ij ], [ %.sroa.075.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.075.0.i.i.i.i, %bb.iv ]
  %.sroa.065.0.i.i.i.i.be = phi i64 [ %.sroa.065.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.065.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.065.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.065.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %.sroa.0261.0.copyload.i.i.i.i, %bb.gx ], [ %.sroa.065.0.i.i.i.i, %bb.hc ], [ %.sroa.065.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.065.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %.sroa.065.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %.sroa.065.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %.sroa.065.0.i.i.i.i, %bb.ij ], [ %.sroa.065.0.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.065.0.i.i.i.i, %bb.iv ]
  %.be = phi <6 x i64> [ %2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsexYYUdYSQU6_5alloc6string6StringEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB13_.exit.i.i.i.i ], [ %2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEEB11_.exit.i.i.i.i ], [ %3, %bb.gx ], [ %2, %bb.hc ], [ %2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEEB15_.exit.i.i.i.i ], [ %2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit.i.i.i.i ], [ %2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit.i.i.i.i ], [ %2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit.i.i.i.i ], [ %2, %bb.ij ], [ %2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %2, %bb.iv ]
  br label %bb.ey

bb.iw:                                            ; preds = %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !855
  br label %bb.iy

bb.ix:                                            ; preds = %bb.fc
  store i64 -1, ptr %i.l, align 8, !noalias !855
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %.sroa.0228.4.i.i.i.i = phi i8 [ 0, %bb.iw ], [ 1, %bb.ix ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !855
  %i.ox = load i64, ptr %i.an, align 8, !range !8, !noalias !855, !noundef !6
  %.not416.i.i.i.i = icmp eq i64 %i.ox, 2
  br i1 %.not416.i.i.i.i, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.k, ptr noundef nonnull align 8 dereferenceable(200) %i.an, i64 200, i1 false), !noalias !855
  br label %bb.jb

bb.ja:                                            ; preds = %bb.iy
  %i.oy = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store i64 -1, ptr %i.oy, align 8, !noalias !855
  %.sroa.0344.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store ptr null, ptr %.sroa.0344.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.5345.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store i8 2, ptr %.sroa.5345.0..sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.6346.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 193
  store i8 -1, ptr %.sroa.6346.0..sroa_idx.i.i.i.i, align 1, !noalias !855
  store i64 0, ptr %i.k, align 8, !noalias !855
  %.sroa.5350.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 -1, ptr %.sroa.5350.0..sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.6351.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 -1, ptr %.sroa.6351.0..sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.7352.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr null, ptr %.sroa.7352.0..sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.8353.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i8 2, ptr %.sroa.8353.0..sroa_idx.i.i.i.i, align 8, !noalias !855
  %.sroa.9354.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 113
  store i8 2, ptr %.sroa.9354.0..sroa_idx.i.i.i.i, align 1, !noalias !855
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %.sroa.0226.4.i.i.i.i = phi i8 [ 0, %bb.iz ], [ 1, %bb.ja ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !855
  %i.oz = load i64, ptr %i.am, align 8, !range !8, !noalias !855, !noundef !6
  %.not417.i.i.i.i = icmp eq i64 %i.oz, 2
  br i1 %.not417.i.i.i.i, label %bb.jc, label %bb.jh

bb.jc:                                            ; preds = %bb.jb
  invoke void @_RINvXNvNtNtCs5pRimKDHYSy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtCsgGgPqgSfnMH_7storage5typess0_1__NtB3h_13StorageConfigNtB2a_11Deserialize11deserialize9___VisitorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([1088 x i8]) align 16 captures(none) dereferenceable(1088) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 7)
          to label %bb.je unwind label %bb.jd, !noalias !831

bb.jd:                                            ; preds = %bb.jn, %bb.jc
  %.sroa.0224.5.i.i.i.i = phi i8 [ %.sroa.0224.6.i.i.i.i, %bb.jn ], [ 1, %bb.jc ]
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.je:                                            ; preds = %bb.jc
  %i.pb = load i64, ptr %i.c, align 16, !range !10, !noalias !855, !noundef !6
  %i.pc = trunc nuw i64 %i.pb to i1
  br i1 %i.pc, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.pd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.pe = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.pe, ptr noundef nonnull align 16 dereferenceable(96) %i.pd, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  br label %bb.ji

bb.jg:                                            ; preds = %bb.je
  %i.pf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jb
  %.sink2318.i.i.i = phi ptr [ %i.pf, %bb.jg ], [ %i.am, %bb.jb ]
  %.sroa.0224.6.i.i.i.i = phi i8 [ 1, %bb.jg ], [ 0, %bb.jb ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.j, ptr noundef nonnull align 8 dereferenceable(1080) %.sink2318.i.i.i, i64 1080, i1 false), !noalias !855
  %i.pg = load i64, ptr %i.al, align 8, !range !8, !noalias !855, !noundef !6 ; 2 uses
  %.not418.i.i.i.i = icmp eq i64 %i.pg, 2
  br i1 %.not418.i.i.i.i, label %bb.jk, label %bb.jj

bb.ji:                                            ; preds = %bb.jn, %bb.jf
  %.sroa.0224.7.i.i.i.i = phi i8 [ %.sroa.0224.6.i.i.i.i, %bb.jn ], [ 1, %bb.jf ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !855
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(200) %i.k)
          to label %bb.jr unwind label %bb.jq, !noalias !831

bb.jj:                                            ; preds = %bb.jh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3152.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.661.0..sroa_idx62.i.i.i.i, i64 104, i1 false), !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.4154.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.763.0..sroa_idx64.i.i.i.i, i64 112, i1 false), !noalias !855
  br label %bb.jp

bb.jk:                                            ; preds = %bb.jh
  invoke void @_RINvXNvNtNtCs5pRimKDHYSy_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtCsl8OoimOLbh_6qdrant8settings1__NtB3h_13ServiceConfigNtB2a_11Deserialize11deserialize9___VisitorEB3j_(ptr noalias nofree noundef nonnull sret([224 x i8]) align 16 captures(none) dereferenceable(224) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 7)
          to label %bb.jm unwind label %bb.jl, !noalias !831

bb.jl:                                            ; preds = %bb.jk
  %i.ph = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1080) %i.j) #18
          to label %bb.jy unwind label %bb.jx, !noalias !831

bb.jm:                                            ; preds = %bb.jk
  %i.pi = load i64, ptr %i.b, align 16, !range !8, !noalias !855, !noundef !6 ; 2 uses
  %i.pj = icmp eq i64 %i.pi, 2
  br i1 %i.pj, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.pk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.pl, ptr noundef nonnull align 16 dereferenceable(96) %i.pk, i64 96, i1 false), !noalias !856
  store i64 2, ptr %i.cc, align 16, !alias.scope !857, !noalias !856
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5types13StorageConfigECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(1080) %i.j)
          to label %bb.ji unwind label %bb.jd, !noalias !831

bb.jo:                                            ; preds = %bb.jm
  %.sroa.4364.0..sroa_idx.i38.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5365.0..sroa_idx.i39.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.4154.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.5365.0..sroa_idx.i39.i.i.i, i64 112, i1 false), !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3152.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4364.0..sroa_idx.i38.i.i.i, i64 104, i1 false), !noalias !855
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jj
  %.sroa.0150.0.i.i.i.i = phi i64 [ %i.pg, %bb.jj ], [ %i.pi, %bb.jo ]
  %.not422.i.i.i.i = icmp eq i64 %.sroa.065.0.i.i.i.i, 2
  br i1 %.not422.i.i.i.i, label %bb.kb, label %bb.ka

bb.jq:                                            ; preds = %bb.ji
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

bb.jr:                                            ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !855
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l)
          to label %bb.js unwind label %.loopexit.split-lp.i.i.i.i, !noalias !831

bb.js:                                            ; preds = %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !855
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.iu, %bb.it, %bb.in, %bb.ik, %bb.ii, %bb.if, %bb.ib, %bb.hy, %bb.hu, %bb.hr, %bb.hn, %bb.hk, %bb.hg, %bb.hd, %bb.hb, %bb.gy, %bb.gw, %bb.gt, %bb.gp, %bb.gm, %bb.gi, %bb.gf, %bb.gb, %bb.fy, %bb.fs, %bb.fa
  %.sroa.0224.9.i.i.i.i = phi i8 [ %.sroa.0224.7.i.i.i.i, %bb.js ], [ 1, %bb.iu ], [ 1, %bb.it ], [ 1, %bb.in ], [ 1, %bb.ik ], [ 1, %bb.ii ], [ 1, %bb.if ], [ 1, %bb.ib ], [ 1, %bb.hy ], [ 1, %bb.hu ], [ 1, %bb.hr ], [ 1, %bb.hn ], [ 1, %bb.hk ], [ 1, %bb.hg ], [ 1, %bb.hd ], [ 1, %bb.hb ], [ 1, %bb.gy ], [ 1, %bb.gw ], [ 1, %bb.gt ], [ 1, %bb.gp ], [ 1, %bb.gm ], [ 1, %bb.gi ], [ 1, %bb.gf ], [ 1, %bb.gb ], [ 1, %bb.fy ], [ 1, %bb.fs ], [ 1, %bb.fa ] ; 8 uses
  %.sroa.0226.5.i.i.i.i = phi i8 [ %.sroa.0226.4.i.i.i.i, %bb.js ], [ 1, %bb.iu ], [ 1, %bb.it ], [ 1, %bb.in ], [ 1, %bb.ik ], [ 1, %bb.ii ], [ 1, %bb.if ], [ 1, %bb.ib ], [ 1, %bb.hy ], [ 1, %bb.hu ], [ 1, %bb.hr ], [ 1, %bb.hn ], [ 1, %bb.hk ], [ 1, %bb.hg ], [ 1, %bb.hd ], [ 1, %bb.hb ], [ 1, %bb.gy ], [ 1, %bb.gw ], [ 1, %bb.gt ], [ 1, %bb.gp ], [ 1, %bb.gm ], [ 1, %bb.gi ], [ 1, %bb.gf ], [ 1, %bb.gb ], [ 1, %bb.fy ], [ 1, %bb.fs ], [ 1, %bb.fa ] ; 9 uses
  %.sroa.0228.5.i.i.i.i = phi i8 [ %.sroa.0228.4.i.i.i.i, %bb.js ], [ 1, %bb.iu ], [ 1, %bb.it ], [ 1, %bb.in ], [ 1, %bb.ik ], [ 1, %bb.ii ], [ 1, %bb.if ], [ 1, %bb.ib ], [ 1, %bb.hy ], [ 1, %bb.hu ], [ 1, %bb.hr ], [ 1, %bb.hn ], [ 1, %bb.hk ], [ 1, %bb.hg ], [ 1, %bb.hd ], [ 1, %bb.hb ], [ 1, %bb.gy ], [ 1, %bb.gw ], [ 1, %bb.gt ], [ 1, %bb.gp ], [ 1, %bb.gm ], [ 1, %bb.gi ], [ 1, %bb.gf ], [ 1, %bb.gb ], [ 1, %bb.fy ], [ 1, %bb.fs ], [ 1, %bb.fa ] ; 10 uses
  %i.pn = load i64, ptr %i.ag, align 8, !range !7, !alias.scope !867, !noalias !855, !noundef !6
  %switch.i498.i.i.i.i = icmp ugt i64 %i.pn, -3
  br i1 %switch.i498.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit504.i.i.i.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigECsl8OoimOLbh_6qdrant.exit.i.i500.i.i.i.i unwind label %bb.jv, !noalias !831

bb.jv:                                            ; preds = %bb.ju
  %i.po = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %.body501.i.i.i.i unwind label %bb.jw, !noalias !831

bb.jw:                                            ; preds = %bb.jv
  %i.pp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !831
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigECsl8OoimOLbh_6qdrant.exit.i.i500.i.i.i.i: ; preds = %bb.ju
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit504.i.i.i.i unwind label %bb.ko, !noalias !831

bb.jx:                                            ; preds = %bb.mc, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %bb.lw, %bb.lv, %bb.lu, %.body513.i.i.i.i, %bb.jz, %bb.jy, %bb.jl
  %i.pq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !831
  unreachable

bb.jy:                                            ; preds = %bb.jl, %bb.jd
  %.sroa.0224.4.i.i.i.i = phi i8 [ %.sroa.0224.5.i.i.i.i, %bb.jd ], [ %.sroa.0224.6.i.i.i.i, %bb.jl ]
  %.pn.i37.i.i.i = phi { ptr, i32 } [ %i.pa, %bb.jd ], [ %i.ph, %bb.jl ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEBH_(ptr noalias nofree noundef align 8 dereferenceable(200) %i.k) #18
          to label %bb.jz unwind label %bb.jx, !noalias !831

bb.jz:                                            ; preds = %bb.jy, %bb.jq
  %.sroa.0224.8.i.i.i.i = phi i8 [ %.sroa.0224.7.i.i.i.i, %bb.jq ], [ %.sroa.0224.4.i.i.i.i, %bb.jy ]
  %.pn420.i.i.i.i = phi { ptr, i32 } [ %i.pm, %bb.jq ], [ %.pn.i37.i.i.i, %bb.jy ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #18
          to label %bb.ez unwind label %bb.jx, !noalias !831

bb.ka:                                            ; preds = %bb.jp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5158.sroa.6.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.568.sroa.2.sroa.5.i.i.i.i, i64 3, i1 false), !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.i8.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.568.sroa.8.i.i.i.i, i64 6, i1 false), !noalias !855
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jp
  %.sroa.5158.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.568.sroa.2.sroa.0.0.i.i.i.i, %bb.ka ], [ 2, %bb.jp ]
  %.sroa.5158.sroa.3.0.i.i.i.i = phi i16 [ %.sroa.568.sroa.2.sroa.2.0.i.i.i.i, %bb.ka ], [ 0, %bb.jp ]
  %.sroa.5158.sroa.4.0.i.i.i.i = phi i16 [ %.sroa.568.sroa.2.sroa.3.0.i.i.i.i, %bb.ka ], [ undef, %bb.jp ]
  %.sroa.5158.sroa.5.0.i.i.i.i = phi i8 [ %.sroa.568.sroa.2.sroa.4.0.i.i.i.i, %bb.ka ], [ 0, %bb.jp ]
  %.sroa.10.0.i22.i.i.i = phi i8 [ %.sroa.568.sroa.7.0.i.i.i.i, %bb.ka ], [ 0, %bb.jp ]
  %.sroa.9162.0.i.i.i.i = phi i8 [ %.sroa.568.sroa.6.0.i.i.i.i, %bb.ka ], [ 0, %bb.jp ]
  %.sroa.3157.0.i.i.i.i = phi i64 [ %.sroa.568.sroa.0.0.i.i.i.i.a, %bb.ka ], [ undef, %bb.jp ]
  %.sroa.0156.0.i.i.i.i = phi i64 [ %.sroa.065.0.i.i.i.i, %bb.ka ], [ 0, %bb.jp ]
  %.sroa.8161.sroa.6.0.i.i.i.i = phi i64 [ %.sroa.568.sroa.5.sroa.5.0.i.i.i.i, %bb.ka ], [ 128, %bb.jp ]
  %4 = phi <6 x i64> [ %2, %bb.ka ], [ <i64 0, i64 0, i64 100, i64 100, i64 15, i64 10>, %bb.jp ]
  %.not423.i.i.i.i = icmp eq i8 %.sroa.075.0.i.i.i.i, 2
  %..sroa.075.0.i.i.i.i = select i1 %.not423.i.i.i.i, i8 0, i8 %.sroa.075.0.i.i.i.i
  %i.pr = load i64, ptr %i.ak, align 8, !range !9, !noalias !855, !noundef !6 ; 2 uses
  %.not424.i.i.i.i = icmp eq i64 %i.pr, -1
  br i1 %.not424.i.i.i.i, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %.sroa.3407.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3407.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3407.0..sroa_idx.i.i.i.i, i64 80, i1 false), !noalias !855
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %.sroa.0405.0.i.i.i.i = phi i64 [ %i.pr, %bb.kc ], [ 2, %bb.kb ]
  %i.ps = load i64, ptr %i.aj, align 8, !range !7, !noalias !855, !noundef !6 ; 2 uses
  %.not425.i.i.i.i = icmp eq i64 %i.ps, -2
  br i1 %.not425.i.i.i.i, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %.sroa.3412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3412.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3412.0..sroa_idx.i.i.i.i, i64 96, i1 false), !noalias !855
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %.sroa.0410.0.i.i.i.i = phi i64 [ %i.ps, %bb.ke ], [ -1, %bb.kd ]
  %i.pt = load i64, ptr %i.ai, align 8, !range !9, !noalias !855, !noundef !6 ; 2 uses
  %.not426.i.i.i.i = icmp eq i64 %i.pt, -1
  br i1 %.not426.i.i.i.i, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %.sroa.3197.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3197.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3197.0..sroa_idx.i.i.i.i, i64 56, i1 false), !noalias !855
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  %.sroa.0195.0.i.i.i.i = phi i64 [ %i.pt, %bb.kg ], [ 2, %bb.kf ]
  %i.pu = load i64, ptr %i.ah, align 8, !range !9, !noalias !855, !noundef !6 ; 2 uses
  %.not427.i.i.i.i = icmp eq i64 %i.pu, -1
  br i1 %.not427.i.i.i.i, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %.sroa.3201.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3201.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3201.0..sroa_idx.i.i.i.i, i64 80, i1 false), !noalias !855
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh
  %.sroa.0199.0.i.i.i.i = phi i64 [ %i.pu, %bb.ki ], [ 2, %bb.kh ]
  %.not428.i.i.i.i = icmp eq i8 %.sroa.0109.0.i.i.i.i, 2 ; 2 uses
  %..sroa.5112.0.i.i.i.i = select i1 %.not428.i.i.i.i, i64 16843009, i64 %.sroa.5112.0.i.i.i.i
  %..sroa.0109.0.i.i.i.i = select i1 %.not428.i.i.i.i, i8 0, i8 %.sroa.0109.0.i.i.i.i
  %i.pv = load i64, ptr %i.ag, align 8, !range !7, !noalias !855, !noundef !6 ; 2 uses
  %.not429.i.i.i.i = icmp eq i64 %i.pv, -2
  br i1 %.not429.i.i.i.i, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %.sroa.3207.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3207.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3207.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !855
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.kj
  %.sroa.0205.0.i.i.i.i = phi i64 [ %i.pv, %bb.kk ], [ -1, %bb.kj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0209.i.i.i.i)
  %.sroa.23.0..sroa_idx.i23.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.23.0..sroa_idx.i23.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.0209.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(200) %i.k, i64 200, i1 false), !noalias !855
  %.sroa.0209.200..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0209.i.i.i.i, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %.sroa.0209.200..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1080) %i.j, i64 1080, i1 false), !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.cc, ptr noundef nonnull align 8 dereferenceable(1280) %.sroa.0209.i.i.i.i, i64 1280, i1 false), !noalias !856
  %.sroa.5210.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1280
  store i64 %.sroa.0150.0.i.i.i.i, ptr %.sroa.5210.0..sroa_idx.i.i.i.i, align 16, !alias.scope !857, !noalias !856
  %.sroa.6211.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6211.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3152.i.i.i.i, i64 104, i1 false), !noalias !856
  %.sroa.7212.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.7212.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.4154.i.i.i.i, i64 112, i1 false), !noalias !856
  %.sroa.8213.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1504
  store i64 %.sroa.0156.0.i.i.i.i, ptr %.sroa.8213.0..sroa_idx.i.i.i.i, align 16, !alias.scope !857, !noalias !856
  %.sroa.9214.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1512
  store i64 %.sroa.3157.0.i.i.i.i, ptr %.sroa.9214.0..sroa_idx.i.i.i.i, align 8, !alias.scope !857, !noalias !856
  %.sroa.10215.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1520
  store i64 %.sroa.5158.sroa.0.0.i.i.i.i, ptr %.sroa.10215.0..sroa_idx.i.i.i.i, align 16, !alias.scope !857, !noalias !856
  %.sroa.10215.sroa.4.0..sroa.10215.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1528
  store i16 %.sroa.5158.sroa.3.0.i.i.i.i, ptr %.sroa.10215.sroa.4.0..sroa.10215.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !857, !noalias !856
  %.sroa.10215.sroa.5.0..sroa.10215.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1530
  store i16 %.sroa.5158.sroa.4.0.i.i.i.i, ptr %.sroa.10215.sroa.5.0..sroa.10215.0..sroa_idx.sroa_idx.i.i.i.i, align 2, !alias.scope !857, !noalias !856
  %.sroa.10215.sroa.6.0..sroa.10215.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1532
  store i8 %.sroa.5158.sroa.5.0.i.i.i.i, ptr %.sroa.10215.sroa.6.0..sroa.10215.0..sroa_idx.sroa_idx.i.i.i.i, align 4, !alias.scope !857, !noalias !856
  %.sroa.10215.sroa.7.0..sroa.10215.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10215.sroa.7.0..sroa.10215.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5158.sroa.6.i.i.i.i, i64 3, i1 false), !noalias !856
  %.sroa.11216.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1536
  store <6 x i64> %4, ptr %.sroa.11216.0..sroa_idx.i.i.i.i, align 16, !alias.scope !857, !noalias !856
  %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1584
  store i64 %.sroa.8161.sroa.6.0.i.i.i.i, ptr %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx.sroa_idx.i.i.i.i, align 16, !alias.scope !857, !noalias !856
  %.sroa.14.0..sroa_idx.i26.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1592
  store i8 %.sroa.9162.0.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i26.i.i.i, align 8, !alias.scope !857, !noalias !856
  %.sroa.15.0..sroa_idx.i27.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1593
  store i8 %.sroa.10.0.i22.i.i.i, ptr %.sroa.15.0..sroa_idx.i27.i.i.i, align 1, !alias.scope !857, !noalias !856
  %.sroa.16.0..sroa_idx.i28.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16.0..sroa_idx.i28.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.i8.i.i.i, i64 6, i1 false), !noalias !856
  %.sroa.17.0..sroa_idx.i29.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1600
  store i64 %.sroa.0405.0.i.i.i.i, ptr %.sroa.17.0..sroa_idx.i29.i.i.i, align 16, !alias.scope !857, !noalias !856
  %.sroa.17.sroa.4.0..sroa.17.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.17.sroa.4.0..sroa.17.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3407.i.i.i.i, i64 80, i1 false), !noalias !856
  %.sroa.18.0..sroa_idx.i30.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1688
  store i64 %.sroa.0195.0.i.i.i.i, ptr %.sroa.18.0..sroa_idx.i30.i.i.i, align 8, !alias.scope !857, !noalias !856
  %.sroa.19.0..sroa_idx.i31.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.19.0..sroa_idx.i31.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3197.i.i.i.i, i64 56, i1 false), !noalias !856
  %.sroa.20.0..sroa_idx.i32.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1752
  store i64 %.sroa.0199.0.i.i.i.i, ptr %.sroa.20.0..sroa_idx.i32.i.i.i, align 8, !alias.scope !857, !noalias !856
  %.sroa.21.0..sroa_idx.i33.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.21.0..sroa_idx.i33.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3201.i.i.i.i, i64 80, i1 false), !noalias !856
  %.sroa.22.0..sroa_idx.i34.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1840
  store i64 0, ptr %.sroa.22.0..sroa_idx.i34.i.i.i, align 16, !alias.scope !857, !noalias !856
  %.sroa.22.sroa.4.0..sroa.22.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1848
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22.sroa.4.0..sroa.22.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !857, !noalias !856
  %.sroa.22.sroa.5.0..sroa.22.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1856
  store i64 0, ptr %.sroa.22.sroa.5.0..sroa.22.0..sroa_idx.sroa_idx.i.i.i.i, align 16, !alias.scope !857, !noalias !856
  %.sroa.24.0..sroa_idx.i35.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1888
  store i64 %.sroa.0410.0.i.i.i.i, ptr %.sroa.24.0..sroa_idx.i35.i.i.i, align 16, !alias.scope !857, !noalias !856
  %.sroa.24.sroa.4.0..sroa.24.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.24.sroa.4.0..sroa.24.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3412.i.i.i.i, i64 96, i1 false), !noalias !856
  %.sroa.25.0..sroa_idx.i36.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 1992
  store i64 %.sroa.0205.0.i.i.i.i, ptr %.sroa.25.0..sroa_idx.i36.i.i.i, align 8, !alias.scope !857, !noalias !856
  %.sroa.26.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 2000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.26.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3207.i.i.i.i, i64 32, i1 false), !noalias !856
  %.sroa.27.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 2032
  store i8 %..sroa.075.0.i.i.i.i, ptr %.sroa.27.0..sroa_idx.i.i.i.i, align 16, !alias.scope !857, !noalias !856
  %.sroa.28.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 2033
  store i8 %..sroa.0109.0.i.i.i.i, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 1, !alias.scope !857, !noalias !856
  %.sroa.29.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 2034
  store i64 %..sroa.5112.0.i.i.i.i, ptr %.sroa.29.0..sroa_idx.i.i.i.i, align 2, !alias.scope !857, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0209.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !855
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtB9_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshE3sgg5Qsfb_6config2de9MapAccessECsl8OoimOLbh_6qdrant.exit512.i.i.i.i unwind label %bb.km, !noalias !831

bb.km:                                            ; preds = %bb.kl
  %i.pw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %.body.i.i.i unwind label %bb.kn, !noalias !831

bb.kn:                                            ; preds = %bb.km
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !831
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshE3sgg5Qsfb_6config2de9MapAccessECsl8OoimOLbh_6qdrant.exit512.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit.i10.i.i.i, %bb.kl
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCshE3sgg5Qsfb_6config5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %bb.md unwind label %bb.ew, !noalias !831

.body501.i.i.i.i:                                 ; preds = %bb.lu, %bb.ko, %bb.jv, %bb.ez
  %.sroa.0224.10.i.i.i.i = phi i8 [ %.sroa.0224.1.i.i.i.i, %bb.ez ], [ %.sroa.0224.1.i.i.i.i, %bb.lu ], [ %.sroa.0224.9.i.i.i.i, %bb.jv ], [ %.sroa.0224.9.i.i.i.i, %bb.ko ] ; 2 uses
  %.sroa.0226.6.i.i.i.i = phi i8 [ %.sroa.0226.1.i.i.i.i, %bb.ez ], [ %.sroa.0226.1.i.i.i.i, %bb.lu ], [ %.sroa.0226.5.i.i.i.i, %bb.jv ], [ %.sroa.0226.5.i.i.i.i, %bb.ko ] ; 2 uses
  %.sroa.0228.6.i.i.i.i = phi i8 [ %.sroa.0228.1.i.i.i.i, %bb.ez ], [ %.sroa.0228.1.i.i.i.i, %bb.lu ], [ %.sroa.0228.5.i.i.i.i, %bb.jv ], [ %.sroa.0228.5.i.i.i.i, %bb.ko ] ; 2 uses
  %.pn451.i.i.i.i = phi { ptr, i32 } [ %.pn448.i.i.i.i, %bb.ez ], [ %.pn448.i.i.i.i, %bb.lu ], [ %i.po, %bb.jv ], [ %i.pz, %bb.ko ] ; 2 uses
  %i.py = load i64, ptr %i.ah, align 8, !range !9, !noalias !855, !noundef !6
  %.not453.i.i.i.i = icmp eq i64 %i.py, -1
  br i1 %.not453.i.i.i.i, label %bb.kq, label %bb.lv

bb.ko:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigECsl8OoimOLbh_6qdrant.exit.i.i500.i.i.i.i
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %.body501.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit504.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigECsl8OoimOLbh_6qdrant.exit.i.i500.i.i.i.i, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !855
  %i.qa = load i64, ptr %i.ah, align 8, !range !9, !alias.scope !868, !noalias !855, !noundef !6
  %i.qb = icmp eq i64 %i.qa, -1
  br i1 %i.qb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit506.i.i.i.i, label %bb.kp

bb.kp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit504.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit506.i.i.i.i unwind label %bb.kr, !noalias !831

bb.kq:                                            ; preds = %bb.lv, %bb.kr, %.body501.i.i.i.i
  %.sroa.0224.11.i.i.i.i = phi i8 [ %.sroa.0224.9.i.i.i.i, %bb.kr ], [ %.sroa.0224.10.i.i.i.i, %bb.lv ], [ %.sroa.0224.10.i.i.i.i, %.body501.i.i.i.i ] ; 2 uses
  %.sroa.0226.7.i.i.i.i = phi i8 [ %.sroa.0226.5.i.i.i.i, %bb.kr ], [ %.sroa.0226.6.i.i.i.i, %bb.lv ], [ %.sroa.0226.6.i.i.i.i, %.body501.i.i.i.i ] ; 2 uses
  %.sroa.0228.7.i.i.i.i = phi i8 [ %.sroa.0228.5.i.i.i.i, %bb.kr ], [ %.sroa.0228.6.i.i.i.i, %bb.lv ], [ %.sroa.0228.6.i.i.i.i, %.body501.i.i.i.i ] ; 2 uses
  %.pn454.i.i.i.i = phi { ptr, i32 } [ %i.qd, %bb.kr ], [ %.pn451.i.i.i.i, %bb.lv ], [ %.pn451.i.i.i.i, %.body501.i.i.i.i ] ; 2 uses
  %i.qc = load i64, ptr %i.ai, align 8, !range !9, !noalias !855, !noundef !6
  %.not456.i.i.i.i = icmp eq i64 %i.qc, -1
  br i1 %.not456.i.i.i.i, label %bb.kt, label %bb.lw

bb.kr:                                            ; preds = %bb.kp
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit506.i.i.i.i: ; preds = %bb.kp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsgGgPqgSfnMH_7storage5audit11AuditConfigEEECsl8OoimOLbh_6qdrant.exit504.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !855
  %i.qe = load i64, ptr %i.ai, align 8, !range !9, !alias.scope !869, !noalias !855, !noundef !6
  %i.qf = icmp eq i64 %i.qe, -1
  br i1 %i.qf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit508.i.i.i.i, label %bb.ks

bb.ks:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit506.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit508.i.i.i.i unwind label %bb.ku, !noalias !831

bb.kt:                                            ; preds = %bb.lw, %bb.ku, %bb.kq
  %.sroa.0224.12.i.i.i.i = phi i8 [ %.sroa.0224.9.i.i.i.i, %bb.ku ], [ %.sroa.0224.11.i.i.i.i, %bb.lw ], [ %.sroa.0224.11.i.i.i.i, %bb.kq ] ; 2 uses
  %.sroa.0226.8.i.i.i.i = phi i8 [ %.sroa.0226.5.i.i.i.i, %bb.ku ], [ %.sroa.0226.7.i.i.i.i, %bb.lw ], [ %.sroa.0226.7.i.i.i.i, %bb.kq ] ; 2 uses
  %.sroa.0228.8.i.i.i.i = phi i8 [ %.sroa.0228.5.i.i.i.i, %bb.ku ], [ %.sroa.0228.7.i.i.i.i, %bb.lw ], [ %.sroa.0228.7.i.i.i.i, %bb.kq ] ; 2 uses
  %.pn457.i.i.i.i = phi { ptr, i32 } [ %i.qh, %bb.ku ], [ %.pn454.i.i.i.i, %bb.lw ], [ %.pn454.i.i.i.i, %bb.kq ] ; 2 uses
  %i.qg = load i64, ptr %i.aj, align 8, !range !7, !noalias !855, !noundef !6
  %.not459.i.i.i.i = icmp eq i64 %i.qg, -2
  br i1 %.not459.i.i.i.i, label %bb.kw, label %bb.lx

bb.ku:                                            ; preds = %bb.ks
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit508.i.i.i.i: ; preds = %bb.ks, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsl8OoimOLbh_6qdrant8settings9GpuConfigEEEB15_.exit506.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !855
  %i.qi = load i64, ptr %i.aj, align 8, !range !7, !alias.scope !870, !noalias !855, !noundef !6
  %i.qj = icmp eq i64 %i.qi, -2
  br i1 %i.qj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit510.i.i.i.i, label %bb.kv

bb.kv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit508.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit510.i.i.i.i unwind label %bb.kx, !noalias !831

bb.kw:                                            ; preds = %bb.lx, %bb.kx, %bb.kt
  %.sroa.0224.13.i.i.i.i = phi i8 [ %.sroa.0224.9.i.i.i.i, %bb.kx ], [ %.sroa.0224.12.i.i.i.i, %bb.lx ], [ %.sroa.0224.12.i.i.i.i, %bb.kt ] ; 2 uses
  %.sroa.0226.9.i.i.i.i = phi i8 [ %.sroa.0226.5.i.i.i.i, %bb.kx ], [ %.sroa.0226.8.i.i.i.i, %bb.lx ], [ %.sroa.0226.8.i.i.i.i, %bb.kt ] ; 2 uses
  %.sroa.0228.9.i.i.i.i = phi i8 [ %.sroa.0228.5.i.i.i.i, %bb.kx ], [ %.sroa.0228.8.i.i.i.i, %bb.lx ], [ %.sroa.0228.8.i.i.i.i, %bb.kt ] ; 2 uses
  %.pn460.i.i.i.i = phi { ptr, i32 } [ %i.ql, %bb.kx ], [ %.pn457.i.i.i.i, %bb.lx ], [ %.pn457.i.i.i.i, %bb.kt ] ; 2 uses
  %i.qk = load i64, ptr %i.ak, align 8, !range !9, !noalias !855, !noundef !6
  %.not462.i.i.i.i = icmp eq i64 %i.qk, -1
  br i1 %.not462.i.i.i.i, label %bb.la, label %bb.ly

bb.kx:                                            ; preds = %bb.kv
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.kw

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit510.i.i.i.i: ; preds = %bb.kv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6config15InferenceConfigEEEB19_.exit508.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !855
  %i.qm = load i64, ptr %i.ak, align 8, !range !9, !noalias !855, !noundef !6
  %.not463.i.i.i.i = icmp eq i64 %i.qm, -1
  br i1 %.not463.i.i.i.i, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit510.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !855
  %i.qn = load i64, ptr %i.al, align 8, !range !8, !noalias !855, !noundef !6
  %.not467.i.i.i.i = icmp eq i64 %i.qn, 2
  br i1 %.not467.i.i.i.i, label %bb.lc, label %bb.ld

bb.kz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsl8OoimOLbh_6qdrant6common8debugger14DebuggerConfigEEB13_.exit510.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsl8OoimOLbh_6qdrant8settings9TlsConfigEEB11_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ak)
          to label %bb.ky unwind label %bb.lb, !noalias !831

bb.la:                                            ; preds = %bb.ly, %bb.lb, %bb.kw
  %.sroa.0224.14.i.i.i.i = phi i8 [ %.sroa.0224.9.i.i.i.i, %bb.lb ], [ %.sroa.0224.13.i.i.i.i, %bb.ly ], [ %.sroa.0224.13.i.i.i.i, %bb.kw ] ; 2 uses
  %.sroa.0226.10.i.i.i.i = phi i8 [ %.sroa.0226.5.i.i.i.i, %bb.lb ], [ %.sroa.0226.9.i.i.i.i, %bb.ly ], [ %.sroa.0226.9.i.i.i.i, %bb.kw ] ; 2 uses
  %.sroa.0228.10.i.i.i.i = phi i8 [ %.sroa.0228.5.i.i.i.i, %bb.lb ], [ %.sroa.0228.9.i.i.i.i, %bb.ly ], [ %.sroa.0228.9.i.i.i.i, %bb.kw ] ; 2 uses
  %.pn464.i.i.i.i = phi { ptr, i32 } [ %i.qp, %bb.lb ], [ %.pn460.i.i.i.i, %bb.ly ], [ %.pn460.i.i.i.i, %bb.kw ] ; 2 uses
  %i.qo = load i64, ptr %i.al, align 8, !range !8, !noalias !855, !noundef !6
  %.not466.i.i.i.i = icmp eq i64 %i.qo, 2
  br i1 %.not466.i.i.i.i, label %bb.le, label %bb.lz

bb.lb:                                            ; preds = %bb.kz
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.lc:                                            ; preds = %bb.ld, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !855
  %i.qq = load i64, ptr %i.am, align 8, !range !8, !noalias !855, !noundef !6
  %i.qr = icmp ne i64 %i.qq, 2
  %i.qs = trunc nuw i8 %.sroa.0224.9.i.i.i.i to i1
  %or.cond5.i.i.i.i = select i1 %i.qr, i1 %i.qs, i1 false
  br i1 %or.cond5.i.i.i.i, label %bb.lh, label %bb.lg

bb.ld:                                            ; preds = %bb.ky
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl8OoimOLbh_6qdrant8settings13ServiceConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.al)
          to label %bb.lc unwind label %bb.lf, !noalias !831

end_hunk_3
