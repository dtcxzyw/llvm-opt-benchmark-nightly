Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_local_search?download=true
inline.NumInlined: 887
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN3sat12local_search6importERKNS_6solverEb:bb.a
  %.not6.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorIN3sat12local_search10constraintELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %_ZNK6vectorIN3sat12local_search10constraintELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyIN3sat12local_search10constraintEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.v, %_ZSt8_DestroyIN3sat12local_search10constraintEEvPT_.exit.i.i.i.i.i ], [ %i.o, %_ZNK6vectorIN3sat12local_search10constraintELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN3sat12local_search10constraintEEvPT_.exit.i.i.i.i.i ], [ %i.m, %_ZNK6vectorIN3sat12local_search10constraintELb1EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3sat12local_search10constraintEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i93
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZSt8_DestroyIN3sat12local_search10constraintEEvPT_.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #25
  unreachable

_ZSt8_DestroyIN3sat12local_search10constraintEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i93
  %i.u = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 32
  %i.v = add i32 %.08.i.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i.i94 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i94, label %_ZN6vectorIN3sat12local_search10constraintELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i93, !llvm.loop !121

_ZN6vectorIN3sat12local_search10constraintELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyIN3sat12local_search10constraintEEvPT_.exit.i.i.i.i.i
  %.pre.i95 = load ptr, ptr %i.l, align 8, !tbaa !67
  br label %_ZN6vectorIN3sat12local_search10constraintELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorIN3sat12local_search10constraintELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorIN3sat12local_search10constraintELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorIN3sat12local_search10constraintELb1EjE4sizeEv.exit.i.i
  %i.w = phi ptr [ %.pre.i95, %_ZN6vectorIN3sat12local_search10constraintELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.m, %_ZNK6vectorIN3sat12local_search10constraintELb1EjE4sizeEv.exit.i.i ]
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4
  store i32 0, ptr %i.x, align 4, !tbaa !16
  br label %_ZN6vectorIN3sat12local_search10constraintELb1EjE5resetEv.exit

_ZN6vectorIN3sat12local_search10constraintELb1EjE5resetEv.exit: ; preds = %_ZN6vectorIN3sat12local_search10constraintELb1EjE16destroy_elementsEv.exit.i, %_ZN6vectorIN3sat12local_search8var_infoELb1EjE5resetEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12   ; 2 uses
  %.not.i96 = icmp eq ptr %i.z, null
  br i1 %.not.i96, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIN3sat12local_search10constraintELb1EjE5resetEv.exit
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  store i32 0, ptr %i.aa, align 4, !tbaa !16
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %_ZN6vectorIN3sat12local_search10constraintELb1EjE5resetEv.exit, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %.not.i97 = icmp eq ptr %i.ac, null
  br i1 %.not.i97, label %_ZN6vectorIjLb0EjE5resetEv.exit98, label %bb.e

bb.e:                                             ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i32 0, ptr %i.ad, align 4, !tbaa !16
  br label %_ZN6vectorIjLb0EjE5resetEv.exit98

_ZN6vectorIjLb0EjE5resetEv.exit98:                ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 3280
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !122 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN6vectorIN3sat12local_search8var_infoELb1EjE7reserveEj.exit, label %_ZNK3sat6solver8num_varsEv.exit

_ZNK3sat6solver8num_varsEv.exit:                  ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit98
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16 ; 6 uses
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !51  ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i, label %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.thread.i

_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i: ; preds = %_ZNK3sat6solver8num_varsEv.exit
  %.not.i100 = icmp eq i32 %i.ai, 0
  br i1 %.not.i100, label %_ZN6vectorIN3sat12local_search8var_infoELb1EjE7reserveEj.exit, label %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i.i99.preheader

_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.thread.i: ; preds = %_ZNK3sat6solver8num_varsEv.exit
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16 ; 2 uses
  %i.an = icmp ugt i32 %i.ai, %i.am
  br i1 %i.an, label %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i.i99.preheader, label %_ZN6vectorIN3sat12local_search8var_infoELb1EjE7reserveEj.exit

_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i.i99.preheader: ; preds = %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i, %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.aj, %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.am, %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i ] ; 2 uses
  br label %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i.i99

_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i.i99: ; preds = %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i.i99.preheader, %.noexc
  %i.ao = phi ptr [ %.pr.pre.i.i, %.noexc ], [ %.ph, %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i.i99.preheader ] ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE8capacityEv.exit.i.i

_ZNK6vectorIN3sat12local_search8var_infoELb1EjE8capacityEv.exit.i.i: ; preds = %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i.i99
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = icmp ugt i32 %i.ai, %i.ar
  br i1 %i.as, label %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE8capacityEv.exit.thread.i.i, label %bb.f

_ZNK6vectorIN3sat12local_search8var_infoELb1EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE8capacityEv.exit.i.i, %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i.i99
  invoke void @_ZN6vectorIN3sat12local_search8var_infoELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE8capacityEv.exit.thread.i.i
  %.pr.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !51
  br label %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i.i99, !llvm.loop !113

bb.f:                                             ; preds = %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE8capacityEv.exit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 -4
  store i32 %i.ai, ptr %i.at, align 4, !tbaa !16
  %i.au = zext i32 %i.ai to i64
  %i.av = getelementptr inbounds nuw [120 x i8], ptr %i.ao, i64 %i.au
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %i.ai
  br i1 %.not1218.i.i, label %_ZN6vectorIN3sat12local_search8var_infoELb1EjE7reserveEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.aw = zext i32 %.0.i16.i.i.ph to i64
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %i.ao, i64 %i.aw
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.019.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %i.ax, %.lr.ph.preheader.i.i ] ; 10 uses
  store i8 1, ptr %.019.i.i, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4
  store i32 50, ptr %i.ay, align 4, !tbaa !57
  %i.az = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  store i8 0, ptr %i.az, align 8, !tbaa !52
  %i.ba = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 12
  store i32 -2, ptr %i.ba, align 4, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  store i8 1, ptr %i.bb, align 8, !tbaa !61
  %i.bc = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 17
  store i8 0, ptr %i.bc, align 1, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.bd, i8 0, i64 56, i1 false)
  store <2 x double> <double 1.000000e-05, double 1.000000e+00>, ptr %i.be, align 8, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 120 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.bg, %i.av
  br i1 %.not12.i.i, label %_ZN6vectorIN3sat12local_search8var_infoELb1EjE7reserveEj.exit, label %.lr.ph.i.i, !llvm.loop !114

_ZN6vectorIN3sat12local_search8var_infoELb1EjE7reserveEj.exit: ; preds = %.lr.ph.i.i, %_ZN6vectorIjLb0EjE5resetEv.exit98, %bb.f, %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.thread.i, %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE4sizeEv.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !125
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !138
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !139
  store i32 %i.bm, ptr %i.bh, align 8, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !140, !range !10, !noundef !11 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.bo, ptr %i.bp, align 4, !tbaa !65
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !141, !range !10, !noundef !11
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !142
  %i.bt = trunc nuw i8 %i.bo to i1
  br i1 %i.bt, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN6vectorIN3sat12local_search8var_infoELb1EjE7reserveEj.exit
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !51  ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.loopexit, label %_ZN6vectorIN3sat12local_search8var_infoELb1EjE3endEv.exit

_ZN6vectorIN3sat12local_search8var_infoELb1EjE3endEv.exit: ; preds = %bb.g
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !16 ; 2 uses
  %.not152 = icmp eq i32 %i.bx, 0
  br i1 %.not152, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIN3sat12local_search8var_infoELb1EjE3endEv.exit
  %i.by = zext i32 %i.bx to i64
  %i.bz = mul nuw nsw i64 %i.by, 120
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 3432
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !97 ; 5 uses
  %i.cc = add nsw i64 %i.bz, -120                 ; 2 uses
  %i.cd = udiv i64 %i.cc, 120
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %xtraiter = and i64 %i.ce, 3                    ; 3 uses
  %i.cf = icmp ult i64 %i.cc, 360
  br i1 %i.cf, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ce, 576460752303423484
  br label %bb.i

bb.h:                                             ; preds = %_ZNK6vectorIN3sat12local_search8var_infoELb1EjE8capacityEv.exit.thread.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %.073154 = phi ptr [ %i.bu, %.lr.ph.new ], [ %i.de, %bb.i ] ; 5 uses
  %.074153 = phi i32 [ 0, %.lr.ph.new ], [ %i.cx, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.i ]
  %8 = or disjoint i32 %.074153, 1
  %i.ch = zext i32 %.074153 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = select i1 %i.ck, i32 98, i32 2
  %i.cm = getelementptr inbounds nuw i8, ptr %.073154, i64 4
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !57
  %9 = or disjoint i32 %.074153, 2
  %10 = zext i32 %8 to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 %10
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !8, !range !10, !noundef !11
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = select i1 %i.cp, i32 98, i32 2
  %i.cr = getelementptr inbounds nuw i8, ptr %.073154, i64 124
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !57
  %11 = or disjoint i32 %.074153, 3
  %12 = zext i32 %9 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 %12
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8, !range !10, !noundef !11
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = select i1 %i.cu, i32 98, i32 2
  %i.cw = getelementptr inbounds nuw i8, ptr %.073154, i64 244
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !57
  %i.cx = add i32 %.074153, 4                     ; 2 uses
  %i.cy = zext i32 %11 to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !8, !range !10, !noundef !11
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = select i1 %i.db, i32 98, i32 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.073154, i64 364
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %.073154, i64 480 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.073154.epil.init = phi ptr [ %i.bu, %.lr.ph ], [ %i.de, %.loopexit.loopexit.unr-lcssa ]
  %.074153.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.cx, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod221 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod221)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.073154.epil = phi ptr [ %.073154.epil.init, %.epil.preheader ], [ %i.dm, %bb.j ] ; 2 uses
  %.074153.epil = phi i32 [ %.074153.epil.init, %.epil.preheader ], [ %i.df, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.df = add i32 %.074153.epil, 1
  %i.dg = zext i32 %.074153.epil to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8, !range !10, !noundef !11
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = select i1 %i.dj, i32 98, i32 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.073154.epil, i64 4
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !57
  %i.dm = getelementptr inbounds nuw i8, ptr %.073154.epil, i64 120
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.j, !llvm.loop !143

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %bb.g, %_ZN6vectorIN3sat12local_search8var_infoELb1EjE3endEv.exit, %_ZN6vectorIN3sat12local_search8var_infoELb1EjE7reserveEj.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 3612
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !144
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.loopexit
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 3784
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !17 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -4
  br label %_ZNK3sat6solver15init_trail_sizeEv.exit

bb.m:                                             ; preds = %.loopexit
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 3856
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !259
  br label %_ZNK3sat6solver15init_trail_sizeEv.exit

_ZNK3sat6solver15init_trail_sizeEv.exit:          ; preds = %bb.l, %bb.m
  %.in = phi ptr [ %i.dv, %bb.m ], [ %i.dt, %bb.l ]
  %i.dw = load i32, ptr %.in, align 4, !tbaa !16  ; 2 uses
  %.not168 = icmp eq i32 %i.dw, 0
  br i1 %.not168, label %._crit_edge, label %.lr.ph156

.lr.ph156:                                        ; preds = %_ZNK3sat6solver15init_trail_sizeEv.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 3784
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 93
  %wide.trip.count = zext i32 %i.dw to i64
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN3sat12local_search10add_clauseEjPKNS_7literalE.exit, %bb.k, %_ZNK3sat6solver15init_trail_sizeEv.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 3264 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !260 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %._crit_edge163, label %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE4sizeEv.exit

_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE4sizeEv.exit: ; preds = %._crit_edge
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 -4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !16 ; 2 uses
  %.not169 = icmp eq i32 %i.ed, 0
  br i1 %.not169, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE4sizeEv.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 4
  %wide.trip.count174 = zext i32 %i.ed to i64
  br label %bb.w

bb.n:                                             ; preds = %.lr.ph156, %_ZN3sat12local_search10add_clauseEjPKNS_7literalE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next, %_ZN3sat12local_search10add_clauseEjPKNS_7literalE.exit ] ; 2 uses
  %i.ef = load ptr, ptr %i.dx, align 8, !tbaa !17
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv
  %.sroa.018.0.copyload.i = load i32, ptr %i.eg, align 4, !tbaa !16 ; 4 uses
  %i.eh = lshr i32 %.sroa.018.0.copyload.i, 1     ; 3 uses
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !51  ; 2 uses
  %i.ej = zext nneg i32 %i.eh to i64              ; 2 uses
  %i.ek = getelementptr inbounds nuw [120 x i8], ptr %i.ei, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i8, ptr %i.el, align 8, !tbaa !52, !range !10, !noundef !11
  %i.en = trunc nuw i8 %i.em to i1
  %i.eo = load i8, ptr %i.ek, align 8, !tbaa !56, !range !10, !noundef !11 ; 2 uses
  br i1 %i.en, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ep = trunc i32 %.sroa.018.0.copyload.i to i8
  %i.eq = and i8 %i.ep, 1
  %i.er = icmp eq i8 %i.eo, %i.eq
  br i1 %i.er, label %bb.p, label %_ZN3sat12local_search10add_clauseEjPKNS_7literalE.exit

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.dy, align 1, !tbaa !20
  br label %_ZN3sat12local_search10add_clauseEjPKNS_7literalE.exit

bb.q:                                             ; preds = %bb.n
  %i.es = trunc i32 %.sroa.018.0.copyload.i to i1 ; 2 uses
  %i.et = trunc i32 %.sroa.018.0.copyload.i to i8
  %i.eu = and i8 %i.et, 1
  %i.ev = icmp ne i8 %i.eo, %i.eu
  %i.ew = load i8, ptr %i.a, align 8, !range !10
  %i.ex = trunc nuw i8 %i.ew to i1
  %or.cond.i.i = select i1 %i.ev, i1 true, i1 %i.ex
  br i1 %or.cond.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN3sat12local_search12flip_walksatEj(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %i.eh)
          to label %.noexc132 unwind label %bb.v

.noexc132:                                        ; preds = %bb.r
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !51
  br label %bb.s

bb.s:                                             ; preds = %.noexc132, %bb.q
  %i.ey = phi ptr [ %.pre.i.i, %.noexc132 ], [ %i.ei, %bb.q ]
  %i.ez = xor i1 %i.es, true
  %i.fa = getelementptr inbounds nuw [120 x i8], ptr %i.ey, i64 %i.ej ; 4 uses
  %i.fb = zext i1 %i.ez to i8
  store i8 %i.fb, ptr %i.fa, align 8, !tbaa !56
  %i.fc = select i1 %i.es, i32 0, i32 100
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !57
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i8 1, ptr %i.fe, align 8, !tbaa !52
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 -2, ptr %i.ff, align 4, !tbaa !16
  %i.fg = load ptr, ptr %i.y, align 8, !tbaa !12  ; 4 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 -4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !16 ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 -8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !16
  %i.fm = icmp eq i32 %i.fj, %i.fl
  br i1 %i.fm, label %bb.u, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

bb.u:                                             ; preds = %bb.t, %bb.s
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %.noexc133 unwind label %bb.v

.noexc133:                                        ; preds = %bb.u
  %.pre.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !16
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i:        ; preds = %.noexc133, %bb.t
  %i.fn = phi i32 [ %.pre2.i.i.i, %.noexc133 ], [ %i.fj, %bb.t ] ; 2 uses
  %i.fo = phi ptr [ %.pre.i.i.i, %.noexc133 ], [ %i.fg, %bb.t ] ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -4
  %i.fq = zext i32 %i.fn to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fq
  store i32 %i.eh, ptr %i.fr, align 4, !tbaa !16
  %i.fs = add i32 %i.fn, 1
  store i32 %i.fs, ptr %i.fp, align 4, !tbaa !16
  br label %_ZN3sat12local_search10add_clauseEjPKNS_7literalE.exit

_ZN3sat12local_search10add_clauseEjPKNS_7literalE.exit: ; preds = %bb.o, %bb.p, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !261

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

._crit_edge163:                                   ; preds = %._crit_edge160, %._crit_edge, %_ZNK6vectorIS_IN3sat7watchedELb1EjELb1EjE4sizeEv.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 3208 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !262 ; 5 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %_ZNK6vectorIPN3sat6clauseELb0EjE4sizeEv.exit, label %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit

_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit:      ; preds = %._crit_edge163
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !16 ; 2 uses
  %i.fz = zext i32 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ga
  %.not76164 = icmp eq i32 %i.fy, 0
end_hunk_0
