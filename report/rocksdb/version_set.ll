Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb18VersionStorageInfo29EstimateCompactionBytesNeededERKNS_16MutableCFOptionsE:bb.a
  %wide.load149 = load <4 x ptr>, ptr %i.dv, align 8, !tbaa !225
  %wide.gep150 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load146, i64 24
  %wide.gep151 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load147, i64 24
  %wide.gep152 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load148, i64 24
  %wide.gep153 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load149, i64 24
  %wide.masked.gather154 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep150, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !437
  %wide.masked.gather155 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep151, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !437
  %wide.masked.gather156 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep152, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !437
  %wide.masked.gather157 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep153, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !437
  %i.dw = add <4 x i64> %wide.masked.gather154, %vec.phi141 ; 2 uses
  %i.dx = add <4 x i64> %wide.masked.gather155, %vec.phi142 ; 2 uses
  %i.dy = add <4 x i64> %wide.masked.gather156, %vec.phi143 ; 2 uses
  %i.dz = add <4 x i64> %wide.masked.gather157, %vec.phi144 ; 2 uses
  %index.next158 = add nuw i64 %index140, 16      ; 2 uses
  %i.ea = icmp eq i64 %index.next158, %n.vec138
  br i1 %i.ea, label %middle.block159, label %vector.body139, !llvm.loop !1363

middle.block159:                                  ; preds = %vector.body139
  %bin.rdx160 = add <4 x i64> %i.dx, %i.dw
  %bin.rdx161 = add <4 x i64> %i.dy, %bin.rdx160
  %bin.rdx162 = add <4 x i64> %i.dz, %bin.rdx161
  %i.eb = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx162) ; 3 uses
  %cmp.n163 = icmp eq i64 %i.do, %n.vec138
  br i1 %cmp.n163, label %._crit_edge80, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block159
  %min.epilog.iters.check169 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check169, label %.lr.ph79.preheader, label %vec.epilog.ph170, !prof !665

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check135, %vec.epilog.iter.check168
  %vec.epilog.resume.val164 = phi i64 [ %n.vec138, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check135 ]
  %bc.merge.rdx165 = phi i64 [ %i.eb, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check135 ]
  %n.vec171 = and i64 %i.do, 4611686018427387900  ; 3 uses
  %i.ec = shl i64 %n.vec171, 3
  %i.ed = getelementptr i8, ptr %i.df, i64 %i.ec
  %i.ee = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx165, i64 0
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph170
  %index173 = phi i64 [ %vec.epilog.resume.val164, %vec.epilog.ph170 ], [ %index.next179, %vec.epilog.vector.body172 ] ; 2 uses
  %vec.phi174 = phi <4 x i64> [ %i.ee, %vec.epilog.ph170 ], [ %i.eg, %vec.epilog.vector.body172 ]
  %i.ef = shl i64 %index173, 3
  %next.gep175 = getelementptr i8, ptr %i.df, i64 %i.ef
  %wide.load176 = load <4 x ptr>, ptr %next.gep175, align 8, !tbaa !225
  %wide.gep177 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load176, i64 24
  %wide.masked.gather178 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep177, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !437
  %i.eg = add <4 x i64> %wide.masked.gather178, %vec.phi174 ; 2 uses
  %index.next179 = add nuw i64 %index173, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next179, %n.vec171
  br i1 %i.eh, label %vec.epilog.middle.block180, label %vec.epilog.vector.body172, !llvm.loop !1364

vec.epilog.middle.block180:                       ; preds = %vec.epilog.vector.body172
  %i.ei = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.eg) ; 2 uses
  %cmp.n181 = icmp eq i64 %i.do, %n.vec171
  br i1 %cmp.n181, label %._crit_edge80, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %iter.check166, %vec.epilog.iter.check168, %vec.epilog.middle.block180
  %.24577.ph = phi i64 [ 0, %iter.check166 ], [ %i.eb, %vec.epilog.iter.check168 ], [ %i.ei, %vec.epilog.middle.block180 ]
  %.sroa.055.076.ph = phi ptr [ %i.df, %iter.check166 ], [ %i.dr, %vec.epilog.iter.check168 ], [ %i.ed, %vec.epilog.middle.block180 ]
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.lr.ph79
  %.24577 = phi i64 [ %i.em, %.lr.ph79 ], [ %.24577.ph, %.lr.ph79.preheader ]
  %.sroa.055.076 = phi ptr [ %i.en, %.lr.ph79 ], [ %.sroa.055.076.ph, %.lr.ph79.preheader ] ; 2 uses
  %i.ej = load ptr, ptr %.sroa.055.076, align 8, !tbaa !225
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !437
  %i.em = add i64 %i.el, %.24577                  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.055.076, i64 8 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.dh
  br i1 %i.eo, label %._crit_edge80, label %.lr.ph79, !llvm.loop !1365

._crit_edge80:                                    ; preds = %.lr.ph79, %vec.epilog.middle.block180, %middle.block159
  %.lcssa106 = phi i64 [ %i.ei, %vec.epilog.middle.block180 ], [ %i.eb, %middle.block159 ], [ %i.em, %.lr.ph79 ] ; 3 uses
  %.not54 = icmp eq i64 %.lcssa106, 0
  br i1 %.not54, label %.thread, label %bb.i

bb.i:                                             ; preds = %._crit_edge80
  %i.ep = uitofp i64 %i.dc to double
  %i.eq = uitofp i64 %.lcssa106 to double
  %i.er = uitofp i64 %i.cy to double
  %i.es = fdiv double %i.eq, %i.er
  %i.et = fadd double %i.es, 1.000000e+00
  %i.eu = fmul double %i.et, %i.ep
  %i.ev = fptoui double %i.eu to i64
  %i.ew = add i64 %i.cx, %i.ev                    ; 2 uses
  store i64 %i.ew, ptr %i.be, align 8, !tbaa !1355
  br label %.thread

.thread:                                          ; preds = %bb.h, %._crit_edge80, %bb.i, %bb.g
  %i.ex = phi i64 [ %i.ew, %bb.i ], [ %i.cx, %._crit_edge80 ], [ %i.cx, %bb.g ], [ %i.cx, %bb.h ]
  %.4 = phi i64 [ %.lcssa106, %bb.i ], [ 0, %._crit_edge80 ], [ 0, %bb.g ], [ 0, %bb.h ]
  %.2 = phi i64 [ %i.dc, %bb.i ], [ %i.dc, %._crit_edge80 ], [ 0, %bb.g ], [ %i.dc, %bb.h ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bi, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit68, label %bb.d, !llvm.loop !1366

.loopexit68:                                      ; preds = %.thread, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7rocksdb18VersionStorageInfo16MaxBytesForLevelEi(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(4288) %0, i32 noundef %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !160
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load i64, ptr %i.d, align 8, !tbaa !439
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionStorageInfo22ComputeCompactionScoreERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr noundef nonnull align 8 dereferenceable(875) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 873 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1367, !range !470, !noundef !471
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 387 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !470
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i32, ptr %i.j, align 16             ; 3 uses
  %.0.v.i = select i1 %i.i, i32 -2, i32 -1
  %.0.i = add i32 %.0.v.i, %i.k                   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2704 ; 2 uses
  %i.m = load i8, ptr %i.l, align 16, !tbaa !973  ; 2 uses
  %i.n = icmp eq i8 %i.m, 0                       ; 2 uses
  %.not232244 = icmp slt i32 %i.k, 2
  %.not232 = select i1 %i.n, i1 %.not232244, i1 false
  br i1 %.not232, label %._crit_edge242, label %.lr.ph236

.lr.ph236:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 748 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2804 ; 2 uses
  %.not133220 = icmp slt i32 %.0.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4072
  %i.ai = add i32 %.0.i, 1
  %wide.trip.count = zext i32 %i.ai to i64
  %i.aj = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.aj, 3                    ; 3 uses
  %i.ak = add nsw i32 %.0.i, -1
  %i.al = icmp ult i32 %i.ak, 3
  %unroll_iter = and i64 %i.aj, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod342 = icmp ne i64 %xtraiter, 0
  br label %bb.b

.preheader:                                       ; preds = %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread
  %i.am = icmp sgt i32 %.pr, 2
  br i1 %i.am, label %.lr.ph241, label %._crit_edge242

.lr.ph241:                                        ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4072
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4096
  br label %bb.bk

bb.b:                                             ; preds = %.lr.ph236, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread
  %indvars.iv250 = phi i64 [ 0, %.lr.ph236 ], [ %indvars.iv.next251, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ] ; 12 uses
  %i.ap = phi i1 [ %i.n, %.lr.ph236 ], [ true, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ]
  %i.aq = phi i8 [ %i.m, %.lr.ph236 ], [ 0, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ] ; 2 uses
  %.0234 = phi double [ 0.000000e+00, %.lr.ph236 ], [ %.3, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ] ; 6 uses
  %i.ar = phi i32 [ %i.k, %.lr.ph236 ], [ %.pr, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread ]
  %i.as = icmp eq i64 %indvars.iv250, 0
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !29  ; 9 uses
  br i1 %i.as, label %bb.c, label %bb.ba

bb.c:                                             ; preds = %bb.b
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !536 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !536 ; 2 uses
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %._crit_edge216, label %.lr.ph215

._crit_edge216:                                   ; preds = %bb.e, %bb.c
  %.0125.lcssa = phi i32 [ 0, %bb.c ], [ %.1126, %bb.e ] ; 3 uses
  %.0123.lcssa = phi i64 [ 0, %bb.c ], [ %.1124, %bb.e ] ; 6 uses
  %.1.lcssa = phi double [ %.0234, %bb.c ], [ %i.bd, %bb.e ] ; 7 uses
  %i.ay = icmp ne i8 %i.aq, 1
  %brmerge = select i1 %i.ay, i1 true, i1 %.not133220
  br i1 %brmerge, label %.loopexit205, label %.lr.ph223.preheader

.lr.ph223.preheader:                              ; preds = %._crit_edge216
  br i1 %i.al, label %.lr.ph223.epil.preheader, label %.lr.ph223

.lr.ph215:                                        ; preds = %bb.c, %bb.e
  %.1213 = phi double [ %i.bd, %bb.e ], [ %.0234, %bb.c ]
  %.0123212 = phi i64 [ %.1124, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.0125211 = phi i32 [ %.1126, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0185.0210 = phi ptr [ %i.bl, %bb.e ], [ %i.au, %bb.c ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.0185.0210, align 8, !tbaa !225 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !437
  %i.bc = uitofp i64 %i.bb to double
  %i.bd = fadd double %.1213, %i.bc               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 188
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph215
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1226
  %i.bj = add i64 %i.bi, %.0123212
  %i.bk = add nsw i32 %.0125211, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph215
  %.1126 = phi i32 [ %.0125211, %.lr.ph215 ], [ %i.bk, %bb.d ] ; 2 uses
  %.1124 = phi i64 [ %.0123212, %.lr.ph215 ], [ %i.bj, %bb.d ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0185.0210, i64 8 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aw
  br i1 %i.bm, label %._crit_edge216, label %.lr.ph215

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %bb.j ], [ 1, %.lr.ph223.preheader ] ; 5 uses
  %.2127221 = phi i32 [ %.3128.3, %bb.j ], [ %.0125.lcssa, %.lr.ph223.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %bb.j ], [ 0, %.lr.ph223.preheader ]
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !536 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !536
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph223.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph223
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !225
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 188
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.bv = xor i8 %i.bu, 1
  %i.bw = zext nneg i8 %i.bv to i32
  %spec.select = add nsw i32 %.2127221, %i.bw
  br label %.lr.ph223.1

.lr.ph223.1:                                      ; preds = %bb.f, %.lr.ph223
  %.3128 = phi i32 [ %.2127221, %.lr.ph223 ], [ %spec.select, %bb.f ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !536 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !536
  %i.cc = icmp eq ptr %i.bz, %i.cb
  br i1 %i.cc, label %.lr.ph223.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph223.1
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !225
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 188
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.cg = xor i8 %i.cf, 1
  %i.ch = zext nneg i8 %i.cg to i32
  %spec.select.1 = add nsw i32 %.3128, %i.ch
  br label %.lr.ph223.2

.lr.ph223.2:                                      ; preds = %bb.g, %.lr.ph223.1
  %.3128.1 = phi i32 [ %.3128, %.lr.ph223.1 ], [ %spec.select.1, %bb.g ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !536 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !536
  %i.cn = icmp eq ptr %i.ck, %i.cm
  br i1 %i.cn, label %.lr.ph223.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph223.2
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !225
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 188
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.cr = xor i8 %i.cq, 1
  %i.cs = zext nneg i8 %i.cr to i32
  %spec.select.2 = add nsw i32 %.3128.1, %i.cs
  br label %.lr.ph223.3

.lr.ph223.3:                                      ; preds = %bb.h, %.lr.ph223.2
  %.3128.2 = phi i32 [ %.3128.1, %.lr.ph223.2 ], [ %spec.select.2, %bb.h ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !536 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !536
  %i.cy = icmp eq ptr %i.cv, %i.cx
  br i1 %i.cy, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph223.3
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !225
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 188
  %i.db = load i8, ptr %i.da, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.dc = xor i8 %i.db, 1
  %i.dd = zext nneg i8 %i.dc to i32
  %spec.select.3 = add nsw i32 %.3128.2, %i.dd
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph223.3
  %.3128.3 = phi i32 [ %.3128.2, %.lr.ph223.3 ], [ %spec.select.3, %bb.i ] ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit205.loopexit.unr-lcssa, label %.lr.ph223, !llvm.loop !1369

.loopexit205.loopexit.unr-lcssa:                  ; preds = %bb.j
  br i1 %lcmp.mod.not, label %.loopexit205, label %.lr.ph223.epil.preheader

.lr.ph223.epil.preheader:                         ; preds = %.loopexit205.loopexit.unr-lcssa, %.lr.ph223.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph223.preheader ], [ %indvars.iv.next.3, %.loopexit205.loopexit.unr-lcssa ]
  %.2127221.epil.init = phi i32 [ %.0125.lcssa, %.lr.ph223.preheader ], [ %.3128.3, %.loopexit205.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod342)
  br label %.lr.ph223.epil

.lr.ph223.epil:                                   ; preds = %bb.l, %.lr.ph223.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.l ], [ %indvars.iv.epil.init, %.lr.ph223.epil.preheader ] ; 2 uses
  %.2127221.epil = phi i32 [ %.3128.epil, %bb.l ], [ %.2127221.epil.init, %.lr.ph223.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.l ], [ 0, %.lr.ph223.epil.preheader ]
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv.epil ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !536 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !536
  %i.di = icmp eq ptr %i.df, %i.dh
  br i1 %i.di, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph223.epil
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !225
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 188
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.dm = xor i8 %i.dl, 1
  %i.dn = zext nneg i8 %i.dm to i32
  %spec.select.epil = add nsw i32 %.2127221.epil, %i.dn
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph223.epil
  %.3128.epil = phi i32 [ %.2127221.epil, %.lr.ph223.epil ], [ %spec.select.epil, %bb.k ] ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit205, label %.lr.ph223.epil, !llvm.loop !1370

.loopexit205:                                     ; preds = %.loopexit205.loopexit.unr-lcssa, %bb.l, %._crit_edge216
  %.4 = phi i32 [ %.0125.lcssa, %._crit_edge216 ], [ %.3128.3, %.loopexit205.loopexit.unr-lcssa ], [ %.3128.epil, %bb.l ] ; 2 uses
  %i.do = icmp eq i8 %i.aq, 2
  br i1 %i.do, label %bb.m, label %bb.au

bb.m:                                             ; preds = %.loopexit205
  %i.dp = load i64, ptr %i.w, align 8, !tbaa !1371
  %.not135 = icmp eq i64 %i.dp, 0
  br i1 %.not135, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = load ptr, ptr %i.x, align 8, !tbaa !734, !noalias !1372 ; 2 uses
  %i.dr = load ptr, ptr %i.y, align 16, !tbaa !734, !noalias !1372 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.01421.i = phi i64 [ %i.dw, %.lr.ph.i ], [ 0, %bb.n ]
  %.sroa.016.019.i = phi ptr [ %i.dx, %.lr.ph.i ], [ %i.dq, %bb.n ] ; 2 uses
  %i.dt = load ptr, ptr %.sroa.016.019.i, align 8, !tbaa !763, !noalias !1372
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !766, !noalias !1372
  %i.dv = call noundef i64 @_ZNK7rocksdb22SharedBlobFileMetaData15GetBlobFileSizeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.du), !noalias !1372
  %i.dw = add i64 %i.dv, %.01421.i                ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.016.019.i, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dr
  br i1 %i.dy, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i

_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit: ; preds = %.lr.ph.i, %bb.n
  %.014.lcssa.i = phi i64 [ 0, %bb.n ], [ %i.dw, %.lr.ph.i ]
  %i.dz = add i64 %.014.lcssa.i, %.0123.lcssa
  br label %bb.o

bb.o:                                             ; preds = %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, %bb.m
  %.0121 = phi i64 [ %i.dz, %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit ], [ %.0123.lcssa, %bb.m ]
  %.0120.in = phi ptr [ %i.w, %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit ], [ %i.v, %bb.m ]
  %.0120 = load i64, ptr %.0120.in, align 8, !tbaa !439
  %spec.store.select = call i64 @llvm.umax.i64(i64 %.0120, i64 1)
  %i.ea = uitofp i64 %.0121 to double
  %i.eb = uitofp i64 %spec.store.select to double
  %i.ec = fdiv double %i.ea, %i.eb                ; 5 uses
  %i.ed = fcmp olt double %i.ec, 1.000000e+00
  br i1 %i.ed, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_ZN7rocksdb18VersionStorageInfo22ComputeCompactionScoreERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %epil.iter344.next = add i64 %epil.iter344, 1   ; 2 uses
  %epil.iter344.cmp.not = icmp eq i64 %epil.iter344.next, %xtraiter343
  br i1 %epil.iter344.cmp.not, label %._crit_edge.i, label %.lr.ph.i145.epil, !llvm.loop !1382

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.at, %bb.am
  %.046.lcssa.i = phi i8 [ %i.hf, %bb.am ], [ %.1.i.3, %._crit_edge.i.loopexit.unr-lcssa ], [ %.1.i.epil, %bb.at ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.gq, i64 191
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !1383
  %.not58.i = icmp eq i8 %i.iu, %.046.lcssa.i
  %cond.fr.i = freeze i1 %.not58.i
  br i1 %cond.fr.i, label %.thread7.i, label %.thread20.i

.thread7.i:                                       ; preds = %._crit_edge.i, %bb.aj, %bb.ah
  %.not56.i = icmp eq i64 %i.gn, 0
  br i1 %.not56.i, label %.thread20.i, label %.lr.ph32.i, !llvm.loop !1384

.thread20.i:                                      ; preds = %.thread7.i, %._crit_edge.i, %bb.al, %bb.af, %bb.ae, %bb.ad
  %.5.i = phi double [ %.1198, %bb.ae ], [ %.1198, %bb.ad ], [ %.1198, %bb.af ], [ 1.100000e+00, %._crit_edge.i ], [ %.1198, %bb.al ], [ %.1198, %.thread7.i ]
  %i.iv = load ptr, ptr %i.af, align 8, !tbaa !442 ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i142, label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i143

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i143: ; preds = %.thread20.i
  call void @_ZdaPv(ptr noundef nonnull %i.iv) #43
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i64.i: ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.hc) #43
  br label %_ZN7rocksdb6StatusD2Ev.exit65.i

_ZN7rocksdb6StatusD2Ev.exit65.i:                  ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i64.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %common.resume

_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit: ; preds = %.thread20.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.au:                                            ; preds = %.loopexit205
  %i.iw = sitofp i32 %.4 to double
  %i.ix = load i32, ptr %i.s, align 8, !tbaa !1358
  %i.iy = sitofp i32 %i.ix to double
  %i.iz = fdiv double %i.iw, %i.iy                ; 5 uses
  %i.ja = icmp sgt i32 %i.ar, 1
  %or.cond = select i1 %i.ap, i1 %i.ja, i1 false
  br i1 %or.cond, label %bb.av, label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.av:                                            ; preds = %bb.au
  %i.jb = load i8, ptr %i.p, align 4, !tbaa !1235, !range !470, !noundef !471
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.jd = load i64, ptr %i.t, align 8, !tbaa !1236
  %.not134 = icmp ult i64 %.0123.lcssa, %i.jd
  %i.je = fcmp uge double %i.iz, 1.010000e+00
  %i.jf = select i1 %.not134, i1 true, i1 %i.je
  %.2 = select i1 %i.jf, double %i.iz, double 1.010000e+00 ; 3 uses
  %i.jg = load i32, ptr %i.u, align 16, !tbaa !974
  %i.jh = sext i32 %i.jg to i64                   ; 2 uses
  %i.ji = load ptr, ptr %i.q, align 8, !tbaa !160
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jh
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !439 ; 3 uses
  %i.jl = icmp ugt i64 %.0123.lcssa, %i.jk
  br i1 %i.jl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jm = getelementptr inbounds [24 x i8], ptr %i.at, i64 %i.jh ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !536 ; 7 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !536 ; 3 uses
  %i.jq = icmp eq ptr %i.jn, %i.jp
  br i1 %i.jq, label %._crit_edge229, label %iter.check

iter.check:                                       ; preds = %bb.ax
  %i.jr = ptrtoaddr ptr %i.jp to i64
  %i.js = ptrtoaddr ptr %i.jn to i64
  %i.jt = add i64 %i.jr, -8
  %i.ju = sub i64 %i.jt, %i.js                    ; 3 uses
  %i.jv = lshr i64 %i.ju, 3
  %i.jw = add nuw nsw i64 %i.jv, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ju, 24
  br i1 %min.iters.check, label %.lr.ph228.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check306 = icmp ult i64 %i.ju, 120
  br i1 %min.iters.check306, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jx = and i64 %i.jw, 12
  %n.vec = and i64 %i.jw, 4611686018427387888     ; 4 uses
  %i.jy = shl i64 %n.vec, 3
  %i.jz = getelementptr i8, ptr %i.jn, i64 %i.jy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ke, %vector.body ]
  %vec.phi307 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.kf, %vector.body ]
  %vec.phi308 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.kg, %vector.body ]
  %vec.phi309 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.kh, %vector.body ]
  %i.ka = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.jn, i64 %i.ka ; 4 uses
  %i.kb = getelementptr i8, ptr %next.gep, i64 32
  %i.kc = getelementptr i8, ptr %next.gep, i64 64
  %i.kd = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !225
  %wide.load310 = load <4 x ptr>, ptr %i.kb, align 8, !tbaa !225
  %wide.load311 = load <4 x ptr>, ptr %i.kc, align 8, !tbaa !225
  %wide.load312 = load <4 x ptr>, ptr %i.kd, align 8, !tbaa !225
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 128
  %wide.gep313 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load310, i64 128
  %wide.gep314 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load311, i64 128
  %wide.gep315 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load312, i64 128
  %wide.masked.gather = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !1226
  %wide.masked.gather316 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep313, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !1226
  %wide.masked.gather317 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep314, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !1226
  %wide.masked.gather318 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep315, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !1226
  %i.ke = add <4 x i64> %wide.masked.gather, %vec.phi ; 2 uses
  %i.kf = add <4 x i64> %wide.masked.gather316, %vec.phi307 ; 2 uses
  %i.kg = add <4 x i64> %wide.masked.gather317, %vec.phi308 ; 2 uses
  %i.kh = add <4 x i64> %wide.masked.gather318, %vec.phi309 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ki = icmp eq i64 %index.next, %n.vec
  br i1 %i.ki, label %middle.block, label %vector.body, !llvm.loop !1385

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.kf, %i.ke
  %bin.rdx319 = add <4 x i64> %i.kg, %bin.rdx
  %bin.rdx320 = add <4 x i64> %i.kh, %bin.rdx319
  %i.kj = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx320) ; 3 uses
  %cmp.n = icmp eq i64 %i.jw, %n.vec
  br i1 %cmp.n, label %._crit_edge229.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph228.preheader, label %vec.epilog.ph, !prof !665

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.kj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec321 = and i64 %i.jw, 4611686018427387900  ; 3 uses
  %i.kk = shl i64 %n.vec321, 3
  %i.kl = getelementptr i8, ptr %i.jn, i64 %i.kk
  %i.km = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index322 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next328, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi323 = phi <4 x i64> [ %i.km, %vec.epilog.ph ], [ %i.ko, %vec.epilog.vector.body ]
  %i.kn = shl i64 %index322, 3
  %next.gep324 = getelementptr i8, ptr %i.jn, i64 %i.kn
  %wide.load325 = load <4 x ptr>, ptr %next.gep324, align 8, !tbaa !225
  %wide.gep326 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load325, i64 128
  %wide.masked.gather327 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep326, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !1226
  %i.ko = add <4 x i64> %wide.masked.gather327, %vec.phi323 ; 2 uses
  %index.next328 = add nuw i64 %index322, 4       ; 2 uses
  %i.kp = icmp eq i64 %index.next328, %n.vec321
  br i1 %i.kp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1386

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.kq = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ko) ; 2 uses
  %cmp.n329 = icmp eq i64 %i.jw, %n.vec321
  br i1 %cmp.n329, label %._crit_edge229.loopexit, label %.lr.ph228.preheader

.lr.ph228.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0163.0226.ph = phi ptr [ %i.jn, %iter.check ], [ %i.jz, %vec.epilog.iter.check ], [ %i.kl, %vec.epilog.middle.block ]
  %.0201225.ph = phi i64 [ 0, %iter.check ], [ %i.kj, %vec.epilog.iter.check ], [ %i.kq, %vec.epilog.middle.block ]
  br label %.lr.ph228

._crit_edge229.loopexit:                          ; preds = %.lr.ph228, %vec.epilog.middle.block, %middle.block
  %.lcssa304 = phi i64 [ %i.kq, %vec.epilog.middle.block ], [ %i.kj, %middle.block ], [ %i.kz, %.lr.ph228 ]
  %i.kr = call i64 @llvm.umax.i64(i64 %.lcssa304, i64 %i.jk)
  br label %._crit_edge229

._crit_edge229:                                   ; preds = %._crit_edge229.loopexit, %bb.ax
  %.0201.lcssa = phi i64 [ %i.jk, %bb.ax ], [ %i.kr, %._crit_edge229.loopexit ]
  %i.ks = uitofp i64 %.0123.lcssa to double
  %i.kt = uitofp i64 %.0201.lcssa to double
  %i.ku = fdiv double %i.ks, %i.kt                ; 2 uses
  %i.kv = fcmp olt double %.2, %i.ku
  %.sroa.speculated159 = select i1 %i.kv, double %i.ku, double %.2
  br label %bb.ay

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %.lr.ph228
  %.sroa.0163.0226 = phi ptr [ %i.la, %.lr.ph228 ], [ %.sroa.0163.0226.ph, %.lr.ph228.preheader ] ; 2 uses
  %.0201225 = phi i64 [ %i.kz, %.lr.ph228 ], [ %.0201225.ph, %.lr.ph228.preheader ]
  %i.kw = load ptr, ptr %.sroa.0163.0226, align 8, !tbaa !225
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 128
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !1226
  %i.kz = add i64 %i.ky, %.0201225                ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0163.0226, i64 8 ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.jp
  br i1 %i.lb, label %._crit_edge229.loopexit, label %.lr.ph228, !llvm.loop !1387

bb.ay:                                            ; preds = %._crit_edge229, %bb.aw
  %.3199 = phi double [ %.sroa.speculated159, %._crit_edge229 ], [ %.2, %bb.aw ] ; 3 uses
  %i.lc = fcmp ogt double %.3199, 1.000000e+00
  %6 = fmul nnan double %.3199, 1.000000e+01
  %spec.select204 = select i1 %i.lc, double %6, double %.3199
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.az:                                            ; preds = %bb.av
  %i.ld = uitofp i64 %.0123.lcssa to double
  %i.le = load i64, ptr %i.t, align 8, !tbaa !1236
  %i.lf = uitofp i64 %i.le to double
  %i.lg = fdiv double %i.ld, %i.lf                ; 2 uses
  %i.lh = fcmp olt double %i.iz, %i.lg
  %.sroa.speculated155 = select i1 %i.lh, double %i.lg, double %i.iz
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.ba:                                            ; preds = %bb.b
  %i.li = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv250 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !536 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !536 ; 2 uses
  %i.lm = icmp eq ptr %i.lj, %i.ll
  br i1 %i.lm, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bc, %bb.ba
  %.0117.lcssa = phi i64 [ 0, %bb.ba ], [ %.1118, %bb.bc ] ; 4 uses
  %.0116.lcssa = phi i64 [ 0, %bb.ba ], [ %i.ls, %bb.bc ] ; 3 uses
  %i.ln = load i8, ptr %i.p, align 4, !tbaa !1235, !range !470, !noundef !471
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %bb.be, label %bb.bd

.lr.ph:                                           ; preds = %bb.ba, %bb.bc
  %.0116208 = phi i64 [ %i.ls, %bb.bc ], [ 0, %bb.ba ]
  %.0117207 = phi i64 [ %.1118, %bb.bc ], [ 0, %bb.ba ] ; 2 uses
  %.sroa.0151.0206 = phi ptr [ %i.lz, %bb.bc ], [ %i.lj, %bb.ba ] ; 2 uses
  %i.lp = load ptr, ptr %.sroa.0151.0206, align 8, !tbaa !225 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !437
  %i.ls = add i64 %i.lr, %.0116208                ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 188
  %i.lu = load i8, ptr %i.lt, align 4, !tbaa !1368, !range !470, !noundef !471
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 128
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !1226
  %i.ly = add i64 %i.lx, %.0117207
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph
  %.1118 = phi i64 [ %.0117207, %.lr.ph ], [ %i.ly, %bb.bb ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0151.0206, i64 8 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.ll
  br i1 %i.ma, label %._crit_edge, label %.lr.ph

bb.bd:                                            ; preds = %._crit_edge
  %i.mb = uitofp i64 %.0117.lcssa to double
  %i.mc = load ptr, ptr %i.q, align 8, !tbaa !160
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv250
  %i.me = load i64, ptr %i.md, align 8, !tbaa !439 ; 2 uses
  %i.mf = uitofp i64 %i.me to double
  %i.mg = fdiv double %i.mb, %i.mf
  %.pre = load i32, ptr %i.r, align 4, !tbaa !975
  br label %bb.bg

bb.be:                                            ; preds = %._crit_edge
  %i.mh = load ptr, ptr %i.q, align 8, !tbaa !160
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv250
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !439 ; 4 uses
  %i.mk = icmp ult i64 %.0117.lcssa, %i.mj
  %i.ml = uitofp i64 %.0117.lcssa to double       ; 2 uses
  %i.mm = uitofp i64 %i.mj to double              ; 2 uses
  %i.mn = fadd double %.0234, %i.mm
  %i.mo = fdiv double %i.ml, %i.mn
  %i.mp = fmul double %i.mo, 1.000000e+01
  %i.mq = fdiv double %i.ml, %i.mm
  %storemerge = select i1 %i.mk, double %i.mq, double %i.mp ; 3 uses
  %.not130 = icmp eq i64 %.0117.lcssa, 0
  %.pre260 = load i32, ptr %i.r, align 4, !tbaa !975 ; 4 uses
  %i.mr = sext i32 %.pre260 to i64
  %.not131 = icmp sgt i64 %indvars.iv250, %i.mr
  %or.cond301 = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond301, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ms = trunc nuw nsw i64 %indvars.iv250 to i32
  %i.mt = sub nuw nsw i32 %.pre260, %i.ms
  %i.mu = sitofp i32 %i.mt to double
  %i.mv = call nnan double @llvm.fmuladd.f64(double %i.mu, double 1.000000e-03, double 1.001000e+00)
  %i.mw = fmul nnan double %i.mv, 1.000000e+01    ; 2 uses
  %i.mx = fcmp olt double %storemerge, %i.mw
  %.sroa.speculated = select i1 %i.mx, double %i.mw, double %storemerge
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %i.my = phi i64 [ %i.mj, %bb.be ], [ %i.me, %bb.bd ], [ %i.mj, %bb.bf ] ; 2 uses
  %i.mz = phi i32 [ %.pre260, %bb.be ], [ %.pre, %bb.bd ], [ %.pre260, %bb.bf ]
  %.4200 = phi double [ %storemerge, %bb.be ], [ %i.mg, %bb.bd ], [ %.sroa.speculated, %bb.bf ] ; 3 uses
  %i.na = sext i32 %i.mz to i64
  %.not132 = icmp sgt i64 %indvars.iv250, %i.na
  br i1 %.not132, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nb = uitofp i64 %.0116.lcssa to double
  %i.nc = fadd double %.0234, %i.nb
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.bi:                                            ; preds = %bb.bg
  %i.nd = icmp ugt i64 %.0116.lcssa, %i.my
  br i1 %i.nd, label %bb.bj, label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %i.ne = sub nuw i64 %.0116.lcssa, %i.my
  %i.nf = uitofp i64 %i.ne to double
  %i.ng = fadd double %.0234, %i.nf
  br label %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread

_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit.thread: ; preds = %bb.ay, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit, %bb.ac, %bb.ab, %bb.bh, %bb.bj, %bb.bi, %bb.az, %bb.au, %bb.aa
  %.5 = phi double [ %.1198, %bb.ac ], [ %.4200, %bb.bh ], [ %.1198, %bb.aa ], [ %.1198, %bb.ab ], [ %spec.select204, %bb.ay ], [ %.sroa.speculated155, %bb.az ], [ %.5.i, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit ], [ %i.iz, %bb.au ], [ %.4200, %bb.bj ], [ %.4200, %bb.bi ]
  %.3 = phi double [ %.1.lcssa, %bb.ac ], [ %i.nc, %bb.bh ], [ %.1.lcssa, %bb.aa ], [ %.1.lcssa, %bb.ab ], [ %.1.lcssa, %bb.ay ], [ %.1.lcssa, %bb.az ], [ %.1.lcssa, %_ZN7rocksdb12_GLOBAL__N_127ShouldChangeFileTemperatureERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKSt6vectorIPNS_12FileMetaDataESaIS9_EE.exit ], [ %.1.lcssa, %bb.au ], [ %i.ng, %bb.bj ], [ %.0234, %bb.bi ]
  %i.nh = load ptr, ptr %i.ag, align 16, !tbaa !122
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv250
  %i.nj = trunc nuw nsw i64 %indvars.iv250 to i32
  store i32 %i.nj, ptr %i.ni, align 4, !tbaa !143
  %i.nk = load ptr, ptr %i.ah, align 8, !tbaa !124
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %indvars.iv250
  store double %.5, ptr %i.nl, align 8, !tbaa !983
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1
  %.pr = load i32, ptr %i.j, align 16             ; 4 uses
  %i.nm = load i8, ptr %i.l, align 16, !tbaa !973
  %i.nn = icmp eq i8 %i.nm, 0
  %i.no = add nsw i32 %.pr, -2
  %i.np = sext i32 %i.no to i64
  %.not.not245 = icmp slt i64 %indvars.iv250, %i.np
  %.not.not = select i1 %i.nn, i1 %.not.not245, i1 false
  br i1 %.not.not, label %bb.b, label %.preheader, !llvm.loop !1388

.loopexit:                                        ; preds = %bb.bn, %bb.bk
  %i.nq = phi i32 [ %i.nw, %bb.bk ], [ %i.on, %bb.bn ] ; 2 uses
  %i.nr = add nsw i32 %i.nq, -2
  %i.ns = sext i32 %i.nr to i64
  %i.nt = icmp slt i64 %indvars.iv.next258, %i.ns
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1
  br i1 %i.nt, label %bb.bk, label %._crit_edge242, !llvm.loop !1389

._crit_edge242:                                   ; preds = %.loopexit, %bb.a, %.preheader
  call void @_ZN7rocksdb18VersionStorageInfo31ComputeFilesMarkedForCompactionEi(ptr noundef nonnull align 16 dereferenceable(4288) %0, i32 noundef %.0.i)
  %i.nu = load i8, ptr %i.c, align 1, !tbaa !1367, !range !470, !noundef !471
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %bb.bp, label %bb.bo

bb.bk:                                            ; preds = %.lr.ph241, %.loopexit
  %i.nw = phi i32 [ %.pr, %.lr.ph241 ], [ %i.nq, %.loopexit ] ; 4 uses
  %indvars.iv257 = phi i64 [ 0, %.lr.ph241 ], [ %indvars.iv.next258, %.loopexit ] ; 3 uses
  %indvars.iv252 = phi i64 [ 1, %.lr.ph241 ], [ %indvars.iv.next253, %.loopexit ] ; 2 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 3 uses
  %i.nx = add nsw i32 %i.nw, -1
  %i.ny = sext i32 %i.nx to i64
  %i.nz = icmp slt i64 %indvars.iv.next258, %i.ny
  br i1 %i.nz, label %.lr.ph239, label %.loopexit

.lr.ph239:                                        ; preds = %bb.bk
  %i.oa = load ptr, ptr %i.an, align 8, !tbaa !124 ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %indvars.iv257 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph239, %bb.bn
  %i.oc = phi i32 [ %i.nw, %.lr.ph239 ], [ %i.on, %bb.bn ]
  %i.od = phi i32 [ %i.nw, %.lr.ph239 ], [ %i.oo, %bb.bn ]
  %indvars.iv254 = phi i64 [ %indvars.iv252, %.lr.ph239 ], [ %indvars.iv.next255, %bb.bn ] ; 3 uses
  %i.oe = load double, ptr %i.ob, align 8, !tbaa !983 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %indvars.iv254 ; 2 uses
  %i.og = load double, ptr %i.of, align 8, !tbaa !983 ; 2 uses
  %i.oh = fcmp olt double %i.oe, %i.og
  br i1 %i.oh, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.oi = load ptr, ptr %i.ao, align 16, !tbaa !122 ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv257 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !143
  store double %i.og, ptr %i.ob, align 8, !tbaa !983
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv254 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !143
  store i32 %i.om, ptr %i.oj, align 4, !tbaa !143
  store double %i.oe, ptr %i.of, align 8, !tbaa !983
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !143
  %.pre261 = load i32, ptr %i.j, align 16, !tbaa !887 ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.on = phi i32 [ %i.oc, %bb.bl ], [ %.pre261, %bb.bm ] ; 2 uses
  %i.oo = phi i32 [ %i.od, %bb.bl ], [ %.pre261, %bb.bm ] ; 2 uses
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %i.op = add nsw i32 %i.oo, -1
  %i.oq = sext i32 %i.op to i64
  %i.or = icmp slt i64 %indvars.iv.next255, %i.oq
  br i1 %i.or, label %bb.bl, label %.loopexit, !llvm.loop !1390

bb.bo:                                            ; preds = %._crit_edge242
  %i.os = load i8, ptr %i.f, align 1, !tbaa !1391, !range !470, !noundef !471
  %i.ot = trunc nuw i8 %i.os to i1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge242
  %i.ou = phi i1 [ true, %._crit_edge242 ], [ %i.ot, %bb.bo ]
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !1392
  call void @_ZN7rocksdb18VersionStorageInfo41ComputeBottommostFilesMarkedForCompactionEbPKNS_10ComparatorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 16 dereferenceable(4288) %0, i1 noundef zeroext %i.ou, ptr noundef %i.ox, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !1275
  call void @_ZN7rocksdb18VersionStorageInfo22ComputeExpiredTtlFilesERKNS_16ImmutableOptionsEm(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr noundef nonnull align 8 dereferenceable(875) %1, i64 noundef %i.oz)
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !1393
  call void @_ZN7rocksdb18VersionStorageInfo39ComputeFilesMarkedForPeriodicCompactionERKNS_16ImmutableOptionsEmi(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr noundef nonnull align 8 dereferenceable(875) %1, i64 noundef %i.pb, i32 noundef %.0.i)
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !1394
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !1395
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 456
  %i.ph = load i8, ptr %i.pg, align 8, !tbaa !1396, !range !470, !noundef !471
  %i.pi = trunc nuw i8 %i.ph to i1
  call void @_ZN7rocksdb18VersionStorageInfo33ComputeFilesMarkedForForcedBlobGCEddb(ptr noundef nonnull align 16 dereferenceable(4288) %0, double noundef %i.pd, double noundef %i.pf, i1 noundef zeroext %i.pi)
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !1397
  %i.pl = load i8, ptr %i.ov, align 8, !tbaa !1048
  call void @_ZN7rocksdb18VersionStorageInfo44ComputeFilesMarkedForReadTriggeredCompactionEdNS_15CompactionStyleE(ptr noundef nonnull align 16 dereferenceable(4288) %0, double noundef %i.pk, i8 noundef signext %i.pl)
  call void @_ZN7rocksdb18VersionStorageInfo29EstimateCompactionBytesNeededERKNS_16MutableCFOptionsE(ptr noundef nonnull align 16 dereferenceable(4288) %0, ptr noundef nonnull align 8 dereferenceable(736) %2)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionStorageInfo31ComputeFilesMarkedForCompactionEi(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4288) initializes((4056, 4064)) %0, i32 noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2872 ; 4 uses
  %.pr.i = load i64, ptr %i.a, align 8, !tbaa !126
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %bb.b, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !126
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3016 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3024 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %bb.b
  store ptr %i.c, ptr %i.d, align 16, !tbaa !128
  br label %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit

_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %_ZSt8_DestroyIPSt4pairIiPN7rocksdb12FileMetaDataEES4_EvT_S6_RSaIT0_E.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4056 ; 3 uses
  store i64 72057594037927935, ptr %i.g, align 8, !tbaa !981
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph, label %.lr.ph29

.lr.ph:                                           ; preds = %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = zext nneg i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !536
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !536
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.q = icmp sgt i64 %indvars.iv, 1
  br i1 %i.q, label %bb.c, label %.lr.ph29, !llvm.loop !1398

.loopexit:                                        ; preds = %bb.c
  %.not26 = icmp slt i64 %indvars.iv, 1
  br i1 %.not26, label %._crit_edge30, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.d, %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit, %.loopexit
  %.0847 = phi i64 [ %indvars.iv, %.loopexit ], [ 1, %_ZN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EE5clearEv.exit ], [ 1, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3032 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3008
  br label %bb.e

._crit_edge30:                                    ; preds = %._crit_edge, %.loopexit
  ret void

bb.e:                                             ; preds = %.lr.ph29, %._crit_edge
  %i.u = phi ptr [ %i.c, %.lr.ph29 ], [ %i.af, %._crit_edge ] ; 2 uses
  %i.v = phi ptr [ %i.f, %.lr.ph29 ], [ %i.ag, %._crit_edge ] ; 2 uses
  %indvars.iv33 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next34, %._crit_edge ] ; 5 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv33 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !536  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !536 ; 2 uses
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %._crit_edge, label %.lr.ph25.preheader

.lr.ph25.preheader:                               ; preds = %bb.e
  %i.ac = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.ad = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.ae = trunc nuw nsw i64 %indvars.iv33 to i32
  br label %.lr.ph25

._crit_edge:                                      ; preds = %bb.o, %bb.e
  %i.af = phi ptr [ %i.u, %bb.e ], [ %i.cg, %bb.o ]
  %i.ag = phi ptr [ %i.v, %bb.e ], [ %i.ch, %bb.o ]
end_hunk_1
