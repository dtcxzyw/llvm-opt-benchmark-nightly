inline.NumInlined: 3054
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 704
loop-unroll.NumUnrolled: 778
begin_hunk_0_@_ZN6cvtest3setERN2cv3MatERKNS0_7Scalar_IdEERKS1_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %index276 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load277 = load <16 x i8>, ptr %i.as, align 16, !tbaa !16
  %wide.load278 = load <16 x i8>, ptr %i.at, align 16, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %.092177.us.us, i64 %index276 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %wide.load277, ptr %i.au, align 1, !tbaa !16
  store <16 x i8> %wide.load278, ptr %i.av, align 1, !tbaa !16
  %index.next279 = add nuw i64 %index276, 32      ; 2 uses
  %i.aw = icmp eq i64 %index.next279, %n.vec274
  br i1 %i.aw, label %middle.block280, label %vector.body275, !llvm.loop !106

middle.block280:                                  ; preds = %vector.body275
  br i1 %cmp.n281, label %._crit_edge175.us.us, label %vec.epilog.iter.check285

vec.epilog.iter.check285:                         ; preds = %middle.block280
  br i1 %min.epilog.iters.check286, label %vec.epilog.scalar.ph284.preheader, label %vec.epilog.ph287, !prof !107

vec.epilog.ph287:                                 ; preds = %vector.main.loop.iter.check271, %vec.epilog.iter.check285
  %vec.epilog.resume.val282 = phi i64 [ %n.vec274, %vec.epilog.iter.check285 ], [ 0, %vector.main.loop.iter.check271 ]
  br label %vec.epilog.vector.body289

vec.epilog.vector.body289:                        ; preds = %vec.epilog.vector.body289, %vec.epilog.ph287
  %index290 = phi i64 [ %vec.epilog.resume.val282, %vec.epilog.ph287 ], [ %index.next292, %vec.epilog.vector.body289 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %index290
  %wide.load291 = load <4 x i8>, ptr %i.ax, align 4, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %.092177.us.us, i64 %index290
  store <4 x i8> %wide.load291, ptr %i.ay, align 1, !tbaa !16
  %index.next292 = add nuw i64 %index290, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next292, %n.vec288
  br i1 %i.az, label %vec.epilog.middle.block293, label %vec.epilog.vector.body289, !llvm.loop !108

vec.epilog.middle.block293:                       ; preds = %vec.epilog.vector.body289
  br i1 %cmp.n294, label %._crit_edge175.us.us, label %vec.epilog.scalar.ph284.preheader

vec.epilog.scalar.ph284.preheader:                ; preds = %iter.check283, %vec.epilog.iter.check285, %vec.epilog.middle.block293
  %.194173.us.us.ph = phi i64 [ 0, %iter.check283 ], [ %n.vec288, %vec.epilog.middle.block293 ], [ %n.vec274, %vec.epilog.iter.check285 ] ; 3 uses
  br i1 %lcmp.mod306.not, label %vec.epilog.scalar.ph284.prol.loopexit, label %vec.epilog.scalar.ph284.prol

vec.epilog.scalar.ph284.prol:                     ; preds = %vec.epilog.scalar.ph284.preheader, %vec.epilog.scalar.ph284.prol
  %.194173.us.us.prol = phi i64 [ %i.bd, %vec.epilog.scalar.ph284.prol ], [ %.194173.us.us.ph, %vec.epilog.scalar.ph284.preheader ] ; 3 uses
  %prol.iter307 = phi i64 [ %prol.iter307.next, %vec.epilog.scalar.ph284.prol ], [ 0, %vec.epilog.scalar.ph284.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.194173.us.us.prol
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %.092177.us.us, i64 %.194173.us.us.prol
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !16
  %i.bd = add nuw nsw i64 %.194173.us.us.prol, 1  ; 2 uses
  %prol.iter307.next = add i64 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i64 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %vec.epilog.scalar.ph284.prol.loopexit, label %vec.epilog.scalar.ph284.prol, !llvm.loop !109

vec.epilog.scalar.ph284.prol.loopexit:            ; preds = %vec.epilog.scalar.ph284.prol, %vec.epilog.scalar.ph284.preheader
  %.194173.us.us.unr = phi i64 [ %.194173.us.us.ph, %vec.epilog.scalar.ph284.preheader ], [ %i.bd, %vec.epilog.scalar.ph284.prol ]
  %i.be = sub nsw i64 %.194173.us.us.ph, %i.y
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge175.us.us, label %vec.epilog.scalar.ph284

vec.epilog.scalar.ph284:                          ; preds = %vec.epilog.scalar.ph284.prol.loopexit, %vec.epilog.scalar.ph284
  %.194173.us.us = phi i64 [ %i.bv, %vec.epilog.scalar.ph284 ], [ %.194173.us.us.unr, %vec.epilog.scalar.ph284.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.194173.us.us
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %.092177.us.us, i64 %.194173.us.us
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !16
  %i.bj = add nuw nsw i64 %.194173.us.us, 1       ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %.092177.us.us, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !16
  %i.bn = add nuw nsw i64 %.194173.us.us, 2       ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %.092177.us.us, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !16
  %i.br = add nuw nsw i64 %.194173.us.us, 3       ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %.092177.us.us, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !16
  %i.bv = add nuw nsw i64 %.194173.us.us, 4       ; 2 uses
  %exitcond219.not.3 = icmp eq i64 %i.bv, %i.y
  br i1 %exitcond219.not.3, label %._crit_edge175.us.us, label %vec.epilog.scalar.ph284, !llvm.loop !110

._crit_edge175.us.us:                             ; preds = %vec.epilog.scalar.ph284.prol.loopexit, %vec.epilog.scalar.ph284, %vec.epilog.middle.block293, %middle.block280
  %i.bw = add i64 %.095176.us.us, %i.y            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.092177.us.us, i64 %i.y
  %i.by = icmp ult i64 %i.bw, %i.aa
  br i1 %i.by, label %iter.check283, label %.loopexit.us, !llvm.loop !111

.split187.us:                                     ; preds = %.loopexit.us
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.split178:                                        ; preds = %.lr.ph260
  %i.ca = add i64 %.096259, 1                     ; 2 uses
  %exitcond218.not = icmp eq i64 %i.ca, %i.m
  br i1 %exitcond218.not, label %.split185.us, label %.lr.ph260, !llvm.loop !105

.lr.ph260:                                        ; preds = %.split178.preheader, %.split178
  %.096259 = phi i64 [ %i.ca, %.split178 ], [ 0, %.split178.preheader ]
  %i.cb = load ptr, ptr %i.ai, align 8, !tbaa !53
  %i.cc = load i8, ptr %i.a, align 16, !tbaa !16
  call void @llvm.memset.p0.i64(ptr align 1 %i.cb, i8 %i.cc, i64 %i.aa, i1 false)
  %i.cd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %.split178 unwind label %.split187, !llvm.loop !105 ; 0 uses

.split187:                                        ; preds = %.lr.ph260
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.split185.us:                                     ; preds = %.split178.us, %.split178, %.split178.us.preheader, %.split178.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.z

bb.j:                                             ; preds = %.split187, %.split187.us, %bb.h, %bb.g
  %.pn120.pn = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.ah, %bb.h ], [ %i.ce, %.split187 ], [ %i.bz, %.split187.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.aa

bb.k:                                             ; preds = %bb.a
  %i.cf = load i32, ptr %0, align 8, !tbaa !45
  %i.cg = load i32, ptr %2, align 8, !tbaa !45
  %.fr197 = freeze i32 %i.cg
  %i.ch = lshr i32 %.fr197, 5
  %i.ci = and i32 %i.ch, 127                      ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cl = call noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %i.cj, ptr noundef nonnull align 4 dereferenceable(52) %i.ck)
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cm = lshr i32 %i.cf, 5
  %i.cn = and i32 %i.cm, 127
  %i.co = icmp eq i32 %i.ci, 0                    ; 2 uses
  %i.cp = icmp eq i32 %i.ci, %i.cn
  %or.cond = or i1 %i.co, %i.cp
  br i1 %or.cond, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN6cvtest3setERN2cv3MatERKNS0_7Scalar_IdEERKS1_, ptr noundef nonnull @.str.35, i32 noundef 517) #31
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %bb.n
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !16
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.p ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cr, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.aa

bb.r:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store ptr %0, ptr %i.d, align 16, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.cx, align 8, !tbaa !38
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.cy, align 16, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #30
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %7, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPS1_i(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.d, ptr noundef nonnull %7, i32 noundef -1)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.da = lshr i32 %i.cz, 5                       ; 2 uses
  %i.db = and i32 %i.da, 127
  %i.dc = add nuw nsw i32 %i.db, 1
  %i.dd = shl i32 %i.cz, 2
  %i.de = and i32 %i.dd, 124
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = lshr i64 1275511473185297, %i.df
  %.fr193 = freeze i64 %i.dg                      ; 2 uses
  %i.dh = trunc i64 %.fr193 to i32
  %i.di = and i32 %i.dh, 15                       ; 2 uses
  %i.dj = mul nuw nsw i32 %i.di, %i.dc            ; 3 uses
  %i.dk = zext nneg i32 %i.dj to i64              ; 10 uses
  %i.dl = load i32, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.dm = lshr i32 %i.dl, 5
  %i.dn = and i32 %i.dm, 127
  %i.do = add nuw nsw i32 %i.dn, 1
  %i.dp = shl i32 %i.dl, 2
  %i.dq = and i32 %i.dp, 124
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = lshr i64 1275511473185297, %i.dr
  %i.dt = trunc i64 %i.ds to i32
  %i.du = and i32 %i.dt, 15
  %i.dv = mul nuw nsw i32 %i.du, %i.do
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.t unwind label %bb.y       ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !40 ; 9 uses
  %i.ea = load i32, ptr %0, align 8, !tbaa !45
  %i.eb = shl i32 %i.ea, 2
  %i.ec = and i32 %i.eb, 124
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = lshr i64 1275511473185297, %i.ed
  %.fr = freeze i64 %i.ee                         ; 3 uses
  %i.ef = and i64 %.fr, 15                        ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 232 ; 2 uses
  %.not = icmp eq i64 %i.dx, 0
  %.not190 = icmp eq i64 %i.ef, 0
  %.not194 = icmp eq i32 %i.di, 0
  br i1 %.not, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.t
  %exitcond216.not252 = icmp eq i64 %i.dz, 0
  br i1 %exitcond216.not252, label %.split161.us, label %.lr.ph254

.split.us:                                        ; preds = %bb.t
  br i1 %i.co, label %.split.us.split.us, label %.split.us.split

.split.us.split.us:                               ; preds = %.split.us
  %exitcond215.not250 = icmp eq i64 %i.dz, 0      ; 2 uses
  br i1 %.not194, label %.split.us.split.us.split.preheader, label %.split.us.split.us.split.us.preheader

.split.us.split.us.split.us.preheader:            ; preds = %.split.us.split.us
  br i1 %exitcond215.not250, label %.split161.us, label %.lr.ph140.us.us.us.preheader

.lr.ph140.us.us.us.preheader:                     ; preds = %.split.us.split.us.split.us.preheader
  %9 = and i32 %i.da, 127
  %narrow = add nuw nsw i32 %9, 1
  %10 = zext nneg i32 %narrow to i64
  %11 = and i64 %.fr193, 15
  %12 = mul nuw nsw i64 %11, %10
  %min.iters.check = icmp samesign ult i32 %i.dj, 4
  %invariant.op310 = sub i64 -1, %i.b
  %min.iters.check261 = icmp samesign ult i32 %i.dj, 32
  %i.ei = and i64 %i.dk, 28
  %n.vec = and i64 %i.dk, 4064                    ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dk
  %min.epilog.iters.check = icmp eq i64 %i.ei, 0
  %n.vec263 = and i64 %i.dk, 4092                 ; 3 uses
  %cmp.n267 = icmp eq i64 %n.vec263, %i.dk
  %xtraiter303 = and i64 %i.dk, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br label %.lr.ph140.us.us.us

.split.us.split.us.split.preheader:               ; preds = %.split.us.split.us
  br i1 %exitcond215.not250, label %.split161.us, label %.lr.ph140.us.us

.split.us.split.us.split.us:                      ; preds = %._crit_edge.split.us.split.us.us.us.us
  %i.ej = add i64 %.089.us.us.us249, 1            ; 2 uses
  %exitcond214.not = icmp eq i64 %i.ej, %i.dz
  br i1 %exitcond214.not, label %.split161.us, label %.lr.ph140.us.us.us, !llvm.loop !112

.lr.ph140.us.us.us:                               ; preds = %.lr.ph140.us.us.us.preheader, %.split.us.split.us.split.us
  %.089.us.us.us249 = phi i64 [ 0, %.lr.ph140.us.us.us.preheader ], [ %i.ej, %.split.us.split.us.split.us ]
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !53 ; 2 uses
  %i.el = ptrtoaddr ptr %i.ek to i64
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !53
  %invariant.op.reass = add i64 %i.el, %invariant.op310
  br label %bb.u

bb.u:                                             ; preds = %..loopexit129_crit_edge.us.us.us.us.us, %.lr.ph140.us.us.us
  %.087138.us.us.us.us.us = phi ptr [ %i.em, %.lr.ph140.us.us.us ], [ %i.fv, %..loopexit129_crit_edge.us.us.us.us.us ] ; 2 uses
  %.088136.us.us.us.us.us = phi ptr [ %i.ek, %.lr.ph140.us.us.us ], [ %i.fu, %..loopexit129_crit_edge.us.us.us.us.us ] ; 8 uses
  %.091135.us.us.us.us.us = phi i64 [ 0, %.lr.ph140.us.us.us ], [ %i.ft, %..loopexit129_crit_edge.us.us.us.us.us ] ; 2 uses
  %i.en = load i8, ptr %.087138.us.us.us.us.us, align 1, !tbaa !16
  %.not117.us.us.us.us.us = icmp eq i8 %i.en, 0
  br i1 %.not117.us.us.us.us.us, label %..loopexit129_crit_edge.us.us.us.us.us, label %iter.check

iter.check:                                       ; preds = %bb.u
  %i.eo = mul i64 %12, %.091135.us.us.us.us.us
  %.reass = add i64 %i.eo, %invariant.op.reass
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond296 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond296, label %.preheader128.us.us.us.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check261, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load = load <16 x i8>, ptr %i.ep, align 16, !tbaa !16
  %wide.load262 = load <16 x i8>, ptr %i.eq, align 16, !tbaa !16
  %i.er = getelementptr inbounds nuw i8, ptr %.088136.us.us.us.us.us, i64 %index ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <16 x i8> %wide.load, ptr %i.er, align 1, !tbaa !16
  store <16 x i8> %wide.load262, ptr %i.es, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit129_crit_edge.us.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader128.us.us.us.us.us.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index264 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next266, %vec.epilog.vector.body ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 %index264
  %wide.load265 = load <4 x i8>, ptr %i.eu, align 4, !tbaa !16
  %i.ev = getelementptr inbounds nuw i8, ptr %.088136.us.us.us.us.us, i64 %index264
  store <4 x i8> %wide.load265, ptr %i.ev, align 1, !tbaa !16
  %index.next266 = add nuw i64 %index264, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next266, %n.vec263
  br i1 %i.ew, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !114

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n267, label %..loopexit129_crit_edge.us.us.us.us.us, label %.preheader128.us.us.us.us.us.preheader

.preheader128.us.us.us.us.us.preheader:           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.090134.us.us.us.us.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec263, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod304.not, label %.preheader128.us.us.us.us.us.prol.loopexit, label %.preheader128.us.us.us.us.us.prol

.preheader128.us.us.us.us.us.prol:                ; preds = %.preheader128.us.us.us.us.us.preheader, %.preheader128.us.us.us.us.us.prol
  %.090134.us.us.us.us.us.prol = phi i64 [ %i.fa, %.preheader128.us.us.us.us.us.prol ], [ %.090134.us.us.us.us.us.ph, %.preheader128.us.us.us.us.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader128.us.us.us.us.us.prol ], [ 0, %.preheader128.us.us.us.us.us.preheader ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 %.090134.us.us.us.us.us.prol
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !16
  %i.ez = getelementptr inbounds nuw i8, ptr %.088136.us.us.us.us.us, i64 %.090134.us.us.us.us.us.prol
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !16
  %i.fa = add nuw nsw i64 %.090134.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter303
  br i1 %prol.iter.cmp.not, label %.preheader128.us.us.us.us.us.prol.loopexit, label %.preheader128.us.us.us.us.us.prol, !llvm.loop !115

.preheader128.us.us.us.us.us.prol.loopexit:       ; preds = %.preheader128.us.us.us.us.us.prol, %.preheader128.us.us.us.us.us.preheader
  %.090134.us.us.us.us.us.unr = phi i64 [ %.090134.us.us.us.us.us.ph, %.preheader128.us.us.us.us.us.preheader ], [ %i.fa, %.preheader128.us.us.us.us.us.prol ]
  %i.fb = sub nsw i64 %.090134.us.us.us.us.us.ph, %i.dk
  %i.fc = icmp ugt i64 %i.fb, -4
  br i1 %i.fc, label %..loopexit129_crit_edge.us.us.us.us.us, label %.preheader128.us.us.us.us.us

.preheader128.us.us.us.us.us:                     ; preds = %.preheader128.us.us.us.us.us.prol.loopexit, %.preheader128.us.us.us.us.us
  %.090134.us.us.us.us.us = phi i64 [ %i.fs, %.preheader128.us.us.us.us.us ], [ %.090134.us.us.us.us.us.unr, %.preheader128.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.090134.us.us.us.us.us
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !16
  %i.ff = getelementptr inbounds nuw i8, ptr %.088136.us.us.us.us.us, i64 %.090134.us.us.us.us.us
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !16
  %i.fg = add nuw nsw i64 %.090134.us.us.us.us.us, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !16
  %i.fj = getelementptr inbounds nuw i8, ptr %.088136.us.us.us.us.us, i64 %i.fg
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !16
  %i.fk = add nuw nsw i64 %.090134.us.us.us.us.us, 2 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !16
  %i.fn = getelementptr inbounds nuw i8, ptr %.088136.us.us.us.us.us, i64 %i.fk
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !16
  %i.fo = add nuw nsw i64 %.090134.us.us.us.us.us, 3 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !16
  %i.fr = getelementptr inbounds nuw i8, ptr %.088136.us.us.us.us.us, i64 %i.fo
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !16
  %i.fs = add nuw nsw i64 %.090134.us.us.us.us.us, 4 ; 2 uses
  %exitcond212.not.3 = icmp eq i64 %i.fs, %i.dk
  br i1 %exitcond212.not.3, label %..loopexit129_crit_edge.us.us.us.us.us, label %.preheader128.us.us.us.us.us, !llvm.loop !116

..loopexit129_crit_edge.us.us.us.us.us:           ; preds = %.preheader128.us.us.us.us.us.prol.loopexit, %.preheader128.us.us.us.us.us, %middle.block, %vec.epilog.middle.block, %bb.u
  %i.ft = add nuw i64 %.091135.us.us.us.us.us, 1  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.088136.us.us.us.us.us, i64 %i.dk
  %i.fv = getelementptr inbounds nuw i8, ptr %.087138.us.us.us.us.us, i64 %i.dw
  %exitcond213.not = icmp eq i64 %i.ft, %i.dx
  br i1 %exitcond213.not, label %._crit_edge.split.us.split.us.us.us.us, label %bb.u, !llvm.loop !117

._crit_edge.split.us.split.us.us.us.us:           ; preds = %..loopexit129_crit_edge.us.us.us.us.us
  %i.fw = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %.split.us.split.us.split.us unwind label %.split163.us.split.us.split.us, !llvm.loop !112 ; 0 uses

.split163.us.split.us.split.us:                   ; preds = %._crit_edge.split.us.split.us.us.us.us
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.split163.us

.split.us.split.us.split:                         ; preds = %.lr.ph140.us.us
  %i.fy = add i64 %.089.us.us251, 1               ; 2 uses
  %exitcond215.not = icmp eq i64 %i.fy, %i.dz
  br i1 %exitcond215.not, label %.split161.us, label %.lr.ph140.us.us, !llvm.loop !112

.lr.ph140.us.us:                                  ; preds = %.split.us.split.us.split.preheader, %.split.us.split.us.split
  %.089.us.us251 = phi i64 [ %i.fy, %.split.us.split.us.split ], [ 0, %.split.us.split.us.split.preheader ]
  %i.fz = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %.split.us.split.us.split unwind label %.split163.us.split.us.split, !llvm.loop !112 ; 0 uses

.split163.us.split.us.split:                      ; preds = %.lr.ph140.us.us
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.split163.us

.split.us.split:                                  ; preds = %.split.us
  br i1 %.not190, label %.split.us.split.split.preheader, label %.split.us.split.split.us.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %exitcond211.not246 = icmp eq i64 %i.dz, 0
  br i1 %exitcond211.not246, label %.split161.us, label %.lr.ph140.us

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %i.gb = add nuw nsw i32 %i.ci, 1
  %wide.trip.count = zext nneg i32 %i.gb to i64
  %exitcond210.not244 = icmp eq i64 %i.dz, 0
  br i1 %exitcond210.not244, label %.split161.us, label %.lr.ph140.us.us167.preheader

.lr.ph140.us.us167.preheader:                     ; preds = %.split.us.split.split.us.preheader
  %xtraiter = and i64 %.fr, 3                     ; 3 uses
  %i.gc = icmp samesign ult i64 %i.ef, 4
  %unroll_iter = and i64 %.fr, 12
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod302 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph140.us.us167

.split.us.split.split.us:                         ; preds = %._crit_edge.split.split.us.us.us
  %i.gd = add i64 %.089.us.us166245, 1            ; 2 uses
  %exitcond210.not = icmp eq i64 %i.gd, %i.dz
  br i1 %exitcond210.not, label %.split161.us, label %.lr.ph140.us.us167, !llvm.loop !112

.lr.ph140.us.us167:                               ; preds = %.lr.ph140.us.us167.preheader, %.split.us.split.split.us
  %.089.us.us166245 = phi i64 [ %i.gd, %.split.us.split.split.us ], [ 0, %.lr.ph140.us.us167.preheader ]
  %i.ge = load ptr, ptr %i.eg, align 8, !tbaa !53
  %i.gf = load ptr, ptr %i.eh, align 8, !tbaa !53
  br label %.preheader130.us.us.us

.preheader130.us.us.us:                           ; preds = %.loopexit131.split.us.us.us.us, %.lr.ph140.us.us167
  %.087138.us141.us.us = phi ptr [ %i.gf, %.lr.ph140.us.us167 ], [ %i.hk, %.loopexit131.split.us.us.us.us ] ; 2 uses
  %.088136.us142.us.us = phi ptr [ %i.ge, %.lr.ph140.us.us167 ], [ %i.hj, %.loopexit131.split.us.us.us.us ] ; 6 uses
  %.091135.us143.us.us = phi i64 [ 0, %.lr.ph140.us.us167 ], [ %i.hi, %.loopexit131.split.us.us.us.us ]
  br label %bb.v

bb.v:                                             ; preds = %..loopexit127_crit_edge.us.us.us.us, %.preheader130.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %..loopexit127_crit_edge.us.us.us.us ], [ 0, %.preheader130.us.us.us ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.087138.us141.us.us, i64 %indvars.iv
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !16
  %.not.us.us.us.us = icmp eq i8 %i.gh, 0
  br i1 %.not.us.us.us.us, label %..loopexit127_crit_edge.us.us.us.us, label %.preheader126.us.us.us.us

.preheader126.us.us.us.us.new:                    ; preds = %.preheader126.us.us.us.us, %.preheader126.us.us.us.us.new
  %.1132.us.us.us.us = phi i64 [ %i.hb, %.preheader126.us.us.us.us.new ], [ 0, %.preheader126.us.us.us.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader126.us.us.us.us.new ], [ 0, %.preheader126.us.us.us.us ]
  %i.gi = add nuw nsw i64 %.1132.us.us.us.us, %i.hh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !16
  %i.gl = getelementptr inbounds nuw i8, ptr %.088136.us142.us.us, i64 %i.gi
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !16
  %i.gm = or disjoint i64 %.1132.us.us.us.us, 1
  %i.gn = add nuw nsw i64 %i.gm, %i.hh            ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !16
  %i.gq = getelementptr inbounds nuw i8, ptr %.088136.us142.us.us, i64 %i.gn
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !16
  %i.gr = or disjoint i64 %.1132.us.us.us.us, 2
  %i.gs = add nuw nsw i64 %i.gr, %i.hh            ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !16
  %i.gv = getelementptr inbounds nuw i8, ptr %.088136.us142.us.us, i64 %i.gs
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !16
  %i.gw = or disjoint i64 %.1132.us.us.us.us, 3
  %i.gx = add nuw nsw i64 %i.gw, %i.hh            ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !16
  %i.ha = getelementptr inbounds nuw i8, ptr %.088136.us142.us.us, i64 %i.gx
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !16
  %i.hb = add nuw nsw i64 %.1132.us.us.us.us, 4   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit127_crit_edge.us.us.us.us.loopexit.unr-lcssa, label %.preheader126.us.us.us.us.new, !llvm.loop !118

..loopexit127_crit_edge.us.us.us.us.loopexit.unr-lcssa: ; preds = %.preheader126.us.us.us.us.new
end_hunk_0
begin_hunk_1_@_ZN6cvtest9convertToIN2cv6bfloatEEEvPKT_Pvimdd:bb.a
  %i.aja = tail call i32 @llvm.smin.i32(i32 %i.aiz, i32 32767)
  %i.ajb = trunc nsw i32 %i.aja to i16
  %i.ajc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.133.i107.epil.init
  store i16 %i.ajb, ptr %i.ajc, align 2, !tbaa !146
  br label %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit

_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit661.unr-lcssa: ; preds = %.lr.ph36.i131
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit, label %.lr.ph36.i131.epil.preheader

.lr.ph36.i131.epil.preheader:                     ; preds = %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit661.unr-lcssa, %.lr.ph36.i131.preheader
  %.035.i132.epil.init = phi i64 [ 0, %.lr.ph36.i131.preheader ], [ %i.my, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit661.unr-lcssa ] ; 2 uses
  %lcmp.mod716 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod716)
  %i.ajd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.035.i132.epil.init
  %.sroa.0.0.copyload.i133.epil = load i16, ptr %i.ajd, align 2, !tbaa !146
  %i.aje = zext i16 %.sroa.0.0.copyload.i133.epil to i32
  %i.ajf = shl nuw i32 %i.aje, 16
  %i.ajg = insertelement <4 x i32> poison, i32 %i.ajf, i64 0
  %i.ajh = bitcast <4 x i32> %i.ajg to <4 x float>
  %i.aji = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ajh)
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.035.i132.epil.init
  store i32 %i.aji, ptr %i.ajj, align 4, !tbaa !17
  br label %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit

_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit662.unr-lcssa: ; preds = %.lr.ph34.i127
  %lcmp.mod710.not = icmp eq i64 %xtraiter709, 0
  br i1 %lcmp.mod710.not, label %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit, label %.lr.ph34.i127.epil.preheader

.lr.ph34.i127.epil.preheader:                     ; preds = %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit662.unr-lcssa, %.lr.ph34.i127.preheader
  %.133.i128.epil.init = phi i64 [ 0, %.lr.ph34.i127.preheader ], [ %i.nw, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit662.unr-lcssa ] ; 2 uses
  %lcmp.mod711 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod711)
  %i.ajk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.133.i128.epil.init
  %i.ajl = load i16, ptr %i.ajk, align 2, !tbaa !1222
  %i.ajm = zext i16 %i.ajl to i32
  %i.ajn = shl nuw i32 %i.ajm, 16
  %i.ajo = bitcast i32 %i.ajn to float
  %i.ajp = fpext float %i.ajo to double
  %i.ajq = fmul double %4, %i.ajp
  %i.ajr = insertelement <2 x double> poison, double %i.ajq, i64 0
  %i.ajs = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ajr)
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.133.i128.epil.init
  store i32 %i.ajs, ptr %i.ajt, align 4, !tbaa !17
  br label %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit

_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit663.unr-lcssa: ; preds = %.lr.ph.i123
  %lcmp.mod705.not = icmp eq i64 %xtraiter704, 0
  br i1 %lcmp.mod705.not, label %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit, label %.lr.ph.i123.epil.preheader

.lr.ph.i123.epil.preheader:                       ; preds = %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit663.unr-lcssa, %.lr.ph.i123.preheader
  %.232.i124.epil.init = phi i64 [ 0, %.lr.ph.i123.preheader ], [ %i.os, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit663.unr-lcssa ] ; 2 uses
  %lcmp.mod706 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod706)
  %i.aju = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.232.i124.epil.init
  %i.ajv = load i16, ptr %i.aju, align 2, !tbaa !1222
  %i.ajw = zext i16 %i.ajv to i32
  %i.ajx = shl nuw i32 %i.ajw, 16
  %i.ajy = bitcast i32 %i.ajx to float
  %i.ajz = fpext float %i.ajy to double
  %i.aka = tail call double @llvm.fmuladd.f64(double %i.ajz, double %4, double %5)
  %i.akb = insertelement <2 x double> poison, double %i.aka, i64 0
  %i.akc = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.akb)
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.232.i124.epil.init
  store i32 %i.akc, ptr %i.akd, align 4, !tbaa !17
  br label %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit

_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit676.unr-lcssa: ; preds = %.lr.ph37.i178
  %lcmp.mod700.not = icmp eq i64 %xtraiter699, 0
  br i1 %lcmp.mod700.not, label %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit, label %.lr.ph37.i178.epil.preheader

.lr.ph37.i178.epil.preheader:                     ; preds = %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit676.unr-lcssa, %.lr.ph37.i178.preheader
  %.036.i179.epil.init = phi i64 [ 0, %.lr.ph37.i178.preheader ], [ %i.up, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit676.unr-lcssa ] ; 2 uses
  %lcmp.mod701 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod701)
  %i.ake = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.036.i179.epil.init
  %.sroa.0.0.copyload.i180.epil = load i16, ptr %i.ake, align 2, !tbaa !146
  %i.akf = zext i16 %.sroa.0.0.copyload.i180.epil to i32
  %i.akg = shl nuw i32 %i.akf, 16
  %i.akh = bitcast i32 %i.akg to float            ; 2 uses
  %i.aki = fcmp olt float %i.akh, 0.000000e+00
  %.sroa.speculated.i.i.i181.epil = select i1 %i.aki, float 0.000000e+00, float %i.akh
  %i.akj = tail call float @llvm.round.f32(float %.sroa.speculated.i.i.i181.epil)
  %i.akk = fptosi float %i.akj to i64
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.036.i179.epil.init
  store i64 %i.akk, ptr %i.akl, align 8, !tbaa !18
  br label %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit

_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit681.unr-lcssa: ; preds = %.lr.ph36.i194
  %lcmp.mod697.not = icmp eq i64 %xtraiter696, 0
  br i1 %lcmp.mod697.not, label %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit, label %.lr.ph36.i194.epil.preheader

.lr.ph36.i194.epil.preheader:                     ; preds = %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit681.unr-lcssa, %.lr.ph36.i194.preheader
  %.035.i195.epil.init = phi i64 [ 0, %.lr.ph36.i194.preheader ], [ %i.xe, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit681.unr-lcssa ] ; 2 uses
  %lcmp.mod698 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod698)
  %i.akm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.035.i195.epil.init
  %.sroa.0.0.copyload.i196.epil = load i16, ptr %i.akm, align 2, !tbaa !146
  %i.akn = zext i16 %.sroa.0.0.copyload.i196.epil to i32
  %i.ako = shl nuw i32 %i.akn, 16
  %i.akp = bitcast i32 %i.ako to float
  %i.akq = tail call float @llvm.round.f32(float %i.akp)
  %i.akr = fptosi float %i.akq to i64
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.i195.epil.init
  store i64 %i.akr, ptr %i.aks, align 8, !tbaa !18
  br label %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit

_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit: ; preds = %.lr.ph.i207, %.lr.ph34.i211, %.lr.ph36.i215, %.lr.ph.i199, %.lr.ph37.i202, %.lr.ph39.i.prol.loopexit, %.lr.ph39.i, %.lr.ph.i186, %.lr.ph34.i190, %.lr.ph36.i194.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit681.unr-lcssa, %.lr.ph.i168, %.lr.ph35.i173, %.lr.ph37.i178.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit676.unr-lcssa, %.lr.ph.i153, %.lr.ph34.i157, %.lr.ph36.i161, %.lr.ph.i138, %.lr.ph34.i142, %.lr.ph36.i146, %.lr.ph.i123.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit663.unr-lcssa, %.lr.ph34.i127.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit662.unr-lcssa, %.lr.ph36.i131.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit661.unr-lcssa, %.lr.ph.i115, %.lr.ph35.i, %.lr.ph37.i, %.lr.ph.i102, %.lr.ph34.i106.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit653.unr-lcssa, %.lr.ph36.i110.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit652.unr-lcssa, %.lr.ph.i87, %.lr.ph34.i91.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit650.unr-lcssa, %.lr.ph36.i95.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit649.unr-lcssa, %.lr.ph.i72, %.lr.ph34.i76.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit647.unr-lcssa, %.lr.ph36.i80.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit646.unr-lcssa, %.lr.ph.i, %.lr.ph34.i.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit644.unr-lcssa, %.lr.ph36.i.epil.preheader, %_ZN6cvtest8convert_IN2cv6bfloatEhEEvPKT_PT0_mdd.exit.loopexit.unr-lcssa, %middle.block, %middle.block384, %middle.block397, %vec.epilog.middle.block, %middle.block417, %middle.block432, %middle.block448, %vec.epilog.middle.block461, %middle.block476, %middle.block489, %middle.block504, %middle.block517, %middle.block533, %middle.block547, %middle.block559, %middle.block574, %middle.block588, %middle.block600, %middle.block615, %middle.block628, %middle.block639, %.preheader28.i210, %.preheader30.i206, %.preheader.i214, %.preheader31.i201, %.preheader33.i, %.preheader.i203, %.preheader28.i189, %.preheader30.i185, %.preheader.i193, %.preheader29.i172, %.preheader31.i167, %.preheader.i177, %.preheader28.i156, %.preheader30.i152, %.preheader.i160, %.preheader28.i141, %.preheader30.i137, %.preheader.i145, %.preheader28.i126, %.preheader30.i122, %.preheader.i130, %.preheader29.i, %.preheader31.i, %.preheader.i118, %.preheader28.i105, %.preheader30.i101, %.preheader.i109, %.preheader28.i90, %.preheader30.i86, %.preheader.i94, %.preheader28.i75, %.preheader30.i71, %.preheader.i79, %.preheader28.i, %.preheader30.i, %.preheader.i, %bb.v
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest6insertERKN2cv3MatERS1_i(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %5 = alloca [2 x %"class.cv::Mat"], align 16    ; 13 uses
  %6 = alloca %"class.cv::NAryMatIterator", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = tail call noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %i.b, ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !45
  %i.f = load i32, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.g = xor i32 %i.f, %i.e
  %i.h = and i32 %i.g, 31
  %i.i = icmp eq i32 %i.h, 0
  %i.j = icmp sgt i32 %2, -1
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = lshr i32 %i.f, 5
  %i.l = and i32 %i.k, 127
  %.not = icmp samesign ugt i32 %2, %i.l
  br i1 %.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN6cvtest6insertERKN2cv3MatERS1_i, ptr noundef nonnull @.str.35, i32 noundef 555) #31
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.r = load i64, ptr %i.p, align 8, !tbaa !16
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr %0, ptr %i.a, align 16, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.u, align 16, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #30
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPS1_i(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.a, ptr noundef nonnull %5, i32 noundef -1)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40   ; 5 uses
  %i.x = load i32, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.y = lshr i32 %i.x, 5                         ; 2 uses
  %i.z = and i32 %i.y, 127
  %i.aa = add nuw nsw i32 %i.z, 1
  %i.ab = shl i32 %i.x, 2
  %i.ac = and i32 %i.ab, 124
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = lshr i64 1275511473185297, %i.ad
  %.fr57 = freeze i64 %i.ae                       ; 2 uses
  %i.af = trunc i64 %.fr57 to i32
  %i.ag = and i32 %i.af, 15                       ; 2 uses
  %i.ah = mul nuw nsw i32 %i.ag, %i.aa            ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 10 uses
  %i.aj = load i32, ptr %1, align 8, !tbaa !45    ; 2 uses
  %i.ak = lshr i32 %i.aj, 5                       ; 2 uses
  %i.al = and i32 %i.ak, 127
  %i.am = add nuw nsw i32 %i.al, 1
  %i.an = shl i32 %i.aj, 2
  %i.ao = and i32 %i.an, 124
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 1275511473185297, %i.ap        ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 15
  %i.at = mul nuw nsw i32 %i.as, %i.am
  %i.au = zext nneg i32 %i.at to i64
  %i.av = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %.preheader48 unwind label %.loopexit.split-lp ; 3 uses

.preheader48:                                     ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 232
  %i.ay = zext nneg i32 %2 to i64                 ; 2 uses
  %i.az = mul nuw nsw i64 %i.ai, %i.ay
  %.not55 = icmp eq i64 %i.av, 0
  br i1 %.not55, label %.preheader48.split.preheader, label %.preheader48.split.us

.preheader48.split.preheader:                     ; preds = %.preheader48
  %exitcond64.not78 = icmp eq i64 %i.w, 0
  br i1 %exitcond64.not78, label %.split.us, label %.lr.ph

.preheader48.split.us:                            ; preds = %.preheader48
  %.not58 = icmp eq i32 %i.ag, 0
  %exitcond63.not76 = icmp eq i64 %i.w, 0         ; 2 uses
  br i1 %.not58, label %.preheader48.split.us.split.preheader, label %.preheader48.split.us.split.us.preheader

.preheader48.split.us.split.us.preheader:         ; preds = %.preheader48.split.us
  br i1 %exitcond63.not76, label %.split.us, label %.preheader.lr.ph.us.us.lr.ph

.preheader.lr.ph.us.us.lr.ph:                     ; preds = %.preheader48.split.us.split.us.preheader
  %i.ba = add i64 %i.av, -1                       ; 2 uses
  %7 = and i32 %i.ak, 127
  %narrow = add nuw nsw i32 %7, 1
  %8 = zext nneg i32 %narrow to i64
  %9 = mul i64 %i.ba, %8
  %10 = and i64 %i.aq, 15
  %11 = mul i64 %9, %10
  %12 = and i32 %i.y, 127
  %13 = zext nneg i32 %12 to i64                  ; 3 uses
  %14 = add nuw nsw i64 %13, 1                    ; 2 uses
  %i.bb = mul nuw nsw i64 %14, %i.ay
  %15 = add nuw nsw i64 %i.bb, %13
  %i.bc = add nuw nsw i64 %15, 1
  %16 = and i64 %.fr57, 15                        ; 2 uses
  %17 = mul nuw nsw i64 %i.bc, %16
  %i.bd = mul i64 %i.ba, %14
  %18 = add i64 %i.bd, %13
  %19 = add i64 %18, 1
  %i.be = mul i64 %19, %16
  %min.iters.check = icmp samesign ult i32 %i.ah, 4
  %min.iters.check81 = icmp samesign ult i32 %i.ah, 32
  %i.bf = and i64 %i.ai, 28
  %n.vec = and i64 %i.ai, 4064                    ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ai
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  %n.vec83 = and i64 %i.ai, 4092                  ; 3 uses
  %cmp.n87 = icmp eq i64 %n.vec83, %i.ai
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.lr.ph.us.us

.preheader48.split.us.split.preheader:            ; preds = %.preheader48.split.us
  br i1 %exitcond63.not76, label %.split.us, label %.preheader.lr.ph.us

.preheader48.split.us.split.us:                   ; preds = %._crit_edge53.us.us
  %i.bg = add i64 %.035.us.us75, 1                ; 2 uses
  %exitcond62.not = icmp eq i64 %i.bg, %i.w
  br i1 %exitcond62.not, label %.split.us, label %.preheader.lr.ph.us.us, !llvm.loop !1281

.preheader.lr.ph.us.us:                           ; preds = %.preheader.lr.ph.us.us.lr.ph, %.preheader48.split.us.split.us
  %.035.us.us75 = phi i64 [ 0, %.preheader.lr.ph.us.us.lr.ph ], [ %i.bg, %.preheader48.split.us.split.us ]
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !53 ; 3 uses
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !53 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.az  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 %11
  %scevgep = getelementptr i8, ptr %i.bk, i64 %17
  %scevgep80 = getelementptr i8, ptr %i.bh, i64 %i.be
  %bound0 = icmp ult ptr %i.bj, %scevgep80
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.03349.us.us = phi i64 [ %i.ca, %vec.epilog.scalar.ph ], [ %.03349.us.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.03251.us.us, i64 %.03349.us.us
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %.052.us.us, i64 %.03349.us.us
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !16
  %i.bo = add nuw nsw i64 %.03349.us.us, 1        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.03251.us.us, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %.052.us.us, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !16
  %i.bs = add nuw nsw i64 %.03349.us.us, 2        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03251.us.us, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %.052.us.us, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !16
  %i.bw = add nuw nsw i64 %.03349.us.us, 3        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.03251.us.us, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %.052.us.us, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !16
  %i.ca = add nuw nsw i64 %.03349.us.us, 4        ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ca, %i.ai
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %vec.epilog.scalar.ph, !llvm.loop !1282

iter.check:                                       ; preds = %.preheader.lr.ph.us.us, %._crit_edge.us.us
  %.052.us.us = phi ptr [ %i.bj, %.preheader.lr.ph.us.us ], [ %i.cr, %._crit_edge.us.us ] ; 8 uses
  %.03251.us.us = phi ptr [ %i.bh, %.preheader.lr.ph.us.us ], [ %i.cq, %._crit_edge.us.us ] ; 8 uses
  %.03450.us.us = phi i64 [ 0, %.preheader.lr.ph.us.us ], [ %i.cp, %._crit_edge.us.us ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.03251.us.us, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load = load <16 x i8>, ptr %i.cb, align 1, !tbaa !16, !alias.scope !1283
  %wide.load82 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !16, !alias.scope !1283
  %i.cd = getelementptr inbounds nuw i8, ptr %.052.us.us, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <16 x i8> %wide.load, ptr %i.cd, align 1, !tbaa !16, !alias.scope !1286, !noalias !1283
  store <16 x i8> %wide.load82, ptr %i.ce, align 1, !tbaa !16, !alias.scope !1286, !noalias !1283
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !1288

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.03251.us.us, i64 %index84
  %wide.load85 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !16, !alias.scope !1283
  %i.ch = getelementptr inbounds nuw i8, ptr %.052.us.us, i64 %index84
  store <4 x i8> %wide.load85, ptr %i.ch, align 1, !tbaa !16, !alias.scope !1286, !noalias !1283
  %index.next86 = add nuw i64 %index84, 4         ; 2 uses
  %i.ci = icmp eq i64 %index.next86, %n.vec83
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1289

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n87, label %._crit_edge.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03349.us.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec83, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.03349.us.us.prol = phi i64 [ %i.cm, %vec.epilog.scalar.ph.prol ], [ %.03349.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.03251.us.us, i64 %.03349.us.us.prol
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %.052.us.us, i64 %.03349.us.us.prol
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !16
  %i.cm = add nuw nsw i64 %.03349.us.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1290

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.03349.us.us.unr = phi i64 [ %.03349.us.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cm, %vec.epilog.scalar.ph.prol ]
  %i.cn = sub nsw i64 %.03349.us.us.ph, %i.ai
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %._crit_edge.us.us, label %vec.epilog.scalar.ph

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cp = add nuw i64 %.03450.us.us, 1            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.03251.us.us, i64 %i.ai
  %i.cr = getelementptr inbounds nuw i8, ptr %.052.us.us, i64 %i.au
  %exitcond61.not = icmp eq i64 %i.cp, %i.av
  br i1 %exitcond61.not, label %._crit_edge53.us.us, label %iter.check, !llvm.loop !1291

._crit_edge53.us.us:                              ; preds = %._crit_edge.us.us
  %i.cs = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %.preheader48.split.us.split.us unwind label %.loopexit.split.us.split.us, !llvm.loop !1281 ; 0 uses

.loopexit.split.us.split.us:                      ; preds = %._crit_edge53.us.us
  %lpad.loopexit.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.preheader48.split.us.split:                      ; preds = %.preheader.lr.ph.us
  %i.ct = add i64 %.035.us77, 1                   ; 2 uses
  %exitcond63.not = icmp eq i64 %i.ct, %i.w
  br i1 %exitcond63.not, label %.split.us, label %.preheader.lr.ph.us, !llvm.loop !1281

.preheader.lr.ph.us:                              ; preds = %.preheader48.split.us.split.preheader, %.preheader48.split.us.split
  %.035.us77 = phi i64 [ %i.ct, %.preheader48.split.us.split ], [ 0, %.preheader48.split.us.split.preheader ]
  %i.cu = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %.preheader48.split.us.split unwind label %.loopexit.split.us.split, !llvm.loop !1281 ; 0 uses

.loopexit.split.us.split:                         ; preds = %.preheader.lr.ph.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.preheader48.split:                               ; preds = %.lr.ph
  %i.cv = add i64 %.03579, 1                      ; 2 uses
  %exitcond64.not = icmp eq i64 %i.cv, %i.w
  br i1 %exitcond64.not, label %.split.us, label %.lr.ph, !llvm.loop !1281

.lr.ph:                                           ; preds = %.preheader48.split.preheader, %.preheader48.split
  %.03579 = phi i64 [ %i.cv, %.preheader48.split ], [ 0, %.preheader48.split.preheader ]
  %i.cw = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %.preheader48.split unwind label %.loopexit.split, !llvm.loop !1281 ; 0 uses

bb.k:                                             ; preds = %bb.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split:                                  ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.split.us:                                        ; preds = %.preheader48.split.us.split.us, %.preheader48.split.us.split, %.preheader48.split, %.preheader48.split.us.split.us.preheader, %.preheader48.split.us.split.preheader, %.preheader48.split.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cy) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.split.us.split, %.loopexit.split.us.split.us, %.loopexit.split, %bb.k
  %.pn45 = phi { ptr, i32 } [ %i.cx, %bb.k ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us.split ], [ %lpad.loopexit.us.us, %.loopexit.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cz) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %.loopexit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn45.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest7extractERKN2cv3MatERS1_i(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %5 = alloca [2 x %"class.cv::Mat"], align 16    ; 13 uses
  %6 = alloca %"class.cv::NAryMatIterator", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %0, align 8, !tbaa !45
  %i.d = and i32 %i.c, 31
  tail call void @_ZN2cv3Mat6createERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(52) %i.b, i32 noundef %i.d)
  %i.e = icmp sgt i32 %2, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !45
  %i.g = lshr i32 %i.f, 5
  %i.h = and i32 %i.g, 127
  %.not = icmp samesign ugt i32 %2, %i.h
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN6cvtest7extractERKN2cv3MatERS1_i, ptr noundef nonnull @.str.35, i32 noundef 580) #31
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.n = load i64, ptr %i.l, align 8, !tbaa !16
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr %0, ptr %i.a, align 16, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.p, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.q, align 16, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #30
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPS1_i(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.a, ptr noundef nonnull %5, i32 noundef -1)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !40   ; 5 uses
  %i.t = load i32, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.u = lshr i32 %i.t, 5                         ; 2 uses
  %i.v = and i32 %i.u, 127
  %i.w = add nuw nsw i32 %i.v, 1
  %i.x = shl i32 %i.t, 2
  %i.y = and i32 %i.x, 124
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 1275511473185297, %i.z         ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 15
  %i.ad = mul nuw nsw i32 %i.ac, %i.w
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = load i32, ptr %1, align 8, !tbaa !45    ; 2 uses
  %i.ag = lshr i32 %i.af, 5                       ; 2 uses
  %i.ah = and i32 %i.ag, 127
  %i.ai = add nuw nsw i32 %i.ah, 1
  %i.aj = shl i32 %i.af, 2
  %i.ak = and i32 %i.aj, 124
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = lshr i64 1275511473185297, %i.al
  %.fr55 = freeze i64 %i.am                       ; 2 uses
  %i.an = trunc i64 %.fr55 to i32
  %i.ao = and i32 %i.an, 15                       ; 2 uses
  %i.ap = mul nuw nsw i32 %i.ao, %i.ai            ; 3 uses
  %i.aq = zext nneg i32 %i.ap to i64              ; 10 uses
  %i.ar = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %.preheader46 unwind label %.loopexit.split-lp ; 3 uses

.preheader46:                                     ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.at = zext nneg i32 %2 to i64                 ; 2 uses
  %i.au = mul nuw nsw i64 %i.aq, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 232
  %.not53 = icmp eq i64 %i.ar, 0
  br i1 %.not53, label %.preheader46.split.preheader, label %.preheader46.split.us

.preheader46.split.preheader:                     ; preds = %.preheader46
  %exitcond62.not76 = icmp eq i64 %i.s, 0
  br i1 %exitcond62.not76, label %.split.us, label %.lr.ph

.preheader46.split.us:                            ; preds = %.preheader46
  %.not56 = icmp eq i32 %i.ao, 0
  %exitcond61.not74 = icmp eq i64 %i.s, 0         ; 2 uses
  br i1 %.not56, label %.preheader46.split.us.split.preheader, label %.preheader46.split.us.split.us.preheader

.preheader46.split.us.split.us.preheader:         ; preds = %.preheader46.split.us
  br i1 %exitcond61.not74, label %.split.us, label %.preheader.lr.ph.us.us.lr.ph

.preheader.lr.ph.us.us.lr.ph:                     ; preds = %.preheader46.split.us.split.us.preheader
  %7 = add i64 %i.ar, -1                          ; 2 uses
  %8 = and i32 %i.ag, 127
  %9 = zext nneg i32 %8 to i64                    ; 3 uses
  %10 = add nuw nsw i64 %9, 1                     ; 2 uses
  %i.aw = mul i64 %7, %10
  %11 = add i64 %i.aw, %9
  %i.ax = add i64 %11, 1
  %12 = and i64 %.fr55, 15                        ; 2 uses
  %13 = mul i64 %i.ax, %12
  %14 = and i32 %i.u, 127
  %narrow = add nuw nsw i32 %14, 1
  %15 = zext nneg i32 %narrow to i64
  %16 = mul i64 %7, %15
  %17 = and i64 %i.aa, 15
  %18 = mul i64 %16, %17
  %i.ay = mul nuw nsw i64 %10, %i.at
  %19 = add nuw nsw i64 %i.ay, %9
  %i.az = add nuw nsw i64 %19, 1
  %i.ba = mul nuw nsw i64 %i.az, %12
  %min.iters.check = icmp samesign ult i32 %i.ap, 4
  %min.iters.check79 = icmp samesign ult i32 %i.ap, 32
  %i.bb = and i64 %i.aq, 28
  %n.vec = and i64 %i.aq, 4064                    ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  %n.vec81 = and i64 %i.aq, 4092                  ; 3 uses
  %cmp.n85 = icmp eq i64 %n.vec81, %i.aq
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.lr.ph.us.us

.preheader46.split.us.split.preheader:            ; preds = %.preheader46.split.us
  br i1 %exitcond61.not74, label %.split.us, label %.preheader.lr.ph.us

.preheader46.split.us.split.us:                   ; preds = %._crit_edge51.us.us
  %i.bc = add i64 %.033.us.us73, 1                ; 2 uses
  %exitcond60.not = icmp eq i64 %i.bc, %i.s
  br i1 %exitcond60.not, label %.split.us, label %.preheader.lr.ph.us.us, !llvm.loop !1292

.preheader.lr.ph.us.us:                           ; preds = %.preheader.lr.ph.us.us.lr.ph, %.preheader46.split.us.split.us
  %.033.us.us73 = phi i64 [ 0, %.preheader.lr.ph.us.us.lr.ph ], [ %i.bc, %.preheader46.split.us.split.us ]
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !53 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.au  ; 2 uses
  %i.bf = load ptr, ptr %i.av, align 8, !tbaa !53 ; 3 uses
  %scevgep = getelementptr i8, ptr %i.bf, i64 %13
  %i.bg = getelementptr i8, ptr %i.bd, i64 %18
  %scevgep78 = getelementptr i8, ptr %i.bg, i64 %i.ba
  %bound0 = icmp ult ptr %i.bf, %scevgep78
  %bound1 = icmp ult ptr %i.be, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.03147.us.us = phi i64 [ %i.bw, %vec.epilog.scalar.ph ], [ %.03147.us.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03049.us.us, i64 %.03147.us.us
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 %.03147.us.us
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !16
  %i.bk = add nuw nsw i64 %.03147.us.us, 1        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.03049.us.us, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !16
  %i.bo = add nuw nsw i64 %.03147.us.us, 2        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.03049.us.us, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !16
  %i.bs = add nuw nsw i64 %.03147.us.us, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03049.us.us, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !16
  %i.bw = add nuw nsw i64 %.03147.us.us, 4        ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bw, %i.aq
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %vec.epilog.scalar.ph, !llvm.loop !1293

iter.check:                                       ; preds = %.preheader.lr.ph.us.us, %._crit_edge.us.us
  %.050.us.us = phi ptr [ %i.bf, %.preheader.lr.ph.us.us ], [ %i.cn, %._crit_edge.us.us ] ; 8 uses
  %.03049.us.us = phi ptr [ %i.be, %.preheader.lr.ph.us.us ], [ %i.cm, %._crit_edge.us.us ] ; 8 uses
  %.03248.us.us = phi i64 [ 0, %.preheader.lr.ph.us.us ], [ %i.cl, %._crit_edge.us.us ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check79, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.03049.us.us, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load = load <16 x i8>, ptr %i.bx, align 1, !tbaa !16, !alias.scope !1294
  %wide.load80 = load <16 x i8>, ptr %i.by, align 1, !tbaa !16, !alias.scope !1294
  %i.bz = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <16 x i8> %wide.load, ptr %i.bz, align 1, !tbaa !16, !alias.scope !1297, !noalias !1294
  store <16 x i8> %wide.load80, ptr %i.ca, align 1, !tbaa !16, !alias.scope !1297, !noalias !1294
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1299

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.03049.us.us, i64 %index82
  %wide.load83 = load <4 x i8>, ptr %i.cc, align 1, !tbaa !16, !alias.scope !1294
  %i.cd = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 %index82
  store <4 x i8> %wide.load83, ptr %i.cd, align 1, !tbaa !16, !alias.scope !1297, !noalias !1294
  %index.next84 = add nuw i64 %index82, 4         ; 2 uses
  %i.ce = icmp eq i64 %index.next84, %n.vec81
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1300

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n85, label %._crit_edge.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03147.us.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec81, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.03147.us.us.prol = phi i64 [ %i.ci, %vec.epilog.scalar.ph.prol ], [ %.03147.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.03049.us.us, i64 %.03147.us.us.prol
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 %.03147.us.us.prol
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !16
  %i.ci = add nuw nsw i64 %.03147.us.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1301

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.03147.us.us.unr = phi i64 [ %.03147.us.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ci, %vec.epilog.scalar.ph.prol ]
  %i.cj = sub nsw i64 %.03147.us.us.ph, %i.aq
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %._crit_edge.us.us, label %vec.epilog.scalar.ph

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cl = add nuw i64 %.03248.us.us, 1            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.03049.us.us, i64 %i.ae
  %i.cn = getelementptr inbounds nuw i8, ptr %.050.us.us, i64 %i.aq
  %exitcond59.not = icmp eq i64 %i.cl, %i.ar
  br i1 %exitcond59.not, label %._crit_edge51.us.us, label %iter.check, !llvm.loop !1302

._crit_edge51.us.us:                              ; preds = %._crit_edge.us.us
  %i.co = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %.preheader46.split.us.split.us unwind label %.loopexit.split.us.split.us, !llvm.loop !1292 ; 0 uses

.loopexit.split.us.split.us:                      ; preds = %._crit_edge51.us.us
  %lpad.loopexit.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.preheader46.split.us.split:                      ; preds = %.preheader.lr.ph.us
  %i.cp = add i64 %.033.us75, 1                   ; 2 uses
  %exitcond61.not = icmp eq i64 %i.cp, %i.s
  br i1 %exitcond61.not, label %.split.us, label %.preheader.lr.ph.us, !llvm.loop !1292

.preheader.lr.ph.us:                              ; preds = %.preheader46.split.us.split.preheader, %.preheader46.split.us.split
  %.033.us75 = phi i64 [ %i.cp, %.preheader46.split.us.split ], [ 0, %.preheader46.split.us.split.preheader ]
  %i.cq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %.preheader46.split.us.split unwind label %.loopexit.split.us.split, !llvm.loop !1292 ; 0 uses

.loopexit.split.us.split:                         ; preds = %.preheader.lr.ph.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.preheader46.split:                               ; preds = %.lr.ph
  %i.cr = add i64 %.03377, 1                      ; 2 uses
  %exitcond62.not = icmp eq i64 %i.cr, %i.s
  br i1 %exitcond62.not, label %.split.us, label %.lr.ph, !llvm.loop !1292

.lr.ph:                                           ; preds = %.preheader46.split.preheader, %.preheader46.split
  %.03377 = phi i64 [ %i.cr, %.preheader46.split ], [ 0, %.preheader46.split.preheader ]
  %i.cs = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %.preheader46.split unwind label %.loopexit.split, !llvm.loop !1292 ; 0 uses

bb.j:                                             ; preds = %bb.h
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split:                                  ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.split.us:                                        ; preds = %.preheader46.split.us.split.us, %.preheader46.split.us.split, %.preheader46.split, %.preheader46.split.us.split.us.preheader, %.preheader46.split.us.split.preheader, %.preheader46.split.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cu) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.split.us.split, %.loopexit.split.us.split.us, %.loopexit.split, %bb.j
  %.pn43 = phi { ptr, i32 } [ %i.ct, %bb.j ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us.split ], [ %lpad.loopexit.us.us, %.loopexit.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cv) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %.loopexit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn43.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest9transposeERKN2cv3MatERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN6cvtest9transposeERKN2cv3MatERS1_, ptr noundef nonnull @.str.35, i32 noundef 604) #31
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1303
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN6cvtest9transposeERKN2cv3MatERS1_, ptr noundef nonnull @.str.35, i32 noundef 605) #31
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.l:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !19     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.l
  %i.t = load i64, ptr %i.r, align 8, !tbaa !16
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.k
  %.pn41 = phi { ptr, i32 } [ %i.o, %bb.k ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.p, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1304
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !52
  %i.z = load i32, ptr %0, align 8, !tbaa !45
  %i.aa = and i32 %i.z, 4095
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.w, i32 noundef %i.y, i32 noundef %i.aa)
  %i.ab = load i32, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.ac = lshr i32 %i.ab, 5                       ; 2 uses
  %i.ad = and i32 %i.ac, 127
  %i.ae = add nuw nsw i32 %i.ad, 1
  %i.af = shl i32 %i.ab, 2
  %i.ag = and i32 %i.af, 124
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 1275511473185297, %i.ah        ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 15                       ; 2 uses
  %i.al = mul nuw nsw i32 %i.ak, %i.ae            ; 3 uses
  %i.am = zext nneg i32 %i.al to i64              ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge54

.lr.ph:                                           ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.not57 = icmp eq i32 %i.ak, 0
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1304 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.split.preheader, label %._crit_edge54

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %6 = and i32 %i.ac, 127
  %narrow = add nuw nsw i32 %6, 1
  %7 = zext nneg i32 %narrow to i64
  %8 = and i64 %i.ai, 15
  %9 = mul nuw nsw i64 %8, %7
  %min.iters.check = icmp samesign ult i32 %i.al, 4
  %min.iters.check72 = icmp samesign ult i32 %i.al, 32
  %i.av = and i64 %i.am, 28
  %n.vec = and i64 %i.am, 4064                    ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.am
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  %n.vec74 = and i64 %i.am, 4092                  ; 3 uses
  %cmp.n78 = icmp eq i64 %n.vec74, %i.am
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge51.split
  %i.aw = phi i32 [ %i.cq, %._crit_edge51.split ], [ %i.ao, %.lr.ph.split.preheader ]
  %i.ax = phi i32 [ %i.cr, %._crit_edge51.split ], [ %i.at, %.lr.ph.split.preheader ] ; 2 uses
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %._crit_edge51.split ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 1
  %brmerge = select i1 %i.ay, i1 true, i1 %.not57
  br i1 %brmerge, label %._crit_edge51.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.split
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !53  ; 2 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = load i64, ptr %i.ar, align 8, !tbaa !18
  %i.bc = mul i64 %i.bb, %indvars.iv60            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.bf = mul nuw nsw i64 %indvars.iv60, %i.am
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %i.bh = add i64 %i.bc, %i.ba
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.050 = phi ptr [ %i.bd, %.preheader.preheader ], [ %i.cn, %._crit_edge ] ; 8 uses
  %.03149 = phi ptr [ %i.bg, %.preheader.preheader ], [ %i.cm, %._crit_edge ] ; 9 uses
  %.03348 = phi i32 [ 0, %.preheader.preheader ], [ %i.ck, %._crit_edge ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.0314971 = ptrtoaddr ptr %.03149 to i64
  %i.bi = mul i64 %9, %indvar
  %i.bj = add i64 %i.bh, %i.bi
  %i.bk = sub i64 %.0314971, %i.bj
  %diff.check = icmp ugt i64 %i.bk, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check72, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.03149, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <16 x i8>, ptr %i.bl, align 1, !tbaa !16
  %wide.load73 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %.050, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <16 x i8> %wide.load, ptr %i.bn, align 1, !tbaa !16
  store <16 x i8> %wide.load73, ptr %i.bo, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1305

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index75 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.03149, i64 %index75
  %wide.load76 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %.050, i64 %index75
  store <4 x i8> %wide.load76, ptr %i.br, align 1, !tbaa !16
  %index.next77 = add nuw i64 %index75, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next77, %n.vec74
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1306

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n78, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec74, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.03149, i64 %indvars.iv.prol
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %.050, i64 %indvars.iv.prol
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1307

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bw = sub nsw i64 %indvars.iv.ph, %i.am
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.03149, i64 %indvars.iv
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %.050, i64 %indvars.iv
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.03149, i64 %indvars.iv.next
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %.050, i64 %indvars.iv.next
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.03149, i64 %indvars.iv.next.1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %.050, i64 %indvars.iv.next.1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.03149, i64 %indvars.iv.next.2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %.050, i64 %indvars.iv.next.2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.am
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1308

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ck = add nuw nsw i32 %.03348, 1              ; 2 uses
  %i.cl = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.03149, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.050, i64 %i.am
  %i.co = load i32, ptr %i.as, align 4, !tbaa !1304 ; 2 uses
  %i.cp = icmp slt i32 %i.ck, %i.co
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cp, label %iter.check, label %._crit_edge51.split.loopexit, !llvm.loop !1309

._crit_edge51.split.loopexit:                     ; preds = %._crit_edge
  %.pre = load i32, ptr %i.an, align 8, !tbaa !52
  br label %._crit_edge51.split

._crit_edge51.split:                              ; preds = %._crit_edge51.split.loopexit, %.lr.ph.split
  %i.cq = phi i32 [ %.pre, %._crit_edge51.split.loopexit ], [ %i.aw, %.lr.ph.split ] ; 2 uses
  %i.cr = phi i32 [ %i.co, %._crit_edge51.split.loopexit ], [ %i.ax, %.lr.ph.split ]
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.cs = sext i32 %i.cq to i64
  %i.ct = icmp slt i64 %indvars.iv.next61, %i.cs
  br i1 %i.ct, label %.lr.ph.split, label %._crit_edge54, !llvm.loop !1310

._crit_edge54:                                    ; preds = %._crit_edge51.split, %.lr.ph, %bb.m
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn41.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6cvtest7randUniERN2cv3RNGERNS0_3MatERKNS0_7Scalar_IdEES8_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Scalar_", align 8       ; 14 uses
  %5 = alloca %"class.cv::Scalar_", align 16      ; 15 uses
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.cv::NAryMatIterator", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.b = load double, ptr %2, align 8, !tbaa !31  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !31 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !31 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !31 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store double %i.j, ptr %i.k, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load <2 x double>, ptr %3, align 8, !tbaa !31 ; 3 uses
  store <2 x double> %i.m, ptr %5, align 16, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.q = load <2 x double>, ptr %i.n, align 8, !tbaa !31 ; 3 uses
  store <2 x double> %i.q, ptr %i.o, align 16, !tbaa !31
  %i.r = load i32, ptr %1, align 8, !tbaa !45
  %i.s = and i32 %i.r, 31
  %i.t = icmp samesign ult i32 %i.s, 5
  %i.u = select i1 %i.t, double f0x3DF0000000000000, double 1.000000e+00 ; 4 uses
  %i.v = extractelement <2 x double> %i.m, i64 0
  %i.w = fsub double %i.b, %i.v                   ; 3 uses
  %i.x = fcmp ult double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %i.b, ptr %5, align 16, !tbaa !31
  %i.y = fneg double %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi double [ %i.y, %bb.b ], [ %i.w, %bb.a ]
  %i.z = fmul double %i.u, %storemerge
  store double %i.z, ptr %4, align 8, !tbaa !31
  %i.aa = extractelement <2 x double> %i.m, i64 1
  %i.ab = fsub double %i.d, %i.aa                 ; 3 uses
  %i.ac = fcmp ult double %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %i.d, ptr %i.l, align 8, !tbaa !31
  %i.ad = fneg double %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.1 = phi double [ %i.ad, %bb.d ], [ %i.ab, %bb.c ]
  %i.ae = fmul double %i.u, %storemerge.1
  store double %i.ae, ptr %i.e, align 8, !tbaa !31
  %i.af = extractelement <2 x double> %i.q, i64 0
  %i.ag = fsub double %i.g, %i.af                 ; 3 uses
  %i.ah = fcmp ult double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %i.g, ptr %i.o, align 16, !tbaa !31
  %i.ai = fneg double %i.ag
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge.2 = phi double [ %i.ai, %bb.f ], [ %i.ag, %bb.e ]
  %i.aj = fmul double %i.u, %storemerge.2
  store double %i.aj, ptr %i.h, align 8, !tbaa !31
  %i.ak = extractelement <2 x double> %i.q, i64 1
end_hunk_1
