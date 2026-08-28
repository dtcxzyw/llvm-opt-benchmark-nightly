Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.06?download=true
inline.NumInlined: 2315
inline.NumDeleted: 936
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser15flush_profiling:bb.a
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.cq

.body43:                                          ; preds = %bb.cq, %bb.co, %.body40, %.body38
  %.pn8 = phi { ptr, i32 } [ %i.ih, %.body38 ], [ %.pn, %.body40 ], [ %i.iy, %bb.cq ], [ %i.iw, %bb.co ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #38
          to label %.body47 unwind label %bb.bm

bb.cq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i42
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body43

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.iz = load i64, ptr %i.z, align 8, !range !395, !alias.scope !3563, !noundef !9
  %i.ja = icmp eq i64 %i.iz, -1
  br i1 %i.ja, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit, label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i46 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body47 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i46: ; preds = %bb.cr
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit unwind label %bb.cb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.jd = load i64, ptr %i.ac, align 8, !range !395, !alias.scope !3566, !noundef !9
  %i.je = icmp eq i64 %i.jd, -1
  br i1 %i.je, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.cu

bb.cu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i50 unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body51 unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i50: ; preds = %bb.cu
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit unwind label %bb.cx

.body51:                                          ; preds = %bb.cx, %bb.cv, %.body47
  %.pn12 = phi { ptr, i32 } [ %.pn10, %.body47 ], [ %i.jh, %bb.cx ], [ %i.jf, %bb.cv ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #38
          to label %.body54 unwind label %bb.bm

bb.cx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i50
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.body51

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvXNtCs8frGy5WneL6_4fish4flogNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB2_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.cz unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit
  %i.ji = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #38
          to label %.body54 unwind label %bb.bm

bb.cz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.jl = load i64, ptr %i.ag, align 8, !range !36, !noundef !9
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !noundef !9 ; 2 uses
  %i.jo = icmp sgt i64 %i.jn, -1
  call void @llvm.assume(i1 %i.jo)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jn
  store ptr %i.jk, ptr %i.w, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.jl, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.jk, ptr %i.jr, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.jp, ptr %i.js, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.w)
          to label %bb.da unwind label %bb.cy

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body54 unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.da
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.bu

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.jv = load i64, ptr %i.gv, align 8, !alias.scope !3569, !noundef !9 ; 3 uses
  %i.jw = load i64, ptr %i.ai, align 8, !range !36, !alias.scope !3569, !noundef !9
  %i.jx = icmp eq i64 %i.jv, %i.jw
  br i1 %i.jx, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #40
          to label %bb.de unwind label %bb.bu

bb.de:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.dd
  %i.jy = load ptr, ptr %i.gu, align 8, !alias.scope !3569, !nonnull !9, !noundef !9
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jv
  store i8 10, ptr %i.jz, align 1
  %i.ka = add i64 %i.jv, 1                        ; 2 uses
  store i64 %i.ka, ptr %i.gv, align 8, !alias.scope !3569
  %i.kb = load ptr, ptr %i.gu, align 8, !nonnull !9, !noundef !9
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kb, i64 noundef %i.ka)
          to label %bb.df unwind label %bb.bu

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.dh unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body60 unwind label %bb.di

bb.dh:                                            ; preds = %bb.df
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.bo

bb.di:                                            ; preds = %bb.dg
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.bq
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser15set_color_theme(ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 12 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 17 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef float @_RNvMs1_CsfWaNi3IUeZW_11xterm_colorNtB5_5Color19perceived_lightness(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(8) %1)
  %i.q = fcmp olt float %i.p, 5.000000e-01        ; 2 uses
  %spec.select = select i1 %i.q, i64 4, i64 5
  %spec.select43 = select i1 %i.q, ptr @215, ptr @214
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.7.0 = phi i64 [ 7, %bb.a ], [ %spec.select, %bb.b ] ; 6 uses
  %.sroa.0.0 = phi ptr [ @213, %bb.a ], [ %spec.select43, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_RNvYNtNtNtCs8frGy5WneL6_4fish3env11environment8EnvStackNtB4_11Environment3getB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @216, i64 noundef 25)
  %i.s = load ptr, ptr %i.o, align 8, !noundef !9
  %.not24 = icmp eq ptr %i.s, null
  br i1 %.not24, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3572)
  %i.t = load ptr, ptr %i.f, align 8, !alias.scope !3572, !nonnull !9, !noundef !9 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !3572, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3572
  store ptr %.sroa.0.0, ptr %i.a, align 8, !noalias !3572
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.7.0, ptr %i.w, align 8, !noalias !3572
  %i.x = icmp eq i64 %i.v, 1
  br i1 %i.x, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.z = invoke noundef zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_14SlicePartialEqRNtNtBG_6utfstr8Utf32StrE17equal_same_lengthCs8frGy5WneL6_4fish(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %._crit_edge.i unwind label %bb.f, !noalias !3572

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !3575
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #40
          to label %common.resume unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = phi i1 [ false, %bb.d ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3572
  %i.ad = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !3582
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %_RNCNvMs5_NtCs8frGy5WneL6_4fish6parserNtB7_6Parser15set_color_themes_0B9_.exit

bb.h:                                             ; preds = %._crit_edge.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #40
  br label %_RNCNvMs5_NtCs8frGy5WneL6_4fish6parserNtB7_6Parser15set_color_themes_0B9_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %.body36, %bb.ak, %bb.ai, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %bb.ai ], [ %i.aa, %bb.f ], [ %i.aa, %bb.g ], [ %i.cm, %bb.ak ], [ %.pn27, %.body36 ]
  resume { ptr, i32 } %common.resume.op

_RNCNvMs5_NtCs8frGy5WneL6_4fish6parserNtB7_6Parser15set_color_themes_0B9_.exit: ; preds = %._crit_edge.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %.sroa.0.0.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.c, %_RNCNvMs5_NtCs8frGy5WneL6_4fish6parserNtB7_6Parser15set_color_themes_0B9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ag = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 40) monotonic, align 8
  %.not25 = icmp eq i8 %i.ag, 0
  br i1 %.not25, label %bb.l, label %bb.n

bb.k:                                             ; preds = %_RNCNvMs5_NtCs8frGy5WneL6_4fish6parserNtB7_6Parser15set_color_themes_0B9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ao

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42
  %i.ah = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, 9) 8) #42 ; 6 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !279

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #43
  unreachable

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.7.0, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.al unwind label %bb.ak

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 6 uses
  store i64 0, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories6reader, i64 24))
          to label %bb.p unwind label %bb.o

.body36:                                          ; preds = %bb.ad, %bb.o, %bb.aa, %.body
  %.pn27 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bq, %bb.aa ], [ %i.al, %bb.o ], [ %i.cb, %bb.ad ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #38
          to label %common.resume unwind label %bb.aq

bb.o:                                             ; preds = %bb.af, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.t, %bb.r, %bb.ag, %bb.p, %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body36

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.ao = load i64, ptr %i.m, align 8, !range !36, !noundef !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !9 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  store ptr %i.an, ptr %i.e, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ao, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.an, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.as, ptr %i.av, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.aw = load i64, ptr %i.ak, align 8, !alias.scope !3589, !noundef !9 ; 4 uses
  %i.ax = load i64, ptr %i.n, align 8, !range !36, !alias.scope !3589, !noundef !9
  %i.ay = icmp eq i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #40
          to label %bb.s unwind label %bb.o

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.az = load ptr, ptr %i.aj, align 8, !alias.scope !3589, !nonnull !9, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw
  store i8 58, ptr %i.ba, align 1
  %i.bb = add i64 %i.aw, 1                        ; 3 uses
  store i64 %i.bb, ptr %i.ak, align 8, !alias.scope !3589
  %i.bc = load i64, ptr %i.n, align 8, !range !36, !alias.scope !3592, !noundef !9
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #40
          to label %bb.u unwind label %bb.o

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.be = load ptr, ptr %i.aj, align 8, !alias.scope !3592, !nonnull !9, !noundef !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  store i8 32, ptr %i.bf, align 1
  %i.bg = add i64 %i.aw, 2
  store i64 %i.bg, ptr %i.ak, align 8, !alias.scope !3592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.513.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @216, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 25, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store i64 1, ptr %i.bh, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %.sroa.0.0, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %.sroa.7.0, ptr %.sroa.57.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 16, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @122, ptr noalias nofree noundef nonnull align 8 %i.h, i64 noundef 2)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.h) #38
          to label %.body unwind label %bb.aq

bb.w:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !3595)
  %i.bj = load i8, ptr %i.i, align 8, !range !197, !alias.scope !3595, !noalias !3598, !noundef !9
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.x, label %.preheader.preheader, !prof !524

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3600
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !range !2841, !alias.scope !3595, !noalias !3598, !noundef !9
  store i8 %i.bm, ptr %i.b, align 1, !noalias !3600
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #41
          to label %.noexc unwind label %bb.v

end_hunk_0
