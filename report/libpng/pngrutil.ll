Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrutil?download=true
inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_read_filter_row_avg:bb.a

vec.epilog.iter.check90:                          ; preds = %middle.block87
  %min.epilog.iters.check92 = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check92, label %vec.epilog.scalar.ph91.preheader, label %vec.epilog.ph93, !prof !90

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check72, %vec.epilog.iter.check90
  %vec.epilog.resume.val94 = phi i64 [ %n.vec75, %vec.epilog.iter.check90 ], [ 0, %vector.main.loop.iter.check72 ]
  %n.vec95 = and i64 %i.h, -8                     ; 5 uses
  %i.bg = getelementptr i8, ptr %.0.lcssa, i64 %n.vec95
  %i.bh = getelementptr i8, ptr %.020.lcssa, i64 %n.vec95
  br label %vec.epilog.vector.body96

vec.epilog.vector.body96:                         ; preds = %vec.epilog.vector.body96, %vec.epilog.ph93
  %index97 = phi i64 [ %vec.epilog.resume.val94, %vec.epilog.ph93 ], [ %index.next103, %vec.epilog.vector.body96 ] ; 3 uses
  %next.gep98 = getelementptr i8, ptr %.0.lcssa, i64 %index97
  %next.gep99 = getelementptr i8, ptr %.020.lcssa, i64 %index97 ; 3 uses
  %wide.load100 = load <8 x i8>, ptr %next.gep99, align 1, !tbaa !8, !alias.scope !303, !noalias !304
  %wide.load101 = load <8 x i8>, ptr %next.gep98, align 1, !tbaa !8, !alias.scope !305
  %i.bi = zext <8 x i8> %wide.load101 to <8 x i16>
  %i.bj = getelementptr inbounds i8, ptr %next.gep99, i64 %i.af
  %wide.load102 = load <8 x i8>, ptr %i.bj, align 1, !tbaa !8, !alias.scope !306
  %i.bk = zext <8 x i8> %wide.load102 to <8 x i16>
  %i.bl = add nuw nsw <8 x i16> %i.bk, %i.bi
  %i.bm = lshr <8 x i16> %i.bl, splat (i16 1)
  %i.bn = trunc nuw <8 x i16> %i.bm to <8 x i8>
  %i.bo = add <8 x i8> %wide.load100, %i.bn
  store <8 x i8> %i.bo, ptr %next.gep99, align 1, !tbaa !8, !alias.scope !303, !noalias !304
  %index.next103 = add nuw i64 %index97, 8        ; 2 uses
  %i.bp = icmp eq i64 %index.next103, %n.vec95
  br i1 %i.bp, label %vec.epilog.middle.block104, label %vec.epilog.vector.body96, !llvm.loop !298

vec.epilog.middle.block104:                       ; preds = %vec.epilog.vector.body96
  %cmp.n105 = icmp eq i64 %i.h, %n.vec95
  br i1 %cmp.n105, label %._crit_edge, label %vec.epilog.scalar.ph91.preheader

vec.epilog.scalar.ph91.preheader:                 ; preds = %iter.check89, %vector.memcheck65, %vec.epilog.iter.check90, %vec.epilog.middle.block104
  %.133.ph = phi ptr [ %.0.lcssa, %iter.check89 ], [ %.0.lcssa, %vector.memcheck65 ], [ %i.an, %vec.epilog.iter.check90 ], [ %i.bg, %vec.epilog.middle.block104 ] ; 3 uses
  %.12132.ph = phi ptr [ %.020.lcssa, %iter.check89 ], [ %.020.lcssa, %vector.memcheck65 ], [ %i.ao, %vec.epilog.iter.check90 ], [ %i.bh, %vec.epilog.middle.block104 ] ; 5 uses
  %.12331.ph = phi i64 [ 0, %iter.check89 ], [ 0, %vector.memcheck65 ], [ %n.vec75, %vec.epilog.iter.check90 ], [ %n.vec95, %vec.epilog.middle.block104 ] ; 3 uses
  %i.bq = sub i64 %i.g, %i.e
  %i.br = xor i64 %.12331.ph, -1
  %i.bs = add i64 %i.g, %i.br
  %xtraiter110 = and i64 %i.bq, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %vec.epilog.scalar.ph91.prol.loopexit, label %vec.epilog.scalar.ph91.prol

vec.epilog.scalar.ph91.prol:                      ; preds = %vec.epilog.scalar.ph91.preheader
  %i.bt = load i8, ptr %.12132.ph, align 1, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %.133.ph, i64 1
  %i.bv = load i8, ptr %.133.ph, align 1, !tbaa !8
  %i.bw = zext i8 %i.bv to i16
  %i.bx = getelementptr inbounds i8, ptr %.12132.ph, i64 %i.af
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.bz = zext i8 %i.by to i16
  %i.ca = add nuw nsw i16 %i.bz, %i.bw
  %i.cb = lshr i16 %i.ca, 1
  %.tr.prol = trunc nuw i16 %i.cb to i8
  %.narrow.prol = add i8 %i.bt, %.tr.prol
  store i8 %.narrow.prol, ptr %.12132.ph, align 1, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %.12132.ph, i64 1
  %i.cd = or disjoint i64 %.12331.ph, 1
  br label %vec.epilog.scalar.ph91.prol.loopexit

vec.epilog.scalar.ph91.prol.loopexit:             ; preds = %vec.epilog.scalar.ph91.prol, %vec.epilog.scalar.ph91.preheader
  %.133.unr = phi ptr [ %.133.ph, %vec.epilog.scalar.ph91.preheader ], [ %i.bu, %vec.epilog.scalar.ph91.prol ]
  %.12132.unr = phi ptr [ %.12132.ph, %vec.epilog.scalar.ph91.preheader ], [ %i.cc, %vec.epilog.scalar.ph91.prol ]
  %.12331.unr = phi i64 [ %.12331.ph, %vec.epilog.scalar.ph91.preheader ], [ %i.cd, %vec.epilog.scalar.ph91.prol ]
  %i.ce = icmp eq i64 %i.bs, %i.e
  br i1 %i.ce, label %._crit_edge, label %vec.epilog.scalar.ph91

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.029 = phi ptr [ %i.cv, %.lr.ph ], [ %.029.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.02028 = phi ptr [ %i.cy, %.lr.ph ], [ %.02028.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.02227 = phi i64 [ %i.cz, %.lr.ph ], [ %.02227.unr, %.lr.ph.prol.loopexit ]
  %i.cf = load i8, ptr %.02028, align 1, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %.029, i64 1
  %i.ch = load i8, ptr %.029, align 1, !tbaa !8
  %i.ci = lshr i8 %i.ch, 1
  %.narrow26 = add i8 %i.ci, %i.cf
  store i8 %.narrow26, ptr %.02028, align 1, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %.02028, i64 1 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.029, i64 2
  %i.cm = load i8, ptr %i.cg, align 1, !tbaa !8
  %i.cn = lshr i8 %i.cm, 1
  %.narrow26.1 = add i8 %i.cn, %i.ck
  store i8 %.narrow26.1, ptr %i.cj, align 1, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %.02028, i64 2 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %.029, i64 3
  %i.cr = load i8, ptr %i.cl, align 1, !tbaa !8
  %i.cs = lshr i8 %i.cr, 1
  %.narrow26.2 = add i8 %i.cs, %i.cp
  store i8 %.narrow26.2, ptr %i.co, align 1, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %.02028, i64 3 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %.029, i64 4 ; 2 uses
  %i.cw = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.cx = lshr i8 %i.cw, 1
  %.narrow26.3 = add i8 %i.cx, %i.cu
  store i8 %.narrow26.3, ptr %i.ct, align 1, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %.02028, i64 4 ; 2 uses
  %i.cz = add nuw nsw i64 %.02227, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cz, %i.e
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !299

vec.epilog.scalar.ph91:                           ; preds = %vec.epilog.scalar.ph91.prol.loopexit, %vec.epilog.scalar.ph91
  %.133 = phi ptr [ %i.dl, %vec.epilog.scalar.ph91 ], [ %.133.unr, %vec.epilog.scalar.ph91.prol.loopexit ] ; 3 uses
  %.12132 = phi ptr [ %i.dt, %vec.epilog.scalar.ph91 ], [ %.12132.unr, %vec.epilog.scalar.ph91.prol.loopexit ] ; 5 uses
  %.12331 = phi i64 [ %i.du, %vec.epilog.scalar.ph91 ], [ %.12331.unr, %vec.epilog.scalar.ph91.prol.loopexit ]
  %i.da = load i8, ptr %.12132, align 1, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %.133, i64 1
  %i.dc = load i8, ptr %.133, align 1, !tbaa !8
  %i.dd = zext i8 %i.dc to i16
  %i.de = getelementptr inbounds i8, ptr %.12132, i64 %i.af
  %i.df = load i8, ptr %i.de, align 1, !tbaa !8
  %i.dg = zext i8 %i.df to i16
  %i.dh = add nuw nsw i16 %i.dg, %i.dd
  %i.di = lshr i16 %i.dh, 1
  %.tr = trunc nuw i16 %i.di to i8
  %.narrow = add i8 %i.da, %.tr
  store i8 %.narrow, ptr %.12132, align 1, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %.12132, i64 1 ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %.133, i64 2
  %i.dm = load i8, ptr %i.db, align 1, !tbaa !8
  %i.dn = zext i8 %i.dm to i16
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %i.af
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !8
  %i.dq = zext i8 %i.dp to i16
  %i.dr = add nuw nsw i16 %i.dq, %i.dn
  %i.ds = lshr i16 %i.dr, 1
  %.tr.1 = trunc nuw i16 %i.ds to i8
  %.narrow.1 = add i8 %i.dk, %.tr.1
  store i8 %.narrow.1, ptr %i.dj, align 1, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %.12132, i64 2
  %i.du = add nuw i64 %.12331, 2                  ; 2 uses
  %exitcond37.not.1 = icmp eq i64 %i.du, %i.h
  br i1 %exitcond37.not.1, label %._crit_edge, label %vec.epilog.scalar.ph91, !llvm.loop !300

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph91.prol.loopexit, %vec.epilog.scalar.ph91, %middle.block87, %vec.epilog.middle.block104, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @png_read_filter_row_paeth_1byte_pixel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.d = load i8, ptr %2, align 1, !tbaa !8
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = load i8, ptr %1, align 1, !tbaa !8
  %i.g = zext i8 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 2 uses
  %i.i = trunc i32 %i.h to i8
  store i8 %i.i, ptr %1, align 1, !tbaa !8
  %i.j = icmp samesign ugt i64 %i.b, 1
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.04147 = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04151 = phi ptr [ %.041, %.lr.ph ], [ %.04147, %.lr.ph.preheader ] ; 3 uses
  %.03850 = phi i32 [ %i.m, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.03949 = phi i32 [ %i.x, %.lr.ph ], [ %i.h, %.lr.ph.preheader ]
  %.pn48 = phi ptr [ %.040, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.040 = getelementptr inbounds nuw i8, ptr %.pn48, i64 1 ; 2 uses
  %i.k = and i32 %.03949, 255                     ; 2 uses
  %i.l = load i8, ptr %.040, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i32                      ; 3 uses
  %i.n = sub nsw i32 %i.m, %.03850                ; 2 uses
  %i.o = sub nsw i32 %i.k, %.03850                ; 2 uses
  %i.p = tail call i32 @llvm.abs.i32(i32 %i.n, i1 true) ; 2 uses
  %i.q = tail call i32 @llvm.abs.i32(i32 %i.o, i1 true) ; 2 uses
  %i.r = add nsw i32 %i.n, %i.o
  %i.s = tail call i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.t = icmp samesign ult i32 %i.q, %i.p
  %.1 = select i1 %i.t, i32 %i.m, i32 %i.k
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.p)
  %i.u = icmp samesign ult i32 %i.s, %.0
  %.2 = select i1 %i.u, i32 %.03850, i32 %.1
  %i.v = load i8, ptr %.04151, align 1, !tbaa !8
  %i.w = zext i8 %i.v to i32
  %i.x = add nuw nsw i32 %.2, %i.w                ; 2 uses
  %i.y = trunc i32 %i.x to i8
  store i8 %i.y, ptr %.04151, align 1, !tbaa !8
  %.041 = getelementptr inbounds nuw i8, ptr %.04151, i64 1 ; 2 uses
  %i.z = icmp ult ptr %.041, %i.c
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !307

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @png_read_filter_row_paeth_multibyte_pixel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.c = load i8, ptr %i.b, align 1, !tbaa !53
  %i.d = zext i8 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 7
  %i.f = lshr i64 %i.e, 3                         ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.h = add i64 %i.f, %i.a
  %i.i = add i64 %i.a, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  %i.j = sub i64 %umax, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.j, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.k = add i64 %i.f, %i.a
  %i.l = add i64 %i.a, 1
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l)
  %i.n = sub i64 %i.m, %i.a                       ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %i.p = getelementptr i8, ptr %2, i64 %i.n
  %bound0 = icmp ult ptr %1, %i.p
  %bound1 = icmp ult ptr %2, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check70 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check70, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 5 uses
  %i.r = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 3 uses
  %next.gep71 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !8, !alias.scope !322, !noalias !323
  %wide.load72 = load <16 x i8>, ptr %i.t, align 1, !tbaa !8, !alias.scope !322, !noalias !323
  %i.u = getelementptr i8, ptr %next.gep71, i64 16
  %wide.load73 = load <16 x i8>, ptr %next.gep71, align 1, !tbaa !8, !alias.scope !323
  %wide.load74 = load <16 x i8>, ptr %i.u, align 1, !tbaa !8, !alias.scope !323
  %i.v = add <16 x i8> %wide.load73, %wide.load
  %i.w = add <16 x i8> %wide.load74, %wide.load72
  store <16 x i8> %i.v, ptr %next.gep, align 1, !tbaa !8, !alias.scope !322, !noalias !323
  store <16 x i8> %i.w, ptr %i.t, align 1, !tbaa !8, !alias.scope !322, !noalias !323
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !311

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec75 = and i64 %i.j, -8                     ; 4 uses
  %i.y = getelementptr i8, ptr %1, i64 %n.vec75   ; 2 uses
  %i.z = getelementptr i8, ptr %2, i64 %n.vec75   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %next.gep77 = getelementptr i8, ptr %1, i64 %index76 ; 2 uses
  %next.gep78 = getelementptr i8, ptr %2, i64 %index76
  %wide.load79 = load <8 x i8>, ptr %next.gep77, align 1, !tbaa !8, !alias.scope !322, !noalias !323
  %wide.load80 = load <8 x i8>, ptr %next.gep78, align 1, !tbaa !8, !alias.scope !323
  %i.aa = add <8 x i8> %wide.load80, %wide.load79
  store <8 x i8> %i.aa, ptr %next.gep77, align 1, !tbaa !8, !alias.scope !322, !noalias !323
  %index.next81 = add nuw i64 %index76, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next81, %n.vec75
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !312

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n82 = icmp eq i64 %i.j, %n.vec75
  br i1 %cmp.n82, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04656.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  %.04855.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04656 = phi ptr [ %i.ag, %.lr.ph ], [ %.04656.ph, %.lr.ph.preheader ] ; 3 uses
  %.04855 = phi ptr [ %i.ad, %.lr.ph ], [ %.04855.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ac = load i8, ptr %.04656, align 1, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %.04855, i64 1 ; 2 uses
  %i.ae = load i8, ptr %.04855, align 1, !tbaa !8
  %i.af = add i8 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %.04656, i64 1 ; 3 uses
  store i8 %i.af, ptr %.04656, align 1, !tbaa !8
  %i.ah = icmp ult ptr %i.ag, %i.g
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !313

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa67 = phi ptr [ %i.z, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.ad, %.lr.ph ]
  %.lcssa = phi ptr [ %i.y, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.pre = ptrtoaddr ptr %.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.046.lcssa64.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %.048.lcssa = phi ptr [ %.lcssa67, %._crit_edge.loopexit ], [ %2, %bb.a ] ; 10 uses
  %.046.lcssa = phi ptr [ %.lcssa, %._crit_edge.loopexit ], [ %1, %bb.a ] ; 13 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !54 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = icmp ult ptr %.046.lcssa, %i.ak
  br i1 %i.al, label %iter.check127, label %._crit_edge62

iter.check127:                                    ; preds = %._crit_edge
  %i.am = sub nsw i64 0, %i.f                     ; 8 uses
  %i.an = add i64 %i.aj, %i.a
  %i.ao = sub i64 %i.an, %.046.lcssa64.pre-phi    ; 9 uses
  %scevgep = getelementptr i8, ptr %.046.lcssa, i64 %i.ao ; 4 uses
  %min.iters.check100 = icmp ult i64 %i.ao, 4
  br i1 %min.iters.check100, label %vec.epilog.scalar.ph129.preheader, label %vector.memcheck101

vector.memcheck101:                               ; preds = %iter.check127
  %i.ap = getelementptr i8, ptr %.048.lcssa, i64 %i.ao
  %i.aq = getelementptr i8, ptr %.048.lcssa, i64 %i.am
  %i.ar = add i64 %i.aj, %i.a
  %i.as = add i64 %.046.lcssa64.pre-phi, %i.f
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = getelementptr i8, ptr %.048.lcssa, i64 %i.at
  %i.av = getelementptr i8, ptr %.046.lcssa, i64 %i.am
  %i.aw = getelementptr i8, ptr %.046.lcssa, i64 %i.at
  %bound0102 = icmp ult ptr %.046.lcssa, %i.ap
  %bound1103 = icmp ult ptr %.048.lcssa, %scevgep
  %found.conflict104 = and i1 %bound0102, %bound1103
  %bound0105 = icmp ult ptr %.046.lcssa, %i.au
  %bound1106 = icmp ult ptr %i.aq, %scevgep
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx = or i1 %found.conflict104, %found.conflict107
  %bound0108 = icmp ult ptr %.046.lcssa, %i.aw
  %bound1109 = icmp ult ptr %i.av, %scevgep
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx, %found.conflict110
  br i1 %conflict.rdx111, label %vec.epilog.scalar.ph129.preheader, label %vector.main.loop.iter.check112

vector.main.loop.iter.check112:                   ; preds = %vector.memcheck101
  %min.iters.check113 = icmp ult i64 %i.ao, 16
  br i1 %min.iters.check113, label %vec.epilog.ph131, label %vector.ph114

vector.ph114:                                     ; preds = %vector.main.loop.iter.check112
  %i.ax = and i64 %i.ao, 12
  %n.vec115 = and i64 %i.ao, -16                  ; 5 uses
  %i.ay = getelementptr i8, ptr %.046.lcssa, i64 %n.vec115
  %i.az = getelementptr i8, ptr %.048.lcssa, i64 %n.vec115
  br label %vector.body116

vector.body116:                                   ; preds = %vector.ph114, %vector.body116
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next124, %vector.body116 ] ; 3 uses
  %next.gep118 = getelementptr i8, ptr %.046.lcssa, i64 %index117 ; 3 uses
  %next.gep119 = getelementptr i8, ptr %.048.lcssa, i64 %index117 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %next.gep119, i64 %i.am
  %wide.load120 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !8, !alias.scope !324 ; 2 uses
  %i.bb = zext <16 x i8> %wide.load120 to <16 x i32> ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %next.gep118, i64 %i.am
  %wide.load121 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !8, !alias.scope !325 ; 2 uses
  %i.bd = zext <16 x i8> %wide.load121 to <16 x i32>
  %wide.load122 = load <16 x i8>, ptr %next.gep119, align 1, !tbaa !8, !alias.scope !326 ; 2 uses
  %i.be = zext <16 x i8> %wide.load122 to <16 x i32>
  %i.bf = sub nsw <16 x i32> %i.be, %i.bb         ; 2 uses
  %i.bg = sub nsw <16 x i32> %i.bd, %i.bb         ; 2 uses
  %i.bh = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.bf, i1 true) ; 2 uses
  %i.bi = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.bg, i1 true) ; 2 uses
  %i.bj = add nsw <16 x i32> %i.bf, %i.bg
  %i.bk = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.bj, i1 true)
  %i.bl = icmp samesign ult <16 x i32> %i.bi, %i.bh
  %i.bm = select <16 x i1> %i.bl, <16 x i8> %wide.load122, <16 x i8> %wide.load121
  %i.bn = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.bi, <16 x i32> %i.bh)
  %i.bo = icmp samesign ult <16 x i32> %i.bk, %i.bn
  %i.bp = select <16 x i1> %i.bo, <16 x i8> %wide.load120, <16 x i8> %i.bm
  %wide.load123 = load <16 x i8>, ptr %next.gep118, align 1, !tbaa !8, !alias.scope !327, !noalias !328
  %i.bq = add <16 x i8> %i.bp, %wide.load123
  store <16 x i8> %i.bq, ptr %next.gep118, align 1, !tbaa !8, !alias.scope !327, !noalias !328
  %index.next124 = add nuw i64 %index117, 16      ; 2 uses
  %i.br = icmp eq i64 %index.next124, %n.vec115
  br i1 %i.br, label %middle.block125, label %vector.body116, !llvm.loop !319

middle.block125:                                  ; preds = %vector.body116
  %cmp.n126 = icmp eq i64 %i.ao, %n.vec115
  br i1 %cmp.n126, label %._crit_edge62, label %vec.epilog.iter.check128

vec.epilog.iter.check128:                         ; preds = %middle.block125
  %min.epilog.iters.check130 = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check130, label %vec.epilog.scalar.ph129.preheader, label %vec.epilog.ph131, !prof !51

vec.epilog.ph131:                                 ; preds = %vector.main.loop.iter.check112, %vec.epilog.iter.check128
  %vec.epilog.resume.val132 = phi i64 [ %n.vec115, %vec.epilog.iter.check128 ], [ 0, %vector.main.loop.iter.check112 ]
  %n.vec133 = and i64 %i.ao, -4                   ; 4 uses
  %i.bs = getelementptr i8, ptr %.046.lcssa, i64 %n.vec133
  %i.bt = getelementptr i8, ptr %.048.lcssa, i64 %n.vec133
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph131
  %index135 = phi i64 [ %vec.epilog.resume.val132, %vec.epilog.ph131 ], [ %index.next142, %vec.epilog.vector.body134 ] ; 3 uses
  %next.gep136 = getelementptr i8, ptr %.046.lcssa, i64 %index135 ; 3 uses
  %next.gep137 = getelementptr i8, ptr %.048.lcssa, i64 %index135 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %next.gep137, i64 %i.am
  %wide.load138 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !8, !alias.scope !324 ; 2 uses
  %i.bv = zext <4 x i8> %wide.load138 to <4 x i32> ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep136, i64 %i.am
  %wide.load139 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !8, !alias.scope !325 ; 2 uses
  %i.bx = zext <4 x i8> %wide.load139 to <4 x i32>
  %wide.load140 = load <4 x i8>, ptr %next.gep137, align 1, !tbaa !8, !alias.scope !326 ; 2 uses
  %i.by = zext <4 x i8> %wide.load140 to <4 x i32>
  %i.bz = sub nsw <4 x i32> %i.by, %i.bv          ; 2 uses
  %i.ca = sub nsw <4 x i32> %i.bx, %i.bv          ; 2 uses
  %i.cb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bz, i1 true) ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ca, i1 true) ; 2 uses
  %i.cd = add nsw <4 x i32> %i.bz, %i.ca
  %i.ce = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.cd, i1 true)
  %i.cf = icmp samesign ult <4 x i32> %i.cc, %i.cb
  %i.cg = select <4 x i1> %i.cf, <4 x i8> %wide.load140, <4 x i8> %wide.load139
  %i.ch = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cc, <4 x i32> %i.cb)
  %i.ci = icmp samesign ult <4 x i32> %i.ce, %i.ch
  %i.cj = select <4 x i1> %i.ci, <4 x i8> %wide.load138, <4 x i8> %i.cg
  %wide.load141 = load <4 x i8>, ptr %next.gep136, align 1, !tbaa !8, !alias.scope !327, !noalias !328
  %i.ck = add <4 x i8> %i.cj, %wide.load141
  store <4 x i8> %i.ck, ptr %next.gep136, align 1, !tbaa !8, !alias.scope !327, !noalias !328
  %index.next142 = add nuw i64 %index135, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next142, %n.vec133
  br i1 %i.cl, label %vec.epilog.middle.block143, label %vec.epilog.vector.body134, !llvm.loop !320

vec.epilog.middle.block143:                       ; preds = %vec.epilog.vector.body134
  %cmp.n144 = icmp eq i64 %i.ao, %n.vec133
  br i1 %cmp.n144, label %._crit_edge62, label %vec.epilog.scalar.ph129.preheader

vec.epilog.scalar.ph129.preheader:                ; preds = %iter.check127, %vector.memcheck101, %vec.epilog.iter.check128, %vec.epilog.middle.block143
  %.14759.ph = phi ptr [ %.046.lcssa, %iter.check127 ], [ %.046.lcssa, %vector.memcheck101 ], [ %i.ay, %vec.epilog.iter.check128 ], [ %i.bs, %vec.epilog.middle.block143 ]
  %.14958.ph = phi ptr [ %.048.lcssa, %iter.check127 ], [ %.048.lcssa, %vector.memcheck101 ], [ %i.az, %vec.epilog.iter.check128 ], [ %i.bt, %vec.epilog.middle.block143 ]
  br label %vec.epilog.scalar.ph129

vec.epilog.scalar.ph129:                          ; preds = %vec.epilog.scalar.ph129.preheader, %vec.epilog.scalar.ph129
  %.14759 = phi ptr [ %i.df, %vec.epilog.scalar.ph129 ], [ %.14759.ph, %vec.epilog.scalar.ph129.preheader ] ; 4 uses
  %.14958 = phi ptr [ %i.cs, %vec.epilog.scalar.ph129 ], [ %.14958.ph, %vec.epilog.scalar.ph129.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.14958, i64 %i.am
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8   ; 2 uses
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.14759, i64 %i.am
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8   ; 2 uses
  %i.cr = zext i8 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %.14958, i64 1
  %i.ct = load i8, ptr %.14958, align 1, !tbaa !8 ; 2 uses
  %i.cu = zext i8 %i.ct to i32
  %i.cv = sub nsw i32 %i.cu, %i.co                ; 2 uses
  %i.cw = sub nsw i32 %i.cr, %i.co                ; 2 uses
  %i.cx = tail call i32 @llvm.abs.i32(i32 %i.cv, i1 true) ; 2 uses
  %i.cy = tail call i32 @llvm.abs.i32(i32 %i.cw, i1 true) ; 2 uses
  %i.cz = add nsw i32 %i.cv, %i.cw
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.db = icmp samesign ult i32 %i.cy, %i.cx
  %.045 = select i1 %i.db, i8 %i.ct, i8 %i.cq
  %.0 = tail call i32 @llvm.umin.i32(i32 %i.cy, i32 %i.cx)
  %i.dc = icmp samesign ult i32 %i.da, %.0
  %.1 = select i1 %i.dc, i8 %i.cn, i8 %.045
  %i.dd = load i8, ptr %.14759, align 1, !tbaa !8
  %i.de = add i8 %.1, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.14759, i64 1 ; 2 uses
  store i8 %i.de, ptr %.14759, align 1, !tbaa !8
  %exitcond.not = icmp eq ptr %i.df, %scevgep
  br i1 %exitcond.not, label %._crit_edge62, label %vec.epilog.scalar.ph129, !llvm.loop !321

._crit_edge62:                                    ; preds = %vec.epilog.scalar.ph129, %middle.block125, %vec.epilog.middle.block143, %._crit_edge
  ret void
}

declare void @png_init_filter_functions_sse2(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @inflateReset2(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
