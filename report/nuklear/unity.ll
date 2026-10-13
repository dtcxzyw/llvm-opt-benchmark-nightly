Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_buffer_alloc:bb.a
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = sub i64 %i.ag, %i.ai
  br label %bb.g

bb.e:                                             ; preds = %.split67
  br i1 %.not19.i84, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = sub i64 0, %3
  %i.am = and i64 %i.ak, %i.al                    ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = sub i64 %i.ak, %i.am
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.ph = phi i64 [ 0, %bb.e ], [ %i.aj, %bb.d ], [ 0, %bb.c ], [ %i.ao, %bb.f ] ; 2 uses
  %phi.call.ph = phi ptr [ %i.ab, %bb.e ], [ %i.ah, %bb.d ], [ %i.ab, %bb.c ], [ %i.an, %bb.f ]
  %i.ap = add i64 %.0.ph, %2
  %i.aq = tail call i64 @llvm.usub.sat.i64(i64 %i.z, i64 %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !77 ; 2 uses
  %.not118 = icmp ugt i64 %i.aq, %i.as
  br i1 %.not118, label %bb.v, label %bb.h

bb.h:                                             ; preds = %.split, %bb.g
  %i.at = phi i64 [ %i.j, %.split ], [ %i.as, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load i32, ptr %i.au, align 8, !tbaa !68
  %.not = icmp eq i32 %i.av, 1
  br i1 %.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !684 ; 2 uses
  %.not81 = icmp eq ptr %i.ax, null
  br i1 %.not81, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !78
  %.not82 = icmp eq ptr %i.az, null
  br i1 %.not82, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
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
  %i.p = sub i64 %i.a, %i.b
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

vector.body193:                                   ; preds = %vector.ph191, %vector.body193
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
  %i.dp = sub i64 %i.b, %i.a
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

vector.body:                                      ; preds = %vector.ph, %vector.body
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
end_hunk_0
