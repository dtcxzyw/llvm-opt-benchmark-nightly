Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_ompio_aggregators?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@mca_common_ompio_finalize_split:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op158 = sub nsw i64 %i.j, 1
  %invariant.op159 = sub nsw i64 %i.j, 2
  %invariant.op160 = sub nsw i64 %i.j, 3
  %invariant.op161 = sub nsw i64 %i.j, 4
  %invariant.op162 = sub nsw i64 %i.j, 5
  %invariant.op163 = sub nsw i64 %i.j, 6
  %invariant.op164 = sub nsw i64 %i.j, 7
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue121, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue121 ] ; 10 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !35, !alias.scope !168
  %wide.load107 = load <4 x i32>, ptr %i.o, align 4, !tbaa !35, !alias.scope !168
  %i.p = icmp eq <4 x i32> %broadcast.splat, %wide.load ; 4 uses
  %i.q = icmp eq <4 x i32> %broadcast.splat, %wide.load107 ; 4 uses
  %i.r = extractelement <4 x i1> %i.p, i64 0
  br i1 %i.r, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.s = icmp slt i64 %index, %i.j
  %i.t = select i1 %i.s, i32 %1, i32 %2
  store i32 %i.t, ptr %i.i, align 8, !tbaa !80, !alias.scope !169, !noalias !168
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.u = extractelement <4 x i1> %i.p, i64 1
  br i1 %i.u, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue
  %i.v = icmp slt i64 %index, %invariant.op158
  %i.w = select i1 %i.v, i32 %1, i32 %2
  store i32 %i.w, ptr %i.i, align 8, !tbaa !80, !alias.scope !169, !noalias !168
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue
  %i.x = extractelement <4 x i1> %i.p, i64 2
  br i1 %i.x, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %i.y = icmp slt i64 %index, %invariant.op159
  %i.z = select i1 %i.y, i32 %1, i32 %2
  store i32 %i.z, ptr %i.i, align 8, !tbaa !80, !alias.scope !169, !noalias !168
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.aa = extractelement <4 x i1> %i.p, i64 3
  br i1 %i.aa, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  %i.ab = icmp slt i64 %index, %invariant.op160
  %i.ac = select i1 %i.ab, i32 %1, i32 %2
  store i32 %i.ac, ptr %i.i, align 8, !tbaa !80, !alias.scope !169, !noalias !168
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.ad = extractelement <4 x i1> %i.q, i64 0
  br i1 %i.ad, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  %i.ae = icmp slt i64 %index, %invariant.op161
  %i.af = select i1 %i.ae, i32 %1, i32 %2
  store i32 %i.af, ptr %i.i, align 8, !tbaa !80, !alias.scope !169, !noalias !168
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.ag = extractelement <4 x i1> %i.q, i64 1
  br i1 %i.ag, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  %i.ah = icmp slt i64 %index, %invariant.op162
  %i.ai = select i1 %i.ah, i32 %1, i32 %2
  store i32 %i.ai, ptr %i.i, align 8, !tbaa !80, !alias.scope !169, !noalias !168
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.aj = extractelement <4 x i1> %i.q, i64 2
  br i1 %i.aj, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  %i.ak = icmp slt i64 %index, %invariant.op163
  %i.al = select i1 %i.ak, i32 %1, i32 %2
  store i32 %i.al, ptr %i.i, align 8, !tbaa !80, !alias.scope !169, !noalias !168
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %i.am = extractelement <4 x i1> %i.q, i64 3
  br i1 %i.am, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  %i.an = icmp slt i64 %index, %invariant.op164
  %i.ao = select i1 %i.an, i32 %1, i32 %2
  store i32 %i.ao, ptr %i.i, align 8, !tbaa !80, !alias.scope !169, !noalias !168
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %pred.store.continue121
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.ph
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !35
  %i.as = icmp eq i32 %i.e, %i.ar
  br i1 %i.as, label %.sink.split.prol, label %scalar.ph.prol.loopexit.unr-lcssa

.sink.split.prol:                                 ; preds = %scalar.ph.prol
  %.not58.prol = icmp slt i64 %indvars.iv.ph, %i.j
  %..prol = select i1 %.not58.prol, i32 %1, i32 %2
  store i32 %..prol, ptr %i.i, align 8, !tbaa !80
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %.sink.split.prol, %scalar.ph.prol
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.at = add nsw i64 %wide.trip.count, -1
  %i.au = icmp eq i64 %indvars.iv.ph, %i.at
  br i1 %i.au, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.b ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !35
  %i.ax = icmp eq i32 %i.e, %i.aw
  br i1 %i.ax, label %.sink.split, label %scalar.ph.1

.sink.split:                                      ; preds = %scalar.ph
  %.not58 = icmp slt i64 %indvars.iv, %i.j
  %. = select i1 %.not58, i32 %1, i32 %2
  store i32 %., ptr %i.i, align 8, !tbaa !80
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %.sink.split, %scalar.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !35
  %i.ba = icmp eq i32 %i.e, %i.az
  br i1 %i.ba, label %.sink.split.1, label %bb.b

.sink.split.1:                                    ; preds = %scalar.ph.1
  %.not58.1 = icmp slt i64 %indvars.iv.next, %i.j
  %..1 = select i1 %.not58.1, i32 %1, i32 %2
  store i32 %..1, ptr %i.i, align 8, !tbaa !80
  br label %bb.b

bb.b:                                             ; preds = %.sink.split.1, %scalar.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !159

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %bb.b, %middle.block, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !80 ; 7 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #11 ; 15 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !81
  %i.bi = icmp eq ptr %i.bf, null
  br i1 %i.bi, label %bb.c, label %.preheader64

.preheader64:                                     ; preds = %._crit_edge
  br i1 %i.c, label %.lr.ph75, label %.loopexit65

.lr.ph75:                                         ; preds = %.preheader64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !78 ; 9 uses
  %i.bn = ptrtoaddr ptr %i.bm to i64
  %i.bo = sub i32 %i.b, %2                        ; 4 uses
  %i.bp = sext i32 %1 to i64                      ; 2 uses
  %i.bq = sext i32 %i.bo to i64
  %wide.trip.count94 = zext nneg i32 %i.b to i64
  %i.br = icmp sgt i32 %i.bc, 0
  %invariant.op = sub i32 %i.b, %2                ; 6 uses
  %wide.trip.count81 = zext i32 %i.bc to i64      ; 10 uses
  %i.bs = zext nneg i32 %i.b to i64
  %i.bt = icmp slt i32 %i.bc, 1
  %wide.trip.count86 = zext nneg i32 %i.bc to i64
  %3 = mul nsw i64 %i.bp, -4
  %4 = sub i64 %i.bg, %i.bn                       ; 2 uses
  %i.bu = add nsw i64 %wide.trip.count81, -1      ; 2 uses
  %i.bv = sext i32 %i.bo to i64
  %i.bw = shl nsw i64 %i.bv, 2
  %min.iters.check138 = icmp ult i32 %i.bc, 12
  %i.bx = trunc i64 %i.bu to i32
  %i.by = add i32 %i.bo, %i.bx
  %i.bz = icmp slt i32 %i.by, %i.bo
  %i.ca = icmp ugt i64 %i.bu, 4294967295
  %i.cb = or i1 %i.bz, %i.ca
  %i.cc = sub i64 %i.bw, %4
  %diff.check136 = icmp ugt i64 %i.cc, -32
  %or.cond = select i1 %i.cb, i1 true, i1 %diff.check136
  %n.vec140 = and i64 %wide.trip.count81, 2147483640 ; 3 uses
  %cmp.n147 = icmp eq i64 %n.vec140, %wide.trip.count81
  %xtraiter153 = and i64 %wide.trip.count81, 3    ; 2 uses
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  %min.iters.check124 = icmp ult i32 %i.bc, 8
  %invariant.op165 = add i64 %4, -1
  %n.vec126 = and i64 %wide.trip.count81, 2147483640 ; 3 uses
  %cmp.n133 = icmp eq i64 %n.vec126, %wide.trip.count81
  %xtraiter155 = and i64 %wide.trip.count81, 3    ; 2 uses
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.2) #10
  br label %.loopexit65

bb.d:                                             ; preds = %.lr.ph75, %.loopexit61
  %indvars.iv91 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next92, %.loopexit61 ] ; 5 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv91
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !35
  %i.cf = icmp eq i32 %i.bk, %i.ce
  br i1 %i.cf, label %bb.e, label %.loopexit61

bb.e:                                             ; preds = %bb.d
  %.not = icmp slt i64 %indvars.iv91, %i.bq
  br i1 %.not, label %.lr.ph72, label %.preheader62

.preheader62:                                     ; preds = %bb.e
  br i1 %i.br, label %.lr.ph68.preheader, label %.loopexit61

.lr.ph68.preheader:                               ; preds = %.preheader62
  %brmerge167 = select i1 %min.iters.check138, i1 true, i1 %or.cond
  br i1 %brmerge167, label %.lr.ph68.preheader151, label %vector.body141

vector.body141:                                   ; preds = %.lr.ph68.preheader, %vector.body141
  %index142 = phi i64 [ %index.next145, %vector.body141 ], [ 0, %.lr.ph68.preheader ] ; 3 uses
  %i.cg = trunc nuw nsw i64 %index142 to i32
  %i.ch = add i32 %invariant.op, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load143 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !35
  %wide.load144 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !35
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index142 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x i32> %wide.load143, ptr %i.cl, align 4, !tbaa !35
  store <4 x i32> %wide.load144, ptr %i.cm, align 4, !tbaa !35
  %index.next145 = add nuw i64 %index142, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.cn, label %middle.block146, label %vector.body141, !llvm.loop !160

middle.block146:                                  ; preds = %vector.body141
  br i1 %cmp.n147, label %.loopexit61, label %.lr.ph68.preheader151

.lr.ph68.preheader151:                            ; preds = %.lr.ph68.preheader, %middle.block146
  %indvars.iv78.ph = phi i64 [ %n.vec140, %middle.block146 ], [ 0, %.lr.ph68.preheader ] ; 3 uses
  br i1 %lcmp.mod154.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol

.lr.ph68.prol:                                    ; preds = %.lr.ph68.preheader151, %.lr.ph68.prol
  %indvars.iv78.prol = phi i64 [ %indvars.iv.next79.prol, %.lr.ph68.prol ], [ %indvars.iv78.ph, %.lr.ph68.preheader151 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph68.prol ], [ 0, %.lr.ph68.preheader151 ]
  %i.co = trunc nuw nsw i64 %indvars.iv78.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.co
  %i.cp = sext i32 %.reass.prol to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !35
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv78.prol
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !35
  %indvars.iv.next79.prol = add nuw nsw i64 %indvars.iv78.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter153
  br i1 %prol.iter.cmp.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol, !llvm.loop !161

.lr.ph68.prol.loopexit:                           ; preds = %.lr.ph68.prol, %.lr.ph68.preheader151
  %indvars.iv78.unr = phi i64 [ %indvars.iv78.ph, %.lr.ph68.preheader151 ], [ %indvars.iv.next79.prol, %.lr.ph68.prol ]
  %i.ct = sub nsw i64 %indvars.iv78.ph, %wide.trip.count81
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %.loopexit61, label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68
  %indvars.iv78 = phi i64 [ %indvars.iv.next79.3, %.lr.ph68 ], [ %indvars.iv78.unr, %.lr.ph68.prol.loopexit ] ; 6 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv78 to i32
  %.reass = add i32 %invariant.op, %i.cv
  %i.cw = sext i32 %.reass to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !35
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv78
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !35
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.da = trunc nuw nsw i64 %indvars.iv.next79 to i32
  %.reass.1 = add i32 %invariant.op, %i.da
  %i.db = sext i32 %.reass.1 to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !35
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next79
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !35
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2 ; 2 uses
  %i.df = trunc nuw nsw i64 %indvars.iv.next79.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.df
  %i.dg = sext i32 %.reass.2 to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !35
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next79.1
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !35
  %indvars.iv.next79.2 = add nuw nsw i64 %indvars.iv78, 3 ; 2 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv.next79.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.dk
  %i.dl = sext i32 %.reass.3 to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !35
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next79.2
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !35
  %indvars.iv.next79.3 = add nuw nsw i64 %indvars.iv78, 4 ; 2 uses
  %exitcond82.not.3 = icmp eq i64 %indvars.iv.next79.3, %wide.trip.count81
  br i1 %exitcond82.not.3, label %.loopexit61, label %.lr.ph68, !llvm.loop !162

.lr.ph72:                                         ; preds = %bb.e, %.loopexit
  %indvar = phi i64 [ %indvar.next, %.loopexit ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.loopexit ], [ 0, %bb.e ] ; 3 uses
  %.not57 = icmp slt i64 %indvars.iv91, %indvars.iv88
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, %i.bp ; 3 uses
  %i.dp = icmp sge i64 %indvars.iv91, %indvars.iv.next89
  %or.cond.not104 = select i1 %.not57, i1 true, i1 %i.dp
  %brmerge = or i1 %or.cond.not104, %i.bt
  br i1 %brmerge, label %.loopexit, label %.lr.ph70.preheader

.lr.ph70.preheader:                               ; preds = %.lr.ph72
  %invariant.gep = getelementptr [4 x i8], ptr %i.bm, i64 %indvars.iv88 ; 6 uses
  br i1 %min.iters.check124, label %.lr.ph70.preheader150, label %.lr.ph70.preheader.a

.lr.ph70.preheader.a:                             ; preds = %.lr.ph70.preheader
  %i.dq = mul i64 %indvar, %3
  %.reass166 = add i64 %i.dq, %invariant.op165
  %diff.check = icmp ult i64 %.reass166, 31
  br i1 %diff.check, label %.lr.ph70.preheader150, label %vector.body127

vector.body127:                                   ; preds = %.lr.ph70.preheader.a, %vector.body127
  %index128 = phi i64 [ %index.next131, %vector.body127 ], [ 0, %.lr.ph70.preheader.a ] ; 3 uses
  %i.dr = getelementptr [4 x i8], ptr %invariant.gep, i64 %index128 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %wide.load129 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !35
  %wide.load130 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !35
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index128 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <4 x i32> %wide.load129, ptr %i.dt, align 4, !tbaa !35
  store <4 x i32> %wide.load130, ptr %i.du, align 4, !tbaa !35
  %index.next131 = add nuw i64 %index128, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.dv, label %middle.block132, label %vector.body127, !llvm.loop !163

middle.block132:                                  ; preds = %vector.body127
  br i1 %cmp.n133, label %.loopexit, label %.lr.ph70.preheader150

.lr.ph70.preheader150:                            ; preds = %.lr.ph70.preheader.a, %.lr.ph70.preheader, %middle.block132
  %indvars.iv83.ph = phi i64 [ 0, %.lr.ph70.preheader.a ], [ 0, %.lr.ph70.preheader ], [ %n.vec126, %middle.block132 ] ; 3 uses
  br i1 %lcmp.mod156.not, label %.lr.ph70.prol.loopexit, label %.lr.ph70.prol

.lr.ph70.prol:                                    ; preds = %.lr.ph70.preheader150, %.lr.ph70.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %.lr.ph70.prol ], [ %indvars.iv83.ph, %.lr.ph70.preheader150 ] ; 3 uses
  %prol.iter157 = phi i64 [ %prol.iter157.next, %.lr.ph70.prol ], [ 0, %.lr.ph70.preheader150 ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv83.prol
  %i.dw = load i32, ptr %gep.prol, align 4, !tbaa !35
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv83.prol
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !35
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter157.next = add i64 %prol.iter157, 1   ; 2 uses
  %prol.iter157.cmp.not = icmp eq i64 %prol.iter157.next, %xtraiter155
  br i1 %prol.iter157.cmp.not, label %.lr.ph70.prol.loopexit, label %.lr.ph70.prol, !llvm.loop !164

.lr.ph70.prol.loopexit:                           ; preds = %.lr.ph70.prol, %.lr.ph70.preheader150
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %.lr.ph70.preheader150 ], [ %indvars.iv.next84.prol, %.lr.ph70.prol ]
  %i.dy = sub nsw i64 %indvars.iv83.ph, %wide.trip.count81
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph70.prol.loopexit, %.lr.ph70
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %.lr.ph70 ], [ %indvars.iv83.unr, %.lr.ph70.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv83
  %i.ea = load i32, ptr %gep, align 4, !tbaa !35
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv83
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !35
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next84
  %i.ec = load i32, ptr %gep.1, align 4, !tbaa !35
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next84
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !35
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next84.1
  %i.ee = load i32, ptr %gep.2, align 4, !tbaa !35
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next84.1
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !35
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next84.2
  %i.eg = load i32, ptr %gep.3, align 4, !tbaa !35
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next84.2
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !35
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %.loopexit, label %.lr.ph70, !llvm.loop !165

.loopexit:                                        ; preds = %.lr.ph70.prol.loopexit, %.lr.ph70, %middle.block132, %.lr.ph72
  %i.ei = icmp slt i64 %indvars.iv.next89, %i.bs
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ei, label %.lr.ph72, label %.loopexit61, !llvm.loop !166

.loopexit61:                                      ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68, %.loopexit, %middle.block146, %.preheader62, %bb.d
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %.loopexit65, label %bb.d, !llvm.loop !167

.loopexit65:                                      ; preds = %.loopexit61, %.preheader64, %bb.c
  %.054 = phi i32 [ -2, %bb.c ], [ 0, %.preheader64 ], [ 0, %.loopexit61 ]
  ret i32 %.054
}

declare i32 @ompi_fcoll_base_coll_allgather_array(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ompi_fcoll_base_coll_allgatherv_array(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ompi_fcoll_base_coll_bcast_array(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS11ompi_file_t", !11, i64 0}
!13 = !{!"long long", !7, i64 0}
!14 = !{!"p1 _ZTS19ompi_communicator_t", !11, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"p1 _ZTS16opal_convertor_t", !11, i64 0}
!17 = !{!"p1 _ZTS11opal_info_t", !11, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!"p1 _ZTS14ompi_request_t", !11, i64 0}
!20 = !{!"_Bool", !7, i64 0}
!21 = !{!"p1 _ZTS5iovec", !11, i64 0}
!22 = !{!"p1 _ZTS15ompi_datatype_t", !11, i64 0}
!23 = !{!"p1 _ZTS27mca_common_ompio_io_array_t", !11, i64 0}
!24 = !{!"p1 _ZTS26mca_base_component_2_1_0_t", !11, i64 0}
!25 = !{!"p1 _ZTS26mca_fs_base_module_1_0_0_t", !11, i64 0}
!26 = !{!"p1 _ZTS29mca_fcoll_base_module_1_0_0_t", !11, i64 0}
!27 = !{!"p1 _ZTS28mca_fbtl_base_module_1_0_0_t", !11, i64 0}
!28 = !{!"p1 _ZTS32mca_sharedfp_base_module_1_0_0_t", !11, i64 0}
!29 = !{!"p1 _ZTS28mca_common_ompio_print_queue", !11, i64 0}
!30 = !{!"p1 int", !11, i64 0}
!31 = !{!"ompio_file_t", !8, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !14, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !16, i64 80, !16, i64 88, !17, i64 96, !8, i64 104, !11, i64 112, !8, i64 120, !8, i64 124, !18, i64 128, !8, i64 136, !18, i64 144, !18, i64 152, !8, i64 160, !8, i64 164, !19, i64 168, !20, i64 176, !11, i64 184, !21, i64 192, !8, i64 200, !22, i64 208, !18, i64 216, !18, i64 224, !8, i64 232, !18, i64 240, !18, i64 248, !22, i64 256, !22, i64 264, !22, i64 272, !18, i64 280, !23, i64 288, !8, i64 296, !24, i64 304, !24, i64 312, !24, i64 320, !24, i64 328, !25, i64 336, !26, i64 344, !27, i64 352, !28, i64 360, !29, i64 368, !29, i64 376, !30, i64 384, !8, i64 392, !8, i64 396, !30, i64 400, !30, i64 408, !8, i64 416, !30, i64 424, !8, i64 432, !11, i64 440, !11, i64 448}
!32 = !{!31, !11, i64 448}
!33 = !{!31, !8, i64 36}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!8, !8, i64 0}
!36 = !{!"p1 _ZTS12opal_class_t", !11, i64 0}
!37 = !{!"opal_object_t", !36, i64 0, !8, i64 8}
!38 = !{!"p1 _ZTS19opal_hash_element_t", !11, i64 0}
!39 = !{!"p1 _ZTS24opal_hash_type_methods_t", !11, i64 0}
!40 = !{!"opal_hash_table_t", !37, i64 0, !38, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !39, i64 64}
!41 = !{!"opal_infosubscriber_t", !37, i64 0, !40, i64 16, !17, i64 88}
!42 = !{!"opal_mutex_t", !37, i64 0, !7, i64 16, !8, i64 56}
!43 = !{!"ompi_comm_extended_cid_t", !18, i64 0, !7, i64 8}
!44 = !{!"ompi_comm_extended_cid_block_t", !43, i64 0, !18, i64 16, !7, i64 24, !7, i64 25}
!45 = !{!"p1 _ZTS12ompi_group_t", !11, i64 0}
!46 = !{!"p1 _ZTS17opal_hash_table_t", !11, i64 0}
!47 = !{!"p1 _ZTS22mca_topo_base_module_t", !11, i64 0}
!48 = !{!"any p2 pointer", !11, i64 0}
!49 = !{!"p2 _ZTS20ompi_peruse_handle_t", !48, i64 0}
!50 = !{!"p1 _ZTS17ompi_errhandler_t", !11, i64 0}
!51 = !{!"p1 _ZTS14mca_pml_comm_t", !11, i64 0}
!52 = !{!"p1 _ZTS14mca_mtl_comm_t", !11, i64 0}
!53 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !11, i64 0}
!54 = !{!"p1 _ZTS15ompi_instance_t", !11, i64 0}
!55 = !{!"p1 _ZTS13opal_object_t", !11, i64 0}
!56 = !{!"ompi_communicator_t", !41, i64 0, !42, i64 96, !15, i64 160, !43, i64 168, !44, i64 184, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !30, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !45, i64 264, !45, i64 272, !14, i64 280, !46, i64 288, !47, i64 296, !49, i64 304, !50, i64 312, !8, i64 320, !51, i64 328, !52, i64 336, !53, i64 344, !54, i64 352, !55, i64 360, !8, i64 368, !8, i64 372, !20, i64 376, !20, i64 377, !20, i64 378}
!57 = !{!"ompi_predefined_communicator_t", !56, i64 0, !7, i64 384}
!58 = !{!57, !8, i64 224}
!59 = !{!"", !13, i64 0, !30, i64 8, !8, i64 16}
!60 = !{!59, !8, i64 16}
!61 = !{!59, !30, i64 8}
!62 = !{!31, !21, i64 192}
!63 = !{!"iovec", !11, i64 0, !18, i64 8}
!64 = !{!63, !11, i64 0}
!65 = !{!63, !18, i64 8}
!66 = !{!13, !13, i64 0}
!67 = !{!31, !8, i64 32}
!68 = !{!31, !14, i64 48}
!69 = !{!56, !53, i64 344}
!70 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !11, i64 0}
!71 = !{!"p1 _ZTS11opal_list_t", !11, i64 0}
!72 = !{!"mca_coll_base_comm_coll_t", !11, i64 0, !70, i64 8, !11, i64 16, !70, i64 24, !11, i64 32, !70, i64 40, !11, i64 48, !70, i64 56, !11, i64 64, !70, i64 72, !11, i64 80, !70, i64 88, !11, i64 96, !70, i64 104, !11, i64 112, !70, i64 120, !11, i64 128, !70, i64 136, !11, i64 144, !70, i64 152, !11, i64 160, !70, i64 168, !11, i64 176, !70, i64 184, !11, i64 192, !70, i64 200, !11, i64 208, !70, i64 216, !11, i64 224, !70, i64 232, !11, i64 240, !70, i64 248, !11, i64 256, !70, i64 264, !11, i64 272, !70, i64 280, !11, i64 288, !70, i64 296, !11, i64 304, !70, i64 312, !11, i64 320, !70, i64 328, !11, i64 336, !70, i64 344, !11, i64 352, !70, i64 360, !11, i64 368, !70, i64 376, !11, i64 384, !70, i64 392, !11, i64 400, !70, i64 408, !11, i64 416, !70, i64 424, !11, i64 432, !70, i64 440, !11, i64 448, !70, i64 456, !11, i64 464, !70, i64 472, !11, i64 480, !70, i64 488, !11, i64 496, !70, i64 504, !11, i64 512, !70, i64 520, !11, i64 528, !70, i64 536, !11, i64 544, !70, i64 552, !11, i64 560, !70, i64 568, !11, i64 576, !70, i64 584, !11, i64 592, !70, i64 600, !11, i64 608, !70, i64 616, !11, i64 624, !70, i64 632, !11, i64 640, !70, i64 648, !11, i64 656, !70, i64 664, !11, i64 672, !70, i64 680, !11, i64 688, !70, i64 696, !11, i64 704, !70, i64 712, !11, i64 720, !70, i64 728, !11, i64 736, !70, i64 744, !11, i64 752, !70, i64 760, !11, i64 768, !70, i64 776, !11, i64 784, !70, i64 792, !11, i64 800, !70, i64 808, !11, i64 816, !70, i64 824, !11, i64 832, !70, i64 840, !11, i64 848, !70, i64 856, !11, i64 864, !70, i64 872, !11, i64 880, !70, i64 888, !11, i64 896, !70, i64 904, !11, i64 912, !70, i64 920, !11, i64 928, !70, i64 936, !11, i64 944, !70, i64 952, !11, i64 960, !70, i64 968, !11, i64 976, !70, i64 984, !11, i64 992, !70, i64 1000, !11, i64 1008, !70, i64 1016, !11, i64 1024, !70, i64 1032, !11, i64 1040, !70, i64 1048, !11, i64 1056, !70, i64 1064, !11, i64 1072, !70, i64 1080, !11, i64 1088, !70, i64 1096, !11, i64 1104, !71, i64 1112}
!73 = !{!72, !11, i64 0}
!74 = !{!72, !70, i64 8}
!75 = !{!31, !8, i64 392}
!76 = !{!31, !30, i64 384}
!77 = !{!31, !8, i64 396}
!78 = !{!31, !30, i64 400}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!31, !8, i64 432}
!81 = !{!31, !30, i64 424}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = !{!31, !8, i64 416}
!85 = !{!31, !30, i64 408}
!86 = !{!30, !30, i64 0}
!87 = !{!"p1 long long", !11, i64 0}
!88 = !{!87, !87, i64 0}
!89 = distinct !{!89, !34}
end_hunk_0
