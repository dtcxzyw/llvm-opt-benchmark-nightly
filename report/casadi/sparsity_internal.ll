Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sparsity_internal?download=true
inline.NumInlined: 4371
inline.NumDeleted: 628
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN6casadi16SparsityInternal9qr_countsEPKxS2_S2_PxS3_:bb.a
  br i1 %.not147224, label %._crit_edge228, label %.lr.ph227

.lr.ph227:                                        ; preds = %bb.d
  %i.da = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ct
  %i.db = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ct ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph227, %._crit_edge222
  %.0123225 = phi i64 [ %.0123223, %.lr.ph227 ], [ %.0123, %._crit_edge222 ] ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.0123225 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !43 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dc, i64 8      ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !43
  %i.dg = icmp slt i64 %i.dd, %i.df
  br i1 %i.dg, label %.lr.ph221, label %._crit_edge222

.lr.ph221:                                        ; preds = %bb.e, %_ZN6casadi16SparsityInternal4leafExxPKxPxS3_S3_S3_.exit.thread182
  %.1219 = phi i64 [ %i.dz, %_ZN6casadi16SparsityInternal4leafExxPKxPxS3_S3_S3_.exit.thread182 ], [ %i.dd, %bb.e ] ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.1219
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !43 ; 3 uses
  %.not.i = icmp sgt i64 %i.di, %i.ct
  br i1 %.not.i, label %bb.f, label %_ZN6casadi16SparsityInternal4leafExxPKxPxS3_S3_S3_.exit.thread182

bb.f:                                             ; preds = %.lr.ph221
  %i.dj = load i64, ptr %i.da, align 8, !tbaa !43 ; 2 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.di ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !43
  %.not43.i = icmp sgt i64 %i.dj, %i.dl
  br i1 %.not43.i, label %bb.g, label %_ZN6casadi16SparsityInternal4leafExxPKxPxS3_S3_S3_.exit.thread182

bb.g:                                             ; preds = %bb.f
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !43
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.di ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !43 ; 5 uses
  store i64 %i.ct, ptr %i.dm, align 8, !tbaa !43
  %.not185 = icmp eq i64 %i.dn, -1
  br i1 %.not185, label %_ZN6casadi16SparsityInternal4leafExxPKxPxS3_S3_S3_.exit.thread182.critedge, label %.preheader46.i

.preheader46.i:                                   ; preds = %bb.g, %.preheader46.i
  %.036.i = phi i64 [ %i.dp, %.preheader46.i ], [ %i.dn, %bb.g ] ; 6 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %4, i64 %.036.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !43 ; 2 uses
  %.not44.i = icmp eq i64 %.036.i, %i.dp
  br i1 %.not44.i, label %.preheader.i, label %.preheader46.i, !llvm.loop !3

.preheader.i:                                     ; preds = %.preheader46.i
  %.not4547.i = icmp eq i64 %i.dn, %.036.i
  br i1 %.not4547.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.dr, %.lr.ph.i ], [ %i.dn, %.preheader.i ]
  %i.dq = getelementptr inbounds [8 x i8], ptr %4, i64 %.048.i ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !43 ; 2 uses
  store i64 %.036.i, ptr %i.dq, align 8, !tbaa !43
  %.not45.i = icmp eq i64 %i.dr, %.036.i
  br i1 %.not45.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !4

.loopexit:                                        ; preds = %.lr.ph.i, %.preheader.i
  %.037.i.ph = phi i64 [ %i.dn, %.preheader.i ], [ %.036.i, %.lr.ph.i ]
  %i.ds = load i64, ptr %i.db, align 8, !tbaa !43
  %i.dt = add nsw i64 %i.ds, 1
  store i64 %i.dt, ptr %i.db, align 8, !tbaa !43
  %i.du = getelementptr inbounds [8 x i8], ptr %3, i64 %.037.i.ph ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !43
  %i.dw = add nsw i64 %i.dv, -1
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !43
  br label %_ZN6casadi16SparsityInternal4leafExxPKxPxS3_S3_S3_.exit.thread182

_ZN6casadi16SparsityInternal4leafExxPKxPxS3_S3_S3_.exit.thread182.critedge: ; preds = %bb.g
  %i.dx = load i64, ptr %i.db, align 8, !tbaa !43
  %i.dy = add nsw i64 %i.dx, 1
  store i64 %i.dy, ptr %i.db, align 8, !tbaa !43
  br label %_ZN6casadi16SparsityInternal4leafExxPKxPxS3_S3_S3_.exit.thread182

_ZN6casadi16SparsityInternal4leafExxPKxPxS3_S3_S3_.exit.thread182: ; preds = %_ZN6casadi16SparsityInternal4leafExxPKxPxS3_S3_S3_.exit.thread182.critedge, %bb.f, %.lr.ph221, %.loopexit
  %i.dz = add nsw i64 %.1219, 1                   ; 2 uses
  %i.ea = load i64, ptr %i.de, align 8, !tbaa !43
  %i.eb = icmp slt i64 %i.dz, %i.ea
  br i1 %i.eb, label %.lr.ph221, label %._crit_edge222, !llvm.loop !152

._crit_edge222:                                   ; preds = %_ZN6casadi16SparsityInternal4leafExxPKxPxS3_S3_S3_.exit.thread182, %bb.e
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.0123225
  %.0123 = load i64, ptr %i.ec, align 8, !tbaa !43 ; 2 uses
  %.not147 = icmp eq i64 %.0123, -1
  br i1 %.not147, label %._crit_edge228, label %bb.e, !llvm.loop !153

._crit_edge228:                                   ; preds = %._crit_edge222, %bb.d
  %i.ed = load i64, ptr %i.cu, align 8, !tbaa !43 ; 2 uses
  %.not148 = icmp eq i64 %i.ed, -1
  br i1 %.not148, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge228
  %i.ee = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ct
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge228, %bb.h
  %i.ef = add nuw nsw i64 %storemerge144229, 1    ; 2 uses
  %exitcond242.not = icmp eq i64 %i.ef, %i.b
  br i1 %exitcond242.not, label %.lr.ph232.preheader, label %.lr.ph230, !llvm.loop !154

.lr.ph232.preheader:                              ; preds = %bb.i
  %xtraiter284 = and i64 %i.b, 1
  %i.eg = icmp eq i64 %i.b, 1
  br i1 %i.eg, label %.lr.ph232.epil.preheader, label %.lr.ph232.preheader.new

.lr.ph232.preheader.new:                          ; preds = %.lr.ph232.preheader
  %unroll_iter288 = and i64 %i.b, 9223372036854775806
  br label %.lr.ph232

.preheader.unr-lcssa:                             ; preds = %bb.m
  %lcmp.mod286.not = icmp eq i64 %xtraiter284, 0
  br i1 %lcmp.mod286.not, label %.preheader, label %.lr.ph232.epil.preheader

.lr.ph232.epil.preheader:                         ; preds = %.preheader.unr-lcssa, %.lr.ph232.preheader
  %.1125231.epil.init = phi i64 [ 0, %.lr.ph232.preheader ], [ %i.fj, %.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod287 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod287)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1125231.epil.init
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !43 ; 2 uses
  %.not145.epil = icmp eq i64 %i.ei, -1
  br i1 %.not145.epil, label %.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph232.epil.preheader
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1125231.epil.init
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !43
  %i.el = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ei ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !43
  %i.en = add nsw i64 %i.em, %i.ek
  store i64 %i.en, ptr %i.el, align 8, !tbaa !43
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph232.epil.preheader, %bb.j, %.preheader.unr-lcssa
  %min.iters.check267 = icmp ult i64 %i.b, 4
  br i1 %min.iters.check267, label %.lr.ph235.preheader, label %vector.ph268

vector.ph268:                                     ; preds = %.preheader
  %n.vec269 = and i64 %i.b, 9223372036854775804   ; 3 uses
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph268
  %index271 = phi i64 [ 0, %vector.ph268 ], [ %index.next274, %vector.body270 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph268 ], [ %i.eq, %vector.body270 ]
  %vec.phi272 = phi <2 x i64> [ zeroinitializer, %vector.ph268 ], [ %i.er, %vector.body270 ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index271 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load = load <2 x i64>, ptr %i.eo, align 8, !tbaa !43
  %wide.load273 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !43
  %i.eq = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.er = add <2 x i64> %wide.load273, %vec.phi272 ; 2 uses
  %index.next274 = add nuw i64 %index271, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next274, %n.vec269
  br i1 %i.es, label %middle.block275, label %vector.body270, !llvm.loop !155

middle.block275:                                  ; preds = %vector.body270
  %bin.rdx = add <2 x i64> %i.er, %i.eq
  %i.et = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n276 = icmp eq i64 %i.b, %n.vec269
  br i1 %cmp.n276, label %._crit_edge236, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %.preheader, %middle.block275
  %.0234.ph = phi i64 [ 0, %.preheader ], [ %i.et, %middle.block275 ]
  %.2233.ph = phi i64 [ 0, %.preheader ], [ %n.vec269, %middle.block275 ]
  br label %.lr.ph235

.lr.ph232:                                        ; preds = %bb.m, %.lr.ph232.preheader.new
  %.1125231 = phi i64 [ 0, %.lr.ph232.preheader.new ], [ %i.fj, %bb.m ] ; 4 uses
  %niter289 = phi i64 [ 0, %.lr.ph232.preheader.new ], [ %niter289.next.1, %bb.m ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1125231
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !43 ; 2 uses
  %.not145 = icmp eq i64 %i.ev, -1
  br i1 %.not145, label %.lr.ph232.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph232
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1125231
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !43
  %i.ey = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ev ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !43
  %i.fa = add nsw i64 %i.ez, %i.ex
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !43
  br label %.lr.ph232.1

.lr.ph232.1:                                      ; preds = %.lr.ph232, %bb.k
  %i.fb = or disjoint i64 %.1125231, 1            ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !43 ; 2 uses
  %.not145.1 = icmp eq i64 %i.fd, -1
  br i1 %.not145.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph232.1
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.fb
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !43
  %i.fg = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fd ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !43
  %i.fi = add nsw i64 %i.fh, %i.ff
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph232.1
  %i.fj = add nuw nsw i64 %.1125231, 2            ; 2 uses
  %niter289.next.1 = add i64 %niter289, 2         ; 2 uses
  %niter289.ncmp.1 = icmp eq i64 %niter289.next.1, %unroll_iter288
  br i1 %niter289.ncmp.1, label %.preheader.unr-lcssa, label %.lr.ph232, !llvm.loop !156

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %.0234 = phi i64 [ %i.fm, %.lr.ph235 ], [ %.0234.ph, %.lr.ph235.preheader ]
  %.2233 = phi i64 [ %i.fn, %.lr.ph235 ], [ %.2233.ph, %.lr.ph235.preheader ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.2233
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !43
  %i.fm = add nsw i64 %i.fl, %.0234               ; 2 uses
  %i.fn = add nuw nsw i64 %.2233, 1               ; 2 uses
  %exitcond244.not = icmp eq i64 %i.fn, %i.b
  br i1 %exitcond244.not, label %._crit_edge236, label %.lr.ph235, !llvm.loop !157

._crit_edge236:                                   ; preds = %.lr.ph235, %middle.block275, %.preheader190
  %.0.lcssa = phi i64 [ 0, %.preheader190 ], [ %i.et, %middle.block275 ], [ %i.fm, %.lr.ph235 ]
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i64 0, -9223372036854775808) i64 @_ZN6casadi16SparsityInternal6qr_nnzEPKxPxS3_S2_S3_S3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !43     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !43   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr [8 x i8], ptr %5, i64 %i.a ; 5 uses
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %i.c ; 5 uses
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.c ; 4 uses
  %i.j = icmp sgt i64 %i.c, 0                     ; 3 uses
  br i1 %i.j, label %.lr.ph147.preheader, label %.preheader140

.lr.ph147.preheader:                              ; preds = %bb.a
  %i.k = shl nuw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 -1, i64 %i.k, i1 false), !tbaa !43
  %i.l = shl nuw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 -1, i64 %i.l, i1 false), !tbaa !43
  %i.m = shl nuw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.m, i1 false), !tbaa !43
  br label %.preheader140

.preheader140:                                    ; preds = %bb.a, %.lr.ph147.preheader
  %i.n = icmp sgt i64 %i.a, 0                     ; 3 uses
  br i1 %i.n, label %.lr.ph149.preheader, label %.preheader139

.lr.ph149.preheader:                              ; preds = %.preheader140
  %i.o = shl nuw i64 %i.a, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 -1, i64 %i.o, i1 false), !tbaa !43
  br label %.preheader139

.preheader139:                                    ; preds = %.lr.ph149.preheader, %.preheader140
  br i1 %i.j, label %.lr.ph155, label %.preheader138

.loopexit:                                        ; preds = %.lr.ph151, %.lr.ph155
  %i.p = icmp samesign ugt i64 %.3.in153, 1
  br i1 %i.p, label %.lr.ph155, label %.preheader138, !llvm.loop !158

.preheader138:                                    ; preds = %.loopexit, %.preheader139
  br i1 %i.n, label %.lr.ph158, label %.preheader137

.lr.ph155:                                        ; preds = %.preheader139, %.loopexit
  %.3.in153 = phi i64 [ %.3154, %.loopexit ], [ %i.c, %.preheader139 ] ; 3 uses
  %.3154 = add nsw i64 %.3.in153, -1              ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.3154
  %i.r = load i64, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.3.in153 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !43
  %i.u = icmp slt i64 %i.r, %i.t
  br i1 %i.u, label %.lr.ph151, label %.loopexit

.lr.ph151:                                        ; preds = %.lr.ph155, %.lr.ph151
  %.0121150 = phi i64 [ %i.y, %.lr.ph151 ], [ %i.r, %.lr.ph155 ] ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.0121150
  %i.w = load i64, ptr %i.v, align 8, !tbaa !43
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w
  store i64 %.3154, ptr %i.x, align 8, !tbaa !43
  %i.y = add nsw i64 %.0121150, 1                 ; 2 uses
  %i.z = load i64, ptr %i.s, align 8, !tbaa !43
  %i.aa = icmp slt i64 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph151, label %.loopexit, !llvm.loop !159

.preheader137:                                    ; preds = %bb.e, %.preheader138
  br i1 %i.j, label %.lr.ph162, label %.preheader

.lr.ph158:                                        ; preds = %.preheader138, %bb.e
  %.1125157.in = phi i64 [ %.1125157, %bb.e ], [ %i.a, %.preheader138 ] ; 2 uses
  %.1125157 = add nsw i64 %.1125157.in, -1        ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1125157
  store i64 -1, ptr %i.ab, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1125157
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !43 ; 4 uses
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph158
  %i.af = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ad ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.ah = add nsw i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !43
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ad
  store i64 %.1125157, ptr %i.aj, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ad ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.1125157
  store i64 %i.al, ptr %i.am, align 8, !tbaa !43
  store i64 %.1125157, ptr %i.ak, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph158, %bb.d
  %i.an = icmp samesign ugt i64 %.1125157.in, 1
  br i1 %i.an, label %.lr.ph158, label %.preheader137, !llvm.loop !160

.preheader:                                       ; preds = %bb.i, %.preheader137
  %.4.lcssa = phi i64 [ 0, %.preheader137 ], [ %i.c, %bb.i ] ; 2 uses
  %.0119.lcssa = phi i64 [ 0, %.preheader137 ], [ %.1120, %bb.i ]
  %.0.lcssa = phi i64 [ %i.a, %.preheader137 ], [ %spec.select136, %bb.i ]
  br i1 %i.n, label %.lr.ph167.preheader, label %._crit_edge

.lr.ph167.preheader:                              ; preds = %.preheader
  %xtraiter = and i64 %i.a, 1
  %i.ao = icmp eq i64 %i.a, 1
  br i1 %i.ao, label %.lr.ph167.epil.preheader, label %.lr.ph167.preheader.new

.lr.ph167.preheader.new:                          ; preds = %.lr.ph167.preheader
  %unroll_iter = and i64 %i.a, 9223372036854775806
  br label %.lr.ph167

.lr.ph162:                                        ; preds = %.preheader137, %bb.i
  %.0161 = phi i64 [ %spec.select136, %bb.i ], [ %i.a, %.preheader137 ] ; 2 uses
  %.0119160 = phi i64 [ %.1120, %bb.i ], [ 0, %.preheader137 ] ; 2 uses
  %.4159 = phi i64 [ %i.bp, %bb.i ], [ 0, %.preheader137 ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.4159
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !43 ; 3 uses
  %i.ar = add nuw nsw i64 %.0119160, 1
  %i.as = icmp slt i64 %i.aq, 0
  %spec.select = select i1 %i.as, i64 %.0161, i64 %i.aq ; 2 uses
  %.lobit = lshr i64 %i.aq, 63
  %spec.select136 = add nsw i64 %.lobit, %.0161   ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %1, i64 %spec.select
  store i64 %.4159, ptr %i.at, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.4159 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !43 ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !43
  %i.ax = icmp slt i64 %i.av, 2
  br i1 %i.ax, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph162
  %i.ay = add nuw i64 %i.av, %.0119160            ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.4159
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !43 ; 4 uses
  %.not135 = icmp eq i64 %i.ba, -1
  br i1 %.not135, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ba ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !43
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.4159
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !43 ; 2 uses
  br i1 %i.bd, label %bb.h, label %._crit_edge169

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ba
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !43
  br label %._crit_edge169

._crit_edge169:                                   ; preds = %bb.g, %bb.h
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ba ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !43
  %i.bj = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bf
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !43
  %i.bk = getelementptr inbounds [8 x i8], ptr %5, i64 %spec.select
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !43
  store i64 %i.bl, ptr %i.bh, align 8, !tbaa !43
  %i.bm = load i64, ptr %i.au, align 8, !tbaa !43
  %i.bn = load i64, ptr %i.bb, align 8, !tbaa !43
  %i.bo = add nsw i64 %i.bn, %i.bm
  store i64 %i.bo, ptr %i.bb, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %._crit_edge169, %.lr.ph162
  %.1120 = phi i64 [ %i.ar, %.lr.ph162 ], [ %i.ay, %._crit_edge169 ], [ %i.ay, %bb.f ] ; 2 uses
  %i.bp = add nuw nsw i64 %.4159, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %i.c
  br i1 %exitcond.not, label %.preheader, label %.lr.ph162, !llvm.loop !161

.lr.ph167:                                        ; preds = %bb.l, %.lr.ph167.preheader.new
  %.5166 = phi i64 [ %.4.lcssa, %.lr.ph167.preheader.new ], [ %.6.1, %bb.l ] ; 3 uses
  %.3127165 = phi i64 [ 0, %.lr.ph167.preheader.new ], [ %i.bz, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph167.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.3127165 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6casadi16SparsityInternal3amdEv:bb.a
bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !alias.scope !260
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #27
          to label %bb.dq unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

bb.l:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

bb.m:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544

bb.n:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541

bb.o:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.j, %bb.i
  %.0451 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.m = load i64, ptr %i.k, align 8, !tbaa !76
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.h, %bb.o ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.p ] ; 2 uses
  %.1452 = phi i1 [ true, %bb.o ], [ %.0451, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0451, %bb.p ] ; 2 uses
  %i.o = load ptr, ptr %7, align 8, !tbaa !74     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !76
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.n ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2453 = phi i1 [ true, %bb.n ], [ %.1452, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539 ], [ %.1452, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.t = load ptr, ptr %8, align 8, !tbaa !74     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541
  %i.w = load i64, ptr %i.u, align 8, !tbaa !76
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.m ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541 ] ; 2 uses
  %.3454 = phi i1 [ true, %bb.m ], [ %.2453, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542 ], [ %.2453, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541 ] ; 2 uses
  %i.y = load ptr, ptr %9, align 8, !tbaa !74     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !76
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.e, %bb.l ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544 ] ; 2 uses
  %.4455 = phi i1 [ true, %bb.l ], [ %.3454, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545 ], [ %.3454, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ad = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !76
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.d, %bb.k ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547 ] ; 4 uses
  %.5456 = phi i1 [ true, %bb.k ], [ %.4455, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i548 ], [ %.4455, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547 ] ; 2 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !76
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i551
  %i.an = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553.thread: ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553.thread
  %i.au = load i64, ptr %i.as, align 8, !tbaa !76
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !76
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ax) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.5456, label %bb.q, label %_ZNSt6vectorIxSaIxEED2Ev.exit703

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.5456, label %bb.q, label %_ZNSt6vectorIxSaIxEED2Ev.exit703

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554.thread
  %.pn.pn.pn.pn.pn.pn.pn1013.ph = phi { ptr, i32 } [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556.thread ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556
  %.pn.pn.pn.pn.pn.pn.pn1013 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i554 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556 ], [ %.pn.pn.pn.pn.pn.pn.pn1013.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit703

bb.r:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !53 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !43 ; 62 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %.idx.i = shl i64 %i.bb, 3                      ; 13 uses
  %i.bd = add i64 %.idx.i, 8                      ; 9 uses
  %i.be = icmp ugt i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %.noexc.i.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27, !noalias !261
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.r
  %.not.i.i.i.i = icmp eq i64 %i.bb, -1
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr null, i64 %i.bd
  br label %_ZNK6casadi16SparsityInternal10get_colindEv.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #28, !noalias !261 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd ; 2 uses
  %i.bi = icmp sgt i64 %i.bb, 0
  br i1 %i.bi, label %bb.s, label %bb.t, !prof !99

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 8 %i.bc, i64 %i.bd, i1 false), !noalias !261
  br label %_ZNK6casadi16SparsityInternal10get_colindEv.exit

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  %i.bj = load i64, ptr %i.bc, align 8, !tbaa !43, !noalias !261
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !43, !noalias !261
  br label %_ZNK6casadi16SparsityInternal10get_colindEv.exit

_ZNK6casadi16SparsityInternal10get_colindEv.exit: ; preds = %.thread.i.i.i, %bb.s, %bb.t
  %.sroa.42.0 = phi ptr [ %i.bf, %.thread.i.i.i ], [ %i.bh, %bb.s ], [ %i.bh, %bb.t ] ; 2 uses
  %.sroa.0963.0 = phi ptr [ null, %.thread.i.i.i ], [ %i.bg, %bb.s ], [ %i.bg, %bb.t ] ; 33 uses
  %i.bk = load ptr, ptr %i.ay, align 8, !tbaa !69, !noalias !262 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !43, !noalias !262 ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 24     ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bm
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !43, !noalias !262 ; 2 uses
  %.idx.i557 = shl nsw i64 %i.br, 3               ; 6 uses
  %i.bs = icmp ugt i64 %.idx.i557, 9223372036854775800
  br i1 %i.bs, label %.noexc.i.i562, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i558

.noexc.i.i562:                                    ; preds = %_ZNK6casadi16SparsityInternal10get_colindEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.noexc.i.i562
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i558: ; preds = %_ZNK6casadi16SparsityInternal10get_colindEv.exit
  %.not.i.i.i.i559 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i559, label %.thread.i.i.i561, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i560

.thread.i.i.i561:                                 ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i558
  %i.bt = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i557
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i560: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i558
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i557) #28
          to label %.noexc563 unwind label %bb.w  ; 5 uses

.noexc563:                                        ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i560
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i557 ; 2 uses
  %i.bw = icmp samesign ugt i64 %.idx.i557, 8
  br i1 %i.bw, label %bb.u, label %bb.v, !prof !99

bb.u:                                             ; preds = %.noexc563
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %i.bo, i64 %.idx.i557, i1 false), !noalias !262
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

bb.v:                                             ; preds = %.noexc563
  %i.bx = load i64, ptr %i.bo, align 8, !tbaa !43, !noalias !262
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !43, !noalias !262
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

_ZNK6casadi16SparsityInternal7get_rowEv.exit:     ; preds = %.thread.i.i.i561, %bb.u, %bb.v
  %.sroa.39.0 = phi ptr [ %i.bt, %.thread.i.i.i561 ], [ %i.bv, %bb.u ], [ %i.bv, %bb.v ] ; 3 uses
  %.sroa.0930.0 = phi ptr [ null, %.thread.i.i.i561 ], [ %i.bu, %bb.u ], [ %i.bu, %bb.v ] ; 52 uses
  %i.by = icmp sgt i64 %i.bb, 0                   ; 5 uses
  br i1 %i.by, label %.lr.ph1490, label %._crit_edge1491

._crit_edge1491:                                  ; preds = %._crit_edge, %_ZNK6casadi16SparsityInternal7get_rowEv.exit
  %.0444.lcssa = phi i64 [ 0, %_ZNK6casadi16SparsityInternal7get_rowEv.exit ], [ %.1445.lcssa, %._crit_edge ]
  %i.bz = sitofp i64 %i.bb to double
  %i.ca = tail call double @sqrt(double noundef %i.bz) #29
  %i.cb = fmul double %i.ca, 1.000000e+01
  %i.cc = fptosi double %i.cb to i64
  %.sroa.speculated922 = tail call i64 @llvm.smax.i64(i64 %i.cc, i64 16)
  %i.cd = add nsw i64 %i.bb, -2
  %.sroa.speculated918 = tail call i64 @llvm.smin.i64(i64 %.sroa.speculated922, i64 %i.cd)
  %i.ce = add nsw i64 %i.bb, 1                    ; 22 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i565 = icmp ne i64 %i.ce, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i565)
  %i.cf = shl nuw nsw i64 %i.ce, 3                ; 9 uses
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc567 unwind label %bb.aj ; 4 uses

.noexc567:                                        ; preds = %._crit_edge1491
  store ptr %i.cg, ptr %0, align 8, !tbaa !53
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !54
  store i64 0, ptr %i.cg, align 8, !tbaa !43
  %i.cj = getelementptr i8, ptr %i.cg, i64 8      ; 3 uses
  %i.ck = icmp eq i64 %i.bb, 0                    ; 9 uses
  br i1 %i.ck, label %bb.ab, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc567
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cj, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i
  br label %bb.ab

bb.w:                                             ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i560, %.noexc.i.i562
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit701

.lr.ph1490:                                       ; preds = %_ZNK6casadi16SparsityInternal7get_rowEv.exit, %._crit_edge
  %.04421489 = phi i64 [ %i.cn, %._crit_edge ], [ 0, %_ZNK6casadi16SparsityInternal7get_rowEv.exit ] ; 4 uses
  %.04431488 = phi i64 [ %i.cp, %._crit_edge ], [ 0, %_ZNK6casadi16SparsityInternal7get_rowEv.exit ] ; 6 uses
  %.04441487 = phi i64 [ %.1445.lcssa, %._crit_edge ], [ 0, %_ZNK6casadi16SparsityInternal7get_rowEv.exit ] ; 5 uses
  %i.cn = add nuw nsw i64 %.04421489, 1           ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.cn ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !43 ; 5 uses
  %i.cq = icmp slt i64 %.04431488, %i.cp
  br i1 %i.cq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph1490
  %i.cr = sub i64 %i.cp, %.04431488
  %.neg = add i64 %.04431488, 1
  %xtraiter = and i64 %i.cr, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.04431488
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !43 ; 2 uses
  %.not535.prol = icmp eq i64 %i.ct, %.04421489
  br i1 %.not535.prol, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.x

bb.x:                                             ; preds = %.lr.ph.prol
  %i.cu = add nsw i64 %.04441487, 1
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.04441487
  store i64 %i.ct, ptr %i.cv, align 8, !tbaa !43
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.x, %.lr.ph.prol
  %.2446.prol = phi i64 [ %i.cu, %bb.x ], [ %.04441487, %.lr.ph.prol ] ; 2 uses
  %i.cw = add nsw i64 %.04431488, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.2446.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.2446.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.04411486.unr = phi i64 [ %.04431488, %.lr.ph.preheader ], [ %i.cw, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.14451485.unr = phi i64 [ %.04441487, %.lr.ph.preheader ], [ %.2446.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.cx = icmp eq i64 %i.cp, %.neg
  br i1 %i.cx, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.aa, %.lr.ph1490
  %.1445.lcssa = phi i64 [ %.04441487, %.lr.ph1490 ], [ %.2446.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2446.1, %bb.aa ] ; 3 uses
  store i64 %.1445.lcssa, ptr %i.co, align 8, !tbaa !43
  %exitcond1633.not = icmp eq i64 %i.cn, %i.bb
  br i1 %exitcond1633.not, label %._crit_edge1491, label %.lr.ph1490, !llvm.loop !228

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.aa
  %.04411486 = phi i64 [ %i.dh, %bb.aa ], [ %.04411486.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.14451485 = phi i64 [ %.2446.1, %bb.aa ], [ %.14451485.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.04411486
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !43 ; 2 uses
  %.not535 = icmp eq i64 %i.cz, %.04421489
  br i1 %.not535, label %.lr.ph.1, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %i.da = add nsw i64 %.14451485, 1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.14451485
  store i64 %i.cz, ptr %i.db, align 8, !tbaa !43
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.y
  %.2446 = phi i64 [ %i.da, %bb.y ], [ %.14451485, %.lr.ph ] ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %.sroa.0930.0, i64 %.04411486
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !43 ; 2 uses
  %.not535.1 = icmp eq i64 %i.de, %.04421489
  br i1 %.not535.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.1
  %i.df = add nsw i64 %.2446, 1
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0930.0, i64 %.2446
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !43
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.1
  %.2446.1 = phi i64 [ %i.df, %bb.z ], [ %.2446, %.lr.ph.1 ] ; 2 uses
  %i.dh = add nsw i64 %.04411486, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dh, %i.cp
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !229

bb.ab:                                            ; preds = %.noexc567, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.cl, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cj, %.noexc567 ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %.0.i.i.i.i.i.ph, ptr %i.di, align 8, !tbaa !55
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc575 unwind label %bb.ak ; 21 uses

.noexc575:                                        ; preds = %bb.ab
  %i.dk = ptrtoaddr ptr %i.dj to i64              ; 5 uses
  store i64 0, ptr %i.dj, align 8, !tbaa !43
  br i1 %i.ck, label %bb.ac, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i570

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i570: ; preds = %.noexc575
  %i.dl = getelementptr i8, ptr %i.dj, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dl, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc575, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i570
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc584 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit695.thread ; 24 uses

.noexc584:                                        ; preds = %bb.ac
  %i.dn = ptrtoaddr ptr %i.dm to i64              ; 5 uses
  store i64 0, ptr %i.dm, align 8, !tbaa !43
  br i1 %i.ck, label %bb.ad, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i579

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i579: ; preds = %.noexc584
  %i.do = getelementptr i8, ptr %i.dm, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.do, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc584, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i579
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc593 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit693.thread ; 20 uses

.noexc593:                                        ; preds = %bb.ad
  store i64 0, ptr %i.dp, align 8, !tbaa !43
  br i1 %i.ck, label %bb.ae, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i588

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i588: ; preds = %.noexc593
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dq, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc593, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i588
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc602 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit691.thread ; 17 uses

.noexc602:                                        ; preds = %bb.ae
  store i64 0, ptr %i.dr, align 8, !tbaa !43
  br i1 %i.ck, label %bb.af, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i597

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i597: ; preds = %.noexc602
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ds, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  %i.dt = icmp eq i64 %.idx.i, -8
  %i.du = select i1 %i.dt, ptr null, ptr %i.dr
  br label %bb.af

bb.af:                                            ; preds = %.noexc602, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i597
  %.0.i.i.i.i.i599.ph = phi ptr [ %i.du, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i597 ], [ %i.dr, %.noexc602 ]
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc611 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit689.thread ; 19 uses

.noexc611:                                        ; preds = %bb.af
  %i.dw = ptrtoaddr ptr %i.dv to i64              ; 5 uses
  store i64 0, ptr %i.dv, align 8, !tbaa !43
  br i1 %i.ck, label %bb.ag, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i606

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i606: ; preds = %.noexc611
  %i.dx = getelementptr i8, ptr %i.dv, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dx, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc611, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i606
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc620 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit687.thread ; 16 uses

.noexc620:                                        ; preds = %bb.ag
  %i.dz = ptrtoaddr ptr %i.dy to i64              ; 5 uses
  store i64 0, ptr %i.dy, align 8, !tbaa !43
  br i1 %i.ck, label %bb.ah, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i615

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i615: ; preds = %.noexc620
  %i.ea = getelementptr i8, ptr %i.dy, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ea, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc620, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i615
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc629 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit685.thread ; 27 uses

.noexc629:                                        ; preds = %bb.ah
  %i.ec = ptrtoaddr ptr %i.eb to i64              ; 5 uses
  store i64 0, ptr %i.eb, align 8, !tbaa !43
  br i1 %i.ck, label %bb.ai, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i624

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i624: ; preds = %.noexc629
  %i.ed = getelementptr i8, ptr %i.eb, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ed, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  %i.ee = icmp eq i64 %.idx.i, -8
  %i.ef = select i1 %i.ee, ptr null, ptr %i.eb
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc629, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i624
  %.0.i.i.i.i.i626.ph = phi ptr [ %i.ef, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i624 ], [ %i.eb, %.noexc629 ] ; 3 uses
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #28
          to label %.noexc638 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit.thread ; 7 uses

.noexc638:                                        ; preds = %bb.ai
  store i64 0, ptr %i.eg, align 8, !tbaa !43
  br i1 %i.ck, label %.lr.ph1499, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639:            ; preds = %.noexc638
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eh, i8 0, i64 %.idx.i, i1 false), !tbaa !43
  br i1 %i.by, label %.lr.ph1494.preheader, label %._crit_edge1495.thread

._crit_edge1495.thread:                           ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.bb
  store i64 0, ptr %i.ei, align 8, !tbaa !43
  %i.ej = ptrtoint ptr %.sroa.39.0 to i64
  %i.ek = ptrtoint ptr %.sroa.0930.0 to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 2 uses
  %i.em = ashr exact i64 %i.el, 3
  br label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread

.lr.ph1494.preheader:                             ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639
  %.pre = load i64, ptr %.sroa.0963.0, align 8, !tbaa !43 ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph1494.preheader2093, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1494.preheader
  %n.vec = and i64 %i.bb, 9223372036854775804     ; 3 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load2024, %vector.body ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %wide.load = load <2 x i64>, ptr %i.eo, align 8, !tbaa !43 ; 3 uses
  %wide.load2024 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !43 ; 4 uses
  %i.eq = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.er = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load2024, <2 x i32> <i32 1, i32 2>
  %i.es = sub nsw <2 x i64> %wide.load, %i.eq
  %i.et = sub nsw <2 x i64> %wide.load2024, %i.er
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <2 x i64> %i.es, ptr %i.eu, align 8, !tbaa !43
  store <2 x i64> %i.et, ptr %i.ev, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !230

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load2024, i64 1
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %.lr.ph1499, label %.lr.ph1494.preheader2093

.lr.ph1494.preheader2093:                         ; preds = %.lr.ph1494.preheader, %middle.block
  %.ph = phi i64 [ %.pre, %.lr.ph1494.preheader ], [ %vector.recur.extract, %middle.block ]
  %.04301493.ph = phi i64 [ 0, %.lr.ph1494.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph1494

.lr.ph1499:                                       ; preds = %.lr.ph1494, %middle.block, %.noexc638
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.bb
  store i64 0, ptr %i.ex, align 8, !tbaa !43
  %i.ey = ptrtoint ptr %.sroa.39.0 to i64
  %i.ez = ptrtoint ptr %.sroa.0930.0 to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = ashr exact i64 %i.fa, 3                 ; 3 uses
  %i.fc = load ptr, ptr %0, align 8, !tbaa !53    ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dr, i8 -1, i64 %i.bd, i1 false), !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dp, i8 -1, i64 %i.bd, i1 false), !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eg, i8 -1, i64 %i.bd, i1 false), !tbaa !43
  %min.iters.check2053 = icmp ult i64 %i.ce, 74
  br i1 %min.iters.check2053, label %scalar.ph2052.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1499
  %i.fd = ptrtoaddr ptr %i.fc to i64              ; 5 uses
  %i.fe = sub i64 %i.fd, %i.dn
  %diff.check = icmp ugt i64 %i.fe, -32
  %i.ff = sub i64 %i.fd, %i.ec
  %diff.check2025 = icmp ugt i64 %i.ff, -32
  %conflict.rdx = or i1 %diff.check, %diff.check2025
  %i.fg = sub i64 %i.fd, %i.dw
  %diff.check2026 = icmp ugt i64 %i.fg, -32
  %conflict.rdx2027 = or i1 %conflict.rdx, %diff.check2026
  %i.fh = sub i64 %i.fd, %i.dz
  %diff.check2028 = icmp ugt i64 %i.fh, -32
  %conflict.rdx2029 = or i1 %conflict.rdx2027, %diff.check2028
  %i.fi = sub i64 %i.fd, %i.dk
  %diff.check2030 = icmp ugt i64 %i.fi, -32
  %conflict.rdx2031 = or i1 %conflict.rdx2029, %diff.check2030
  %i.fj = sub i64 %i.dn, %i.ec
  %diff.check2032 = icmp ugt i64 %i.fj, -32
  %conflict.rdx2033 = or i1 %conflict.rdx2031, %diff.check2032
  %i.fk = sub i64 %i.dn, %i.dw
  %diff.check2034 = icmp ugt i64 %i.fk, -32
  %conflict.rdx2035 = or i1 %conflict.rdx2033, %diff.check2034
  %i.fl = sub i64 %i.dn, %i.dz
  %diff.check2036 = icmp ugt i64 %i.fl, -32
  %conflict.rdx2037 = or i1 %conflict.rdx2035, %diff.check2036
  %i.fm = sub i64 %i.dn, %i.dk
  %diff.check2038 = icmp ugt i64 %i.fm, -32
  %conflict.rdx2039 = or i1 %conflict.rdx2037, %diff.check2038
  %i.fn = sub i64 %i.ec, %i.dw
  %diff.check2040 = icmp ugt i64 %i.fn, -32
  %conflict.rdx2041 = or i1 %conflict.rdx2039, %diff.check2040
  %i.fo = sub i64 %i.ec, %i.dz
  %diff.check2042 = icmp ugt i64 %i.fo, -32
  %conflict.rdx2043 = or i1 %conflict.rdx2041, %diff.check2042
  %i.fp = sub i64 %i.ec, %i.dk
  %diff.check2044 = icmp ugt i64 %i.fp, -32
  %conflict.rdx2045 = or i1 %conflict.rdx2043, %diff.check2044
  %i.fq = sub i64 %i.dw, %i.dz
  %diff.check2046 = icmp ugt i64 %i.fq, -32
  %conflict.rdx2047 = or i1 %conflict.rdx2045, %diff.check2046
  %i.fr = sub i64 %i.dw, %i.dk
  %diff.check2048 = icmp ugt i64 %i.fr, -32
  %conflict.rdx2049 = or i1 %conflict.rdx2047, %diff.check2048
  %i.fs = sub i64 %i.dk, %i.dz
  %diff.check2050 = icmp ugt i64 %i.fs, -32
  %conflict.rdx2051 = or i1 %conflict.rdx2049, %diff.check2050
  br i1 %conflict.rdx2051, label %scalar.ph2052.preheader, label %vector.ph2054

vector.ph2054:                                    ; preds = %vector.memcheck
  %n.vec2055 = and i64 %i.ce, -4                  ; 3 uses
  br label %vector.body2056

vector.body2056:                                  ; preds = %vector.body2056, %vector.ph2054
  %index2057 = phi i64 [ 0, %vector.ph2054 ], [ %index.next2060, %vector.body2056 ] ; 7 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %index2057 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ft, align 8, !tbaa !43
  store <2 x i64> splat (i64 -1), ptr %i.fu, align 8, !tbaa !43
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index2057 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <2 x i64> splat (i64 1), ptr %i.fv, align 8, !tbaa !43
  store <2 x i64> splat (i64 1), ptr %i.fw, align 8, !tbaa !43
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index2057 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <2 x i64> splat (i64 1), ptr %i.fx, align 8, !tbaa !43
  store <2 x i64> splat (i64 1), ptr %i.fy, align 8, !tbaa !43
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %index2057 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <2 x i64> zeroinitializer, ptr %i.fz, align 8, !tbaa !43
  store <2 x i64> zeroinitializer, ptr %i.ga, align 8, !tbaa !43
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index2057 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load2058 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !43
  %wide.load2059 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !43
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index2057 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <2 x i64> %wide.load2058, ptr %i.gd, align 8, !tbaa !43
  store <2 x i64> %wide.load2059, ptr %i.ge, align 8, !tbaa !43
  %index.next2060 = add nuw i64 %index2057, 4     ; 2 uses
  %i.gf = icmp eq i64 %index.next2060, %n.vec2055
  br i1 %i.gf, label %middle.block2061, label %vector.body2056, !llvm.loop !231

middle.block2061:                                 ; preds = %vector.body2056
  %cmp.n2062 = icmp eq i64 %i.ce, %n.vec2055
  br i1 %cmp.n2062, label %._crit_edge1500, label %scalar.ph2052.preheader

scalar.ph2052.preheader:                          ; preds = %vector.memcheck, %.lr.ph1499, %middle.block2061
  %.04291497.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1499 ], [ %n.vec2055, %middle.block2061 ] ; 9 uses
  %i.gg = and i64 %i.bb, 1
  %lcmp.mod2095.not.not = icmp eq i64 %i.gg, 0
  br i1 %lcmp.mod2095.not.not, label %scalar.ph2052.prol, label %scalar.ph2052.prol.loopexit

scalar.ph2052.prol:                               ; preds = %scalar.ph2052.preheader
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.04291497.ph
  store i64 -1, ptr %i.gh, align 8, !tbaa !43
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.04291497.ph
  store i64 1, ptr %i.gi, align 8, !tbaa !43
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.04291497.ph
  store i64 1, ptr %i.gj, align 8, !tbaa !43
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.04291497.ph
  store i64 0, ptr %i.gk, align 8, !tbaa !43
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.04291497.ph
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !43
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.04291497.ph
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !43
  %i.go = or disjoint i64 %.04291497.ph, 1
  br label %scalar.ph2052.prol.loopexit

scalar.ph2052.prol.loopexit:                      ; preds = %scalar.ph2052.prol, %scalar.ph2052.preheader
  %.04291497.unr = phi i64 [ %.04291497.ph, %scalar.ph2052.preheader ], [ %i.go, %scalar.ph2052.prol ]
  %i.gp = icmp eq i64 %i.bb, %.04291497.ph
  br i1 %i.gp, label %._crit_edge1500, label %scalar.ph2052

bb.aj:                                            ; preds = %._crit_edge1491
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit699

bb.ak:                                            ; preds = %bb.ab
  %i.gr = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZNK6casadi16SparsityInternal13_appendVectorERKS0_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !76
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.y ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.2 = phi i1 [ true, %bb.y ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.aq = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !76
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.x
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.x ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.x ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ] ; 2 uses
  %i.av = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !76
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.w
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.w ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.w ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ] ; 2 uses
  %i.ba = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !76
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.v
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.v ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 2 uses
  %.5 = phi i1 [ true, %bb.v ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 2 uses
  %i.bf = load ptr, ptr %15, align 8, !tbaa !74   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !76
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.u
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.u ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 2 uses
  %.6 = phi i1 [ true, %bb.u ], [ %.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.bk = load ptr, ptr %12, align 8, !tbaa !74   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !76
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.t
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.t ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ] ; 2 uses
  %.7 = phi i1 [ true, %bb.t ], [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ] ; 2 uses
  %i.bp = load ptr, ptr %13, align 8, !tbaa !74   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !76
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.s
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.s ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ] ; 2 uses
  %.8 = phi i1 [ true, %bb.s ], [ %.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ] ; 2 uses
  %i.bu = load ptr, ptr %14, align 8, !tbaa !74   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !76
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.r
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.r ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ] ; 2 uses
  %.9 = phi i1 [ true, %bb.r ], [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.bz = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !76
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.q ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ] ; 4 uses
  %.10 = phi i1 [ true, %bb.q ], [ %.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ] ; 2 uses
  %i.ce = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !76
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  %i.cj = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread: ; preds = %bb.d
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !76
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.cs = load i64, ptr %i.ck, align 8, !tbaa !76
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.ct) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.10, label %bb.ab, label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.10, label %bb.ab, label %bb.au

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105.ph = phi { ptr, i32 } [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.m) #29
  br label %bb.au

bb.ac:                                            ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !43 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.cw = getelementptr i8, ptr %i.d, i64 32      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !alias.scope !502
  %.idx.i = shl nsw i64 %i.cv, 3                  ; 6 uses
  %i.cx = icmp ugt i64 %.idx.i, 9223372036854775800
  br i1 %i.cx, label %.noexc.i.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.ac
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27, !noalias !502
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.ac
  %.not.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !54, !alias.scope !502
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.da = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #28, !noalias !502 ; 6 uses
  store ptr %i.da, ptr %17, align 8, !tbaa !53, !alias.scope !502
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !54, !alias.scope !502
  %i.dd = icmp samesign ugt i64 %.idx.i, 8
  br i1 %i.dd, label %bb.ad, label %bb.ae, !prof !99

bb.ad:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.da, ptr align 8 %i.cw, i64 %.idx.i, i1 false), !noalias !502
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

bb.ae:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  %i.de = load i64, ptr %i.cw, align 8, !tbaa !43, !noalias !502
  store i64 %i.de, ptr %i.da, align 8, !tbaa !43, !noalias !502
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

_ZNK6casadi16SparsityInternal7get_rowEv.exit:     ; preds = %.thread.i.i.i, %bb.ad, %bb.ae
  %i.df = phi ptr [ %i.da, %bb.ad ], [ null, %.thread.i.i.i ], [ %i.da, %bb.ae ] ; 9 uses
  %i.dg = phi ptr [ %i.db, %bb.ad ], [ %i.cy, %.thread.i.i.i ], [ %i.db, %bb.ae ] ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !55, !alias.scope !502
  %i.di = load ptr, ptr %i.h, align 8, !tbaa !69  ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !43 ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.di, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 24     ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dk
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !43
  %i.dq = add nsw i64 %i.dp, %i.cv                ; 4 uses
  %i.dr = ptrtoint ptr %i.dg to i64
  %i.ds = ptrtoint ptr %i.df to i64               ; 4 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 5 uses
  %i.du = ashr exact i64 %i.dt, 3                 ; 7 uses
  %i.dv = icmp ugt i64 %i.dq, %i.du
  br i1 %i.dv, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %_ZNK6casadi16SparsityInternal7get_rowEv.exit
  %i.dw = sub nuw i64 %i.dq, %i.du                ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dy = icmp ult i64 %i.du, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = xor i64 %i.du, 1152921504606846975
  %i.ea = icmp ult i64 %i.dz, %i.dw
  br i1 %i.ea, label %bb.ag, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #27
          to label %.noexc101 unwind label %bb.al

.noexc101:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.af
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %i.dw)
  %i.eb = add nuw nsw i64 %.sroa.speculated.i.i, %i.du
  %i.ec = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 1152921504606846975) ; 2 uses
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #28
          to label %.noexc102 unwind label %bb.al ; 6 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dt ; 3 uses
  store i64 0, ptr %i.ef, align 8, !tbaa !43
  %i.eg = add nsw i64 %i.dw, -1                   ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc102
  %i.ei = getelementptr i8, ptr %i.ef, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.eg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ei, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !43
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc102
  %i.ej = icmp sgt i64 %i.dt, 0
  br i1 %i.ej, label %bb.ah, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i

bb.ah:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr align 8 %i.df, i64 %i.dt, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i: ; preds = %bb.ah, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.df, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dt) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i: ; preds = %bb.ai, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  store ptr %i.ee, ptr %17, align 8, !tbaa !53
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dw ; 2 uses
  store ptr %i.ek, ptr %i.dh, align 8, !tbaa !55
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.el, ptr %i.dx, align 8, !tbaa !54
  %.pre118 = ptrtoint ptr %i.ee to i64
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.aj:                                            ; preds = %_ZNK6casadi16SparsityInternal7get_rowEv.exit
  %i.em = icmp ult i64 %i.dq, %i.du
  br i1 %i.em, label %bb.ak, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.ak:                                            ; preds = %bb.aj
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dq ; 3 uses
  %.not.i.i = icmp eq ptr %i.dg, %i.en
  br i1 %.not.i.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ak
  store ptr %i.en, ptr %i.dh, align 8, !tbaa !55
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i, %bb.aj, %bb.ak, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %i.ds, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %.pre118, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ], [ %i.ds, %bb.aj ], [ %i.ds, %bb.ak ]
  %i.eo = phi ptr [ %i.df, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ee, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ], [ %i.df, %bb.aj ], [ %i.df, %bb.ak ] ; 6 uses
  %i.ep = phi ptr [ %i.en, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ek, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ], [ %i.dg, %bb.aj ], [ %i.dg, %bb.ak ]
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %.pre-phi                ; 2 uses
  %i.es = ashr exact i64 %i.er, 3                 ; 7 uses
  %i.et = icmp ult i64 %i.cv, %i.es
  br i1 %i.et, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !53  ; 6 uses
  %i.ev = sub nuw i64 %i.es, %i.cv                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ev, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %19 = shl i64 %i.cv, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.eo, i64 %19 ; 2 uses
  %scevgep162 = getelementptr i8, ptr %i.eo, i64 %i.er ; 2 uses
  %i.ew = add i64 %i.dk, %i.es
  %i.ex = shl i64 %i.ew, 3
  %i.ey = add i64 %i.ex, 24
  %i.ez = sub i64 %i.ey, %19
  %scevgep163 = getelementptr i8, ptr %i.di, i64 %i.ez
  %scevgep164 = getelementptr i8, ptr %i.eu, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep163
  %bound1 = icmp ult ptr %i.dm, %scevgep162
  %found.conflict = and i1 %bound0, %bound1
  %bound0165 = icmp ult ptr %scevgep, %scevgep164
  %bound1166 = icmp ult ptr %i.eu, %scevgep162
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx = or i1 %found.conflict, %found.conflict167
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ev, -4                      ; 3 uses
  %i.fa = add i64 %i.cv, %n.vec
  %i.fb = load i64, ptr %i.eu, align 8, !tbaa !43, !alias.scope !503
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.fb, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load = load <2 x i64>, ptr %i.fd, align 8, !tbaa !43, !alias.scope !504
  %wide.load168 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !43, !alias.scope !504
  %i.ff = add nsw <2 x i64> %broadcast.splat, %wide.load
  %i.fg = add nsw <2 x i64> %broadcast.splat, %wide.load168
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <2 x i64> %i.ff, ptr %i.fh, align 8, !tbaa !43, !alias.scope !505, !noalias !506
  store <2 x i64> %i.fg, ptr %i.fi, align 8, !tbaa !43, !alias.scope !505, !noalias !506
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !499

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.0117.ph = phi i64 [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph ], [ %i.fa, %middle.block ] ; 6 uses
  %i.fk = sub i64 %i.es, %.0117.ph
  %.neg = add i64 %.0117.ph, 1
  %xtraiter = and i64 %i.fk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fl = sub nuw nsw i64 %.0117.ph, %i.cv
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !43
  %i.fo = load i64, ptr %i.eu, align 8, !tbaa !43
  %i.fp = add nsw i64 %i.fo, %i.fn
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.0117.ph
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !43
  %i.fr = add nuw nsw i64 %.0117.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0117.unr = phi i64 [ %.0117.ph, %scalar.ph.preheader ], [ %i.fr, %scalar.ph.prol ]
  %i.fs = icmp eq i64 %i.es, %.neg
  br i1 %i.fs, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.ft = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %.noexc94 unwind label %bb.ap  ; 4 uses

.noexc94:                                         ; preds = %._crit_edge
  store ptr %i.ft, ptr %18, align 8, !tbaa !53
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !54
  store i64 0, ptr %i.ft, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.fu, ptr %i.fw, align 8, !tbaa !55
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %i.es, ptr %i.fx, align 8, !tbaa !43
  %i.fy = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !43
  %i.ga = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !43
  %i.gc = add nsw i64 %i.gb, %i.fz
  invoke void @_ZN6casadi8SparsityC1ExxRKSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.gc, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %17, i1 noundef zeroext false)
          to label %bb.am unwind label %bb.aq

bb.al:                                            ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i, %bb.ag
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0117 = phi i64 [ %i.gr, %scalar.ph ], [ %.0117.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ge = sub nuw nsw i64 %.0117, %i.cv
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !43
  %i.gh = load i64, ptr %i.eu, align 8, !tbaa !43
  %i.gi = add nsw i64 %i.gh, %i.gg
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.0117
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !43
  %i.gk = add nuw nsw i64 %.0117, 1               ; 2 uses
  %i.gl = sub nuw nsw i64 %i.gk, %i.cv
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !43
  %i.go = load i64, ptr %i.eu, align 8, !tbaa !43
  %i.gp = add nsw i64 %i.go, %i.gn
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.gk
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !43
  %i.gr = add nuw nsw i64 %.0117, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gr, %i.es
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !500

bb.am:                                            ; preds = %.noexc94
  %i.gs = load ptr, ptr %18, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gt = load ptr, ptr %i.fv, align 8, !tbaa !54
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gw) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.gx = load ptr, ptr %17, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i95 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIxSaIxEED2Ev.exit96, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !54
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gx to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hc) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit96

_ZNSt6vectorIxSaIxEED2Ev.exit96:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  ret void

bb.ap:                                            ; preds = %._crit_edge
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit98

bb.aq:                                            ; preds = %.noexc94
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %18, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIxSaIxEED2Ev.exit98, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hg = load ptr, ptr %i.fv, align 8, !tbaa !54
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hj) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit98

_ZNSt6vectorIxSaIxEED2Ev.exit98:                  ; preds = %bb.ar, %bb.aq, %bb.ap
  %.pn57 = phi { ptr, i32 } [ %i.hd, %bb.ap ], [ %i.he, %bb.aq ], [ %i.he, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %.pre = load ptr, ptr %17, align 8, !tbaa !53
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit98, %bb.al
  %i.hk = phi ptr [ %.pre, %_ZNSt6vectorIxSaIxEED2Ev.exit98 ], [ %i.df, %bb.al ] ; 3 uses
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %_ZNSt6vectorIxSaIxEED2Ev.exit98 ], [ %i.gd, %bb.al ]
  %.not.i.i.i99 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorIxSaIxEED2Ev.exit100, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hl = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !54
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit100

_ZNSt6vectorIxSaIxEED2Ev.exit100:                 ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.ab, %_ZNSt6vectorIxSaIxEED2Ev.exit100
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit100 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105, %bb.ab ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ]
  resume { ptr, i32 } %.pn57.pn.pn

bb.av:                                            ; preds = %bb.p
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi16SparsityInternal14_appendColumnsERKS0_(ptr dead_on_unwind noalias writable sret(%"class.casadi::Sparsity") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_2
begin_hunk_3_@_ZNK6casadi16SparsityInternal13largest_firstEv:bb.a
bb.g:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.1, i64 noundef %i.s) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i: ; preds = %bb.g, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.v
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.h:                                             ; preds = %._crit_edge
  %i.ak = icmp ult i64 %.lcssa138, %i.t
  br i1 %i.ak, label %bb.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.1, i64 %.lcssa138 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.23.1, %i.al
  %spec.select = select i1 %.not.i.i, ptr %.sroa.23.1, ptr %i.al
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.am = phi i64 [ %i.ap, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.0140 = phi i64 [ %i.an, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0135139 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.an = add nuw nsw i64 %.0140, 1               ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.1, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !43 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.1, i64 %.0140
  %i.ar = sub nsw i64 %i.ap, %i.am                ; 2 uses
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !43
  %i.as = add nsw i64 %i.ar, 1
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %.0135139, i64 %i.as) ; 2 uses
  %i.at = load i64, ptr %i.n, align 8, !tbaa !43  ; 2 uses
  %i.au = icmp slt i64 %i.an, %i.at
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !624

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %bb.i, %bb.h, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i
  %.sroa.23.2 = phi ptr [ %.sroa.23.1, %bb.h ], [ %.sroa.23.1, %bb.i ], [ %i.aj, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ] ; 3 uses
  %.sroa.16.0 = phi ptr [ %.sroa.23.1, %bb.h ], [ %spec.select, %bb.i ], [ %i.ai, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ] ; 2 uses
  %.sroa.0120.2 = phi ptr [ %.sroa.0120.1, %bb.h ], [ %.sroa.0120.1, %bb.i ], [ %i.ac, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ] ; 10 uses
  %i.av = add nuw nsw i64 %.0135.lcssa, 1         ; 8 uses
  %i.aw = icmp ugt i64 %.0135.lcssa, 1152921504606846974
  br i1 %i.aw, label %bb.j, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc35 unwind label %bb.l

.noexc35:                                         ; preds = %bb.j
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.ax = shl nuw nsw i64 %i.av, 3                ; 6 uses
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #28
          to label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit unwind label %bb.l ; 22 uses

_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit:            ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i8 0, i64 %i.ax, i1 false), !tbaa !43
  %.idx = shl nuw nsw i64 %i.av, 3                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax ; 2 uses
  %.not142 = icmp eq ptr %.sroa.0120.2, %.sroa.16.0
  br i1 %.not142, label %.preheader, label %.lr.ph144

.preheader:                                       ; preds = %bb.n, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit
  %.not179 = icmp eq i64 %.0135.lcssa, 0
  br i1 %.not179, label %._crit_edge147, label %.lr.ph146.preheader

.lr.ph146.preheader:                              ; preds = %.preheader
  %.pre153 = load i64, ptr %i.ay, align 8, !tbaa !43 ; 2 uses
  %xtraiter = and i64 %.0135.lcssa, 3             ; 3 uses
  %i.bb = icmp ult i64 %.0135.lcssa, 4
  br i1 %i.bb, label %.lr.ph146.epil.preheader, label %.lr.ph146.preheader.new

.lr.ph146.preheader.new:                          ; preds = %.lr.ph146.preheader
  %unroll_iter = and i64 %.0135.lcssa, 1152921504606846972
  br label %.lr.ph146

bb.k:                                             ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit59

bb.l:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i, %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit59

.lr.ph144:                                        ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit, %bb.n
  %.sroa.092.0143 = phi ptr [ %i.bj, %bb.n ], [ %.sroa.0120.2, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit ] ; 2 uses
  %i.be = load i64, ptr %.sroa.092.0143, align 8, !tbaa !43
  %i.bf = add nsw i64 %i.be, 1                    ; 3 uses
  %.not.i.i37.not = icmp ugt i64 %i.bf, %.0135.lcssa
  br i1 %.not.i.i37.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph144
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.156, i64 noundef %i.bf, i64 noundef %i.av) #27
          to label %.noexc38 unwind label %bb.o

.noexc38:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.lr.ph144
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !43
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.092.0143, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bj, %.sroa.16.0
  br i1 %.not, label %.preheader, label %.lr.ph144, !llvm.loop !625

bb.o:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit57

._crit_edge147.loopexit.unr-lcssa:                ; preds = %.lr.ph146
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge147, label %.lr.ph146.epil.preheader

.lr.ph146.epil.preheader:                         ; preds = %._crit_edge147.loopexit.unr-lcssa, %.lr.ph146.preheader
  %.epil.init = phi i64 [ %.pre153, %.lr.ph146.preheader ], [ %i.cr, %._crit_edge147.loopexit.unr-lcssa ]
  %.022145.epil.init = phi i64 [ 0, %.lr.ph146.preheader ], [ %i.co, %._crit_edge147.loopexit.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod187)
  br label %.lr.ph146.epil

.lr.ph146.epil:                                   ; preds = %.lr.ph146.epil, %.lr.ph146.epil.preheader
  %i.bl = phi i64 [ %i.bp, %.lr.ph146.epil ], [ %.epil.init, %.lr.ph146.epil.preheader ]
  %.022145.epil = phi i64 [ %i.bm, %.lr.ph146.epil ], [ %.022145.epil.init, %.lr.ph146.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph146.epil ], [ 0, %.lr.ph146.epil.preheader ]
  %i.bm = add nuw nsw i64 %.022145.epil, 1        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !43
  %i.bp = add nsw i64 %i.bo, %i.bl                ; 2 uses
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !43
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge147, label %.lr.ph146.epil, !llvm.loop !626

._crit_edge147:                                   ; preds = %._crit_edge147.loopexit.unr-lcssa, %.lr.ph146.epil, %.preheader
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !43 ; 5 uses
  %i.bt = icmp ugt i64 %i.bs, 1152921504606846975
  br i1 %i.bt, label %bb.p, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39

bb.p:                                             ; preds = %._crit_edge147
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc42 unwind label %bb.v

.noexc42:                                         ; preds = %bb.p
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39: ; preds = %._crit_edge147
  %.not.i.i.i.i40 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i.i40, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39
  %i.bu = shl nuw nsw i64 %i.bs, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #28
          to label %.noexc43 unwind label %bb.v   ; 5 uses

.noexc43:                                         ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bs ; 2 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !43
  %i.bx = getelementptr i8, ptr %i.bv, i64 8      ; 3 uses
  %i.by = add nsw i64 %i.bs, -1                   ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc43
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.by, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bx, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit

.lr.ph146:                                        ; preds = %.lr.ph146, %.lr.ph146.preheader.new
  %i.cb = phi i64 [ %.pre153, %.lr.ph146.preheader.new ], [ %i.cr, %.lr.ph146 ]
  %.022145 = phi i64 [ 0, %.lr.ph146.preheader.new ], [ %i.co, %.lr.ph146 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph146.preheader.new ], [ %niter.next.3, %.lr.ph146 ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.022145
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !43
  %i.cf = add nsw i64 %i.ce, %i.cb                ; 2 uses
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !43
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.022145
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !43
  %i.cj = add nsw i64 %i.ci, %i.cf                ; 2 uses
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !43
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.022145
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !43
  %i.cn = add nsw i64 %i.cm, %i.cj                ; 2 uses
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !43
  %i.co = add nuw nsw i64 %.022145, 4             ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !43
  %i.cr = add nsw i64 %i.cq, %i.cn                ; 3 uses
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !43
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge147.loopexit.unr-lcssa, label %.lr.ph146, !llvm.loop !627

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc43, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39
  %.sroa.083.0 = phi ptr [ %i.bv, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bv, %.noexc43 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39 ] ; 10 uses
  %.sroa.14.0 = phi ptr [ %i.bw, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bw, %.noexc43 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39 ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ca, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bx, %.noexc43 ], [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39 ]
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !43 ; 5 uses
  %i.cv = icmp sgt i64 %i.cu, 0
  br i1 %i.cv, label %.lr.ph149.preheader, label %._crit_edge150

.lr.ph149.preheader:                              ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %xtraiter188 = and i64 %i.cu, 1
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph149.prol.loopexit, label %.lr.ph149.prol

.lr.ph149.prol:                                   ; preds = %.lr.ph149.preheader
  %.021.prol = add nsw i64 %i.cu, -1              ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.2, i64 %.021.prol
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !43
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cx ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !43 ; 2 uses
  %i.da = add nsw i64 %i.cz, 1
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !43
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.cz
  store i64 %.021.prol, ptr %i.db, align 8, !tbaa !43
  br label %.lr.ph149.prol.loopexit

.lr.ph149.prol.loopexit:                          ; preds = %.lr.ph149.prol, %.lr.ph149.preheader
  %.021.in148.unr = phi i64 [ %i.cu, %.lr.ph149.preheader ], [ %.021.prol, %.lr.ph149.prol ]
  %i.dc = icmp eq i64 %i.cu, 1
  br i1 %i.dc, label %._crit_edge150, label %.lr.ph149

._crit_edge150:                                   ; preds = %.lr.ph149.prol.loopexit, %.lr.ph149, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %i.dd = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.de = ptrtoint ptr %.sroa.083.0 to i64        ; 3 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = ashr exact i64 %i.df, 3                 ; 8 uses
  %i.dh = icmp ugt i64 %i.dg, %i.av
  br i1 %i.dh, label %bb.r, label %bb.t

bb.r:                                             ; preds = %._crit_edge150
  %i.di = sub nuw nsw i64 %i.dg, %i.av            ; 4 uses
  %i.dj = xor i64 %i.av, 1152921504606846975
  %i.dk = icmp ult i64 %i.dj, %i.di
  br i1 %i.dk, label %bb.s, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i70

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #27
          to label %.noexc78 unwind label %bb.ad

.noexc78:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i70: ; preds = %bb.r
  %.sroa.speculated.i.i71 = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.di)
  %i.dl = add nuw nsw i64 %.sroa.speculated.i.i71, %i.av
  %i.dm = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975) ; 2 uses
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #28
          to label %.noexc79 unwind label %bb.ad  ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i70
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ax ; 3 uses
  store i64 0, ptr %i.dp, align 8, !tbaa !43
  %i.dq = add nsw i64 %i.di, -1                   ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i72

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i72: ; preds = %.noexc79
  %i.ds = getelementptr i8, ptr %i.dp, i64 8
  %.idx.i.i.i.i.i31.i73 = shl nuw nsw i64 %i.dq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ds, i8 0, i64 %.idx.i.i.i.i.i31.i73, i1 false), !tbaa !43
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i72, %.noexc79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.do, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.ax, i1 false)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %.idx) #30
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.di
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit47

bb.t:                                             ; preds = %._crit_edge150
  %.not180 = icmp ugt i64 %i.dg, %.0135.lcssa
  br i1 %.not180, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit47, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.df
  %.not.i.i44 = icmp samesign eq i64 %i.ax, %i.df
  %spec.select136 = select i1 %.not.i.i44, ptr %i.ba, ptr %i.dv
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit47

bb.v:                                             ; preds = %bb.q, %bb.p
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit57

.lr.ph149:                                        ; preds = %.lr.ph149.prol.loopexit, %.lr.ph149
  %.021.in148 = phi i64 [ %.021.1, %.lr.ph149 ], [ %.021.in148.unr, %.lr.ph149.prol.loopexit ] ; 3 uses
  %.021 = add nsw i64 %.021.in148, -1             ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.2, i64 %.021
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !43
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dy ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !43 ; 2 uses
  %i.eb = add nsw i64 %i.ea, 1
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !43
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.ea
  store i64 %.021, ptr %i.ec, align 8, !tbaa !43
  %.021.1 = add nsw i64 %.021.in148, -2           ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0120.2, i64 %.021.1
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !43
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ee ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !43 ; 2 uses
  %i.eh = add nsw i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !43
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %i.eg
  store i64 %.021.1, ptr %i.ei, align 8, !tbaa !43
  %i.ej = icmp sgt i64 %.021.in148, 2
  br i1 %i.ej, label %.lr.ph149, label %._crit_edge150, !llvm.loop !628

_ZNSt6vectorIxSaIxEE6resizeEm.exit47:             ; preds = %bb.u, %bb.t, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77
  %.sroa.17.0 = phi ptr [ %i.ba, %bb.t ], [ %spec.select136, %bb.u ], [ %i.dt, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77 ] ; 4 uses
  %.sroa.27.4 = phi ptr [ %i.az, %bb.t ], [ %i.az, %bb.u ], [ %i.du, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77 ] ; 3 uses
  %.sroa.096.4 = phi ptr [ %i.ay, %bb.t ], [ %i.ay, %bb.u ], [ %i.do, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77 ] ; 7 uses
  %i.ek = ptrtoint ptr %.sroa.17.0 to i64
  %i.el = icmp sgt i64 %i.dg, 0
  br i1 %i.el, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit47
  %xtraiter190 = and i64 %i.dg, 7                 ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.em = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.i.preheader ]
  %.07.i.i.i.i.i.prol = phi i64 [ %i.eq, %.lr.ph.i.i.i.i.i.prol ], [ %i.dg, %.lr.ph.i.i.i.i.i.preheader ]
  %.056.i.i.i.i.i.prol = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.083.0, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.en = load i64, ptr %.056.i.i.i.i.i.prol, align 8, !tbaa !43, !noalias !642
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 -8 ; 3 uses
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !43, !noalias !642
  %i.ep = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.eq = add nsw i64 %.07.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter190
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !639

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr192 = phi ptr [ %.sroa.17.0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eo, %.lr.ph.i.i.i.i.i.prol ]
  %.07.i.i.i.i.i.unr = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eq, %.lr.ph.i.i.i.i.i.prol ]
  %.056.i.i.i.i.i.unr = phi ptr [ %.sroa.083.0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.i.i.i.prol ]
  %i.er = icmp ult i64 %i.dg, 8
  br i1 %i.er, label %_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.es = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i ], [ %.unr192, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.07.i.i.i.i.i = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %.056.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.et = load i64, ptr %.056.i.i.i.i.i, align 8, !tbaa !43, !noalias !642
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 -8
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !43, !noalias !642
  %i.ev = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !43, !noalias !642
  %i.ex = getelementptr inbounds i8, ptr %i.es, i64 -16
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !43, !noalias !642
  %i.ey = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !43, !noalias !642
  %i.fa = getelementptr inbounds i8, ptr %i.es, i64 -24
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !43, !noalias !642
  %i.fb = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 24
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !43, !noalias !642
  %i.fd = getelementptr inbounds i8, ptr %i.es, i64 -32
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !43, !noalias !642
  %i.fe = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 32
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !43, !noalias !642
  %i.fg = getelementptr inbounds i8, ptr %i.es, i64 -40
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !43, !noalias !642
  %i.fh = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 40
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !43, !noalias !642
  %i.fj = getelementptr inbounds i8, ptr %i.es, i64 -48
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !43, !noalias !642
  %i.fk = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 48
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !43, !noalias !642
  %i.fm = getelementptr inbounds i8, ptr %i.es, i64 -56
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !43, !noalias !642
  %i.fn = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 56
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !43, !noalias !642
  %i.fp = getelementptr inbounds i8, ptr %i.es, i64 -64 ; 2 uses
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !43, !noalias !642
  %i.fq = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 64
  %i.fr = add nsw i64 %.07.i.i.i.i.i, -8
  %i.fs = icmp sgt i64 %.07.i.i.i.i.i, 8
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i, label %_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i, !llvm.loop !640

_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIxSaIxEE6resizeEm.exit47
  %i.ft = ptrtoint ptr %.sroa.096.4 to i64        ; 2 uses
  %i.fu = sub i64 %i.ek, %i.ft                    ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
end_hunk_3
