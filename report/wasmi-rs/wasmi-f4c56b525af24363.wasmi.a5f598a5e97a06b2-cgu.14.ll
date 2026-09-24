Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.14?download=true
inline.NumInlined: 895
inline.NumDeleted: 521
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder6finish:bb.a
  br i1 %i.ez, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEBI_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit83, %bb.co
  %.sroa.0.0.i.i96 = phi i64 [ %i.fb, %bb.co ], [ 0, %.loopexit83 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [56 x i8], ptr %.val36, i64 %.sroa.0.0.i.i96
  %i.fb = add nuw nsw i64 %.sroa.0.0.i.i96, 1     ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(56) %i.fa)
          to label %bb.co unwind label %bb.cq

bb.cp:                                            ; preds = %.lr.ph98
  %i.fc = add i64 %.sroa.0.1.i.i97, 1             ; 2 uses
  %i.fd = icmp eq i64 %i.fc, %.val37
  br i1 %i.fd, label %.body.i64, label %.lr.ph98

bb.cq:                                            ; preds = %.lr.ph
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = icmp eq i64 %i.fb, %.val37
  br i1 %i.ff, label %.body.i64, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.cq, %bb.cp
  %.sroa.0.1.i.i97 = phi i64 [ %i.fc, %bb.cp ], [ %i.fb, %bb.cq ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [56 x i8], ptr %.val36, i64 %.sroa.0.1.i.i97
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(56) %i.fg) #31
          to label %bb.cp unwind label %bb.cr

bb.cr:                                            ; preds = %.lr.ph98
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !864
  unreachable

.body.i64:                                        ; preds = %bb.cp, %bb.cq
  %i.fi = mul nuw nsw i64 %.val37, 56
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36, i64 noundef range(i64 1, 0) %i.fi, i64 noundef 8) #30
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEBI_.exit.i: ; preds = %bb.co
  %i.fj = mul nuw nsw i64 %.val37, 56
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36, i64 noundef range(i64 1, 0) %i.fj, i64 noundef 8) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEEB1h_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEEB1h_.exit: ; preds = %.loopexit83, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEBI_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module7builder13ModuleBuilderEBH_.exit
  %.sroa.3.0 = phi ptr [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module7builder13ModuleBuilderEBH_.exit ], [ %i.cw, %.loopexit83 ], [ %i.cw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEBI_.exit.i ]
  %.sroa.0.0 = phi i64 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module7builder13ModuleBuilderEBH_.exit ], [ 0, %.loopexit83 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEBI_.exit.i ]
  %i.fk = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.fl = insertvalue { i64, ptr } %i.fk, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.fl

bb.cs:                                            ; preds = %bb.dk, %bb.cy, %bb.cw, %bb.cu, %bb.az, %bb.cn, %bb.dg, %bb.dj, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit67, %.body60, %.body57, %.body54, %.body51, %.body47, %bb.bm, %.body43, %bb.bh
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ct:                                            ; preds = %bb.az, %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.fn = load ptr, ptr %i.i, align 8, !alias.scope !868, !nonnull !4, !noundef !4
  %i.fo = atomicrmw sub ptr %i.fn, i64 1 release, align 8, !noalias !868
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.cu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit69

bb.cu:                                            ; preds = %bb.ct
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6module17ModuleHeaderInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit69 unwind label %bb.cs

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit69: ; preds = %bb.ct, %bb.cu, %bb.bc, %bb.cx, %bb.cy
  %.sroa.010.076 = phi i1 [ true, %bb.cx ], [ true, %bb.cy ], [ false, %bb.bc ], [ true, %bb.ct ], [ true, %bb.cu ]
  %.sroa.011.075 = phi i1 [ true, %bb.cx ], [ true, %bb.cy ], [ false, %bb.bc ], [ false, %bb.ct ], [ false, %bb.cu ]
  %.pn.pn74 = phi { ptr, i32 } [ %i.fv, %bb.cx ], [ %i.fv, %bb.cy ], [ %i.cy, %bb.bc ], [ %i.cq, %bb.ct ], [ %i.cq, %bb.cu ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !869)
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !869, !noundef !4 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit67, label %bb.cv

bb.cv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit69
  %i.ft = atomicrmw sub ptr %i.fr, i64 1 release, align 8, !noalias !870
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.cw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit67

bb.cw:                                            ; preds = %bb.cv
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6module17ModuleHeaderInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fq) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit67 unwind label %bb.cs

bb.cx:                                            ; preds = %bb.a
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !874, !nonnull !4, !noundef !4
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !874
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.cy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit69

bb.cy:                                            ; preds = %bb.cx
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6engine11EngineInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fw) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit69 unwind label %bb.cs

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit67: ; preds = %bb.cv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi6engine6EngineEBF_.exit69, %bb.cw
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types13DedupFuncTypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #31
          to label %bb.cz unwind label %bb.cs

bb.cz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit67
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module7builder20ModuleImportsBuilderEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.ga) #31
          to label %bb.da unwind label %bb.cs

bb.da:                                            ; preds = %bb.cz
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types13DedupFuncTypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gb) #31
          to label %bb.db unwind label %bb.cs

bb.db:                                            ; preds = %bb.da
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsefoF4u9kbII_5wasmi5table2ty9TableTypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gc) #31
          to label %bb.dc unwind label %bb.cs

bb.dc:                                            ; preds = %bb.db
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsefoF4u9kbII_5wasmi6memory2ty10MemoryTypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gd) #31
          to label %bb.dd unwind label %bb.cs

bb.dd:                                            ; preds = %bb.dc
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5zeGauAcNNa_10wasmi_core6global10GlobalTypeEECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ge) #31
          to label %bb.de unwind label %bb.cs

bb.de:                                            ; preds = %bb.dd
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr9ConstExprEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gf) #31
          to label %bb.df unwind label %bb.cs

bb.df:                                            ; preds = %bb.de
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 384
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg06799QCvd1_17wasmi_collections3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB22_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gg) #31
          to label %bb.dg unwind label %bb.cs

bb.dg:                                            ; preds = %bb.df
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val = load ptr, ptr %i.gh, align 8, !nonnull !4, !noundef !4
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.val35 = load i64, ptr %i.gi, align 8, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEEB1h_(ptr nonnull %.val, i64 %.val35) #31
          to label %bb.dh unwind label %bb.cs

bb.dh:                                            ; preds = %bb.dg
  br i1 %.sroa.011.075, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dj, %bb.dh
  br i1 %.sroa.010.076, label %bb.dk, label %common.resume

bb.dj:                                            ; preds = %bb.dh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module4data19DataSegmentsBuilderEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.gj) #31
          to label %bb.di unwind label %bb.cs

bb.dk:                                            ; preds = %bb.di
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module14custom_section19CustomSectionsInnerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.gk)
          to label %common.resume unwind label %bb.cs
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder6header(ptr noalias nofree noundef align 8 dereferenceable(416) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 20 uses
  %i.b = alloca [112 x i8], align 8               ; 5 uses
  %i.c = alloca [112 x i8], align 8               ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 5 uses
  %i.e = alloca [112 x i8], align 8               ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 5 uses
  %i.g = alloca [112 x i8], align 8               ; 5 uses
  %i.h = alloca [112 x i8], align 8               ; 5 uses
  %i.i = alloca [48 x i8], align 4                ; 4 uses
  %i.j = alloca [28 x i8], align 4                ; 9 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 4                ; 16 uses
  %i.r = alloca [248 x i8], align 8               ; 33 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.9.i = alloca [16 x i8], align 8          ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 6 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.ax, label %1

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !905
  store i32 0, ptr %i.q, align 4, !noalias !905
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 0, ptr %i.ae, align 4, !noalias !905
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 0, ptr %i.af, align 4, !noalias !905
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 0, ptr %i.ag, align 4, !noalias !905
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i32 0, ptr %i.ah, align 4, !noalias !905
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 0, ptr %i.ai, align 4, !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !905
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !906, !noalias !907, !noundef !4 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 4611686018427387904
  tail call void @llvm.assume(i1 %i.al)
  call void @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB4_21InstanceLayoutBuilder7globals(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 4 dereferenceable(48) %i.q, i64 noundef %i.ak), !noalias !908
  %i.am = load i8, ptr %i.p, align 8, !range !14, !noalias !905, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !range !909, !noalias !905, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !905
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !noalias !905
  store i8 23, ptr %i.h, align 8, !noalias !905
  %i.ar = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.h), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !905
  br label %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !905
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !906, !noalias !907, !noundef !4 ; 2 uses
  %i.au = icmp ult i64 %i.at, 288230376151711744
  call void @llvm.assume(i1 %i.au)
  call void @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB4_21InstanceLayoutBuilder8memories(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 4 dereferenceable(48) %i.q, i64 noundef %i.at), !noalias !908
  %i.av = load i8, ptr %i.o, align 8, !range !14, !noalias !905, !noundef !4
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !range !909, !noalias !905, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !905
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !noalias !905
  store i8 23, ptr %i.g, align 8, !noalias !905
  %i.ba = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.g), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !905
  br label %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !905
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !906, !noalias !907, !noundef !4 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 288230376151711744
  call void @llvm.assume(i1 %i.bd)
  call void @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB4_21InstanceLayoutBuilder6tables(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull align 4 dereferenceable(48) %i.q, i64 noundef %i.bc), !noalias !908
  %i.be = load i8, ptr %i.n, align 8, !range !14, !noalias !905, !noundef !4
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !range !909, !noalias !905, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !905
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !noalias !905
  store i8 23, ptr %i.f, align 8, !noalias !905
  %i.bj = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.f), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !905
  br label %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !905
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !906, !noalias !907, !noundef !4 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 1152921504606846976
  call void @llvm.assume(i1 %i.bm)
  call void @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB4_21InstanceLayoutBuilder5funcs(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 4 dereferenceable(48) %i.q, i64 noundef %i.bl), !noalias !908
  %i.bn = load i8, ptr %i.m, align 8, !range !14, !noalias !905, !noundef !4
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !range !909, !noalias !905, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !905
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.bq, ptr %i.br, align 1, !noalias !905
  store i8 23, ptr %i.e, align 8, !noalias !905
  %i.bs = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.e), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !905
  br label %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !905
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !906, !noalias !907, !noundef !4
  call void @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB4_21InstanceLayoutBuilder5elems(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 4 dereferenceable(48) %i.q, i64 noundef %i.bu), !noalias !908
  %i.bv = load i8, ptr %i.l, align 8, !range !14, !noalias !905, !noundef !4
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !range !909, !noalias !905, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !905
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.by, ptr %i.bz, align 1, !noalias !905
  store i8 23, ptr %i.d, align 8, !noalias !905
  %i.ca = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.d), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !905
  br label %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !905
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cc = load i32, ptr %i.cb, align 8, !range !22, !alias.scope !906, !noalias !907, !noundef !4
  %i.cd = trunc nuw i32 %i.cc to i1
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.cf = load i32, ptr %i.ce, align 4, !alias.scope !906, !noalias !907, !noundef !4
  %i.cg = zext i32 %i.cf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !905
  call void @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB4_21InstanceLayoutBuilder5datas(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 4 dereferenceable(48) %i.q, i64 noundef %i.cg), !noalias !908
  %i.ch = load i8, ptr %i.k, align 8, !range !14, !noalias !905, !noundef !4
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.q, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !905
  call void @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB4_21InstanceLayoutBuilder6finish(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %i.i), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !905
  %i.cj = load i8, ptr %i.j, align 4, !range !14, !noalias !905, !noundef !4
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread119.i, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !range !909, !noalias !905, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !905
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.cm, ptr %i.cn, align 1, !noalias !905
  store i8 23, ptr %i.c, align 8, !noalias !905
  %i.co = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.c), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !905
  br label %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread.i

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !905
  br label %bb.o

_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread119.i: ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !range !909, !noalias !905, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !905
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.cq, ptr %i.cr, align 1, !noalias !905
  store i8 23, ptr %i.b, align 8, !noalias !905
  %i.cs = call noundef nonnull align 8 ptr @_RNvMNtCsefoF4u9kbII_5wasmi5errorNtB2_5Error9from_kind(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.b), !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !905
  br label %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread.i

_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread.i: ; preds = %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread119.i, %bb.p, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d
  %.sroa.883.1118.i = phi ptr [ %i.cs, %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread119.i ], [ %i.ar, %bb.d ], [ %i.ba, %bb.f ], [ %i.bj, %bb.h ], [ %i.bs, %bb.j ], [ %i.ca, %bb.l ], [ %i.co, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !905
  br label %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder13finish_header.exit

bb.r:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.6.4.copyload.i = load i32, ptr %i.ct, align 4, !noalias !906
  %.sroa.883.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.883.4.copyload.i = load ptr, ptr %.sroa.883.4..sroa_idx.i, align 4, !noalias !906
  %.sroa.12.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.9.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.12.4..sroa_idx.i, i64 12, i1 false), !noalias !903
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder6header:bb.a
bb.ai:                                            ; preds = %bb.af
  %i.eo = extractvalue { ptr, i64 } %i.ek, 0      ; 4 uses
  %i.ep = extractvalue { ptr, i64 } %i.ek, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !903
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i64 24, i1 false)
  store i64 0, ptr %i.eq, align 8, !alias.scope !903
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.449.0..sroa_idx.i, align 8, !alias.scope !903
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %.sroa.550.0..sroa_idx.i, align 8, !alias.scope !903
  %i.er = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr9ConstExprE16into_boxed_sliceBK_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.al unwind label %bb.aj     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = icmp eq i64 %i.ep, 0
  br i1 %i.et, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCs5zeGauAcNNa_10wasmi_core6global10GlobalTypeEECsefoF4u9kbII_5wasmi.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eu = shl nuw nsw i64 %i.ep, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eo, i64 noundef range(i64 1, 0) %i.eu, i64 noundef 1) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtCs5zeGauAcNNa_10wasmi_core6global10GlobalTypeEECsefoF4u9kbII_5wasmi.exit.i

bb.al:                                            ; preds = %bb.ai
  %i.ev = extractvalue { ptr, i64 } %i.er, 0
  %i.ew = extractvalue { ptr, i64 } %i.er, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !903
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i64 24, i1 false)
  store ptr null, ptr %i.ex, align 8, !alias.scope !903
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 0, ptr %.sroa.556.0..sroa_idx.i, align 8, !alias.scope !903
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !903, !nonnull !4, !align !13, !noundef !4
  %i.fc = load i64, ptr %i.bt, align 8, !alias.scope !903, !noundef !4
  store ptr inttoptr (i64 8 to ptr), ptr %i.fa, align 8, !alias.scope !903
  store i64 0, ptr %i.bt, align 8, !alias.scope !903
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eh) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.26.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.9.i, i64 12, i1 false), !noalias !903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !903
  store i64 1, ptr %i.r, align 8, !noalias !903
  %i.fd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %i.fd, align 8, !noalias !903
  %i.fe = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ff = load <2 x i32>, ptr %i.ey, align 8, !alias.scope !903
  store <2 x i32> %i.ff, ptr %i.fe, align 8, !noalias !903
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.cv, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.cy, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.710.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %i.cz, ptr %.sroa.710.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.do, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 %i.dp, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !903
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i64 %.sroa.592.0.copyload.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !903
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i64 %.sroa.14.0.copyload.i, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !903
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  store i64 %.sroa.11.0.copyload.i, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !903
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i, align 8, !noalias !903
  %.sroa.911.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store ptr %i.dt, ptr %.sroa.911.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store i64 %i.du, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store ptr %i.ea, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  store i64 %i.eb, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  store ptr %i.eh, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  store i64 %i.ei, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  store ptr %i.eo, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  store i64 %i.ep, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  store ptr %i.ev, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  store i64 %i.ew, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  store ptr %i.fb, ptr %.sroa.19.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  store i64 %i.fc, ptr %.sroa.20.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %i.fg = load <2 x i32>, ptr %i.ez, align 8, !alias.scope !903
  store <2 x i32> %i.fg, ptr %.sroa.22.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  store i32 %.sroa.6.4.copyload.i, ptr %.sroa.24.0..sroa_idx.i, align 8, !noalias !903
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 228
  store ptr %.sroa.883.4.copyload.i, ptr %.sroa.25.0..sroa_idx.i, align 4, !noalias !903
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !917
  %i.fh = call noundef align 8 dereferenceable_or_null(248) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 249) 248, i64 noundef 8) #30, !noalias !917 ; 6 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.am, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsefoF4u9kbII_5wasmi6module17ModuleHeaderInnerEE3newB14_.exit.i, !prof !21

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 248) #33
          to label %.noexc.i unwind label %bb.an

.noexc.i:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtCsefoF4u9kbII_5wasmi6module17ModuleHeaderInnerEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.r) #31
          to label %common.resume.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume.i:                                  ; preds = %bb.au, %bb.at, %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types13DedupFuncTypeEEB1h_.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.fj, %bb.an ], [ %.pn.pn.pn.pn.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types13DedupFuncTypeEEB1h_.exit.i ], [ %i.fr, %bb.au ], [ %i.fr, %bb.at ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsefoF4u9kbII_5wasmi6module17ModuleHeaderInnerEE3newB14_.exit.i: ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.fh, ptr noundef nonnull align 8 dereferenceable(248) %i.r, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !903
  store ptr %i.fh, ptr %i.z, align 8, !noalias !903
  %i.fl = atomicrmw add ptr %i.fh, i64 1 monotonic, align 8
  %i.fm = icmp slt i64 %i.fl, 0
  br i1 %i.fm, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsefoF4u9kbII_5wasmi6module17ModuleHeaderInnerEE3newB14_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.fn = load ptr, ptr %i.aa, align 8, !alias.scope !919, !noundef !4 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fp = atomicrmw sub ptr %i.fn, i64 1 release, align 8, !noalias !920
  %i.fq = icmp eq i64 %i.fp, 1
  br i1 %i.fq, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6module17ModuleHeaderInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit.i unwind label %bb.at

bb.as:                                            ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsefoF4u9kbII_5wasmi6module17ModuleHeaderInnerEE3newB14_.exit.i
  call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.fh, ptr %i.aa, align 8, !alias.scope !903
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.fs = load ptr, ptr %i.z, align 8, !alias.scope !924, !noalias !903, !nonnull !4, !noundef !4
  %i.ft = atomicrmw sub ptr %i.fs, i64 1 release, align 8, !noalias !924
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.au, label %common.resume.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsefoF4u9kbII_5wasmi6module17ModuleHeaderInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #29
          to label %common.resume.i unwind label %bb.av

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  store ptr %i.fh, ptr %i.aa, align 8, !alias.scope !903
  %i.fv = load ptr, ptr %i.z, align 8, !noalias !903, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !903
  br label %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder13finish_header.exit

bb.av:                                            ; preds = %bb.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsefoF4u9kbII_5wasmi6engine10func_types13DedupFuncTypeEEB1h_.exit.i
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder13finish_header.exit: ; preds = %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit.i
  %.sroa.3.0.i = phi ptr [ %.sroa.883.1118.i, %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread.i ], [ %i.fv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit.i ]
  %.sroa.0.0.i = phi i64 [ 1, %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder22finish_instance_layout.exit.thread.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsefoF4u9kbII_5wasmi6module12ModuleHeaderEEB11_.exit.i ]
  %i.fx = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %bb.aw

bb.aw:                                            ; preds = %1, %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder13finish_header.exit
  %.pn = phi { i64, ptr } [ { i64 0, ptr poison }, %1 ], [ %i.fx, %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder13finish_header.exit ]
  %.pn2 = phi ptr [ %2, %1 ], [ %.sroa.3.0.i, %_RNvMNtNtCsefoF4u9kbII_5wasmi6module7builderNtB2_13ModuleBuilder13finish_header.exit ]
  %.merged = insertvalue { i64, ptr } %.pn, ptr %.pn2, 1
  ret { i64, ptr } %.merged

1:                                                ; preds = %bb.b
  %2 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  br label %bb.aw

bb.ax:                                            ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi6module7builderNtB5_13ModuleBuilder9set_start(ptr noalias nofree noundef align 8 dereferenceable(416) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !range !22, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.g = trunc nuw i32 %i.e to i1
  br i1 %i.g, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi6module6export7FuncIdxNtB6_5Debug3fmtBC_, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtCsefoF4u9kbII_5wasmi6module6exportNtB5_7FuncIdxNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %i.d, align 8
  store i32 %1, ptr %i.f, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCsefoF4u9kbII_5wasmi6memory4dataNtB5_17DataSegmentEntity10drop_bytes(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !933, !noundef !4 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsefoF4u9kbII_5wasmi6module4data23PassiveDataSegmentBytesEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !934
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsefoF4u9kbII_5wasmi6module4data23PassiveDataSegmentBytesEEB13_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsefoF4u9kbII_5wasmi6module4data23PassiveDataSegmentBytesEEB13_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  resume { ptr, i32 } %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsefoF4u9kbII_5wasmi6module4data23PassiveDataSegmentBytesEEB13_.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs1_NtNtCsefoF4u9kbII_5wasmi6module7builderNtB5_13ModuleBuilder17push_data_segment(ptr noalias nofree noundef align 8 dereferenceable(416) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = tail call noundef align 8 ptr @_RNvMs2_NtNtCsefoF4u9kbII_5wasmi6module4dataNtB5_19DataSegmentsBuilder17push_data_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsefoF4u9kbII_5wasmi6module7builderNtB5_13ModuleBuilder21reserve_data_segments(ptr noalias nofree noundef align 8 dereferenceable(416) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @_RNvMs2_NtNtCsefoF4u9kbII_5wasmi6module4dataNtB5_19DataSegmentsBuilder7reserve(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294966782) i64 @_RNvMs2_NtNtCsg06799QCvd1_17wasmi_collections5arena5dedupINtB5_10DedupArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1f_6engine10func_types13DedupFuncTypeENtNtNtB1f_4func2ty8FuncTypeE5allocB1f_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.877 = alloca [7 x i8], align 1           ; 6 uses
  %.sroa.22 = alloca [16 x i8], align 8           ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [56 x i8], align 8                ; 14 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  %i.i = load i8, ptr %1, align 8, !range !14, !alias.scope !1077, !noalias !1078, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i16, ptr %i.k, align 2, !alias.scope !1077, !noalias !1078, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1077, !noalias !1078, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1079
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !1077, !noalias !1078, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.t = load i8, ptr %i.s, align 2, !alias.scope !1077, !noalias !1078, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.sroa.5.sroa.5.1.copyload.i = load i8, ptr %i.u, align 1, !alias.scope !1080, !noalias !1073
  %.sroa.8.3..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.8.3.copyload.i = load i32, ptr %.sroa.8.3..sroa_idx.i, align 4, !alias.scope !1080, !noalias !1073
  %.sroa.81.3..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.81.3.copyload.i = load ptr, ptr %.sroa.81.3..sroa_idx.i, align 8, !alias.scope !1080, !noalias !1073
  %i.v = zext i8 %.sroa.5.sroa.5.1.copyload.i to i16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.sroa.5.sroa.0.0.extract.trunc.i = trunc i16 %i.l to i8
  %.sroa.5.sroa.5.0.extract.shift.i = lshr i16 %i.l, 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.thread94:                                        ; preds = %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1d_6handle9RawHandleNtNtNtB1d_6engine10func_types13DedupFuncTypeEE5entryB1d_.exit.thread, %bb.ah, %bb.l
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread89

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.sroa.5.0.i = phi i16 [ %.sroa.5.sroa.5.0.extract.shift.i, %bb.d ], [ %i.v, %bb.c ]
  %.sroa.5.sroa.0.0.i = phi i8 [ %.sroa.5.sroa.0.0.extract.trunc.i, %bb.d ], [ %i.t, %bb.c ]
  %.sroa.81.0.i = phi ptr [ %i.n, %bb.d ], [ %.sroa.81.3.copyload.i, %bb.c ] ; 2 uses
  %.sroa.8.0.i = phi i32 [ undef, %bb.d ], [ %.sroa.8.3.copyload.i, %bb.c ]
  %.sroa.4.0.i = phi i8 [ undef, %bb.d ], [ %i.r, %bb.c ]
  %storemerge.i.i = phi i8 [ 1, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.9.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.i = load i64, ptr %.sroa.9.0.in.i, align 8, !alias.scope !1081, !noalias !1073 ; 2 uses
  %.sroa.5.sroa.5.0.insert.shift.i = shl nuw i16 %.sroa.5.sroa.5.0.i, 8
  %.sroa.5.sroa.0.0.insert.ext.i = zext i8 %.sroa.5.sroa.0.0.i to i16
  %.sroa.5.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.5.sroa.5.0.insert.shift.i, %.sroa.5.sroa.0.0.insert.ext.i
  store i8 %storemerge.i.i, ptr %i.h, align 8, !alias.scope !1073, !noalias !1074
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store i8 %.sroa.4.0.i, ptr %.sroa.43.0..sroa_idx.i, align 1, !alias.scope !1073, !noalias !1074
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i16 %.sroa.5.sroa.0.0.insert.insert.i, ptr %.sroa.5.0..sroa_idx4.i, align 2, !alias.scope !1073, !noalias !1074
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %.sroa.8.0.i, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !1073, !noalias !1074
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  store ptr %.sroa.81.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1073, !noalias !1074
  %.sroa.85.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %.sroa.9.0.i, ptr %.sroa.85.0..sroa_idx.i, align 8, !alias.scope !1073, !noalias !1074
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.877)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1083, !noalias !1085, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1d_6handle9RawHandleNtNtNtB1d_6engine10func_types13DedupFuncTypeEE5entryB1d_.exit.thread105, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1086
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1083, !noalias !1085, !noundef !4
  invoke void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1E_6handle9RawHandleNtNtNtB1E_6engine10func_types13DedupFuncTypeENtB1i_14LeafOrInternalE11search_treeB1y_EB1E_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull %i.x, i64 noundef %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.i unwind label %bb.m, !noalias !1087

_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1d_6handle9RawHandleNtNtNtB1d_6engine10func_types13DedupFuncTypeEE5entryB1d_.exit.thread105: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.877, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.43.0..sroa_idx.i, i64 7, i1 false), !alias.scope !1085, !noalias !1083
  %i.aa = ptrtoint ptr %i.w to i64
  br label %bb.p

bb.h:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1087
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.b, align 8, !range !9, !noalias !1086, !noundef !4
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.18.32.copyload = load ptr, ptr %i.ae, align 8, !noalias !1088 ; 4 uses
  %.sroa.22.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ad, label %_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1d_6handle9RawHandleNtNtNtB1d_6engine10func_types13DedupFuncTypeEE5entryB1d_.exit, label %bb.j
end_hunk_1
