Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_buffer_alloc:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !70 ; 4 uses
  %i.bd = uitofp i64 %i.bc to float
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load float, ptr %i.be, align 8, !tbaa !72
  %i.bg = fmul float %i.bf, %i.bd
  %i.bh = fptoui float %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = add i64 %i.at, %2
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  %i.bm = lshr i32 %i.bl, 1
  %i.bn = or i32 %i.bm, %i.bl                     ; 2 uses
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = or i32 %i.bo, %i.bn                     ; 2 uses
  %i.bq = lshr i32 %i.bp, 4
  %i.br = or i32 %i.bq, %i.bp                     ; 2 uses
  %i.bs = lshr i32 %i.br, 8
  %i.bt = or i32 %i.bs, %i.br                     ; 2 uses
  %i.bu = lshr i32 %i.bt, 16
  %i.bv = or i32 %i.bu, %i.bt
  %i.bw = add i32 %i.bv, 1
  %i.bx = zext i32 %i.bw to i64
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bx) ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call ptr %i.ax(ptr %i.bz, ptr noundef %i.h, i64 noundef %spec.select) #50, !inline_history !683 ; 8 uses
  %.not48.i = icmp eq ptr %i.ca, null
  br i1 %.not48.i, label %nk_buffer_realloc.exit.thread, label %bb.l

nk_buffer_realloc.exit.thread:                    ; preds = %bb.k
  store ptr null, ptr %i.ba, align 8, !tbaa !69
  br label %.critedge

bb.l:                                             ; preds = %bb.k
  store i64 %spec.select, ptr %i.bb, align 8, !tbaa !79
  %i.cb = load ptr, ptr %i.ba, align 8, !tbaa !69 ; 2 uses
  %.not49.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not49.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.ca, ptr noundef %i.cb, i64 noundef %i.bc) ; 0 uses
  %i.cd = load ptr, ptr %i.ay, align 8, !tbaa !78
  %i.ce = load ptr, ptr %i.ba, align 8, !tbaa !69
  %i.cf = load ptr, ptr %i.by, align 8
  tail call void %i.cd(ptr %i.cf, ptr noundef %i.ce) #50, !inline_history !683
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !71 ; 3 uses
  %i.ci = icmp eq i64 %i.ch, %i.bc
  br i1 %i.ci, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = sub i64 %i.bc, %i.ch                    ; 2 uses
  %i.ck = sub i64 %spec.select, %i.cj             ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ch
  %i.cn = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cm, i64 noundef %i.cj) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.co = phi i64 [ %i.ck, %bb.o ], [ %spec.select, %bb.n ] ; 6 uses
  store i64 %i.co, ptr %i.cg, align 8, !tbaa !71
  store ptr %i.ca, ptr %i.ba, align 8, !tbaa !69
  br i1 %i.f, label %.split69, label %.split71

.split69:                                         ; preds = %bb.p
  %i.cp = load i64, ptr %i.bi, align 8, !tbaa !77 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cp ; 3 uses
  %.not19.i90 = icmp eq i64 %3, 0
  br i1 %.not19.i90, label %nk_buffer_align.exit93, label %bb.q

bb.q:                                             ; preds = %.split69
  %i.cr = getelementptr i8, ptr %i.cq, i64 %3
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 0, %3
  %i.cv = and i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = ptrtoint ptr %i.cq to i64
  %i.cy = sub i64 %i.cv, %i.cx
  br label %nk_buffer_align.exit93

.split71:                                         ; preds = %bb.p
  %i.cz = sub i64 %i.co, %2
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cz ; 5 uses
  %cond.i94 = icmp eq i32 %1, 1
  %.not19.i95 = icmp eq i64 %3, 0                 ; 2 uses
  br i1 %cond.i94, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.split71
  br i1 %.not19.i95, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr i8, ptr %i.da, i64 %3
  %i.dc = getelementptr i8, ptr %i.db, i64 -1
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 0, %3
  %i.df = and i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = ptrtoint ptr %i.da to i64
  %i.di = sub i64 %i.df, %i.dh
  br label %bb.v

bb.t:                                             ; preds = %.split71
  br i1 %.not19.i95, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dk = sub i64 0, %3
  %i.dl = and i64 %i.dj, %i.dk                    ; 2 uses
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = sub i64 %i.dj, %i.dl
  br label %bb.v

nk_buffer_align.exit93:                           ; preds = %.split, %.split69, %bb.q
  %i.do = phi i64 [ %i.j, %.split ], [ %i.cp, %.split69 ], [ %i.cp, %bb.q ]
  %.1103 = phi i64 [ %.0, %.split ], [ 0, %.split69 ], [ %i.cy, %bb.q ] ; 2 uses
  %.1 = phi ptr [ %phi.call, %.split ], [ %i.cq, %.split69 ], [ %i.cw, %bb.q ]
  %i.dp = add i64 %.1103, %2
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dr = add i64 %i.dp, %i.do
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !77
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.g
  %i.ds = phi i64 [ %i.co, %bb.t ], [ %i.co, %bb.s ], [ %i.co, %bb.r ], [ %i.co, %bb.u ], [ %i.z, %bb.g ]
  %.1103.ph = phi i64 [ 0, %bb.t ], [ %i.di, %bb.s ], [ 0, %bb.r ], [ %i.dn, %bb.u ], [ %.0.ph, %bb.g ] ; 2 uses
  %.1.ph = phi ptr [ %i.da, %bb.t ], [ %i.dg, %bb.s ], [ %i.da, %bb.r ], [ %i.dm, %bb.u ], [ %phi.call.ph, %bb.g ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.du = add i64 %.1103.ph, %2
  %i.dv = sub i64 %i.ds, %i.du
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !71
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %nk_buffer_align.exit93
  %.1116 = phi ptr [ %.1.ph, %bb.v ], [ %.1, %nk_buffer_align.exit93 ]
  %.1103114 = phi i64 [ %.1103.ph, %bb.v ], [ %.1103, %nk_buffer_align.exit93 ]
  %i.dw = load <2 x i64>, ptr %i.c, align 8, !tbaa !79
  %i.dx = insertelement <2 x i64> <i64 poison, i64 1>, i64 %.1103114, i64 0
  %i.dy = add <2 x i64> %i.dw, %i.dx
  store <2 x i64> %i.dy, ptr %i.c, align 8, !tbaa !79
  br label %.critedge

.critedge:                                        ; preds = %nk_buffer_realloc.exit.thread, %bb.i, %bb.h, %bb.j, %bb.a, %bb.w
  %.165 = phi ptr [ %.1116, %bb.w ], [ null, %bb.a ], [ null, %bb.j ], [ null, %nk_buffer_realloc.exit.thread ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.165
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @nk_memcopy(ptr noundef returned %0, ptr noundef %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = icmp eq i64 %2, 0
  %i.d = icmp eq ptr %0, %1
  %or.cond102 = or i1 %i.d, %i.c
  br i1 %or.cond102, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult ptr %0, %1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = or i64 %i.f, %i.g
  %i.i = and i64 %i.h, 3
  %.not96 = icmp eq i64 %i.i, 0
  br i1 %.not96, label %.loopexit105, label %iter.check206

iter.check206:                                    ; preds = %bb.c
  %i.j = xor i64 %i.f, %i.g
  %i.k = and i64 %i.j, 3
  %i.l = icmp ne i64 %i.k, 0
  %i.m = icmp ult i64 %2, 4
  %or.cond = or i1 %i.m, %i.l
  %i.n = and i64 %i.f, 3
  %i.o = sub nuw nsw i64 4, %i.n
  %.074 = select i1 %or.cond, i64 %2, i64 %i.o    ; 11 uses
  %min.iters.check188 = icmp ult i64 %.074, 4
  %i.p = sub i64 %i.b, %i.a
  %diff.check186 = icmp ugt i64 %i.p, -32
  %or.cond243 = or i1 %min.iters.check188, %diff.check186
  br i1 %or.cond243, label %vec.epilog.scalar.ph207.preheader, label %vector.main.loop.iter.check189

vector.main.loop.iter.check189:                   ; preds = %iter.check206
  %min.iters.check190 = icmp ult i64 %.074, 32
  br i1 %min.iters.check190, label %vec.epilog.ph210, label %vector.ph191

vector.ph191:                                     ; preds = %vector.main.loop.iter.check189
  %i.q = and i64 %.074, 28
  %n.vec192 = and i64 %.074, -32                  ; 5 uses
  %i.r = and i64 %.074, 31
  %i.s = getelementptr i8, ptr %0, i64 %n.vec192  ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %n.vec192  ; 2 uses
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next199, %vector.body193 ] ; 3 uses
  %next.gep195 = getelementptr i8, ptr %0, i64 %index194 ; 2 uses
  %next.gep196 = getelementptr i8, ptr %1, i64 %index194 ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep196, i64 16
  %wide.load197 = load <16 x i8>, ptr %next.gep196, align 1, !tbaa !56
  %wide.load198 = load <16 x i8>, ptr %i.u, align 1, !tbaa !56
  %i.v = getelementptr i8, ptr %next.gep195, i64 16
  store <16 x i8> %wide.load197, ptr %next.gep195, align 1, !tbaa !56
  store <16 x i8> %wide.load198, ptr %i.v, align 1, !tbaa !56
  %index.next199 = add nuw i64 %index194, 32      ; 2 uses
  %i.w = icmp eq i64 %index.next199, %n.vec192
  br i1 %i.w, label %middle.block200, label %vector.body193, !llvm.loop !685

middle.block200:                                  ; preds = %vector.body193
  %cmp.n201 = icmp eq i64 %.074, %n.vec192
  br i1 %cmp.n201, label %.loopexit105.loopexit, label %vec.epilog.iter.check208

vec.epilog.iter.check208:                         ; preds = %middle.block200
  %min.epilog.iters.check209 = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check209, label %vec.epilog.scalar.ph207.preheader, label %vec.epilog.ph210, !prof !82

vec.epilog.ph210:                                 ; preds = %vector.main.loop.iter.check189, %vec.epilog.iter.check208
  %vec.epilog.resume.val202 = phi i64 [ %n.vec192, %vec.epilog.iter.check208 ], [ 0, %vector.main.loop.iter.check189 ]
  %n.vec211 = and i64 %.074, -4                   ; 4 uses
  %i.x = and i64 %.074, 3
  %i.y = getelementptr i8, ptr %0, i64 %n.vec211  ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 %n.vec211  ; 2 uses
  br label %vec.epilog.vector.body212

vec.epilog.vector.body212:                        ; preds = %vec.epilog.vector.body212, %vec.epilog.ph210
  %index213 = phi i64 [ %vec.epilog.resume.val202, %vec.epilog.ph210 ], [ %index.next217, %vec.epilog.vector.body212 ] ; 3 uses
  %next.gep214 = getelementptr i8, ptr %0, i64 %index213
  %next.gep215 = getelementptr i8, ptr %1, i64 %index213
  %wide.load216 = load <4 x i8>, ptr %next.gep215, align 1, !tbaa !56
  store <4 x i8> %wide.load216, ptr %next.gep214, align 1, !tbaa !56
  %index.next217 = add nuw i64 %index213, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next217, %n.vec211
  br i1 %i.aa, label %vec.epilog.middle.block218, label %vec.epilog.vector.body212, !llvm.loop !686

vec.epilog.middle.block218:                       ; preds = %vec.epilog.vector.body212
  %cmp.n219 = icmp eq i64 %.074, %n.vec211
  br i1 %cmp.n219, label %.loopexit105.loopexit, label %vec.epilog.scalar.ph207.preheader

vec.epilog.scalar.ph207.preheader:                ; preds = %iter.check206, %vec.epilog.iter.check208, %vec.epilog.middle.block218
  %.175.ph = phi i64 [ %.074, %iter.check206 ], [ %i.r, %vec.epilog.iter.check208 ], [ %i.x, %vec.epilog.middle.block218 ] ; 4 uses
  %.064.ph = phi ptr [ %0, %iter.check206 ], [ %i.s, %vec.epilog.iter.check208 ], [ %i.y, %vec.epilog.middle.block218 ] ; 2 uses
  %.0.ph = phi ptr [ %1, %iter.check206 ], [ %i.t, %vec.epilog.iter.check208 ], [ %i.z, %vec.epilog.middle.block218 ] ; 2 uses
  %i.ab = add i64 %.175.ph, -1
  %xtraiter260 = and i64 %.175.ph, 7              ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %vec.epilog.scalar.ph207.prol.loopexit, label %vec.epilog.scalar.ph207.prol

vec.epilog.scalar.ph207.prol:                     ; preds = %vec.epilog.scalar.ph207.preheader, %vec.epilog.scalar.ph207.prol
  %.175.prol = phi i64 [ %i.af, %vec.epilog.scalar.ph207.prol ], [ %.175.ph, %vec.epilog.scalar.ph207.preheader ]
  %.064.prol = phi ptr [ %i.ae, %vec.epilog.scalar.ph207.prol ], [ %.064.ph, %vec.epilog.scalar.ph207.preheader ] ; 2 uses
  %.0.prol = phi ptr [ %i.ac, %vec.epilog.scalar.ph207.prol ], [ %.0.ph, %vec.epilog.scalar.ph207.preheader ] ; 2 uses
  %prol.iter262 = phi i64 [ %prol.iter262.next, %vec.epilog.scalar.ph207.prol ], [ 0, %vec.epilog.scalar.ph207.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.prol, i64 1 ; 3 uses
  %i.ad = load i8, ptr %.0.prol, align 1, !tbaa !56
  %i.ae = getelementptr inbounds nuw i8, ptr %.064.prol, i64 1 ; 3 uses
  store i8 %i.ad, ptr %.064.prol, align 1, !tbaa !56
  %i.af = add i64 %.175.prol, -1                  ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %vec.epilog.scalar.ph207.prol.loopexit, label %vec.epilog.scalar.ph207.prol, !llvm.loop !687

vec.epilog.scalar.ph207.prol.loopexit:            ; preds = %vec.epilog.scalar.ph207.prol, %vec.epilog.scalar.ph207.preheader
  %.lcssa250.unr = phi ptr [ poison, %vec.epilog.scalar.ph207.preheader ], [ %i.ac, %vec.epilog.scalar.ph207.prol ]
  %.lcssa249.unr = phi ptr [ poison, %vec.epilog.scalar.ph207.preheader ], [ %i.ae, %vec.epilog.scalar.ph207.prol ]
  %.175.unr = phi i64 [ %.175.ph, %vec.epilog.scalar.ph207.preheader ], [ %i.af, %vec.epilog.scalar.ph207.prol ]
  %.064.unr = phi ptr [ %.064.ph, %vec.epilog.scalar.ph207.preheader ], [ %i.ae, %vec.epilog.scalar.ph207.prol ]
  %.0.unr = phi ptr [ %.0.ph, %vec.epilog.scalar.ph207.preheader ], [ %i.ac, %vec.epilog.scalar.ph207.prol ]
  %i.ag = icmp ult i64 %i.ab, 7
  br i1 %i.ag, label %.loopexit105.loopexit, label %vec.epilog.scalar.ph207

vec.epilog.scalar.ph207:                          ; preds = %vec.epilog.scalar.ph207.prol.loopexit, %vec.epilog.scalar.ph207
  %.175 = phi i64 [ %i.bf, %vec.epilog.scalar.ph207 ], [ %.175.unr, %vec.epilog.scalar.ph207.prol.loopexit ]
  %.064 = phi ptr [ %i.be, %vec.epilog.scalar.ph207 ], [ %.064.unr, %vec.epilog.scalar.ph207.prol.loopexit ] ; 9 uses
  %.0 = phi ptr [ %i.bc, %vec.epilog.scalar.ph207 ], [ %.0.unr, %vec.epilog.scalar.ph207.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.ai = load i8, ptr %.0, align 1, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %.064, i64 1
  store i8 %i.ai, ptr %.064, align 1, !tbaa !56
  %i.ak = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %.064, i64 2
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %.064, i64 3
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !56
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %.064, i64 4
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 5
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %.064, i64 5
  store i8 %i.au, ptr %i.as, align 1, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 6
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %.064, i64 6
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !56
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 7
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %.064, i64 7
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !56
  %i.bc = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !56
  %i.be = getelementptr inbounds nuw i8, ptr %.064, i64 8 ; 2 uses
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !56
  %i.bf = add i64 %.175, -8                       ; 2 uses
  %.not97.7 = icmp eq i64 %i.bf, 0
  br i1 %.not97.7, label %.loopexit105.loopexit, label %vec.epilog.scalar.ph207, !llvm.loop !688

.loopexit105.loopexit:                            ; preds = %vec.epilog.scalar.ph207.prol.loopexit, %vec.epilog.scalar.ph207, %vec.epilog.middle.block218, %middle.block200
  %.lcssa147 = phi ptr [ %i.z, %vec.epilog.middle.block218 ], [ %i.t, %middle.block200 ], [ %.lcssa250.unr, %vec.epilog.scalar.ph207.prol.loopexit ], [ %i.bc, %vec.epilog.scalar.ph207 ]
  %.lcssa146 = phi ptr [ %i.y, %vec.epilog.middle.block218 ], [ %i.s, %middle.block200 ], [ %.lcssa249.unr, %vec.epilog.scalar.ph207.prol.loopexit ], [ %i.be, %vec.epilog.scalar.ph207 ]
  %i.bg = sub i64 %2, %.074
  br label %.loopexit105

.loopexit105:                                     ; preds = %.loopexit105.loopexit, %bb.c
  %.082 = phi i64 [ %2, %bb.c ], [ %i.bg, %.loopexit105.loopexit ] ; 3 uses
  %.165 = phi ptr [ %0, %bb.c ], [ %.lcssa146, %.loopexit105.loopexit ] ; 5 uses
  %.1 = phi ptr [ %1, %bb.c ], [ %.lcssa147, %.loopexit105.loopexit ] ; 5 uses
  %i.bh = lshr i64 %.082, 2                       ; 5 uses
  %.not98 = icmp eq i64 %i.bh, 0
  br i1 %.not98, label %.loopexit104, label %.preheader103.preheader

.preheader103.preheader:                          ; preds = %.loopexit105
  %.1225 = ptrtoaddr ptr %.1 to i64
  %.165224 = ptrtoaddr ptr %.165 to i64
  %min.iters.check228 = icmp ult i64 %.082, 32
  %i.bi = sub i64 %.1225, %.165224
  %diff.check226 = icmp ugt i64 %i.bi, -32
  %or.cond244 = select i1 %min.iters.check228, i1 true, i1 %diff.check226
  br i1 %or.cond244, label %.preheader103.preheader247, label %vector.ph229

vector.ph229:                                     ; preds = %.preheader103.preheader
  %n.vec230 = and i64 %i.bh, 4611686018427387896  ; 3 uses
  %i.bj = and i64 %i.bh, 7
  %i.bk = shl nuw i64 %n.vec230, 2                ; 2 uses
  %i.bl = getelementptr i8, ptr %.165, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %.1, i64 %i.bk    ; 2 uses
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph229
  %index232 = phi i64 [ 0, %vector.ph229 ], [ %index.next237, %vector.body231 ] ; 2 uses
  %i.bn = shl i64 %index232, 2                    ; 2 uses
  %next.gep233 = getelementptr i8, ptr %.165, i64 %i.bn ; 2 uses
  %next.gep234 = getelementptr i8, ptr %.1, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep234, i64 16
  %wide.load235 = load <4 x i32>, ptr %next.gep234, align 4, !tbaa !55
  %wide.load236 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !55
  %i.bp = getelementptr i8, ptr %next.gep233, i64 16
  store <4 x i32> %wide.load235, ptr %next.gep233, align 4, !tbaa !55
  store <4 x i32> %wide.load236, ptr %i.bp, align 4, !tbaa !55
  %index.next237 = add nuw i64 %index232, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next237, %n.vec230
  br i1 %i.bq, label %middle.block238, label %vector.body231, !llvm.loop !689

middle.block238:                                  ; preds = %vector.body231
  %cmp.n239 = icmp eq i64 %i.bh, %n.vec230
  br i1 %cmp.n239, label %.loopexit104, label %.preheader103.preheader247

.preheader103.preheader247:                       ; preds = %.preheader103.preheader, %middle.block238
  %.276.ph = phi i64 [ %i.bh, %.preheader103.preheader ], [ %i.bj, %middle.block238 ] ; 4 uses
  %.266.ph = phi ptr [ %.165, %.preheader103.preheader ], [ %i.bl, %middle.block238 ] ; 2 uses
  %.2.ph = phi ptr [ %.1, %.preheader103.preheader ], [ %i.bm, %middle.block238 ] ; 2 uses
  %i.br = add nsw i64 %.276.ph, -1
  %xtraiter263 = and i64 %.276.ph, 7              ; 2 uses
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  br i1 %lcmp.mod264.not, label %.preheader103.prol.loopexit, label %.preheader103.prol

.preheader103.prol:                               ; preds = %.preheader103.preheader247, %.preheader103.prol
  %.276.prol = phi i64 [ %i.bv, %.preheader103.prol ], [ %.276.ph, %.preheader103.preheader247 ]
  %.266.prol = phi ptr [ %i.bu, %.preheader103.prol ], [ %.266.ph, %.preheader103.preheader247 ] ; 2 uses
  %.2.prol = phi ptr [ %i.bt, %.preheader103.prol ], [ %.2.ph, %.preheader103.preheader247 ] ; 2 uses
  %prol.iter265 = phi i64 [ %prol.iter265.next, %.preheader103.prol ], [ 0, %.preheader103.preheader247 ]
  %i.bs = load i32, ptr %.2.prol, align 4, !tbaa !55
  store i32 %i.bs, ptr %.266.prol, align 4, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %.2.prol, i64 4 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.266.prol, i64 4 ; 3 uses
  %i.bv = add nsw i64 %.276.prol, -1              ; 2 uses
  %prol.iter265.next = add i64 %prol.iter265, 1   ; 2 uses
  %prol.iter265.cmp.not = icmp eq i64 %prol.iter265.next, %xtraiter263
  br i1 %prol.iter265.cmp.not, label %.preheader103.prol.loopexit, label %.preheader103.prol, !llvm.loop !690

.preheader103.prol.loopexit:                      ; preds = %.preheader103.prol, %.preheader103.preheader247
  %.lcssa248.unr = phi ptr [ poison, %.preheader103.preheader247 ], [ %i.bt, %.preheader103.prol ]
  %.lcssa.unr = phi ptr [ poison, %.preheader103.preheader247 ], [ %i.bu, %.preheader103.prol ]
  %.276.unr = phi i64 [ %.276.ph, %.preheader103.preheader247 ], [ %i.bv, %.preheader103.prol ]
  %.266.unr = phi ptr [ %.266.ph, %.preheader103.preheader247 ], [ %i.bu, %.preheader103.prol ]
  %.2.unr = phi ptr [ %.2.ph, %.preheader103.preheader247 ], [ %i.bt, %.preheader103.prol ]
  %i.bw = icmp ult i64 %i.br, 7
  br i1 %i.bw, label %.loopexit104, label %.preheader103

.preheader103:                                    ; preds = %.preheader103.prol.loopexit, %.preheader103
  %.276 = phi i64 [ %i.cv, %.preheader103 ], [ %.276.unr, %.preheader103.prol.loopexit ]
  %.266 = phi ptr [ %i.cu, %.preheader103 ], [ %.266.unr, %.preheader103.prol.loopexit ] ; 9 uses
  %.2 = phi ptr [ %i.ct, %.preheader103 ], [ %.2.unr, %.preheader103.prol.loopexit ] ; 9 uses
  %i.bx = load i32, ptr %.2, align 4, !tbaa !55
  store i32 %i.bx, ptr %.266, align 4, !tbaa !55
  %i.by = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.266, i64 4
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !55
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.266, i64 8
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !55
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !55
  %i.ce = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.cf = getelementptr inbounds nuw i8, ptr %.266, i64 12
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !55
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !55
  %i.ch = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.266, i64 16
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !55
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %.2, i64 20
  %i.cl = getelementptr inbounds nuw i8, ptr %.266, i64 20
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !55
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !55
  %i.cn = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %.266, i64 24
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !55
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !55
  %i.cq = getelementptr inbounds nuw i8, ptr %.2, i64 28
  %i.cr = getelementptr inbounds nuw i8, ptr %.266, i64 28
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !55
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %.2, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.266, i64 32 ; 2 uses
  %i.cv = add nsw i64 %.276, -8                   ; 2 uses
  %.not99.7 = icmp eq i64 %i.cv, 0
  br i1 %.not99.7, label %.loopexit104, label %.preheader103, !llvm.loop !691

.loopexit104:                                     ; preds = %.preheader103.prol.loopexit, %.preheader103, %middle.block238, %.loopexit105
  %.367 = phi ptr [ %.165, %.loopexit105 ], [ %i.bl, %middle.block238 ], [ %.lcssa.unr, %.preheader103.prol.loopexit ], [ %i.cu, %.preheader103 ] ; 3 uses
  %.3 = phi ptr [ %.1, %.loopexit105 ], [ %i.bm, %middle.block238 ], [ %.lcssa248.unr, %.preheader103.prol.loopexit ], [ %i.ct, %.preheader103 ] ; 3 uses
  %i.cw = and i64 %.082, 3                        ; 3 uses
  %.not100 = icmp eq i64 %i.cw, 0
  br i1 %.not100, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit104
  %i.cx = load i8, ptr %.3, align 1, !tbaa !56
  store i8 %i.cx, ptr %.367, align 1, !tbaa !56
  %.not101 = icmp eq i64 %i.cw, 1
  br i1 %.not101, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %.367, i64 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !56
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !56
  %.not101.1 = icmp eq i64 %i.cw, 2
  br i1 %.not101.1, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.db = getelementptr inbounds nuw i8, ptr %.367, i64 2
  %i.dc = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !56
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !56
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 7 uses
  %i.dg = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.di = or i64 %i.dg, %i.dh
  %i.dj = and i64 %i.di, 3
  %.not = icmp eq i64 %i.dj, 0
  br i1 %.not, label %.loopexit110, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.dk = xor i64 %i.dg, %i.dh
  %i.dl = and i64 %i.dk, 3
  %i.dm = icmp ne i64 %i.dl, 0
  %i.dn = icmp ult i64 %2, 5
  %or.cond3 = or i1 %i.dn, %i.dm
  %i.do = and i64 %i.dg, 3
  %.478 = select i1 %or.cond3, i64 %2, i64 %i.do  ; 11 uses
  %min.iters.check = icmp ult i64 %.478, 8
  %i.dp = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.dp, -32
  %or.cond245 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond245, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check152 = icmp ult i64 %.478, 32
  br i1 %min.iters.check152, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dq = and i64 %.478, 24
  %n.vec = and i64 %.478, -32                     ; 4 uses
  %i.dr = sub i64 0, %n.vec                       ; 2 uses
  %i.ds = and i64 %.478, 31
  %i.dt = getelementptr i8, ptr %i.df, i64 %i.dr  ; 2 uses
  %i.du = getelementptr i8, ptr %i.de, i64 %i.dr  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = sub i64 0, %index                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.df, i64 %i.dv ; 2 uses
  %next.gep153 = getelementptr i8, ptr %i.de, i64 %i.dv ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %next.gep153, i64 -16
  %i.dx = getelementptr inbounds i8, ptr %next.gep153, i64 -32
  %wide.load = load <16 x i8>, ptr %i.dw, align 1, !tbaa !56
  %wide.load154 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !56
  %i.dy = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dz = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <16 x i8> %wide.load, ptr %i.dy, align 1, !tbaa !56
  store <16 x i8> %wide.load154, ptr %i.dz, align 1, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !692

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.478, %n.vec
  br i1 %cmp.n, label %.loopexit110.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec157 = and i64 %.478, -8                   ; 3 uses
  %i.eb = sub i64 0, %n.vec157                    ; 2 uses
  %i.ec = and i64 %.478, 7
  %i.ed = getelementptr i8, ptr %i.df, i64 %i.eb  ; 2 uses
  %i.ee = getelementptr i8, ptr %i.de, i64 %i.eb  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index158 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next162, %vec.epilog.vector.body ] ; 2 uses
  %i.ef = sub i64 0, %index158                    ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.df, i64 %i.ef
  %next.gep160 = getelementptr i8, ptr %i.de, i64 %i.ef
  %i.eg = getelementptr inbounds i8, ptr %next.gep160, i64 -8
  %wide.load161 = load <8 x i8>, ptr %i.eg, align 1, !tbaa !56
  %i.eh = getelementptr inbounds i8, ptr %next.gep159, i64 -8
  store <8 x i8> %wide.load161, ptr %i.eh, align 1, !tbaa !56
  %index.next162 = add nuw i64 %index158, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.ei, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !693

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n163 = icmp eq i64 %.478, %n.vec157
  br i1 %cmp.n163, label %.loopexit110.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.579.ph = phi i64 [ %.478, %iter.check ], [ %i.ds, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 4 uses
  %.569.ph = phi ptr [ %i.df, %iter.check ], [ %i.dt, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ] ; 2 uses
  %.5.ph = phi ptr [ %i.de, %iter.check ], [ %i.du, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ] ; 2 uses
  %i.ej = add i64 %.579.ph, -1
  %xtraiter = and i64 %.579.ph, 7                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.579.prol = phi i64 [ %i.en, %vec.epilog.scalar.ph.prol ], [ %.579.ph, %vec.epilog.scalar.ph.preheader ]
  %.569.prol = phi ptr [ %i.em, %vec.epilog.scalar.ph.prol ], [ %.569.ph, %vec.epilog.scalar.ph.preheader ]
  %.5.prol = phi ptr [ %i.ek, %vec.epilog.scalar.ph.prol ], [ %.5.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ek = getelementptr inbounds i8, ptr %.5.prol, i64 -1 ; 4 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !56
  %i.em = getelementptr inbounds i8, ptr %.569.prol, i64 -1 ; 4 uses
  store i8 %i.el, ptr %i.em, align 1, !tbaa !56
  %i.en = add i64 %.579.prol, -1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !694

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa256.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ek, %vec.epilog.scalar.ph.prol ]
  %.lcssa255.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.em, %vec.epilog.scalar.ph.prol ]
  %.579.unr = phi i64 [ %.579.ph, %vec.epilog.scalar.ph.preheader ], [ %i.en, %vec.epilog.scalar.ph.prol ]
  %.569.unr = phi ptr [ %.569.ph, %vec.epilog.scalar.ph.preheader ], [ %i.em, %vec.epilog.scalar.ph.prol ]
  %.5.unr = phi ptr [ %.5.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ek, %vec.epilog.scalar.ph.prol ]
  %i.eo = icmp ult i64 %i.ej, 7
  br i1 %i.eo, label %.loopexit110.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.579 = phi i64 [ %i.fn, %vec.epilog.scalar.ph ], [ %.579.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.569 = phi ptr [ %i.fm, %vec.epilog.scalar.ph ], [ %.569.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 8 uses
  %.5 = phi ptr [ %i.fk, %vec.epilog.scalar.ph ], [ %.5.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 8 uses
  %i.ep = getelementptr inbounds i8, ptr %.5, i64 -1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !56
  %i.er = getelementptr inbounds i8, ptr %.569, i64 -1
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !56
  %i.es = getelementptr inbounds i8, ptr %.5, i64 -2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !56
  %i.eu = getelementptr inbounds i8, ptr %.569, i64 -2
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !56
  %i.ev = getelementptr inbounds i8, ptr %.5, i64 -3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !56
  %i.ex = getelementptr inbounds i8, ptr %.569, i64 -3
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !56
  %i.ey = getelementptr inbounds i8, ptr %.5, i64 -4
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !56
  %i.fa = getelementptr inbounds i8, ptr %.569, i64 -4
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !56
  %i.fb = getelementptr inbounds i8, ptr %.5, i64 -5
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !56
  %i.fd = getelementptr inbounds i8, ptr %.569, i64 -5
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !56
  %i.fe = getelementptr inbounds i8, ptr %.5, i64 -6
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !56
  %i.fg = getelementptr inbounds i8, ptr %.569, i64 -6
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !56
  %i.fh = getelementptr inbounds i8, ptr %.5, i64 -7
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !56
  %i.fj = getelementptr inbounds i8, ptr %.569, i64 -7
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !56
  %i.fk = getelementptr inbounds i8, ptr %.5, i64 -8 ; 3 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !56
  %i.fm = getelementptr inbounds i8, ptr %.569, i64 -8 ; 3 uses
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !56
  %i.fn = add i64 %.579, -8                       ; 2 uses
  %.not91.7 = icmp eq i64 %i.fn, 0
  br i1 %.not91.7, label %.loopexit110.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !695

.loopexit110.loopexit:                            ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa151 = phi ptr [ %i.ee, %vec.epilog.middle.block ], [ %i.du, %middle.block ], [ %.lcssa256.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fk, %vec.epilog.scalar.ph ]
  %.lcssa150 = phi ptr [ %i.ed, %vec.epilog.middle.block ], [ %i.dt, %middle.block ], [ %.lcssa255.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fm, %vec.epilog.scalar.ph ]
  %i.fo = sub i64 %2, %.478
  br label %.loopexit110

.loopexit110:                                     ; preds = %.loopexit110.loopexit, %bb.d
  %.183 = phi i64 [ %2, %bb.d ], [ %i.fo, %.loopexit110.loopexit ] ; 3 uses
  %.670 = phi ptr [ %i.df, %bb.d ], [ %.lcssa150, %.loopexit110.loopexit ] ; 5 uses
  %.6 = phi ptr [ %i.de, %bb.d ], [ %.lcssa151, %.loopexit110.loopexit ] ; 5 uses
  %i.fp = lshr i64 %.183, 2                       ; 5 uses
  %.not92 = icmp eq i64 %i.fp, 0
  br i1 %.not92, label %.loopexit109, label %.preheader108.preheader

.preheader108.preheader:                          ; preds = %.loopexit110
  %.670169 = ptrtoaddr ptr %.670 to i64
  %.6168 = ptrtoaddr ptr %.6 to i64
  %min.iters.check171 = icmp ult i64 %.183, 32
  %i.fq = sub i64 %.670169, %.6168
  %diff.check170 = icmp ugt i64 %i.fq, -32
  %or.cond246 = or i1 %min.iters.check171, %diff.check170
  br i1 %or.cond246, label %.preheader108.preheader252, label %vector.ph172

vector.ph172:                                     ; preds = %.preheader108.preheader
  %n.vec173 = and i64 %i.fp, 4611686018427387896  ; 3 uses
  %i.fr = and i64 %i.fp, 7
  %i.fs = mul i64 %n.vec173, -4                   ; 2 uses
  %i.ft = getelementptr i8, ptr %.670, i64 %i.fs  ; 2 uses
  %i.fu = getelementptr i8, ptr %.6, i64 %i.fs    ; 2 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body174 ] ; 2 uses
  %i.fv = mul i64 %index175, -4                   ; 2 uses
  %next.gep176 = getelementptr i8, ptr %.670, i64 %i.fv ; 2 uses
  %next.gep177 = getelementptr i8, ptr %.6, i64 %i.fv ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %next.gep177, i64 -16
  %i.fx = getelementptr inbounds i8, ptr %next.gep177, i64 -32
  %wide.load178 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !55
  %wide.load179 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !55
  %i.fy = getelementptr inbounds i8, ptr %next.gep176, i64 -16
  %i.fz = getelementptr inbounds i8, ptr %next.gep176, i64 -32
  store <4 x i32> %wide.load178, ptr %i.fy, align 4, !tbaa !55
  store <4 x i32> %wide.load179, ptr %i.fz, align 4, !tbaa !55
  %index.next180 = add nuw i64 %index175, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.ga, label %middle.block181, label %vector.body174, !llvm.loop !696

middle.block181:                                  ; preds = %vector.body174
  %cmp.n182 = icmp eq i64 %i.fp, %n.vec173
  br i1 %cmp.n182, label %.loopexit109, label %.preheader108.preheader252

.preheader108.preheader252:                       ; preds = %.preheader108.preheader, %middle.block181
  %.680.ph = phi i64 [ %i.fp, %.preheader108.preheader ], [ %i.fr, %middle.block181 ] ; 4 uses
  %.771.ph = phi ptr [ %.670, %.preheader108.preheader ], [ %i.ft, %middle.block181 ] ; 2 uses
  %.7.ph = phi ptr [ %.6, %.preheader108.preheader ], [ %i.fu, %middle.block181 ] ; 2 uses
  %i.gb = add nsw i64 %.680.ph, -1
  %xtraiter257 = and i64 %.680.ph, 7              ; 2 uses
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %.preheader108.prol.loopexit, label %.preheader108.prol

.preheader108.prol:                               ; preds = %.preheader108.preheader252, %.preheader108.prol
  %.680.prol = phi i64 [ %i.gf, %.preheader108.prol ], [ %.680.ph, %.preheader108.preheader252 ]
  %.771.prol = phi ptr [ %i.gd, %.preheader108.prol ], [ %.771.ph, %.preheader108.preheader252 ]
  %.7.prol = phi ptr [ %i.gc, %.preheader108.prol ], [ %.7.ph, %.preheader108.preheader252 ]
  %prol.iter259 = phi i64 [ %prol.iter259.next, %.preheader108.prol ], [ 0, %.preheader108.preheader252 ]
  %i.gc = getelementptr inbounds i8, ptr %.7.prol, i64 -4 ; 4 uses
  %i.gd = getelementptr inbounds i8, ptr %.771.prol, i64 -4 ; 4 uses
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !55
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !55
  %i.gf = add nsw i64 %.680.prol, -1              ; 2 uses
  %prol.iter259.next = add i64 %prol.iter259, 1   ; 2 uses
  %prol.iter259.cmp.not = icmp eq i64 %prol.iter259.next, %xtraiter257
  br i1 %prol.iter259.cmp.not, label %.preheader108.prol.loopexit, label %.preheader108.prol, !llvm.loop !697

.preheader108.prol.loopexit:                      ; preds = %.preheader108.prol, %.preheader108.preheader252
  %.lcssa254.unr = phi ptr [ poison, %.preheader108.preheader252 ], [ %i.gc, %.preheader108.prol ]
  %.lcssa253.unr = phi ptr [ poison, %.preheader108.preheader252 ], [ %i.gd, %.preheader108.prol ]
end_hunk_0
begin_hunk_1_@nk_str_append_str_runes:bb.a

.preheader.i:                                     ; preds = %nk_utf_validate.exit.i
  %.not25.i = icmp eq i64 %indvars.iv.i.i, 1
  br i1 %.not25.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.n = sext i32 %indvars.iv.i to i64            ; 4 uses
  %i.o = add nsw i64 %i.n, -1
  %xtraiter = and i64 %i.n, 3
  %i.p = and i32 %indvars.iv.i, 3
  %lcmp.mod.not = icmp eq i32 %i.p, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv28.i.prol = phi i64 [ %indvars.iv.next29.i.prol, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.preheader.i ] ; 2 uses
  %.02226.i.prol = phi i32 [ %i.u, %.lr.ph.i.prol ], [ %spec.select23.i, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.q = trunc i32 %.02226.i.prol to i8
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv28.i.prol
  store i8 %i.s, ptr %i.t, align 1, !tbaa !56
  %i.u = lshr i32 %.02226.i.prol, 6               ; 3 uses
  %indvars.iv.next29.i.prol = add nsw i64 %indvars.iv28.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !708

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.i.prol ]
  %indvars.iv28.i.unr = phi i64 [ %i.n, %.lr.ph.preheader.i ], [ %indvars.iv.next29.i.prol, %.lr.ph.i.prol ]
  %.02226.i.unr = phi i32 [ %spec.select23.i, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.i.prol ]
  %i.v = icmp ult i64 %i.o, 3
  br i1 %i.v, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i.3, %.lr.ph.i ], [ %indvars.iv28.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.02226.i = phi i32 [ %i.as, %.lr.ph.i ], [ %.02226.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = trunc i32 %.02226.i to i8
  %i.x = and i8 %i.w, 63
  %i.y = or disjoint i8 %i.x, -128
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv28.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !56
  %i.aa = lshr i32 %.02226.i, 6
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = and i8 %i.ab, 63
  %i.ad = or disjoint i8 %i.ac, -128
  %i.ae = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !56
  %i.ag = lshr i32 %.02226.i, 12
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = and i8 %i.ah, 63
  %i.aj = or disjoint i8 %i.ai, -128
  %i.ak = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i
  %i.al = getelementptr i8, ptr %i.ak, i64 -2
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !56
  %i.am = lshr i32 %.02226.i, 18
  %i.an = trunc i32 %i.am to i8
  %i.ao = and i8 %i.an, 63
  %i.ap = or disjoint i8 %i.ao, -128
  %i.aq = getelementptr i8, ptr %i.a, i64 %indvars.iv28.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 -3
  store i8 %i.ap, ptr %i.ar, align 1, !tbaa !56
  %i.as = lshr i32 %.02226.i, 24                  ; 2 uses
  %indvars.iv.next29.i.3 = add nsw i64 %indvars.iv28.i, -4 ; 2 uses
  %.not.i.3 = icmp eq i64 %indvars.iv.next29.i.3, 0
  br i1 %.not.i.3, label %.loopexit, label %.lr.ph.i, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.preheader.i
  %.022.lcssa.i = phi i32 [ %spec.select23.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.as, %.lr.ph.i ]
  %i.at = getelementptr inbounds nuw i8, ptr @nk_utfbyte, i64 %indvars.iv.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr @nk_utfmask, i64 %indvars.iv.i.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !56
  %i.ax = zext i8 %i.aw to i32
  %i.ay = xor i32 %i.ax, -1
  %i.az = and i32 %.022.lcssa.i, %i.ay
  %i.ba = trunc i32 %i.az to i8
  %i.bb = or i8 %i.au, %i.ba
  store i8 %i.bb, ptr %i.a, align 1, !tbaa !56
  %i.bc = call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %indvars.iv.i.i, i64 noundef 0) ; 2 uses
  %.not.i14 = icmp eq ptr %i.bc, null
  br i1 %.not.i14, label %nk_str_append_text_char.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.bd = call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.a, i64 noundef %indvars.iv.i.i) ; 0 uses
  %i.be = call i32 @nk_utf_len(ptr noundef nonnull %i.a, i32 noundef %i.l)
  %i.bf = load i32, ptr %i.e, align 8, !tbaa !91
  %i.bg = add nsw i32 %i.bf, %i.be
  store i32 %i.bg, ptr %i.e, align 8, !tbaa !91
  br label %nk_str_append_text_char.exit

nk_str_append_text_char.exit:                     ; preds = %nk_utf_validate.exit.i, %.loopexit, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !55 ; 2 uses
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %.loopexit17.loopexit, label %bb.b, !llvm.loop !709

.loopexit17.loopexit:                             ; preds = %nk_str_append_text_char.exit
  %i.bj = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit17

.loopexit17:                                      ; preds = %.loopexit17.loopexit, %.preheader, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ %i.bj, %.loopexit17.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @nk_str_insert_at_char(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %3, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %nk_str_append_text_char.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !93   ; 4 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %nk_str_append_text_char.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sext i32 %3 to i64                       ; 4 uses
  %i.i = add i64 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !714
  %.not = icmp ult i64 %i.i, %i.l
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !715
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %nk_str_append_text_char.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = trunc i64 %i.f to i32                    ; 4 uses
  %i.q = sub i32 %i.p, %1                         ; 6 uses
  %.not50 = icmp eq i32 %1, %i.p
  %i.r = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.h, i64 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null                ; 2 uses
  br i1 %.not50, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i, label %nk_str_append_text_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.r, ptr noundef nonnull %2, i64 noundef %i.h) ; 0 uses
  %i.t = tail call i32 @nk_utf_len(ptr noundef nonnull %2, i32 noundef %3)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !91
  %i.w = add nsw i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 8, !tbaa !91
  br label %nk_str_append_text_char.exit

bb.h:                                             ; preds = %bb.e
  br i1 %.not.i, label %nk_str_append_text_char.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !94   ; 3 uses
  %i.y = icmp sgt i32 %i.q, 0
  br i1 %i.y, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.i
  %i.z = shl i64 %i.f, 32
  %sext = add i64 %i.z, -4294967296
  %i.aa = ashr exact i64 %sext, 32                ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa ; 5 uses
  %i.ac = add i32 %1, -1
  %i.ad = add i32 %i.ac, %3
  %i.ae = add i32 %i.ad, %i.q
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.x, i64 %i.af ; 5 uses
  %i.ah = zext nneg i32 %i.q to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.ai = sub nsw i64 %i.af, %i.aa
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond78 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond78, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check63 = icmp ult i32 %i.q, 32
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %i.ah, 24
  %n.vec = and i64 %i.ah, 2147483616              ; 5 uses
  %i.ak = sub nsw i64 0, %n.vec                   ; 2 uses
  %i.al = getelementptr i8, ptr %i.ag, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.ak
  %i.an = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = sub i64 0, %index                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ao ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ab, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep64, i64 -15
  %i.aq = getelementptr i8, ptr %next.gep64, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ap, align 1, !tbaa !56
  %wide.load65 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !56
  %i.ar = getelementptr i8, ptr %next.gep, i64 -15
  %i.as = getelementptr i8, ptr %next.gep, i64 -31
  store <16 x i8> %wide.load, ptr %i.ar, align 1, !tbaa !56
  store <16 x i8> %wide.load65, ptr %i.as, align 1, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !710

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ah
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec68 = and i64 %i.ah, 2147483640            ; 4 uses
  %i.au = sub nsw i64 0, %n.vec68                 ; 2 uses
  %i.av = getelementptr i8, ptr %i.ag, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ab, i64 %i.au
  %i.ax = trunc nuw nsw i64 %n.vec68 to i32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = sub i64 0, %index69                     ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.ag, i64 %i.ay
  %next.gep71 = getelementptr i8, ptr %i.ab, i64 %i.ay
  %i.az = getelementptr i8, ptr %next.gep71, i64 -7
  %wide.load72 = load <8 x i8>, ptr %i.az, align 1, !tbaa !56
  %i.ba = getelementptr i8, ptr %next.gep70, i64 -7
  store <8 x i8> %wide.load72, ptr %i.ba, align 1, !tbaa !56
  %index.next73 = add nuw i64 %index69, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next73, %n.vec68
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !711

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %n.vec68, %i.ah
  br i1 %cmp.n74, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054.ph = phi ptr [ %i.ag, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 2 uses
  %.04153.ph = phi ptr [ %i.ab, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ] ; 2 uses
  %.04252.ph = phi i32 [ 0, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ] ; 4 uses
  %i.bc = add i32 %.04252.ph, %1
  %i.bd = sub i32 %i.p, %i.bc
  %xtraiter = and i32 %i.bd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.054.prol = phi ptr [ %i.bg, %.lr.ph.prol ], [ %.054.ph, %.lr.ph.preheader ] ; 2 uses
  %.04153.prol = phi ptr [ %i.be, %.lr.ph.prol ], [ %.04153.ph, %.lr.ph.preheader ] ; 2 uses
  %.04252.prol = phi i32 [ %i.bh, %.lr.ph.prol ], [ %.04252.ph, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.be = getelementptr inbounds i8, ptr %.04153.prol, i64 -1 ; 2 uses
  %i.bf = load i8, ptr %.04153.prol, align 1, !tbaa !56
  %i.bg = getelementptr inbounds i8, ptr %.054.prol, i64 -1 ; 2 uses
  store i8 %i.bf, ptr %.054.prol, align 1, !tbaa !56
  %i.bh = add nuw nsw i32 %.04252.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !712

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.054.unr = phi ptr [ %.054.ph, %.lr.ph.preheader ], [ %i.bg, %.lr.ph.prol ]
  %.04153.unr = phi ptr [ %.04153.ph, %.lr.ph.preheader ], [ %i.be, %.lr.ph.prol ]
  %.04252.unr = phi i32 [ %.04252.ph, %.lr.ph.preheader ], [ %i.bh, %.lr.ph.prol ]
  %i.bi = sub i32 %.04252.ph, %i.p
  %i.bj = add i32 %i.bi, %1
  %i.bk = icmp ugt i32 %i.bj, -8
  br i1 %i.bk, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.054 = phi ptr [ %i.ci, %.lr.ph ], [ %.054.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04153 = phi ptr [ %i.cg, %.lr.ph ], [ %.04153.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04252 = phi i32 [ %i.cj, %.lr.ph ], [ %.04252.unr, %.lr.ph.prol.loopexit ]
  %i.bl = getelementptr inbounds i8, ptr %.04153, i64 -1
  %i.bm = load i8, ptr %.04153, align 1, !tbaa !56
  %i.bn = getelementptr inbounds i8, ptr %.054, i64 -1
  store i8 %i.bm, ptr %.054, align 1, !tbaa !56
  %i.bo = getelementptr inbounds i8, ptr %.04153, i64 -2
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !56
  %i.bq = getelementptr inbounds i8, ptr %.054, i64 -2
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !56
  %i.br = getelementptr inbounds i8, ptr %.04153, i64 -3
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !56
  %i.bt = getelementptr inbounds i8, ptr %.054, i64 -3
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !56
  %i.bu = getelementptr inbounds i8, ptr %.04153, i64 -4
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !56
  %i.bw = getelementptr inbounds i8, ptr %.054, i64 -4
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !56
  %i.bx = getelementptr inbounds i8, ptr %.04153, i64 -5
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !56
  %i.bz = getelementptr inbounds i8, ptr %.054, i64 -5
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !56
  %i.ca = getelementptr inbounds i8, ptr %.04153, i64 -6
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !56
  %i.cc = getelementptr inbounds i8, ptr %.054, i64 -6
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !56
  %i.cd = getelementptr inbounds i8, ptr %.04153, i64 -7
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !56
  %i.cf = getelementptr inbounds i8, ptr %.054, i64 -7
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !56
  %i.cg = getelementptr inbounds i8, ptr %.04153, i64 -8
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !56
  %i.ci = getelementptr inbounds i8, ptr %.054, i64 -8
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !56
  %i.cj = add nuw nsw i32 %.04252, 8              ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.cj, %i.q
  br i1 %exitcond.not.7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !713

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !94
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.ck = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.x, %bb.i ]
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.d
  %i.cm = tail call fastcc ptr @nk_memcopy(ptr noundef %i.cl, ptr noundef nonnull %2, i64 noundef %i.h) ; 0 uses
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.co = load i64, ptr %i.e, align 8, !tbaa !93
  %i.cp = trunc i64 %i.co to i32
  %i.cq = tail call i32 @nk_utf_len(ptr noundef %i.cn, i32 noundef %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !91
  br label %nk_str_append_text_char.exit

nk_str_append_text_char.exit:                     ; preds = %bb.g, %bb.f, %bb.h, %bb.d, %bb.a, %bb.b, %._crit_edge
  %.043 = phi i32 [ 0, %bb.h ], [ 0, %bb.a ], [ 1, %._crit_edge ], [ 0, %bb.d ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define i32 @nk_str_insert_at_rune(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %2, null
  %or.cond = and i1 %i.c, %i.d
  %i.e = icmp ne i32 %3, 0
  %or.cond3 = and i1 %or.cond, %i.e
  br i1 %or.cond3, label %bb.b, label %nk_str_append_text_char.exit

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @nk_str_at_rune(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !91
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.i, i64 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %nk_str_append_text_char.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.j, ptr noundef nonnull %2, i64 noundef %i.i) ; 0 uses
  %i.l = call i32 @nk_utf_len(ptr noundef nonnull %2, i32 noundef %3)
  %i.m = load i32, ptr %i.g, align 8, !tbaa !91
  %i.n = add nsw i32 %i.m, %i.l
  store i32 %i.n, ptr %i.g, align 8, !tbaa !91
  br label %nk_str_append_text_char.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !93
  %.not7.i = icmp eq i64 %i.p, 0
  br i1 %.not7.i, label %nk_str_get_const.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94
  %i.s = ptrtoint ptr %i.r to i64
  br label %nk_str_get_const.exit

nk_str_get_const.exit:                            ; preds = %bb.e, %bb.f
  %.0.i25 = phi i64 [ %i.s, %bb.f ], [ 0, %bb.e ]
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %nk_str_append_text_char.exit, label %bb.g

bb.g:                                             ; preds = %nk_str_get_const.exit
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = sub i64 %i.t, %.0.i25
  %i.v = trunc i64 %i.u to i32
end_hunk_1
begin_hunk_2_@nk_font_atlas_add_compressed:bb.a
  %i.jb = getelementptr i8, ptr %.sink.i64.i, i64 144
  store <16 x i8> %wide.load195.4, ptr %next.gep194.4, align 1, !tbaa !56
  store <16 x i8> %wide.load196.4, ptr %i.jb, align 1, !tbaa !56
  %i.jc = icmp eq i64 %n.vec190, 160
  br i1 %i.jc, label %middle.block198, label %vector.body191.5

vector.body191.5:                                 ; preds = %vector.body191.4
  %next.gep193.5 = getelementptr i8, ptr %i.ig, i64 160
  %next.gep194.5 = getelementptr i8, ptr %.sink.i64.i, i64 160
  %i.jd = getelementptr i8, ptr %i.ig, i64 176
  %wide.load195.5 = load <16 x i8>, ptr %next.gep193.5, align 1, !tbaa !56
  %wide.load196.5 = load <16 x i8>, ptr %i.jd, align 1, !tbaa !56
  %i.je = getelementptr i8, ptr %.sink.i64.i, i64 176
  store <16 x i8> %wide.load195.5, ptr %next.gep194.5, align 1, !tbaa !56
  store <16 x i8> %wide.load196.5, ptr %i.je, align 1, !tbaa !56
  %i.jf = icmp eq i64 %n.vec190, 192
  br i1 %i.jf, label %middle.block198, label %vector.body191.6

vector.body191.6:                                 ; preds = %vector.body191.5
  %next.gep193.6 = getelementptr i8, ptr %i.ig, i64 192
  %next.gep194.6 = getelementptr i8, ptr %.sink.i64.i, i64 192
  %i.jg = getelementptr i8, ptr %i.ig, i64 208
  %wide.load195.6 = load <16 x i8>, ptr %next.gep193.6, align 1, !tbaa !56
  %wide.load196.6 = load <16 x i8>, ptr %i.jg, align 1, !tbaa !56
  %i.jh = getelementptr i8, ptr %.sink.i64.i, i64 208
  store <16 x i8> %wide.load195.6, ptr %next.gep194.6, align 1, !tbaa !56
  store <16 x i8> %wide.load196.6, ptr %i.jh, align 1, !tbaa !56
  %i.ji = icmp eq i64 %n.vec190, 224
  br i1 %i.ji, label %middle.block198, label %vector.body191.7

vector.body191.7:                                 ; preds = %vector.body191.6
  %next.gep193.7 = getelementptr i8, ptr %i.ig, i64 224
  %next.gep194.7 = getelementptr i8, ptr %.sink.i64.i, i64 224
  %i.jj = getelementptr i8, ptr %i.ig, i64 240
  %wide.load195.7 = load <16 x i8>, ptr %next.gep193.7, align 1, !tbaa !56
  %wide.load196.7 = load <16 x i8>, ptr %i.jj, align 1, !tbaa !56
  %i.jk = getelementptr i8, ptr %.sink.i64.i, i64 240
  store <16 x i8> %wide.load195.7, ptr %next.gep194.7, align 1, !tbaa !56
  store <16 x i8> %wide.load196.7, ptr %i.jk, align 1, !tbaa !56
  br label %middle.block198

middle.block198:                                  ; preds = %vector.body191.7, %vector.body191.6, %vector.body191.5, %vector.body191.4, %vector.body191.3, %vector.body191.2, %vector.body191.1, %vector.ph189
  %cmp.n199 = icmp eq i64 %n.vec190, %i.hq
  br i1 %cmp.n199, label %nk_decompress_token.exit.thread.sink.split.i, label %vec.epilog.iter.check205

vec.epilog.iter.check205:                         ; preds = %middle.block198
  %min.epilog.iters.check206 = icmp eq i64 %i.ij, 0
  br i1 %min.epilog.iters.check206, label %.preheader.i62.i.i.preheader, label %vec.epilog.ph207, !prof !82

vec.epilog.ph207:                                 ; preds = %vector.main.loop.iter.check187, %vec.epilog.iter.check205
  %vec.epilog.resume.val200 = phi i64 [ %n.vec190, %vec.epilog.iter.check205 ], [ 0, %vector.main.loop.iter.check187 ]
  %n.vec208 = and i64 %i.hq, 508                  ; 5 uses
  %i.jl = trunc nuw nsw i64 %n.vec208 to i32
  %i.jm = sub nsw i32 %i.hp, %i.jl
  %i.jn = getelementptr i8, ptr %i.ig, i64 %n.vec208
  %i.jo = getelementptr i8, ptr %.sink.i64.i, i64 %n.vec208 ; 2 uses
  br label %vec.epilog.vector.body209

vec.epilog.vector.body209:                        ; preds = %vec.epilog.vector.body209, %vec.epilog.ph207
  %index210 = phi i64 [ %vec.epilog.resume.val200, %vec.epilog.ph207 ], [ %index.next214, %vec.epilog.vector.body209 ] ; 3 uses
  %next.gep211 = getelementptr i8, ptr %i.ig, i64 %index210
  %next.gep212 = getelementptr i8, ptr %.sink.i64.i, i64 %index210
  %wide.load213 = load <4 x i8>, ptr %next.gep211, align 1, !tbaa !56
  store <4 x i8> %wide.load213, ptr %next.gep212, align 1, !tbaa !56
  %index.next214 = add nuw i64 %index210, 4       ; 2 uses
  %i.jp = icmp eq i64 %index.next214, %n.vec208
  br i1 %i.jp, label %vec.epilog.middle.block215, label %vec.epilog.vector.body209, !llvm.loop !918

vec.epilog.middle.block215:                       ; preds = %vec.epilog.vector.body209
  %cmp.n216 = icmp eq i64 %n.vec208, %i.hq
  br i1 %cmp.n216, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i62.i.i.preheader

.preheader.i62.i.i.preheader:                     ; preds = %iter.check203, %vec.epilog.iter.check205, %vec.epilog.middle.block215
  %.09.i63.i.i.ph = phi i32 [ %i.hp, %iter.check203 ], [ %i.il, %vec.epilog.iter.check205 ], [ %i.jm, %vec.epilog.middle.block215 ] ; 4 uses
  %.048.i64.i.i.ph = phi ptr [ %i.ig, %iter.check203 ], [ %i.im, %vec.epilog.iter.check205 ], [ %i.jn, %vec.epilog.middle.block215 ] ; 2 uses
  %.ph334 = phi ptr [ %.sink.i64.i, %iter.check203 ], [ %i.in, %vec.epilog.iter.check205 ], [ %i.jo, %vec.epilog.middle.block215 ] ; 2 uses
  %i.jq = add nsw i32 %.09.i63.i.i.ph, -1
  %xtraiter355 = and i32 %.09.i63.i.i.ph, 7       ; 2 uses
  %lcmp.mod356.not = icmp eq i32 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.preheader.i62.i.i.prol.loopexit, label %.preheader.i62.i.i.prol

.preheader.i62.i.i.prol:                          ; preds = %.preheader.i62.i.i.preheader, %.preheader.i62.i.i.prol
  %.09.i63.i.i.prol = phi i32 [ %i.js, %.preheader.i62.i.i.prol ], [ %.09.i63.i.i.ph, %.preheader.i62.i.i.preheader ]
  %.048.i64.i.i.prol = phi ptr [ %i.jt, %.preheader.i62.i.i.prol ], [ %.048.i64.i.i.ph, %.preheader.i62.i.i.preheader ] ; 2 uses
  %i.jr = phi ptr [ %i.jv, %.preheader.i62.i.i.prol ], [ %.ph334, %.preheader.i62.i.i.preheader ] ; 2 uses
  %prol.iter357 = phi i32 [ %prol.iter357.next, %.preheader.i62.i.i.prol ], [ 0, %.preheader.i62.i.i.preheader ]
  %i.js = add nsw i32 %.09.i63.i.i.prol, -1       ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.048.i64.i.i.prol, i64 1 ; 2 uses
  %i.ju = load i8, ptr %.048.i64.i.i.prol, align 1, !tbaa !56
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 1 ; 3 uses
  store i8 %i.ju, ptr %i.jr, align 1, !tbaa !56
  %prol.iter357.next = add i32 %prol.iter357, 1   ; 2 uses
  %prol.iter357.cmp.not = icmp eq i32 %prol.iter357.next, %xtraiter355
  br i1 %prol.iter357.cmp.not, label %.preheader.i62.i.i.prol.loopexit, label %.preheader.i62.i.i.prol, !llvm.loop !919

.preheader.i62.i.i.prol.loopexit:                 ; preds = %.preheader.i62.i.i.prol, %.preheader.i62.i.i.preheader
  %.lcssa344.unr = phi ptr [ poison, %.preheader.i62.i.i.preheader ], [ %i.jv, %.preheader.i62.i.i.prol ]
  %.09.i63.i.i.unr = phi i32 [ %.09.i63.i.i.ph, %.preheader.i62.i.i.preheader ], [ %i.js, %.preheader.i62.i.i.prol ]
  %.048.i64.i.i.unr = phi ptr [ %.048.i64.i.i.ph, %.preheader.i62.i.i.preheader ], [ %i.jt, %.preheader.i62.i.i.prol ]
  %.unr358 = phi ptr [ %.ph334, %.preheader.i62.i.i.preheader ], [ %i.jv, %.preheader.i62.i.i.prol ]
  %i.jw = icmp ult i32 %i.jq, 7
  br i1 %i.jw, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i62.i.i

.preheader.i62.i.i:                               ; preds = %.preheader.i62.i.i.prol.loopexit, %.preheader.i62.i.i
  %.09.i63.i.i = phi i32 [ %i.kt, %.preheader.i62.i.i ], [ %.09.i63.i.i.unr, %.preheader.i62.i.i.prol.loopexit ]
  %.048.i64.i.i = phi ptr [ %i.ku, %.preheader.i62.i.i ], [ %.048.i64.i.i.unr, %.preheader.i62.i.i.prol.loopexit ] ; 9 uses
  %i.jx = phi ptr [ %i.kw, %.preheader.i62.i.i ], [ %.unr358, %.preheader.i62.i.i.prol.loopexit ] ; 9 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.048.i64.i.i, i64 1
  %i.jz = load i8, ptr %.048.i64.i.i, align 1, !tbaa !56
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 1
  store i8 %i.jz, ptr %i.jx, align 1, !tbaa !56
  %i.kb = getelementptr inbounds nuw i8, ptr %.048.i64.i.i, i64 2
  %i.kc = load i8, ptr %i.jy, align 1, !tbaa !56
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  store i8 %i.kc, ptr %i.ka, align 1, !tbaa !56
  %i.ke = getelementptr inbounds nuw i8, ptr %.048.i64.i.i, i64 3
  %i.kf = load i8, ptr %i.kb, align 1, !tbaa !56
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jx, i64 3
  store i8 %i.kf, ptr %i.kd, align 1, !tbaa !56
  %i.kh = getelementptr inbounds nuw i8, ptr %.048.i64.i.i, i64 4
  %i.ki = load i8, ptr %i.ke, align 1, !tbaa !56
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store i8 %i.ki, ptr %i.kg, align 1, !tbaa !56
  %i.kk = getelementptr inbounds nuw i8, ptr %.048.i64.i.i, i64 5
  %i.kl = load i8, ptr %i.kh, align 1, !tbaa !56
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 5
  store i8 %i.kl, ptr %i.kj, align 1, !tbaa !56
  %i.kn = getelementptr inbounds nuw i8, ptr %.048.i64.i.i, i64 6
  %i.ko = load i8, ptr %i.kk, align 1, !tbaa !56
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jx, i64 6
  store i8 %i.ko, ptr %i.km, align 1, !tbaa !56
  %i.kq = getelementptr inbounds nuw i8, ptr %.048.i64.i.i, i64 7
  %i.kr = load i8, ptr %i.kn, align 1, !tbaa !56
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jx, i64 7
  store i8 %i.kr, ptr %i.kp, align 1, !tbaa !56
  %i.kt = add nsw i32 %.09.i63.i.i, -8            ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.048.i64.i.i, i64 8
  %i.kv = load i8, ptr %i.kq, align 1, !tbaa !56
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 2 uses
  store i8 %i.kv, ptr %i.ks, align 1, !tbaa !56
  %.not.i65.i.i.7 = icmp eq i32 %i.kt, 0
  br i1 %.not.i65.i.i.7, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i62.i.i, !llvm.loop !920

bb.w:                                             ; preds = %bb.t
  %i.kx = icmp samesign ugt i8 %i.ba, 15
  br i1 %i.kx, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ky = getelementptr inbounds nuw i8, ptr %.036.i, i64 3
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !56
  %i.la = zext i8 %i.kz to i32
  %i.lb = shl nuw nsw i32 %i.la, 8
  %i.lc = getelementptr inbounds nuw i8, ptr %.036.i, i64 4
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !56
  %i.le = zext i8 %i.ld to i32
  %i.lf = or disjoint i32 %i.lb, %i.le            ; 3 uses
  %i.lg = add nuw nsw i32 %i.lf, 1                ; 4 uses
  %i.lh = zext nneg i32 %i.lg to i64              ; 6 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.sink.i64.i, i64 %i.lh ; 2 uses
  %i.lj = icmp ugt ptr %i.li, %i.ax
  br i1 %i.lj, label %nk_decompress_token.exit.thread.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.lk = shl nuw nsw i32 %i.bb, 16
  %i.ll = getelementptr inbounds nuw i8, ptr %.036.i, i64 1
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !56
  %i.ln = zext i8 %i.lm to i32
  %i.lo = shl nuw nsw i32 %i.ln, 8
  %i.lp = getelementptr inbounds nuw i8, ptr %.036.i, i64 2
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !56
  %i.lr = zext i8 %i.lq to i32
  %i.ls = or disjoint i32 %i.lk, %i.lr
  %i.lt = or disjoint i32 %i.ls, %i.lo            ; 2 uses
  %i.lu = add nsw i32 %i.lt, -1048575
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = sub nsw i64 0, %i.lv
  %i.lx = getelementptr inbounds i8, ptr %.sink.i64.i, i64 %i.lw ; 6 uses
  %i.ly = icmp ult ptr %i.lx, %i.t
  br i1 %i.ly, label %nk_decompress_token.exit.thread.sink.split.i, label %iter.check239

iter.check239:                                    ; preds = %bb.y
  %min.iters.check222 = icmp samesign ult i32 %i.lf, 3
  %i.lz = add nsw i32 %i.lt, -1048576
  %diff.check221 = icmp ult i32 %i.lz, 31
  %or.cond331 = select i1 %min.iters.check222, i1 true, i1 %diff.check221
  br i1 %or.cond331, label %.preheader.i68.i.i.preheader, label %vector.main.loop.iter.check223

vector.main.loop.iter.check223:                   ; preds = %iter.check239
  %min.iters.check224 = icmp samesign ult i32 %i.lf, 31
  br i1 %min.iters.check224, label %vec.epilog.ph243, label %vector.ph225

vector.ph225:                                     ; preds = %vector.main.loop.iter.check223
  %i.ma = and i64 %i.lh, 28
  %n.vec226 = and i64 %i.lh, 131040               ; 6 uses
  %i.mb = trunc nuw nsw i64 %n.vec226 to i32
  %i.mc = sub nsw i32 %i.lg, %i.mb
  %i.md = getelementptr i8, ptr %i.lx, i64 %n.vec226
  %i.me = getelementptr i8, ptr %.sink.i64.i, i64 %n.vec226 ; 2 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next233, %vector.body227 ] ; 3 uses
  %next.gep229 = getelementptr i8, ptr %i.lx, i64 %index228 ; 2 uses
  %next.gep230 = getelementptr i8, ptr %.sink.i64.i, i64 %index228 ; 2 uses
  %i.mf = getelementptr i8, ptr %next.gep229, i64 16
  %wide.load231 = load <16 x i8>, ptr %next.gep229, align 1, !tbaa !56
  %wide.load232 = load <16 x i8>, ptr %i.mf, align 1, !tbaa !56
  %i.mg = getelementptr i8, ptr %next.gep230, i64 16
  store <16 x i8> %wide.load231, ptr %next.gep230, align 1, !tbaa !56
  store <16 x i8> %wide.load232, ptr %i.mg, align 1, !tbaa !56
  %index.next233 = add nuw i64 %index228, 32      ; 2 uses
  %i.mh = icmp eq i64 %index.next233, %n.vec226
  br i1 %i.mh, label %middle.block234, label %vector.body227, !llvm.loop !921

middle.block234:                                  ; preds = %vector.body227
  %cmp.n235 = icmp eq i64 %n.vec226, %i.lh
  br i1 %cmp.n235, label %nk_decompress_token.exit.thread.sink.split.i, label %vec.epilog.iter.check241

vec.epilog.iter.check241:                         ; preds = %middle.block234
  %min.epilog.iters.check242 = icmp eq i64 %i.ma, 0
  br i1 %min.epilog.iters.check242, label %.preheader.i68.i.i.preheader, label %vec.epilog.ph243, !prof !82

vec.epilog.ph243:                                 ; preds = %vector.main.loop.iter.check223, %vec.epilog.iter.check241
  %vec.epilog.resume.val236 = phi i64 [ %n.vec226, %vec.epilog.iter.check241 ], [ 0, %vector.main.loop.iter.check223 ]
  %n.vec244 = and i64 %i.lh, 131068               ; 5 uses
  %i.mi = trunc nuw nsw i64 %n.vec244 to i32
  %i.mj = sub nsw i32 %i.lg, %i.mi
  %i.mk = getelementptr i8, ptr %i.lx, i64 %n.vec244
  %i.ml = getelementptr i8, ptr %.sink.i64.i, i64 %n.vec244 ; 2 uses
  br label %vec.epilog.vector.body245

vec.epilog.vector.body245:                        ; preds = %vec.epilog.vector.body245, %vec.epilog.ph243
  %index246 = phi i64 [ %vec.epilog.resume.val236, %vec.epilog.ph243 ], [ %index.next250, %vec.epilog.vector.body245 ] ; 3 uses
  %next.gep247 = getelementptr i8, ptr %i.lx, i64 %index246
  %next.gep248 = getelementptr i8, ptr %.sink.i64.i, i64 %index246
  %wide.load249 = load <4 x i8>, ptr %next.gep247, align 1, !tbaa !56
  store <4 x i8> %wide.load249, ptr %next.gep248, align 1, !tbaa !56
  %index.next250 = add nuw i64 %index246, 4       ; 2 uses
  %i.mm = icmp eq i64 %index.next250, %n.vec244
  br i1 %i.mm, label %vec.epilog.middle.block251, label %vec.epilog.vector.body245, !llvm.loop !922

vec.epilog.middle.block251:                       ; preds = %vec.epilog.vector.body245
  %cmp.n252 = icmp eq i64 %n.vec244, %i.lh
  br i1 %cmp.n252, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i68.i.i.preheader

.preheader.i68.i.i.preheader:                     ; preds = %iter.check239, %vec.epilog.iter.check241, %vec.epilog.middle.block251
  %.09.i69.i.i.ph = phi i32 [ %i.lg, %iter.check239 ], [ %i.mc, %vec.epilog.iter.check241 ], [ %i.mj, %vec.epilog.middle.block251 ] ; 4 uses
  %.048.i70.i.i.ph = phi ptr [ %i.lx, %iter.check239 ], [ %i.md, %vec.epilog.iter.check241 ], [ %i.mk, %vec.epilog.middle.block251 ] ; 2 uses
  %.ph336 = phi ptr [ %.sink.i64.i, %iter.check239 ], [ %i.me, %vec.epilog.iter.check241 ], [ %i.ml, %vec.epilog.middle.block251 ] ; 2 uses
  %i.mn = add nsw i32 %.09.i69.i.i.ph, -1
  %xtraiter351 = and i32 %.09.i69.i.i.ph, 7       ; 2 uses
  %lcmp.mod352.not = icmp eq i32 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %.preheader.i68.i.i.prol.loopexit, label %.preheader.i68.i.i.prol

.preheader.i68.i.i.prol:                          ; preds = %.preheader.i68.i.i.preheader, %.preheader.i68.i.i.prol
  %.09.i69.i.i.prol = phi i32 [ %i.mp, %.preheader.i68.i.i.prol ], [ %.09.i69.i.i.ph, %.preheader.i68.i.i.preheader ]
  %.048.i70.i.i.prol = phi ptr [ %i.mq, %.preheader.i68.i.i.prol ], [ %.048.i70.i.i.ph, %.preheader.i68.i.i.preheader ] ; 2 uses
  %i.mo = phi ptr [ %i.ms, %.preheader.i68.i.i.prol ], [ %.ph336, %.preheader.i68.i.i.preheader ] ; 2 uses
  %prol.iter353 = phi i32 [ %prol.iter353.next, %.preheader.i68.i.i.prol ], [ 0, %.preheader.i68.i.i.preheader ]
  %i.mp = add nsw i32 %.09.i69.i.i.prol, -1       ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.048.i70.i.i.prol, i64 1 ; 2 uses
  %i.mr = load i8, ptr %.048.i70.i.i.prol, align 1, !tbaa !56
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 1 ; 3 uses
  store i8 %i.mr, ptr %i.mo, align 1, !tbaa !56
  %prol.iter353.next = add i32 %prol.iter353, 1   ; 2 uses
  %prol.iter353.cmp.not = icmp eq i32 %prol.iter353.next, %xtraiter351
  br i1 %prol.iter353.cmp.not, label %.preheader.i68.i.i.prol.loopexit, label %.preheader.i68.i.i.prol, !llvm.loop !923

.preheader.i68.i.i.prol.loopexit:                 ; preds = %.preheader.i68.i.i.prol, %.preheader.i68.i.i.preheader
  %.lcssa343.unr = phi ptr [ poison, %.preheader.i68.i.i.preheader ], [ %i.ms, %.preheader.i68.i.i.prol ]
  %.09.i69.i.i.unr = phi i32 [ %.09.i69.i.i.ph, %.preheader.i68.i.i.preheader ], [ %i.mp, %.preheader.i68.i.i.prol ]
  %.048.i70.i.i.unr = phi ptr [ %.048.i70.i.i.ph, %.preheader.i68.i.i.preheader ], [ %i.mq, %.preheader.i68.i.i.prol ]
  %.unr354 = phi ptr [ %.ph336, %.preheader.i68.i.i.preheader ], [ %i.ms, %.preheader.i68.i.i.prol ]
  %i.mt = icmp ult i32 %i.mn, 7
  br i1 %i.mt, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i68.i.i

.preheader.i68.i.i:                               ; preds = %.preheader.i68.i.i.prol.loopexit, %.preheader.i68.i.i
  %.09.i69.i.i = phi i32 [ %i.nq, %.preheader.i68.i.i ], [ %.09.i69.i.i.unr, %.preheader.i68.i.i.prol.loopexit ]
  %.048.i70.i.i = phi ptr [ %i.nr, %.preheader.i68.i.i ], [ %.048.i70.i.i.unr, %.preheader.i68.i.i.prol.loopexit ] ; 9 uses
  %i.mu = phi ptr [ %i.nt, %.preheader.i68.i.i ], [ %.unr354, %.preheader.i68.i.i.prol.loopexit ] ; 9 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 1
  %i.mw = load i8, ptr %.048.i70.i.i, align 1, !tbaa !56
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 1
  store i8 %i.mw, ptr %i.mu, align 1, !tbaa !56
  %i.my = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 2
  %i.mz = load i8, ptr %i.mv, align 1, !tbaa !56
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 2
  store i8 %i.mz, ptr %i.mx, align 1, !tbaa !56
  %i.nb = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 3
  %i.nc = load i8, ptr %i.my, align 1, !tbaa !56
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mu, i64 3
  store i8 %i.nc, ptr %i.na, align 1, !tbaa !56
  %i.ne = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 4
  %i.nf = load i8, ptr %i.nb, align 1, !tbaa !56
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  store i8 %i.nf, ptr %i.nd, align 1, !tbaa !56
  %i.nh = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 5
  %i.ni = load i8, ptr %i.ne, align 1, !tbaa !56
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mu, i64 5
  store i8 %i.ni, ptr %i.ng, align 1, !tbaa !56
  %i.nk = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 6
  %i.nl = load i8, ptr %i.nh, align 1, !tbaa !56
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mu, i64 6
  store i8 %i.nl, ptr %i.nj, align 1, !tbaa !56
  %i.nn = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 7
  %i.no = load i8, ptr %i.nk, align 1, !tbaa !56
  %i.np = getelementptr inbounds nuw i8, ptr %i.mu, i64 7
  store i8 %i.no, ptr %i.nm, align 1, !tbaa !56
  %i.nq = add nsw i32 %.09.i69.i.i, -8            ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 8
  %i.ns = load i8, ptr %i.nn, align 1, !tbaa !56
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 2 uses
  store i8 %i.ns, ptr %i.np, align 1, !tbaa !56
  %.not.i71.i.i.7 = icmp eq i32 %i.nq, 0
  br i1 %.not.i71.i.i.7, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i68.i.i, !llvm.loop !924

bb.z:                                             ; preds = %bb.w
  %i.nu = icmp samesign ugt i8 %i.ba, 7
  br i1 %i.nu, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.nv = getelementptr inbounds nuw i8, ptr %.036.i, i64 2 ; 2 uses
  %i.nw = shl nuw nsw i32 %i.bb, 8
  %i.nx = getelementptr inbounds nuw i8, ptr %.036.i, i64 1 ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !56  ; 3 uses
  %i.nz = zext i8 %i.ny to i32
  %i.oa = or disjoint i32 %i.nw, %i.nz
  %i.ob = add nsw i32 %i.oa, -2047
  %i.oc = zext nneg i32 %i.ob to i64              ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.sink.i64.i, i64 %i.oc ; 3 uses
  %i.oe = icmp ugt ptr %i.od, %i.ax
  br i1 %i.oe, label %nk__lit.exit75.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.of = icmp ult ptr %i.nv, %1
  br i1 %i.of, label %nk__lit.exit75.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.og = tail call fastcc ptr @nk_memcopy(ptr noundef %.sink.i64.i, ptr noundef nonnull %i.nv, i64 noundef %i.oc) ; 0 uses
  %.pre.i.i = load i8, ptr %.036.i, align 1, !tbaa !56
  %.pre98.i.i = load i8, ptr %i.nx, align 1, !tbaa !56
  br label %nk__lit.exit75.i.i

nk__lit.exit75.i.i:                               ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.oh = phi i8 [ %.pre98.i.i, %bb.ac ], [ %i.ny, %bb.aa ], [ %i.ny, %bb.ab ]
  %i.oi = phi i8 [ %.pre.i.i, %bb.ac ], [ %i.ba, %bb.aa ], [ %i.ba, %bb.ab ]
  %.sink.i74.i.i = phi ptr [ %i.od, %bb.ac ], [ %i.od, %bb.aa ], [ %i.az, %bb.ab ] ; 2 uses
  store ptr %.sink.i74.i.i, ptr @nk__dout, align 8, !tbaa !60
  %i.oj = zext i8 %i.oi to i64
  %i.ok = shl nuw nsw i64 %i.oj, 8
  %i.ol = zext i8 %i.oh to i64
  %i.om = getelementptr i8, ptr %.036.i, i64 %i.ok
  %i.on = getelementptr i8, ptr %i.om, i64 %i.ol
  %i.oo = getelementptr i8, ptr %i.on, i64 -2045
  br label %nk_decompress_token.exit.i

bb.ad:                                            ; preds = %bb.z
  switch i8 %i.ba, label %nk_decompress.exit [
    i8 7, label %bb.ae
    i8 6, label %bb.ah
    i8 4, label %bb.aj
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.op = getelementptr inbounds nuw i8, ptr %.036.i, i64 3 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.036.i, i64 1 ; 2 uses
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !56
  %i.os = zext i8 %i.or to i64
  %i.ot = shl nuw nsw i64 %i.os, 8                ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.036.i, i64 2 ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !56
  %i.ow = zext i8 %i.ov to i64                    ; 3 uses
  %i.ox = or disjoint i64 %i.ot, %i.ow
  %i.oy = add nuw nsw i64 %i.ox, 1                ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.sink.i64.i, i64 %i.oy ; 3 uses
  %i.pa = icmp ugt ptr %i.oz, %i.ax
  br i1 %i.pa, label %nk__lit.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.pb = icmp ult ptr %i.op, %1
  br i1 %i.pb, label %nk__lit.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pc = tail call fastcc ptr @nk_memcopy(ptr noundef %.sink.i64.i, ptr noundef nonnull %i.op, i64 noundef %i.oy) ; 0 uses
  %.pre.i = load i8, ptr %i.oq, align 1, !tbaa !56
  %.pre79.i = load i8, ptr %i.ou, align 1, !tbaa !56
  %.pre81.i = zext i8 %.pre.i to i64
  %.pre82.i = shl nuw nsw i64 %.pre81.i, 8
  %.pre84.i = zext i8 %.pre79.i to i64
  br label %nk__lit.exit.i

nk__lit.exit.i:                                   ; preds = %bb.ag, %bb.af, %bb.ae
  %.pre-phi85.i = phi i64 [ %i.ow, %bb.af ], [ %i.ow, %bb.ae ], [ %.pre84.i, %bb.ag ]
  %.pre-phi83.i = phi i64 [ %i.ot, %bb.af ], [ %i.ot, %bb.ae ], [ %.pre82.i, %bb.ag ]
  %.sink.i.i = phi ptr [ %i.az, %bb.af ], [ %i.oz, %bb.ae ], [ %i.oz, %bb.ag ] ; 2 uses
  store ptr %.sink.i.i, ptr @nk__dout, align 8, !tbaa !60
  %i.pd = getelementptr inbounds nuw i8, ptr %.036.i, i64 %.pre-phi83.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 %.pre-phi85.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  br label %nk_decompress_token.exit.i

bb.ah:                                            ; preds = %bb.ad
  %i.pg = getelementptr inbounds nuw i8, ptr %.036.i, i64 4
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !56  ; 3 uses
  %i.pi = zext i8 %i.ph to i32
  %i.pj = add nuw nsw i32 %i.pi, 1                ; 5 uses
  %i.pk = zext nneg i32 %i.pj to i64              ; 6 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.sink.i64.i, i64 %i.pk ; 2 uses
  %i.pm = icmp ugt ptr %i.pl, %i.ax
  br i1 %i.pm, label %nk_decompress_token.exit.thread.sink.split.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pn = getelementptr inbounds nuw i8, ptr %.036.i, i64 1
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !56
  %i.pp = zext i8 %i.po to i64
  %i.pq = shl nuw nsw i64 %i.pp, 16               ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.036.i, i64 2
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !56
  %i.pt = zext i8 %i.ps to i64
  %i.pu = shl nuw nsw i64 %i.pt, 8                ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.036.i, i64 3
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !56
  %i.px = zext i8 %i.pw to i64                    ; 2 uses
  %i.py = or disjoint i64 %i.pq, %i.px
  %i.pz = or disjoint i64 %i.py, %i.pu
  %i.qa = xor i64 %i.pz, -1
  %i.qb = getelementptr inbounds i8, ptr %.sink.i64.i, i64 %i.qa ; 22 uses
  %i.qc = icmp ult ptr %i.qb, %i.t
  br i1 %i.qc, label %nk_decompress_token.exit.thread.sink.split.i, label %iter.check275

iter.check275:                                    ; preds = %bb.ai
  %min.iters.check258 = icmp ult i8 %i.ph, 3
  br i1 %min.iters.check258, label %.preheader.i76.i.i.preheader, label %vector.memcheck256

vector.memcheck256:                               ; preds = %iter.check275
  %i.qd = or disjoint i64 %i.pq, %i.pu
  %i.qe = or disjoint i64 %i.qd, 1
  %i.qf = add nuw nsw i64 %i.qe, %i.px
  %diff.check257 = icmp samesign ult i64 %i.qf, 32
  br i1 %diff.check257, label %.preheader.i76.i.i.preheader, label %vector.main.loop.iter.check259

vector.main.loop.iter.check259:                   ; preds = %vector.memcheck256
  %min.iters.check260 = icmp ult i8 %i.ph, 31
  br i1 %min.iters.check260, label %vec.epilog.ph279, label %vector.ph261

vector.ph261:                                     ; preds = %vector.main.loop.iter.check259
  %i.qg = and i64 %i.pk, 28
  %n.vec262 = and i64 %i.pk, 480                  ; 12 uses
  %i.qh = trunc nuw nsw i64 %n.vec262 to i32
  %i.qi = sub nsw i32 %i.pj, %i.qh
  %i.qj = getelementptr i8, ptr %i.qb, i64 %n.vec262
  %i.qk = getelementptr i8, ptr %.sink.i64.i, i64 %n.vec262 ; 2 uses
  %i.ql = getelementptr i8, ptr %i.qb, i64 16
  %wide.load267 = load <16 x i8>, ptr %i.qb, align 1, !tbaa !56
  %wide.load268 = load <16 x i8>, ptr %i.ql, align 1, !tbaa !56
  %i.qm = getelementptr i8, ptr %.sink.i64.i, i64 16
  store <16 x i8> %wide.load267, ptr %.sink.i64.i, align 1, !tbaa !56
  store <16 x i8> %wide.load268, ptr %i.qm, align 1, !tbaa !56
  %i.qn = icmp eq i64 %n.vec262, 32
  br i1 %i.qn, label %middle.block270, label %vector.body263.1

vector.body263.1:                                 ; preds = %vector.ph261
  %next.gep265.1 = getelementptr i8, ptr %i.qb, i64 32
  %next.gep266.1 = getelementptr i8, ptr %.sink.i64.i, i64 32
  %i.qo = getelementptr i8, ptr %i.qb, i64 48
  %wide.load267.1 = load <16 x i8>, ptr %next.gep265.1, align 1, !tbaa !56
  %wide.load268.1 = load <16 x i8>, ptr %i.qo, align 1, !tbaa !56
  %i.qp = getelementptr i8, ptr %.sink.i64.i, i64 48
  store <16 x i8> %wide.load267.1, ptr %next.gep266.1, align 1, !tbaa !56
  store <16 x i8> %wide.load268.1, ptr %i.qp, align 1, !tbaa !56
  %i.qq = icmp eq i64 %n.vec262, 64
  br i1 %i.qq, label %middle.block270, label %vector.body263.2

vector.body263.2:                                 ; preds = %vector.body263.1
  %next.gep265.2 = getelementptr i8, ptr %i.qb, i64 64
  %next.gep266.2 = getelementptr i8, ptr %.sink.i64.i, i64 64
  %i.qr = getelementptr i8, ptr %i.qb, i64 80
  %wide.load267.2 = load <16 x i8>, ptr %next.gep265.2, align 1, !tbaa !56
  %wide.load268.2 = load <16 x i8>, ptr %i.qr, align 1, !tbaa !56
  %i.qs = getelementptr i8, ptr %.sink.i64.i, i64 80
  store <16 x i8> %wide.load267.2, ptr %next.gep266.2, align 1, !tbaa !56
  store <16 x i8> %wide.load268.2, ptr %i.qs, align 1, !tbaa !56
  %i.qt = icmp eq i64 %n.vec262, 96
  br i1 %i.qt, label %middle.block270, label %vector.body263.3

vector.body263.3:                                 ; preds = %vector.body263.2
  %next.gep265.3 = getelementptr i8, ptr %i.qb, i64 96
  %next.gep266.3 = getelementptr i8, ptr %.sink.i64.i, i64 96
  %i.qu = getelementptr i8, ptr %i.qb, i64 112
  %wide.load267.3 = load <16 x i8>, ptr %next.gep265.3, align 1, !tbaa !56
  %wide.load268.3 = load <16 x i8>, ptr %i.qu, align 1, !tbaa !56
  %i.qv = getelementptr i8, ptr %.sink.i64.i, i64 112
  store <16 x i8> %wide.load267.3, ptr %next.gep266.3, align 1, !tbaa !56
  store <16 x i8> %wide.load268.3, ptr %i.qv, align 1, !tbaa !56
  %i.qw = icmp eq i64 %n.vec262, 128
  br i1 %i.qw, label %middle.block270, label %vector.body263.4

vector.body263.4:                                 ; preds = %vector.body263.3
  %next.gep265.4 = getelementptr i8, ptr %i.qb, i64 128
  %next.gep266.4 = getelementptr i8, ptr %.sink.i64.i, i64 128
  %i.qx = getelementptr i8, ptr %i.qb, i64 144
  %wide.load267.4 = load <16 x i8>, ptr %next.gep265.4, align 1, !tbaa !56
  %wide.load268.4 = load <16 x i8>, ptr %i.qx, align 1, !tbaa !56
  %i.qy = getelementptr i8, ptr %.sink.i64.i, i64 144
  store <16 x i8> %wide.load267.4, ptr %next.gep266.4, align 1, !tbaa !56
  store <16 x i8> %wide.load268.4, ptr %i.qy, align 1, !tbaa !56
  %i.qz = icmp eq i64 %n.vec262, 160
  br i1 %i.qz, label %middle.block270, label %vector.body263.5

vector.body263.5:                                 ; preds = %vector.body263.4
  %next.gep265.5 = getelementptr i8, ptr %i.qb, i64 160
  %next.gep266.5 = getelementptr i8, ptr %.sink.i64.i, i64 160
  %i.ra = getelementptr i8, ptr %i.qb, i64 176
  %wide.load267.5 = load <16 x i8>, ptr %next.gep265.5, align 1, !tbaa !56
  %wide.load268.5 = load <16 x i8>, ptr %i.ra, align 1, !tbaa !56
  %i.rb = getelementptr i8, ptr %.sink.i64.i, i64 176
  store <16 x i8> %wide.load267.5, ptr %next.gep266.5, align 1, !tbaa !56
  store <16 x i8> %wide.load268.5, ptr %i.rb, align 1, !tbaa !56
  %i.rc = icmp eq i64 %n.vec262, 192
  br i1 %i.rc, label %middle.block270, label %vector.body263.6

vector.body263.6:                                 ; preds = %vector.body263.5
  %next.gep265.6 = getelementptr i8, ptr %i.qb, i64 192
  %next.gep266.6 = getelementptr i8, ptr %.sink.i64.i, i64 192
  %i.rd = getelementptr i8, ptr %i.qb, i64 208
  %wide.load267.6 = load <16 x i8>, ptr %next.gep265.6, align 1, !tbaa !56
  %wide.load268.6 = load <16 x i8>, ptr %i.rd, align 1, !tbaa !56
  %i.re = getelementptr i8, ptr %.sink.i64.i, i64 208
  store <16 x i8> %wide.load267.6, ptr %next.gep266.6, align 1, !tbaa !56
  store <16 x i8> %wide.load268.6, ptr %i.re, align 1, !tbaa !56
  %i.rf = icmp eq i64 %n.vec262, 224
  br i1 %i.rf, label %middle.block270, label %vector.body263.7

vector.body263.7:                                 ; preds = %vector.body263.6
  %next.gep265.7 = getelementptr i8, ptr %i.qb, i64 224
  %next.gep266.7 = getelementptr i8, ptr %.sink.i64.i, i64 224
  %i.rg = getelementptr i8, ptr %i.qb, i64 240
  %wide.load267.7 = load <16 x i8>, ptr %next.gep265.7, align 1, !tbaa !56
  %wide.load268.7 = load <16 x i8>, ptr %i.rg, align 1, !tbaa !56
  %i.rh = getelementptr i8, ptr %.sink.i64.i, i64 240
  store <16 x i8> %wide.load267.7, ptr %next.gep266.7, align 1, !tbaa !56
  store <16 x i8> %wide.load268.7, ptr %i.rh, align 1, !tbaa !56
  br label %middle.block270

middle.block270:                                  ; preds = %vector.body263.7, %vector.body263.6, %vector.body263.5, %vector.body263.4, %vector.body263.3, %vector.body263.2, %vector.body263.1, %vector.ph261
  %cmp.n271 = icmp eq i64 %n.vec262, %i.pk
  br i1 %cmp.n271, label %nk_decompress_token.exit.thread.sink.split.i, label %vec.epilog.iter.check277

vec.epilog.iter.check277:                         ; preds = %middle.block270
  %min.epilog.iters.check278 = icmp eq i64 %i.qg, 0
  br i1 %min.epilog.iters.check278, label %.preheader.i76.i.i.preheader, label %vec.epilog.ph279, !prof !82

vec.epilog.ph279:                                 ; preds = %vector.main.loop.iter.check259, %vec.epilog.iter.check277
  %vec.epilog.resume.val272 = phi i64 [ %n.vec262, %vec.epilog.iter.check277 ], [ 0, %vector.main.loop.iter.check259 ]
  %n.vec280 = and i64 %i.pk, 508                  ; 5 uses
  %i.ri = trunc nuw nsw i64 %n.vec280 to i32
  %i.rj = sub nsw i32 %i.pj, %i.ri
  %i.rk = getelementptr i8, ptr %i.qb, i64 %n.vec280
  %i.rl = getelementptr i8, ptr %.sink.i64.i, i64 %n.vec280 ; 2 uses
  br label %vec.epilog.vector.body281

vec.epilog.vector.body281:                        ; preds = %vec.epilog.vector.body281, %vec.epilog.ph279
  %index282 = phi i64 [ %vec.epilog.resume.val272, %vec.epilog.ph279 ], [ %index.next286, %vec.epilog.vector.body281 ] ; 3 uses
  %next.gep283 = getelementptr i8, ptr %i.qb, i64 %index282
  %next.gep284 = getelementptr i8, ptr %.sink.i64.i, i64 %index282
  %wide.load285 = load <4 x i8>, ptr %next.gep283, align 1, !tbaa !56
  store <4 x i8> %wide.load285, ptr %next.gep284, align 1, !tbaa !56
  %index.next286 = add nuw i64 %index282, 4       ; 2 uses
  %i.rm = icmp eq i64 %index.next286, %n.vec280
  br i1 %i.rm, label %vec.epilog.middle.block287, label %vec.epilog.vector.body281, !llvm.loop !925

vec.epilog.middle.block287:                       ; preds = %vec.epilog.vector.body281
  %cmp.n288 = icmp eq i64 %n.vec280, %i.pk
  br i1 %cmp.n288, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i76.i.i.preheader

.preheader.i76.i.i.preheader:                     ; preds = %vector.memcheck256, %iter.check275, %vec.epilog.iter.check277, %vec.epilog.middle.block287
  %.09.i77.i.i.ph = phi i32 [ %i.pj, %iter.check275 ], [ %i.pj, %vector.memcheck256 ], [ %i.qi, %vec.epilog.iter.check277 ], [ %i.rj, %vec.epilog.middle.block287 ] ; 4 uses
  %.048.i78.i.i.ph = phi ptr [ %i.qb, %iter.check275 ], [ %i.qb, %vector.memcheck256 ], [ %i.qj, %vec.epilog.iter.check277 ], [ %i.rk, %vec.epilog.middle.block287 ] ; 2 uses
  %.ph338 = phi ptr [ %.sink.i64.i, %iter.check275 ], [ %.sink.i64.i, %vector.memcheck256 ], [ %i.qk, %vec.epilog.iter.check277 ], [ %i.rl, %vec.epilog.middle.block287 ] ; 2 uses
  %i.rn = add nsw i32 %.09.i77.i.i.ph, -1
  %xtraiter347 = and i32 %.09.i77.i.i.ph, 7       ; 2 uses
  %lcmp.mod348.not = icmp eq i32 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %.preheader.i76.i.i.prol.loopexit, label %.preheader.i76.i.i.prol

.preheader.i76.i.i.prol:                          ; preds = %.preheader.i76.i.i.preheader, %.preheader.i76.i.i.prol
  %.09.i77.i.i.prol = phi i32 [ %i.rp, %.preheader.i76.i.i.prol ], [ %.09.i77.i.i.ph, %.preheader.i76.i.i.preheader ]
  %.048.i78.i.i.prol = phi ptr [ %i.rq, %.preheader.i76.i.i.prol ], [ %.048.i78.i.i.ph, %.preheader.i76.i.i.preheader ] ; 2 uses
  %i.ro = phi ptr [ %i.rs, %.preheader.i76.i.i.prol ], [ %.ph338, %.preheader.i76.i.i.preheader ] ; 2 uses
  %prol.iter349 = phi i32 [ %prol.iter349.next, %.preheader.i76.i.i.prol ], [ 0, %.preheader.i76.i.i.preheader ]
  %i.rp = add nsw i32 %.09.i77.i.i.prol, -1       ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.048.i78.i.i.prol, i64 1 ; 2 uses
  %i.rr = load i8, ptr %.048.i78.i.i.prol, align 1, !tbaa !56
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 1 ; 3 uses
  store i8 %i.rr, ptr %i.ro, align 1, !tbaa !56
  %prol.iter349.next = add i32 %prol.iter349, 1   ; 2 uses
  %prol.iter349.cmp.not = icmp eq i32 %prol.iter349.next, %xtraiter347
  br i1 %prol.iter349.cmp.not, label %.preheader.i76.i.i.prol.loopexit, label %.preheader.i76.i.i.prol, !llvm.loop !926

.preheader.i76.i.i.prol.loopexit:                 ; preds = %.preheader.i76.i.i.prol, %.preheader.i76.i.i.preheader
  %.lcssa342.unr = phi ptr [ poison, %.preheader.i76.i.i.preheader ], [ %i.rs, %.preheader.i76.i.i.prol ]
  %.09.i77.i.i.unr = phi i32 [ %.09.i77.i.i.ph, %.preheader.i76.i.i.preheader ], [ %i.rp, %.preheader.i76.i.i.prol ]
  %.048.i78.i.i.unr = phi ptr [ %.048.i78.i.i.ph, %.preheader.i76.i.i.preheader ], [ %i.rq, %.preheader.i76.i.i.prol ]
  %.unr350 = phi ptr [ %.ph338, %.preheader.i76.i.i.preheader ], [ %i.rs, %.preheader.i76.i.i.prol ]
  %i.rt = icmp ult i32 %i.rn, 7
  br i1 %i.rt, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i76.i.i

.preheader.i76.i.i:                               ; preds = %.preheader.i76.i.i.prol.loopexit, %.preheader.i76.i.i
  %.09.i77.i.i = phi i32 [ %i.sq, %.preheader.i76.i.i ], [ %.09.i77.i.i.unr, %.preheader.i76.i.i.prol.loopexit ]
  %.048.i78.i.i = phi ptr [ %i.sr, %.preheader.i76.i.i ], [ %.048.i78.i.i.unr, %.preheader.i76.i.i.prol.loopexit ] ; 9 uses
  %i.ru = phi ptr [ %i.st, %.preheader.i76.i.i ], [ %.unr350, %.preheader.i76.i.i.prol.loopexit ] ; 9 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 1
  %i.rw = load i8, ptr %.048.i78.i.i, align 1, !tbaa !56
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 1
  store i8 %i.rw, ptr %i.ru, align 1, !tbaa !56
  %i.ry = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 2
  %i.rz = load i8, ptr %i.rv, align 1, !tbaa !56
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ru, i64 2
  store i8 %i.rz, ptr %i.rx, align 1, !tbaa !56
  %i.sb = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 3
  %i.sc = load i8, ptr %i.ry, align 1, !tbaa !56
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 3
  store i8 %i.sc, ptr %i.sa, align 1, !tbaa !56
  %i.se = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 4
  %i.sf = load i8, ptr %i.sb, align 1, !tbaa !56
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  store i8 %i.sf, ptr %i.sd, align 1, !tbaa !56
  %i.sh = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 5
  %i.si = load i8, ptr %i.se, align 1, !tbaa !56
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ru, i64 5
  store i8 %i.si, ptr %i.sg, align 1, !tbaa !56
  %i.sk = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 6
  %i.sl = load i8, ptr %i.sh, align 1, !tbaa !56
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ru, i64 6
  store i8 %i.sl, ptr %i.sj, align 1, !tbaa !56
  %i.sn = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 7
  %i.so = load i8, ptr %i.sk, align 1, !tbaa !56
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ru, i64 7
  store i8 %i.so, ptr %i.sm, align 1, !tbaa !56
  %i.sq = add nsw i32 %.09.i77.i.i, -8            ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.048.i78.i.i, i64 8
  %i.ss = load i8, ptr %i.sn, align 1, !tbaa !56
  %i.st = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 2 uses
  store i8 %i.ss, ptr %i.sp, align 1, !tbaa !56
  %.not.i79.i.i.7 = icmp eq i32 %i.sq, 0
  br i1 %.not.i79.i.i.7, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i76.i.i, !llvm.loop !927

bb.aj:                                            ; preds = %bb.ad
  %i.su = getelementptr inbounds nuw i8, ptr %.036.i, i64 4
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !56
  %i.sw = zext i8 %i.sv to i32
  %i.sx = shl nuw nsw i32 %i.sw, 8
  %i.sy = getelementptr inbounds nuw i8, ptr %.036.i, i64 5
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !56
  %i.ta = zext i8 %i.sz to i32
  %i.tb = or disjoint i32 %i.sx, %i.ta            ; 3 uses
  %i.tc = add nuw nsw i32 %i.tb, 1                ; 5 uses
  %i.td = zext nneg i32 %i.tc to i64              ; 6 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.sink.i64.i, i64 %i.td ; 2 uses
  %i.tf = icmp ugt ptr %i.te, %i.ax
  br i1 %i.tf, label %nk_decompress_token.exit.thread.sink.split.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.tg = getelementptr inbounds nuw i8, ptr %.036.i, i64 1
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !56
  %i.ti = zext i8 %i.th to i64
  %i.tj = shl nuw nsw i64 %i.ti, 16               ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.036.i, i64 2
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !56
  %i.tm = zext i8 %i.tl to i64
  %i.tn = shl nuw nsw i64 %i.tm, 8                ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.036.i, i64 3
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !56
  %i.tq = zext i8 %i.tp to i64                    ; 2 uses
  %i.tr = or disjoint i64 %i.tj, %i.tq
  %i.ts = or disjoint i64 %i.tr, %i.tn
  %i.tt = xor i64 %i.ts, -1
  %i.tu = getelementptr inbounds i8, ptr %.sink.i64.i, i64 %i.tt ; 7 uses
  %i.tv = icmp ult ptr %i.tu, %i.t
  br i1 %i.tv, label %nk_decompress_token.exit.thread.sink.split.i, label %iter.check311

iter.check311:                                    ; preds = %bb.ak
  %min.iters.check294 = icmp samesign ult i32 %i.tb, 3
  br i1 %min.iters.check294, label %.preheader.i82.i.i.preheader, label %vector.memcheck292

vector.memcheck292:                               ; preds = %iter.check311
  %i.tw = or disjoint i64 %i.tj, %i.tn
  %i.tx = or disjoint i64 %i.tw, 1
  %i.ty = add nuw nsw i64 %i.tx, %i.tq
  %diff.check293 = icmp samesign ult i64 %i.ty, 32
  br i1 %diff.check293, label %.preheader.i82.i.i.preheader, label %vector.main.loop.iter.check295

vector.main.loop.iter.check295:                   ; preds = %vector.memcheck292
  %min.iters.check296 = icmp samesign ult i32 %i.tb, 31
  br i1 %min.iters.check296, label %vec.epilog.ph315, label %vector.ph297

vector.ph297:                                     ; preds = %vector.main.loop.iter.check295
  %i.tz = and i64 %i.td, 28
  %n.vec298 = and i64 %i.td, 131040               ; 6 uses
  %i.ua = trunc nuw nsw i64 %n.vec298 to i32
  %i.ub = sub nsw i32 %i.tc, %i.ua
  %i.uc = getelementptr i8, ptr %i.tu, i64 %n.vec298
  %i.ud = getelementptr i8, ptr %.sink.i64.i, i64 %n.vec298 ; 2 uses
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 3 uses
  %next.gep301 = getelementptr i8, ptr %i.tu, i64 %index300 ; 2 uses
  %next.gep302 = getelementptr i8, ptr %.sink.i64.i, i64 %index300 ; 2 uses
  %i.ue = getelementptr i8, ptr %next.gep301, i64 16
  %wide.load303 = load <16 x i8>, ptr %next.gep301, align 1, !tbaa !56
  %wide.load304 = load <16 x i8>, ptr %i.ue, align 1, !tbaa !56
  %i.uf = getelementptr i8, ptr %next.gep302, i64 16
  store <16 x i8> %wide.load303, ptr %next.gep302, align 1, !tbaa !56
  store <16 x i8> %wide.load304, ptr %i.uf, align 1, !tbaa !56
  %index.next305 = add nuw i64 %index300, 32      ; 2 uses
  %i.ug = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.ug, label %middle.block306, label %vector.body299, !llvm.loop !928

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %n.vec298, %i.td
  br i1 %cmp.n307, label %nk_decompress_token.exit.thread.sink.split.i, label %vec.epilog.iter.check313

vec.epilog.iter.check313:                         ; preds = %middle.block306
  %min.epilog.iters.check314 = icmp eq i64 %i.tz, 0
  br i1 %min.epilog.iters.check314, label %.preheader.i82.i.i.preheader, label %vec.epilog.ph315, !prof !82

vec.epilog.ph315:                                 ; preds = %vector.main.loop.iter.check295, %vec.epilog.iter.check313
  %vec.epilog.resume.val308 = phi i64 [ %n.vec298, %vec.epilog.iter.check313 ], [ 0, %vector.main.loop.iter.check295 ]
  %n.vec316 = and i64 %i.td, 131068               ; 5 uses
  %i.uh = trunc nuw nsw i64 %n.vec316 to i32
  %i.ui = sub nsw i32 %i.tc, %i.uh
  %i.uj = getelementptr i8, ptr %i.tu, i64 %n.vec316
  %i.uk = getelementptr i8, ptr %.sink.i64.i, i64 %n.vec316 ; 2 uses
  br label %vec.epilog.vector.body317

vec.epilog.vector.body317:                        ; preds = %vec.epilog.vector.body317, %vec.epilog.ph315
  %index318 = phi i64 [ %vec.epilog.resume.val308, %vec.epilog.ph315 ], [ %index.next322, %vec.epilog.vector.body317 ] ; 3 uses
  %next.gep319 = getelementptr i8, ptr %i.tu, i64 %index318
  %next.gep320 = getelementptr i8, ptr %.sink.i64.i, i64 %index318
  %wide.load321 = load <4 x i8>, ptr %next.gep319, align 1, !tbaa !56
  store <4 x i8> %wide.load321, ptr %next.gep320, align 1, !tbaa !56
  %index.next322 = add nuw i64 %index318, 4       ; 2 uses
  %i.ul = icmp eq i64 %index.next322, %n.vec316
  br i1 %i.ul, label %vec.epilog.middle.block323, label %vec.epilog.vector.body317, !llvm.loop !929

vec.epilog.middle.block323:                       ; preds = %vec.epilog.vector.body317
  %cmp.n324 = icmp eq i64 %n.vec316, %i.td
  br i1 %cmp.n324, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i82.i.i.preheader

.preheader.i82.i.i.preheader:                     ; preds = %vector.memcheck292, %iter.check311, %vec.epilog.iter.check313, %vec.epilog.middle.block323
  %.09.i83.i.i.ph = phi i32 [ %i.tc, %iter.check311 ], [ %i.tc, %vector.memcheck292 ], [ %i.ub, %vec.epilog.iter.check313 ], [ %i.ui, %vec.epilog.middle.block323 ] ; 4 uses
  %.048.i84.i.i.ph = phi ptr [ %i.tu, %iter.check311 ], [ %i.tu, %vector.memcheck292 ], [ %i.uc, %vec.epilog.iter.check313 ], [ %i.uj, %vec.epilog.middle.block323 ] ; 2 uses
  %.ph340 = phi ptr [ %.sink.i64.i, %iter.check311 ], [ %.sink.i64.i, %vector.memcheck292 ], [ %i.ud, %vec.epilog.iter.check313 ], [ %i.uk, %vec.epilog.middle.block323 ] ; 2 uses
  %i.um = add nsw i32 %.09.i83.i.i.ph, -1
  %xtraiter = and i32 %.09.i83.i.i.ph, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i82.i.i.prol.loopexit, label %.preheader.i82.i.i.prol

.preheader.i82.i.i.prol:                          ; preds = %.preheader.i82.i.i.preheader, %.preheader.i82.i.i.prol
  %.09.i83.i.i.prol = phi i32 [ %i.uo, %.preheader.i82.i.i.prol ], [ %.09.i83.i.i.ph, %.preheader.i82.i.i.preheader ]
  %.048.i84.i.i.prol = phi ptr [ %i.up, %.preheader.i82.i.i.prol ], [ %.048.i84.i.i.ph, %.preheader.i82.i.i.preheader ] ; 2 uses
  %i.un = phi ptr [ %i.ur, %.preheader.i82.i.i.prol ], [ %.ph340, %.preheader.i82.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.i82.i.i.prol ], [ 0, %.preheader.i82.i.i.preheader ]
  %i.uo = add nsw i32 %.09.i83.i.i.prol, -1       ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.048.i84.i.i.prol, i64 1 ; 2 uses
  %i.uq = load i8, ptr %.048.i84.i.i.prol, align 1, !tbaa !56
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 1 ; 3 uses
  store i8 %i.uq, ptr %i.un, align 1, !tbaa !56
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i82.i.i.prol.loopexit, label %.preheader.i82.i.i.prol, !llvm.loop !930

.preheader.i82.i.i.prol.loopexit:                 ; preds = %.preheader.i82.i.i.prol, %.preheader.i82.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i82.i.i.preheader ], [ %i.ur, %.preheader.i82.i.i.prol ]
  %.09.i83.i.i.unr = phi i32 [ %.09.i83.i.i.ph, %.preheader.i82.i.i.preheader ], [ %i.uo, %.preheader.i82.i.i.prol ]
  %.048.i84.i.i.unr = phi ptr [ %.048.i84.i.i.ph, %.preheader.i82.i.i.preheader ], [ %i.up, %.preheader.i82.i.i.prol ]
  %.unr = phi ptr [ %.ph340, %.preheader.i82.i.i.preheader ], [ %i.ur, %.preheader.i82.i.i.prol ]
  %i.us = icmp ult i32 %i.um, 7
  br i1 %i.us, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i82.i.i

.preheader.i82.i.i:                               ; preds = %.preheader.i82.i.i.prol.loopexit, %.preheader.i82.i.i
  %.09.i83.i.i = phi i32 [ %i.vp, %.preheader.i82.i.i ], [ %.09.i83.i.i.unr, %.preheader.i82.i.i.prol.loopexit ]
  %.048.i84.i.i = phi ptr [ %i.vq, %.preheader.i82.i.i ], [ %.048.i84.i.i.unr, %.preheader.i82.i.i.prol.loopexit ] ; 9 uses
  %i.ut = phi ptr [ %i.vs, %.preheader.i82.i.i ], [ %.unr, %.preheader.i82.i.i.prol.loopexit ] ; 9 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 1
  %i.uv = load i8, ptr %.048.i84.i.i, align 1, !tbaa !56
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 1
  store i8 %i.uv, ptr %i.ut, align 1, !tbaa !56
  %i.ux = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 2
  %i.uy = load i8, ptr %i.uu, align 1, !tbaa !56
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ut, i64 2
  store i8 %i.uy, ptr %i.uw, align 1, !tbaa !56
  %i.va = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 3
  %i.vb = load i8, ptr %i.ux, align 1, !tbaa !56
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ut, i64 3
  store i8 %i.vb, ptr %i.uz, align 1, !tbaa !56
  %i.vd = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 4
  %i.ve = load i8, ptr %i.va, align 1, !tbaa !56
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  store i8 %i.ve, ptr %i.vc, align 1, !tbaa !56
  %i.vg = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 5
  %i.vh = load i8, ptr %i.vd, align 1, !tbaa !56
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ut, i64 5
  store i8 %i.vh, ptr %i.vf, align 1, !tbaa !56
  %i.vj = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 6
  %i.vk = load i8, ptr %i.vg, align 1, !tbaa !56
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ut, i64 6
  store i8 %i.vk, ptr %i.vi, align 1, !tbaa !56
  %i.vm = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 7
  %i.vn = load i8, ptr %i.vj, align 1, !tbaa !56
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ut, i64 7
  store i8 %i.vn, ptr %i.vl, align 1, !tbaa !56
  %i.vp = add nsw i32 %.09.i83.i.i, -8            ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.048.i84.i.i, i64 8
  %i.vr = load i8, ptr %i.vm, align 1, !tbaa !56
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ut, i64 8 ; 2 uses
  store i8 %i.vr, ptr %i.vo, align 1, !tbaa !56
  %.not.i85.i.i.7 = icmp eq i32 %i.vp, 0
  br i1 %.not.i85.i.i.7, label %nk_decompress_token.exit.thread.sink.split.i, label %.preheader.i82.i.i, !llvm.loop !931

nk_decompress_token.exit.i:                       ; preds = %nk__lit.exit.i, %nk__lit.exit75.i.i, %nk__lit.exit.i.i
  %.sink.i66.i = phi ptr [ %.sink.i.i, %nk__lit.exit.i ], [ %.sink.i74.i.i, %nk__lit.exit75.i.i ], [ %.sink.i.i.i, %nk__lit.exit.i.i ]
  %.0.i.i = phi ptr [ %i.pf, %nk__lit.exit.i ], [ %i.oo, %nk__lit.exit75.i.i ], [ %i.hk, %nk__lit.exit.i.i ] ; 2 uses
  %i.vt = icmp eq ptr %.0.i.i, %.036.i
  br i1 %i.vt, label %nk_decompress.exit, label %nk_decompress_token.exit.thread.i

nk_decompress_token.exit.thread.sink.split.i:     ; preds = %.preheader.i82.i.i.prol.loopexit, %.preheader.i82.i.i, %.preheader.i76.i.i.prol.loopexit, %.preheader.i76.i.i, %.preheader.i68.i.i.prol.loopexit, %.preheader.i68.i.i, %.preheader.i62.i.i.prol.loopexit, %.preheader.i62.i.i, %.preheader.i56.i.i.prol.loopexit, %.preheader.i56.i.i, %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i, %middle.block306, %vec.epilog.middle.block323, %middle.block270, %vec.epilog.middle.block287, %middle.block234, %vec.epilog.middle.block251, %middle.block198, %vec.epilog.middle.block215, %middle.block162, %vec.epilog.middle.block179, %middle.block, %vec.epilog.middle.block, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.y, %bb.x, %bb.v, %bb.u, %bb.p, %bb.o, %bb.m, %bb.l
  %.lcssa.sink.i86.i.sink.i = phi ptr [ %i.st, %.preheader.i76.i.i ], [ %i.nt, %.preheader.i68.i.i ], [ %i.kw, %.preheader.i62.i.i ], [ %i.gz, %.preheader.i56.i.i ], [ %i.ds, %.preheader.i.i.i ], [ %i.bg, %bb.l ], [ %i.az, %bb.m ], [ %i.dz, %bb.o ], [ %i.az, %bb.p ], [ %i.hr, %bb.u ], [ %i.az, %bb.v ], [ %i.li, %bb.x ], [ %i.az, %bb.y ], [ %i.pl, %bb.ah ], [ %i.az, %bb.ai ], [ %i.te, %bb.aj ], [ %i.az, %bb.ak ], [ %i.ck, %vec.epilog.middle.block ], [ %i.bv, %middle.block ], [ %i.fr, %vec.epilog.middle.block179 ], [ %i.eq, %middle.block162 ], [ %i.jo, %vec.epilog.middle.block215 ], [ %i.in, %middle.block198 ], [ %i.ml, %vec.epilog.middle.block251 ], [ %i.me, %middle.block234 ], [ %i.rl, %vec.epilog.middle.block287 ], [ %i.qk, %middle.block270 ], [ %i.uk, %vec.epilog.middle.block323 ], [ %i.ud, %middle.block306 ], [ %.lcssa346.unr, %.preheader.i.i.i.prol.loopexit ], [ %.lcssa345.unr, %.preheader.i56.i.i.prol.loopexit ], [ %.lcssa344.unr, %.preheader.i62.i.i.prol.loopexit ], [ %.lcssa343.unr, %.preheader.i68.i.i.prol.loopexit ], [ %.lcssa342.unr, %.preheader.i76.i.i.prol.loopexit ], [ %.lcssa.unr, %.preheader.i82.i.i.prol.loopexit ], [ %i.vs, %.preheader.i82.i.i ] ; 2 uses
  %.sink.i = phi i64 [ 5, %.preheader.i76.i.i.prol.loopexit ], [ 5, %.preheader.i68.i.i.prol.loopexit ], [ 4, %.preheader.i62.i.i.prol.loopexit ], [ 3, %.preheader.i56.i.i.prol.loopexit ], [ 2, %.preheader.i.i.i.prol.loopexit ], [ 2, %bb.l ], [ 2, %bb.m ], [ 3, %bb.o ], [ 3, %bb.p ], [ 4, %bb.u ], [ 4, %bb.v ], [ 5, %bb.x ], [ 5, %bb.y ], [ 5, %bb.ah ], [ 5, %bb.ai ], [ 6, %bb.aj ], [ 6, %bb.ak ], [ 2, %vec.epilog.middle.block ], [ 2, %middle.block ], [ 3, %vec.epilog.middle.block179 ], [ 3, %middle.block162 ], [ 4, %vec.epilog.middle.block215 ], [ 4, %middle.block198 ], [ 5, %vec.epilog.middle.block251 ], [ 5, %middle.block234 ], [ 5, %vec.epilog.middle.block287 ], [ 5, %middle.block270 ], [ 6, %vec.epilog.middle.block323 ], [ 6, %middle.block306 ], [ 2, %.preheader.i.i.i ], [ 3, %.preheader.i56.i.i ], [ 4, %.preheader.i62.i.i ], [ 5, %.preheader.i68.i.i ], [ 5, %.preheader.i76.i.i ], [ 6, %.preheader.i82.i.i ], [ 6, %.preheader.i82.i.i.prol.loopexit ]
  store ptr %.lcssa.sink.i86.i.sink.i, ptr @nk__dout, align 8, !tbaa !60
  %i.vu = getelementptr inbounds nuw i8, ptr %.036.i, i64 %.sink.i
  br label %nk_decompress_token.exit.thread.i

nk_decompress_token.exit.thread.i:                ; preds = %nk_decompress_token.exit.thread.sink.split.i, %nk_decompress_token.exit.i
  %.sink.i65.i = phi ptr [ %.sink.i66.i, %nk_decompress_token.exit.i ], [ %.lcssa.sink.i86.i.sink.i, %nk_decompress_token.exit.thread.sink.split.i ] ; 2 uses
  %.0.i44.i = phi ptr [ %.0.i.i, %nk_decompress_token.exit.i ], [ %i.vu, %nk_decompress_token.exit.thread.sink.split.i ]
  %.not51.i = icmp ugt ptr %.sink.i65.i, %i.ax
  br i1 %.not51.i, label %nk_decompress.exit, label %bb.j

nk_decompress.exit:                               ; preds = %nk_decompress_token.exit.thread.i, %nk_decompress_token.exit.i, %bb.ad, %bb.g, %bb.h
  %.not30 = icmp eq ptr %4, null
  br i1 %.not30, label %bb.am, label %bb.al

bb.al:                                            ; preds = %nk_decompress.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 88, i1 false), !tbaa.struct !365
  br label %bb.an

bb.am:                                            ; preds = %nk_decompress.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %5, i8 0, i64 27, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, i8 0, i64 3, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 27
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 3, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !55
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr @nk_font_default_glyph_ranges.ranges, ptr %.sroa.832.0..sroa_idx, align 8, !tbaa !363
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !364
  %.sroa.933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 63, ptr %.sroa.933.0..sroa_idx, align 8, !tbaa !55
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx, i8 0, i64 20, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.vv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.t, ptr %i.vv, align 8, !tbaa !352
  %i.vw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.r, ptr %i.vw, align 8, !tbaa !353
  %i.vx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %3, ptr %i.vx, align 8, !tbaa !339
  %i.vy = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 1, ptr %i.vy, align 8, !tbaa !360
  %i.vz = call ptr @nk_font_atlas_add(ptr noundef nonnull %0, ptr noundef nonnull %5)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.f, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.an
  %.0 = phi ptr [ %i.vz, %bb.an ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @nk_font_atlas_add_compressed_base85(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !346  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !347
  %.not26 = icmp eq ptr %i.g, null
  br i1 %.not26, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !348
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !349
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.g, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.l = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i31 = icmp eq i8 %i.l, 0
  br i1 %.not4.i31, label %nk_strlen.exit, label %.lr.ph.i.preheader34

.lr.ph.i.preheader34:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.m = trunc i64 %strlen to i32
  %i.n = add i32 %i.m, 5
  %i.o = udiv i32 %i.n, 5
  %i.p = shl nuw nsw i32 %i.o, 2
  %i.q = zext nneg i32 %i.p to i64
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader34, %.lr.ph.i.preheader
  %.07.i.lcssa = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.preheader34 ] ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = tail call ptr %i.e(ptr %i.r, ptr noundef null, i64 noundef %.07.i.lcssa) #50 ; 4 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %nk_strlen.exit
  %i.t = load i8, ptr %1, align 1, !tbaa !56      ; 2 uses
  %.not21.i = icmp eq i8 %i.t, 0
  br i1 %.not21.i, label %nk_decode_85.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.f, %.lr.ph.i30
  %i.u = phi i8 [ %i.bc, %.lr.ph.i30 ], [ %i.t, %bb.f ] ; 2 uses
  %.023.i = phi ptr [ %i.bb, %.lr.ph.i30 ], [ %i.s, %bb.f ] ; 2 uses
end_hunk_2
