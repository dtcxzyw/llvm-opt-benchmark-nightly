Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_params?download=true
inline.NumInlined: 308
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4ojph5local9param_qcd14check_validityERKNS0_9param_sizERKNS0_9param_codE:bb.a
  switch i8 %i.p, label %bb.b [
    i8 1, label %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit
    i8 3, label %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.q = getelementptr inbounds nuw i8, ptr %.tr.i, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  br label %tailrecurse.i

_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit: ; preds = %tailrecurse.i, %tailrecurse.i
  %i.s = getelementptr inbounds nuw i8, ptr %.tr.i, i64 10
  %i.t = load i8, ptr %i.s, align 2, !tbaa !60
  %i.u = icmp eq i8 %i.t, 1
  br label %tailrecurse.i134

tailrecurse.i134:                                 ; preds = %bb.e, %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit
  %.tr.i135 = phi ptr [ %2, %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit ], [ %i.ac, %bb.e ] ; 4 uses
  %i.v = load i8, ptr %.tr.i135, align 8, !tbaa !62
  switch i8 %i.v, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %tailrecurse.i134
  %i.w = getelementptr inbounds nuw i8, ptr %.tr.i135, i64 12
  %i.x = load i8, ptr %i.w, align 4, !tbaa !51
  br label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit

bb.d:                                             ; preds = %tailrecurse.i134
  %i.y = getelementptr inbounds nuw i8, ptr %.tr.i135, i64 12
  %i.z = load i8, ptr %i.y, align 4, !tbaa !51    ; 2 uses
  %i.aa = icmp slt i8 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr.i135, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67
  br label %tailrecurse.i134

_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit: ; preds = %tailrecurse.i134, %bb.d, %bb.c
  %.0.i136 = phi i8 [ %i.x, %bb.c ], [ %i.z, %bb.d ], [ 0, %tailrecurse.i134 ] ; 2 uses
  %i.ad = zext i8 %.0.i136 to i32                 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  %i.ag = zext i32 %i.o to i64
  %i.ah = getelementptr inbounds nuw [3 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35  ; 2 uses
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %narrow.i = add nuw i8 %i.aj, 1
  %i.ak = zext i8 %narrow.i to i32                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load i8, ptr %i.al, align 8, !tbaa !61  ; 2 uses
  %i.an = mul nuw nsw i32 %i.ad, 3
  %i.ao = add nuw nsw i32 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !138
  switch i8 %i.am, label %bb.v [
    i8 1, label %bb.r
    i8 0, label %bb.s
  ]

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.preheader, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.i.preheader.preheader ], [ %indvars.iv.next, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 6 uses
  %.0111220 = phi i32 [ 0, %.lr.ph.i.i.preheader.preheader ], [ %.2, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 6 uses
  %.0112219 = phi i8 [ 0, %.lr.ph.i.i.preheader.preheader ], [ %.2114, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 6 uses
  %.0115218 = phi i32 [ 0, %.lr.ph.i.i.preheader.preheader ], [ %.2117, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 7 uses
  %.0118217 = phi i32 [ 0, %.lr.ph.i.i.preheader.preheader ], [ %.2120, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 6 uses
  %.0121216 = phi i32 [ 65535, %.lr.ph.i.i.preheader.preheader ], [ %.2123, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 5 uses
  %.0124215 = phi i1 [ false, %.lr.ph.i.i.preheader.preheader ], [ %.1125, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 5 uses
  %.0126214 = phi i8 [ 1, %.lr.ph.i.i.preheader.preheader ], [ %.2128, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.f
  %.110.i.i = phi ptr [ %i.au, %bb.f ], [ %.0.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.110.i.i, i64 232
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !90
  %i.as = zext i16 %i.ar to i64
  %.not8.i.i = icmp eq i64 %indvars.iv, %i.as
  br i1 %.not8.i.i, label %_ZN4ojph5local9param_qcd7get_qccEj.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.110.i.i, i64 216
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !91 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZN4ojph5local9param_qcd7get_qccEj.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZN4ojph5local9param_qcd7get_qccEj.exit:          ; preds = %.lr.ph.i.i, %bb.f
  %i.av = phi ptr [ %.0.i.i, %bb.f ], [ %.110.i.i, %.lr.ph.i.i ]
  %i.aw = icmp eq ptr %i.av, %0
  br i1 %i.aw, label %bb.g, label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread

bb.g:                                             ; preds = %_ZN4ojph5local9param_qcd7get_qccEj.exit
  %i.ax = load i8, ptr %2, align 8, !tbaa !62
  %i.ay = icmp eq i8 %i.ax, 1
  %i.az = load ptr, ptr %i.l, align 8
  %.0.i137 = select i1 %i.ay, ptr %2, ptr %i.az   ; 3 uses
  %.not9.i = icmp eq ptr %.0.i137, null
  br i1 %.not9.i, label %_ZNK4ojph5local9param_cod7get_cocEj.exit, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %bb.g, %bb.h
  %.110.i = phi ptr [ %i.be, %bb.h ], [ %.0.i137, %bb.g ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.110.i, i64 80
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !63
  %i.bc = zext i16 %i.bb to i64
  %.not8.i = icmp eq i64 %indvars.iv, %i.bc
  br i1 %.not8.i, label %_ZNK4ojph5local9param_cod7get_cocEj.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i138
  %i.bd = getelementptr inbounds nuw i8, ptr %.110.i, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !64 ; 2 uses
  %.not.i139 = icmp eq ptr %i.be, null
  br i1 %.not.i139, label %_ZNK4ojph5local9param_cod7get_cocEj.exit, label %.lr.ph.i138, !llvm.loop !0

_ZNK4ojph5local9param_cod7get_cocEj.exit:         ; preds = %.lr.ph.i138, %bb.h, %bb.g
  %i.bf = phi ptr [ null, %bb.g ], [ %.110.i, %.lr.ph.i138 ], [ %.0.i137, %bb.h ] ; 4 uses
  %i.bg = icmp eq i32 %.0115218, 0
  br i1 %i.bg, label %tailrecurse.i140, label %bb.l

tailrecurse.i140:                                 ; preds = %_ZNK4ojph5local9param_cod7get_cocEj.exit, %bb.k
  %.tr.i141 = phi ptr [ %i.bo, %bb.k ], [ %i.bf, %_ZNK4ojph5local9param_cod7get_cocEj.exit ] ; 4 uses
  %i.bh = load i8, ptr %.tr.i141, align 8, !tbaa !62
  switch i8 %i.bh, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 [
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

bb.i:                                             ; preds = %tailrecurse.i140
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr.i141, i64 12
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !51
  br label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143

bb.j:                                             ; preds = %tailrecurse.i140
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr.i141, i64 12
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !51  ; 2 uses
  %i.bm = icmp slt i8 %i.bl, 0
  br i1 %i.bm, label %bb.k, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr.i141, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !67
  br label %tailrecurse.i140

_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143: ; preds = %tailrecurse.i140, %bb.j, %bb.i
  %.0.i142 = phi i8 [ %i.bj, %bb.i ], [ %i.bl, %bb.j ], [ 0, %tailrecurse.i140 ]
  %i.bp = zext i8 %.0.i142 to i32
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw [3 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !35  ; 2 uses
  %i.bt = and i8 %i.bs, 127
  %narrow.i144 = add nuw i8 %i.bt, 1
  %i.bu = zext i8 %narrow.i144 to i32
  %.lobit.a = lshr i8 %i.bs, 7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !61
  %i.bx = zext i8 %i.bw to i32
  %i.by = trunc i64 %indvars.iv to i32
  br label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread

bb.l:                                             ; preds = %_ZNK4ojph5local9param_cod7get_cocEj.exit
  %i.bz = trunc nuw i8 %.0126214 to i1
  br i1 %i.bz, label %tailrecurse.i145, label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread

tailrecurse.i145:                                 ; preds = %bb.l, %bb.o
  %.tr.i146 = phi ptr [ %i.ch, %bb.o ], [ %i.bf, %bb.l ] ; 4 uses
  %i.ca = load i8, ptr %.tr.i146, align 8, !tbaa !62
  switch i8 %i.ca, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 [
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.m:                                             ; preds = %tailrecurse.i145
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr.i146, i64 12
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !51
  br label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148

bb.n:                                             ; preds = %tailrecurse.i145
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr.i146, i64 12
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !51  ; 2 uses
  %i.cf = icmp slt i8 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr.i146, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !67
  br label %tailrecurse.i145

_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148: ; preds = %tailrecurse.i145, %bb.n, %bb.m
  %.0.i147 = phi i8 [ %i.cc, %bb.m ], [ %i.ce, %bb.n ], [ 0, %tailrecurse.i145 ]
  %i.ci = zext i8 %.0.i147 to i32
  %i.cj = icmp eq i32 %.0118217, %i.ci
  br i1 %i.cj, label %bb.p, label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread

bb.p:                                             ; preds = %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148
  %i.ck = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.cl = getelementptr inbounds nuw [3 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !35  ; 2 uses
  %i.cn = and i8 %i.cm, 127
  %narrow.i149 = add nuw i8 %i.cn, 1
  %i.co = zext i8 %narrow.i149 to i32
  %3 = icmp eq i32 %.0115218, %i.co
  %.lobit = lshr i8 %i.cm, 7
  %4 = icmp eq i8 %.0112219, %.lobit
  %or.cond.a = select i1 %3, i1 %4, i1 false
  br i1 %or.cond.a, label %bb.q, label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !61
  %i.cr = zext i8 %i.cq to i32
  %i.cs = icmp eq i32 %.0111220, %i.cr
  %i.ct = zext i1 %i.cs to i8
  br label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread

_ZN4ojph5local9param_qcd7get_qccEj.exit.thread:   ; preds = %_ZN4ojph5local9param_qcd7get_qccEj.exit, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143, %bb.q, %bb.p, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148, %bb.l
  %.2128 = phi i8 [ %i.ct, %bb.q ], [ %.0126214, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ %.0126214, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ 0, %bb.p ], [ 0, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ 0, %bb.l ] ; 2 uses
  %.1125 = phi i1 [ %.0124215, %bb.q ], [ %.0124215, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ true, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ %.0124215, %bb.p ], [ %.0124215, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ %.0124215, %bb.l ] ; 2 uses
  %.2123 = phi i32 [ %.0121216, %bb.q ], [ %i.by, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ %.0121216, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ %.0121216, %bb.p ], [ %.0121216, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ %.0121216, %bb.l ] ; 3 uses
  %.2120 = phi i32 [ %.0118217, %bb.q ], [ %i.bp, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ %.0118217, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ %.0118217, %bb.p ], [ %.0118217, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ %.0118217, %bb.l ]
  %.2117 = phi i32 [ %.0115218, %bb.q ], [ %i.bu, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ %.0115218, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ %.0115218, %bb.p ], [ %.0115218, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ %.0115218, %bb.l ]
  %.2114 = phi i8 [ %.0112219, %bb.q ], [ %.lobit.a, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ %.0112219, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ %.0112219, %bb.p ], [ %.0112219, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ %.0112219, %bb.l ]
  %.2 = phi i32 [ %.0111220, %bb.q ], [ %i.bx, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ %.0111220, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ %.0111220, %bb.p ], [ %.0111220, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ %.0111220, %bb.l ]
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.i.preheader, !llvm.loop !177

bb.r:                                             ; preds = %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit
  %i.cu = icmp ult i32 %i.o, 3
  %i.cv = and i1 %i.cu, %i.u
  tail call void @_ZN4ojph5local9param_qcd13set_rev_quantEjjb(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %i.ad, i32 noundef %i.ak, i1 noundef zeroext %i.cv)
  br label %bb.v

bb.s:                                             ; preds = %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !88
  %i.cy = fcmp oeq float %i.cx, -1.000000e+00
  br i1 %i.cy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cz = shl nuw i32 1, %i.ak
  %i.da = sitofp i32 %i.cz to float
  %i.db = fdiv float 1.000000e+00, %i.da
  store float %i.db, ptr %i.cw, align 4, !tbaa !88
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void @_ZN4ojph5local9param_qcd15set_irrev_quantEj(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %i.ad)
  br label %bb.v

bb.v:                                             ; preds = %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit, %bb.u, %bb.r
  br i1 %.0126.lcssa273, label %bb.ar, label %tailrecurse.i150

tailrecurse.i150:                                 ; preds = %bb.v, %bb.w
  %.tr.i151 = phi ptr [ %i.de, %bb.w ], [ %2, %bb.v ] ; 3 uses
  %i.dc = load i8, ptr %.tr.i151, align 8, !tbaa !62
  switch i8 %i.dc, label %bb.w [
    i8 1, label %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit152
    i8 3, label %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit152
  ]

bb.w:                                             ; preds = %tailrecurse.i150
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr.i151, i64 72
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !67
  br label %tailrecurse.i150

_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit152: ; preds = %tailrecurse.i150, %tailrecurse.i150
  %i.df = getelementptr inbounds nuw i8, ptr %.tr.i151, i64 10
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !60
  %i.dh = icmp eq i8 %i.dg, 1
  br i1 %.not230, label %.loopexit, label %.lr.ph227

.lr.ph227:                                        ; preds = %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit152
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %wide.trip.count246 = zext i16 %i.b to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph227, %bb.aq
  %indvars.iv243 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next244, %bb.aq ] ; 8 uses
  %i.dl = load i8, ptr %2, align 8, !tbaa !62
  %i.dm = icmp eq i8 %i.dl, 1
  %i.dn = load ptr, ptr %i.di, align 8
  %.0.i153 = select i1 %i.dm, ptr %2, ptr %i.dn   ; 3 uses
  %.not9.i154 = icmp eq ptr %.0.i153, null
  br i1 %.not9.i154, label %_ZNK4ojph5local9param_cod7get_cocEj.exit159, label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %bb.x, %bb.y
  %.110.i156 = phi ptr [ %i.ds, %bb.y ], [ %.0.i153, %bb.x ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.110.i156, i64 80
  %i.dp = load i16, ptr %i.do, align 8, !tbaa !63
  %i.dq = zext i16 %i.dp to i64
  %.not8.i157 = icmp eq i64 %indvars.iv243, %i.dq
  br i1 %.not8.i157, label %_ZNK4ojph5local9param_cod7get_cocEj.exit159, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i155
  %i.dr = getelementptr inbounds nuw i8, ptr %.110.i156, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !64 ; 2 uses
  %.not.i158 = icmp eq ptr %i.ds, null
  br i1 %.not.i158, label %_ZNK4ojph5local9param_cod7get_cocEj.exit159, label %.lr.ph.i155, !llvm.loop !0

_ZNK4ojph5local9param_cod7get_cocEj.exit159:      ; preds = %.lr.ph.i155, %bb.y, %bb.x
  %i.dt = phi ptr [ null, %bb.x ], [ %.110.i156, %.lr.ph.i155 ], [ %.0.i153, %bb.y ] ; 4 uses
  br label %tailrecurse.i160

tailrecurse.i160:                                 ; preds = %bb.ab, %_ZNK4ojph5local9param_cod7get_cocEj.exit159
  %.tr.i161 = phi ptr [ %i.dt, %_ZNK4ojph5local9param_cod7get_cocEj.exit159 ], [ %i.eb, %bb.ab ] ; 4 uses
  %i.du = load i8, ptr %.tr.i161, align 8, !tbaa !62
  switch i8 %i.du, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit163 [
    i8 1, label %bb.z
    i8 2, label %bb.aa
  ]

bb.z:                                             ; preds = %tailrecurse.i160
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr.i161, i64 12
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !51
  br label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit163

bb.aa:                                            ; preds = %tailrecurse.i160
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr.i161, i64 12
  %i.dy = load i8, ptr %i.dx, align 4, !tbaa !51  ; 2 uses
  %i.dz = icmp slt i8 %i.dy, 0
  br i1 %i.dz, label %bb.ab, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit163

bb.ab:                                            ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr.i161, i64 72
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !67
  br label %tailrecurse.i160

_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit163: ; preds = %tailrecurse.i160, %bb.aa, %bb.z
  %.0.i162 = phi i8 [ %i.dw, %bb.z ], [ %i.dy, %bb.aa ], [ 0, %tailrecurse.i160 ]
  %i.ec = icmp eq i8 %.0.i136, %.0.i162
  br i1 %i.ec, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit163
  %i.ed = load ptr, ptr %i.ae, align 8, !tbaa !33
  %i.ee = getelementptr inbounds nuw [3 x i8], ptr %i.ed, i64 %indvars.iv243
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !35  ; 2 uses
  %i.eg = and i8 %i.ef, 127
  %i.eh = icmp ne i8 %i.aj, %i.eg
  %i.ei = xor i8 %i.ef, %i.ai
  %i.ej = icmp slt i8 %i.ei, 0
  %or.cond204 = or i1 %i.eh, %i.ej
  br i1 %or.cond204, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !61
  %i.em = icmp eq i8 %i.am, %i.el
  br i1 %i.em, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit163
  %i.en = load i8, ptr %0, align 8, !tbaa !89
  %i.eo = icmp eq i8 %i.en, 1
  %i.ep = load ptr, ptr %i.dj, align 8
  %.0.i.i165 = select i1 %i.eo, ptr %0, ptr %i.ep ; 3 uses
  %.not9.i.i166 = icmp eq ptr %.0.i.i165, null
  br i1 %.not9.i.i166, label %_ZN4ojph5local9param_qcd14add_qcc_objectEj.exit, label %.lr.ph.i.i167

.lr.ph.i.i167:                                    ; preds = %bb.ae, %bb.af
  %.110.i.i168 = phi ptr [ %i.eu, %bb.af ], [ %.0.i.i165, %bb.ae ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.110.i.i168, i64 232
  %i.er = load i16, ptr %i.eq, align 8, !tbaa !90
  %i.es = zext i16 %i.er to i64
  %.not8.i.i169 = icmp eq i64 %indvars.iv243, %i.es
  br i1 %.not8.i.i169, label %_ZN4ojph5local9param_qcd7get_qccEj.exit171, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i167
  %i.et = getelementptr inbounds nuw i8, ptr %.110.i.i168, i64 216
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !91 ; 2 uses
  %.not.i.i170 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i170, label %_ZN4ojph5local9param_qcd7get_qccEj.exit171, label %.lr.ph.i.i167, !llvm.loop !2

_ZN4ojph5local9param_qcd7get_qccEj.exit171:       ; preds = %.lr.ph.i.i167, %bb.af
  %i.ev = phi ptr [ %.0.i.i165, %bb.af ], [ %.110.i.i168, %.lr.ph.i.i167 ] ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %0
  br i1 %i.ew, label %.preheader, label %_ZN4ojph5local9param_qcd14add_qcc_objectEj.exit

.preheader:                                       ; preds = %_ZN4ojph5local9param_qcd7get_qccEj.exit171, %.preheader
  %.0.i172 = phi ptr [ %i.ey, %.preheader ], [ %0, %_ZN4ojph5local9param_qcd7get_qccEj.exit171 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i172, i64 216
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !91 ; 2 uses
  %.not.i173 = icmp eq ptr %i.ey, null
  br i1 %.not.i173, label %bb.ag, label %.preheader, !llvm.loop !3

bb.ag:                                            ; preds = %.preheader
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i172, i64 216 ; 3 uses
  %i.fa = load ptr, ptr %i.dk, align 8, !tbaa !92 ; 11 uses
  %.not10.i = icmp eq ptr %i.fa, null
  br i1 %.not10.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.fa, ptr %i.ez, align 8, !tbaa !91
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 216 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !91
  store ptr %i.fc, ptr %i.dk, align 8, !tbaa !92
  %i.fd = trunc i64 %indvars.iv243 to i16
  store i8 2, ptr %i.fa, align 8, !tbaa !89
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  store i16 0, ptr %i.fe, align 2, !tbaa !93
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i8 0, ptr %i.ff, align 4, !tbaa !94
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 6
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(198) %i.fg, i8 0, i64 198, i1 false)
end_hunk_0
begin_hunk_1_@_ZN4ojph5local9param_qcd8read_qccEPNS_11infile_baseEj:bb.a
  %i.bl = load i32, ptr %i.au, align 8, !tbaa !138
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv.next52, %i.bm
  br i1 %i.bn, label %bb.p, label %.loopexit, !llvm.loop !226

bb.s:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.bo, align 8, !tbaa !138
  %i.bp = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !43
  %i.br = load ptr, ptr %i.bq, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef 327851, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1729, ptr noundef nonnull @.str.44)
  %i.bs = load i16, ptr %i.b, align 2, !tbaa !93
  %i.bt = zext i16 %i.bs to i32
  %.not40 = icmp eq i32 %i.ao, %i.bt
  br i1 %.not40, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.bw = load ptr, ptr %i.bv, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i32 noundef 327847, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1731, ptr noundef nonnull @.str.45)
  br label %.loopexit

bb.u:                                             ; preds = %bb.l
  %i.bx = load i16, ptr %i.b, align 2, !tbaa !93
  %i.by = zext i16 %i.bx to i32                   ; 2 uses
  %i.bz = sub nsw i32 %i.by, %i.ao                ; 3 uses
  %i.ca = lshr i32 %i.bz, 1                       ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !138
  %i.cc = icmp ugt i32 %i.bz, 195
  br i1 %i.cc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = and i32 %i.bz, 254
  %i.ce = add nuw nsw i32 %i.cd, %i.ao
  %.not38 = icmp eq i32 %i.ce, %i.by
  br i1 %.not38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cf = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.cg = load i16, ptr %i.b, align 2, !tbaa !93
  %i.ch = zext i16 %i.cg to i32
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !43
  %i.cj = load ptr, ptr %i.ci, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i32 noundef 327848, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1737, ptr noundef nonnull @.str.46, i32 noundef %i.ch)
  %.pre = load i32, ptr %i.cb, align 8, !tbaa !138
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ck = phi i32 [ %.pre, %bb.w ], [ %i.ca, %bb.v ]
  %.not47 = icmp eq i32 %i.ck, 0
  br i1 %.not47, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 6
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv ; 3 uses
  %i.cn = load ptr, ptr %1, align 8, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef i64 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.cm, i64 noundef 2)
  %.not39 = icmp eq i64 %i.cq, 2
  br i1 %.not39, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !43
  %i.ct = load ptr, ptr %i.cs, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i32 noundef 327849, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1741, ptr noundef nonnull @.str.42)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cu = load i16, ptr %i.cm, align 2, !tbaa !56
  %i.cv = call noundef i16 @llvm.bswap.i16(i16 %i.cu)
  store i16 %i.cv, ptr %i.cm, align 2, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cw = load i32, ptr %i.cb, align 8, !tbaa !138
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp samesign ult i64 %indvars.iv.next, %i.cx
  br i1 %i.cy, label %bb.y, label %.loopexit, !llvm.loop !227

bb.ab:                                            ; preds = %bb.l
  %i.cz = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !43
  %i.db = load ptr, ptr %i.da, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i32 noundef 327850, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1746, ptr noundef nonnull @.str.47)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %bb.r, %bb.x, %bb.o, %bb.t, %bb.s, %bb.ab
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local9param_nlt14check_validityERNS0_9param_sizE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.05.i = phi ptr [ %0, %bb.a ], [ %i.d, %bb.c ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 6
  %i.b = load i8, ptr %i.a, align 2, !tbaa !107, !range !108, !noundef !109
  %.not6.not.i.not = icmp eq i8 %i.b, 0
  br i1 %.not6.not.i.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK4ojph5local9param_nlt14is_any_enabledEv.exit, label %bb.b, !llvm.loop !11

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !107, !range !108, !noundef !109
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !106
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.e, align 2, !tbaa !107
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !106
  %i.m = icmp eq i8 %i.l, 3
  br i1 %i.m, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.o = load i16, ptr %i.n, align 4, !tbaa !31   ; 5 uses
  %.not123 = icmp eq i16 %i.o, 0
  br i1 %.not123, label %.loopexit, label %.preheader108.lr.ph

.preheader108.lr.ph:                              ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %wide.trip.count133 = zext i16 %i.o to i64
  br label %.preheader108

.preheader108:                                    ; preds = %.preheader108.lr.ph, %.critedge
  %indvars.iv131 = phi i64 [ 0, %.preheader108.lr.ph ], [ %indvars.iv.next132, %.critedge ] ; 5 uses
  %.069118 = phi i8 [ 0, %.preheader108.lr.ph ], [ %.1, %.critedge ] ; 5 uses
  %.070117 = phi i32 [ 0, %.preheader108.lr.ph ], [ %.171, %.critedge ] ; 6 uses
  %.072116 = phi i8 [ 1, %.preheader108.lr.ph ], [ %.173, %.critedge ] ; 3 uses
  br label %bb.i

._crit_edge:                                      ; preds = %.critedge
  %i.q = trunc nuw i8 %.173 to i1                 ; 2 uses
  %i.r = icmp ne i32 %.171, 0
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.i:                                             ; preds = %.preheader108, %bb.j
  %.06.i.i = phi ptr [ %i.w, %bb.j ], [ %0, %.preheader108 ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !101
  %i.u = zext i16 %i.t to i64
  %.not5.i.i = icmp eq i64 %indvars.iv131, %i.u
  br i1 %.not5.i.i, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !102  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit.thread, label %bb.i, !llvm.loop !4

_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit:  ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 6
  %i.y = load i8, ptr %i.x, align 2, !tbaa !107, !range !108, !noundef !109
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.o, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit.thread

_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit.thread: ; preds = %bb.j, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit
  %.not79 = icmp eq i32 %.070117, 0
  br i1 %.not79, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit.thread
  %i.aa = trunc nuw i8 %.072116 to i1
  br i1 %i.aa, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw [3 x i8], ptr %i.ab, i64 %indvars.iv131
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35  ; 2 uses
  %i.ae = and i8 %i.ad, 127
  %narrow.i = add nuw i8 %i.ae, 1
  %i.af = zext i8 %narrow.i to i32
  %i.ag = icmp eq i32 %.070117, %i.af
  br i1 %i.ag, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %.lobit = lshr i8 %i.ad, 7
  %2 = icmp eq i8 %.069118, %.lobit
  %3 = zext i1 %2 to i8
  br label %.critedge

bb.n:                                             ; preds = %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit.thread
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw [3 x i8], ptr %i.ah, i64 %indvars.iv131
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35  ; 2 uses
  %i.ak = and i8 %i.aj, 127
  %narrow.i82 = add nuw i8 %i.ak, 1
  %i.al = zext i8 %narrow.i82 to i32
  %.lobit.a = lshr i8 %i.aj, 7
  br label %.critedge

bb.o:                                             ; preds = %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw [3 x i8], ptr %i.am, i64 %indvars.iv131
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4
  store i8 %i.ao, ptr %i.ap, align 4, !tbaa !105
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.m, %bb.k, %bb.n, %bb.o
  %.173 = phi i8 [ %.072116, %bb.o ], [ %.072116, %bb.n ], [ 0, %bb.l ], [ %3, %bb.m ], [ 0, %bb.k ] ; 2 uses
  %.171 = phi i32 [ %.070117, %bb.o ], [ %i.al, %bb.n ], [ %.070117, %bb.l ], [ %.070117, %bb.m ], [ %.070117, %bb.k ] ; 3 uses
  %.1 = phi i8 [ %.069118, %bb.o ], [ %.lobit.a, %bb.n ], [ %.069118, %bb.l ], [ %.069118, %bb.m ], [ %.069118, %bb.k ] ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge, label %.preheader108, !llvm.loop !228

bb.p:                                             ; preds = %._crit_edge
  %i.aq = shl nuw i8 %.1, 7
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = trunc nuw i32 %.171 to i8
  %i.at = add i8 %i.as, -1
  %i.au = or i8 %i.at, %i.aq
  store i8 %i.au, ptr %i.ar, align 4, !tbaa !105
  br label %.loopexit

bb.q:                                             ; preds = %._crit_edge
  br i1 %i.q, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.q
  store i8 0, ptr %i.e, align 2, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %wide.trip.count138 = zext i16 %i.o to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.x
  %indvars.iv135 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next136, %bb.x ] ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.s
  %.06.i.i84 = phi ptr [ %i.bb, %bb.s ], [ %0, %.preheader ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i84, i64 2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !101
  %i.az = zext i16 %i.ay to i64
  %.not5.i.i85 = icmp eq i64 %indvars.iv135, %i.az
  br i1 %.not5.i.i85, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit88, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i84, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !102 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i86, label %.critedge81, label %bb.r, !llvm.loop !4

_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit88: ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i84, i64 6
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !107, !range !108, !noundef !109
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.x, label %bb.w

.critedge81:                                      ; preds = %bb.s, %.critedge81
  %.0.i = phi ptr [ %i.bg, %.critedge81 ], [ %0, %bb.s ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !102 ; 2 uses
  %.not.i89 = icmp eq ptr %i.bg, null
  br i1 %.not.i89, label %bb.t, label %.critedge81, !llvm.loop !5

bb.t:                                             ; preds = %.critedge81
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !103 ; 8 uses
  %.not11.i = icmp eq ptr %i.bi, null
  br i1 %.not11.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !102
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !102
  store ptr %i.bk, ptr %i.av, align 8, !tbaa !103
  store i16 6, ptr %i.bi, align 8, !tbaa !104
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i16 -1, ptr %i.bl, align 2, !tbaa !101
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i8 0, ptr %i.bm, align 4, !tbaa !105
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 5
  store i8 -1, ptr %i.bn, align 1, !tbaa !106
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  store i8 0, ptr %i.bo, align 2, !tbaa !107
  store ptr null, ptr %i.bj, align 8, !tbaa !102
  %.pre.i = load ptr, ptr %i.bh, align 8, !tbaa !102
  br label %_ZN4ojph5local9param_nlt10add_objectEj.exit

bb.v:                                             ; preds = %bb.t
  %i.bp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr null, ptr %i.bq, align 8, !tbaa !103
  store i16 6, ptr %i.bp, align 8, !tbaa !104
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i16 -1, ptr %i.br, align 2, !tbaa !101
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i8 0, ptr %i.bs, align 4, !tbaa !105
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 5
  store i8 -1, ptr %i.bt, align 1, !tbaa !106
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  store i8 0, ptr %i.bu, align 2, !tbaa !107
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr null, ptr %i.bv, align 8, !tbaa !102
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !102
  br label %_ZN4ojph5local9param_nlt10add_objectEj.exit

_ZN4ojph5local9param_nlt10add_objectEj.exit:      ; preds = %bb.u, %bb.v
  %i.bw = phi ptr [ %i.bp, %bb.v ], [ %.pre.i, %bb.u ] ; 2 uses
  %i.bx = trunc i64 %indvars.iv135 to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !101
  br label %bb.w

bb.w:                                             ; preds = %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit88, %_ZN4ojph5local9param_nlt10add_objectEj.exit
  %.066 = phi ptr [ %i.bw, %_ZN4ojph5local9param_nlt10add_objectEj.exit ], [ %.06.i.i84, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit88 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.066, i64 6
  store i8 1, ptr %i.bz, align 2, !tbaa !107
  %i.ca = getelementptr inbounds nuw i8, ptr %.066, i64 5
  store i8 3, ptr %i.ca, align 1, !tbaa !106
  %i.cb = load ptr, ptr %i.aw, align 8, !tbaa !33
  %i.cc = getelementptr inbounds nuw [3 x i8], ptr %i.cb, i64 %indvars.iv135
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %.066, i64 4
  store i8 %i.cd, ptr %i.ce, align 4, !tbaa !105
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit88
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %.loopexit.loopexit, label %.preheader, !llvm.loop !229

.thread:                                          ; preds = %bb.d, %bb.f, %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cg = load i16, ptr %i.cf, align 4, !tbaa !31 ; 3 uses
  %.not = icmp eq i16 %i.cg, 0
  br i1 %.not, label %.loopexit, label %.preheader109.lr.ph

.preheader109.lr.ph:                              ; preds = %.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40
  %wide.trip.count = zext i16 %i.cg to i64
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.lr.ph, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread
  %indvars.iv = phi i64 [ 0, %.preheader109.lr.ph ], [ %indvars.iv.next, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread ] ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %.preheader109, %bb.z
  %.06.i.i91 = phi ptr [ %i.cm, %bb.z ], [ %0, %.preheader109 ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i.i91, i64 2
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !101
  %i.ck = zext i16 %i.cj to i64
  %.not5.i.i92 = icmp eq i64 %indvars.iv, %i.ck
  br i1 %.not5.i.i92, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i91, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !102 ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i93, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread, label %bb.y, !llvm.loop !4

_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95: ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i.i91, i64 6
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !107, !range !108, !noundef !109
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.aa, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread

bb.aa:                                            ; preds = %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !33
  %i.cr = getelementptr inbounds nuw [3 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i91, i64 4
  store i8 %i.cs, ptr %i.ct, align 4, !tbaa !105
  br label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread

_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread: ; preds = %bb.z, %bb.aa, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader109, !llvm.loop !230

.loopexit.loopexit:                               ; preds = %bb.x
  %.pre = load i16, ptr %i.n, align 4, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread, %bb.h, %.loopexit.loopexit, %.thread, %bb.p, %bb.q
  %i.cu = phi i16 [ 0, %bb.h ], [ %.pre, %.loopexit.loopexit ], [ 0, %.thread ], [ %i.o, %bb.q ], [ %i.o, %bb.p ], [ %i.cg, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread ]
  %.0.in9.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.010.i = load ptr, ptr %.0.in9.i, align 8, !tbaa !102 ; 2 uses
  %.not11.i97 = icmp eq ptr %.010.i, null
  br i1 %.not11.i97, label %_ZN4ojph5local9param_nlt28trim_non_existing_componentsEj.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %bb.ad
  %.012.i = phi ptr [ %.0.i98, %bb.ad ], [ %.010.i, %.loopexit ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i, i64 6 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !107, !range !108, !noundef !109
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.lr.ph.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i, i64 2 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !101
  %.not8.i = icmp ugt i16 %i.cu, %i.cz
  br i1 %.not8.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.cv, align 2, !tbaa !107
  %i.da = tail call noundef ptr @_ZN4ojph8get_infoEv() ; 2 uses
  %i.db = load i16, ptr %i.cy, align 2, !tbaa !101
  %i.dc = zext i16 %i.db to i32
end_hunk_1
