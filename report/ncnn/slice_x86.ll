Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/slice_x86?download=true
inline.NumInlined: 110
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ncnn5SliceD2Ev:bb.a
  br label %_ZN4ncnn3MatD2Ev.exit1

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit1:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 0, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %.not.i2 = icmp eq ptr %i.r, null
  br i1 %.not.i2, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit1
  %i.s = atomicrmw add ptr %i.r, i32 -1 acq_rel, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17   ; 3 uses
  %.not3.i3 = icmp eq ptr %i.v, null
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.w)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.m, !inline_history !19

bb.k:                                             ; preds = %bb.i
  %.not.i6 = icmp eq ptr %i.w, null
  br i1 %.not.i6, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.w) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.h, %_ZN4ncnn3MatD2Ev.exit1, %bb.j, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 0, ptr %i.ad, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #9
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn9Slice_x86D0Ev(ptr noundef nonnull align 8 dereferenceable(356) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(356) dereferenceable(356) %0) #9
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 360) #15
  ret void
}

declare noundef i32 @_ZN4ncnn5Slice10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(356), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn9Slice_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(356) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 13 uses
  %i.b = alloca i32, align 4                      ; 16 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 18 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 19 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 4 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !21     ; 40 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25   ; 4 uses
  store i64 %i.o, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27   ; 8 uses
  store i32 %i.q, ptr %i.b, align 4, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18   ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 %i.m, i32 0
  %i.z = add nsw i32 %i.y, %i.w                   ; 5 uses
  %.not.i734 = icmp eq i32 %i.q, 0
  br i1 %.not.i734, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread, label %_ZNK4ncnn3Mat8elembitsEv.exit

_ZNK4ncnn3Mat8elembitsEv.exit:                    ; preds = %bb.a
  %.tr.i = trunc i64 %i.o to i32
  %i.aa = shl i32 %.tr.i, 3
  %i.ab = sdiv i32 %i.aa, %i.q
  %i.ac = icmp eq i32 %i.ab, 16
  br i1 %i.ac, label %bb.b, label %_ZNK4ncnn3Mat8elembitsEv.exit.thread

bb.b:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.ad = tail call noundef i32 @_ZNK4ncnn9Slice_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(356) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %.critedge623

_ZNK4ncnn3Mat8elembitsEv.exit.thread:             ; preds = %bb.a, %_ZNK4ncnn3Mat8elembitsEv.exit
  %i.ae = icmp eq i32 %i.m, 1
  br i1 %i.ae, label %bb.c, label %.critedge616

bb.c:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43
  %i.ah = mul nsw i32 %i.ag, %i.q                 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 2 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !21    ; 3 uses
  %.not596892.not = icmp eq ptr %i.aj, %i.ak
  br i1 %.not596892.not, label %.critedge616.thread, label %.lr.ph

.critedge616.thread:                              ; preds = %bb.c
  %i.al = icmp eq i32 %i.z, 0
  br label %bb.ao

.lr.ph:                                           ; preds = %bb.c
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 72
  %.not = icmp eq ptr %i.u, null
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.ar = sext i32 %i.q to i64
  %i.as = udiv i64 %i.o, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %i.au = phi i64 [ %i.ap, %.lr.ph ], [ %i.cw, %bb.k ] ; 2 uses
  %i.av = phi ptr [ %i.ak, %.lr.ph ], [ %i.cs, %bb.k ]
  %.0506894 = phi i32 [ 0, %.lr.ph ], [ %i.cp, %bb.k ] ; 5 uses
  %.0512893 = phi i64 [ 0, %.lr.ph ], [ %i.cq, %bb.k ] ; 6 uses
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = add nsw i64 %i.au, -1
  %i.ax = icmp eq i64 %.0512893, %i.aw
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = sub nsw i32 %i.ah, %.0506894
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0512893
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  %i.bc = select i1 %i.bb, i32 %i.ah, i32 0
  %i.bd = sub i32 %i.ba, %.0506894
  %i.be = add i32 %i.bd, %i.bc
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0512893
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !28 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, -233
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = sub nsw i32 %i.ah, %.0506894
  %i.bj = sext i32 %i.bi to i64
  %i.bk = sub i64 %i.au, %.0512893
  %i.bl = udiv i64 %i.bj, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.g
  %.0513 = phi i32 [ %i.ay, %bb.f ], [ %i.be, %bb.g ], [ %i.bm, %bb.i ], [ %i.bg, %bb.h ] ; 4 uses
  %i.bn = load i8, ptr %i.aq, align 1, !tbaa !45, !range !47, !noundef !48
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = and i32 %.0513, 3
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = and i1 %i.bq, %i.bo                     ; 3 uses
  %.0514 = select i1 %i.br, i32 4, i32 1
  %i.bs = select i1 %i.br, i64 2, i64 0
  %i.bt = shl i64 %i.as, %i.bs
  %i.bu = getelementptr inbounds nuw [72 x i8], ptr %i.av, i64 %.0512893 ; 6 uses
  %i.bv = sdiv i32 %.0513, 4
  %6 = select i1 %i.br, i32 %i.bv, i32 %.0513
  %i.bw = load ptr, ptr %i.at, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.bu, i32 noundef %6, i64 noundef %i.bt, i32 noundef %.0514, ptr noundef %i.bw)
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !18 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.critedge623, label %_ZNK4ncnn3Mat5emptyEv.exit742

_ZNK4ncnn3Mat5emptyEv.exit742:                    ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !50
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.ca, %i.cd
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.critedge623, label %bb.k

bb.k:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit742
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ch = sext i32 %.0506894 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !43
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !25
  %i.co = mul i64 %i.cn, %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr align 4 %i.ci, i64 %i.co, i1 false)
  %i.cp = add nsw i32 %.0513, %.0506894
  %i.cq = add nuw i64 %.0512893, 1                ; 2 uses
  %i.cr = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.cs = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = sdiv exact i64 %i.cv, 72                ; 2 uses
  %.not596 = icmp ult i64 %i.cq, %i.cw
  br i1 %.not596, label %bb.d, label %.critedge616, !llvm.loop !51

.critedge616:                                     ; preds = %bb.k, %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.cx = icmp eq i32 %i.m, 2                     ; 3 uses
  %i.cy = icmp eq i32 %i.z, 0                     ; 3 uses
  %or.cond = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.l, label %bb.ao

bb.l:                                             ; preds = %.critedge616
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !43 ; 13 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !53
  %i.dd = mul nsw i32 %i.q, %i.dc                 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !44 ; 2 uses
  %i.dg = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
  %.not598895.not = icmp eq ptr %i.df, %i.dg
  br i1 %.not598895.not, label %.critedge618.thread, label %.lr.ph898

.critedge618.thread:                              ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !27
  br label %._crit_edge

.lr.ph898:                                        ; preds = %bb.l
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 72
  %.not597 = icmp eq ptr %i.u, null
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.do = sext i32 %i.q to i64
  %i.dp = udiv i64 %i.o, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph898, %bb.t
  %i.dr = phi i64 [ %i.dm, %.lr.ph898 ], [ %i.fk, %bb.t ] ; 2 uses
  %i.ds = phi ptr [ %i.dg, %.lr.ph898 ], [ %i.fg, %bb.t ]
  %.0515897 = phi i32 [ 0, %.lr.ph898 ], [ %i.fd, %bb.t ] ; 4 uses
  %.0517896 = phi i64 [ 0, %.lr.ph898 ], [ %i.fe, %bb.t ] ; 6 uses
  br i1 %.not597, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = add nsw i64 %i.dr, -1
  %i.du = icmp eq i64 %.0517896, %i.dt
  br i1 %i.du, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dv = sub nsw i32 %i.dd, %.0515897
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0517896
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !28 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  %i.dz = select i1 %i.dy, i32 %i.dd, i32 0
  %i.ea = sub i32 %i.dx, %.0515897
  %i.eb = add i32 %i.ea, %i.dz
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0517896
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !28 ; 2 uses
  %i.ee = icmp eq i32 %i.ed, -233
  br i1 %i.ee, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ef = sub nsw i32 %i.dd, %.0515897
  %i.eg = sext i32 %i.ef to i64
  %i.eh = sub i64 %i.dr, %.0517896
  %i.ei = udiv i64 %i.eg, %i.eh
  %i.ej = trunc i64 %i.ei to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o, %bb.p
  %.0518 = phi i32 [ %i.dv, %bb.o ], [ %i.eb, %bb.p ], [ %i.ej, %bb.r ], [ %i.ed, %bb.q ] ; 4 uses
  %i.ek = load i8, ptr %i.dn, align 1, !tbaa !45, !range !47, !noundef !48
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = and i32 %.0518, 3
  %i.en = icmp eq i32 %i.em, 0
  %i.eo = and i1 %i.en, %i.el                     ; 3 uses
  %.0523 = select i1 %i.eo, i32 4, i32 1
  %i.ep = select i1 %i.eo, i64 2, i64 0
  %i.eq = shl i64 %i.dp, %i.ep
  %i.er = getelementptr inbounds nuw [72 x i8], ptr %i.ds, i64 %.0517896 ; 4 uses
  %i.es = sdiv i32 %.0518, 4
  %7 = select i1 %i.eo, i32 %i.es, i32 %.0518
  %i.et = load ptr, ptr %i.dq, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.er, i32 noundef %i.da, i32 noundef %7, i64 noundef %i.eq, i32 noundef %.0523, ptr noundef %i.et)
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !18
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %.critedge623, label %_ZNK4ncnn3Mat5emptyEv.exit741

_ZNK4ncnn3Mat5emptyEv.exit741:                    ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !50
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul i64 %i.ex, %i.fa
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.critedge623, label %bb.t

bb.t:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit741
  %i.fd = add nsw i32 %.0518, %.0515897
  %i.fe = add nuw i64 %.0517896, 1                ; 2 uses
  %i.ff = load ptr, ptr %i.de, align 8, !tbaa !44 ; 2 uses
  %i.fg = load ptr, ptr %2, align 8, !tbaa !21    ; 9 uses
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = sdiv exact i64 %i.fj, 72                ; 5 uses
  %.not598 = icmp ult i64 %i.fe, %i.fk
  br i1 %.not598, label %bb.m, label %.critedge618, !llvm.loop !54

.critedge618:                                     ; preds = %bb.t
  %i.fl = icmp eq ptr %i.ff, %i.fg
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !27 ; 3 uses
  br i1 %i.fl, label %._crit_edge, label %.lr.ph902.preheader

.lr.ph902.preheader:                              ; preds = %.critedge618
  %xtraiter = and i64 %i.fk, 3                    ; 3 uses
  %i.fo = icmp ult i64 %i.fk, 4
  br i1 %i.fo, label %.lr.ph902.epil.preheader, label %.lr.ph902.preheader.new

.lr.ph902.preheader.new:                          ; preds = %.lr.ph902.preheader
  %unroll_iter = and i64 %i.fk, -4
  br label %.lr.ph902

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph902
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph902.epil.preheader

.lr.ph902.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph902.preheader
  %.0524901.epil.init = phi i64 [ 0, %.lr.ph902.preheader ], [ %i.hb, %._crit_edge.loopexit.unr-lcssa ]
  %.0870899.epil.init = phi i32 [ %i.fn, %.lr.ph902.preheader ], [ %.sroa.speculated860.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1242 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1242)
  br label %.lr.ph902.epil

.lr.ph902.epil:                                   ; preds = %.lr.ph902.epil, %.lr.ph902.epil.preheader
  %.0524901.epil = phi i64 [ %i.fs, %.lr.ph902.epil ], [ %.0524901.epil.init, %.lr.ph902.epil.preheader ] ; 2 uses
  %.0870899.epil = phi i32 [ %.sroa.speculated860.epil, %.lr.ph902.epil ], [ %.0870899.epil.init, %.lr.ph902.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph902.epil ], [ 0, %.lr.ph902.epil.preheader ]
  %i.fp = getelementptr inbounds nuw [72 x i8], ptr %i.fg, i64 %.0524901.epil
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !28
  %.sroa.speculated860.epil = tail call i32 @llvm.smin.i32(i32 %i.fr, i32 %.0870899.epil) ; 2 uses
  %i.fs = add nuw i64 %.0524901.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph902.epil, !llvm.loop !55

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph902.epil, %.critedge618.thread, %.critedge618
  %.0870.lcssa = phi i32 [ %i.fn, %.critedge618 ], [ %i.di, %.critedge618.thread ], [ %.sroa.speculated860.3, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated860.epil, %.lr.ph902.epil ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !11 ; 2 uses
  %i.fw = load <2 x ptr>, ptr %i.k, align 8, !tbaa !57
  store <2 x ptr> %i.fw, ptr %4, align 16, !tbaa !57
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fy = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.fy, ptr %i.fx, align 16, !tbaa !25
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ga = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.ga, ptr %i.fz, align 8, !tbaa !27
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !17
  store ptr %i.gd, ptr %i.gb, align 16, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gf = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.gf, ptr %i.ge, align 8, !tbaa !28
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !50
  store i32 %i.gi, ptr %i.gg, align 8, !tbaa !50
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !20
  store i64 %i.gl, ptr %i.gj, align 16, !tbaa !20
  %.not.i754 = icmp eq ptr %i.fv, null
  br i1 %.not.i754, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.gm = atomicrmw add ptr %i.fv, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !28
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %._crit_edge, %bb.u
  %i.gn = phi i32 [ %i.q, %._crit_edge ], [ %.pre, %bb.u ]
  %i.go = icmp sgt i32 %i.gn, %.0870.lcssa
  br i1 %i.go, label %bb.v, label %bb.ae

.lr.ph902:                                        ; preds = %.lr.ph902, %.lr.ph902.preheader.new
  %.0524901 = phi i64 [ 0, %.lr.ph902.preheader.new ], [ %i.hb, %.lr.ph902 ] ; 5 uses
  %.0870899 = phi i32 [ %i.fn, %.lr.ph902.preheader.new ], [ %.sroa.speculated860.3, %.lr.ph902 ]
  %niter = phi i64 [ 0, %.lr.ph902.preheader.new ], [ %niter.next.3, %.lr.ph902 ]
  %i.gp = getelementptr inbounds nuw [72 x i8], ptr %i.fg, i64 %.0524901
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !28
  %.sroa.speculated860 = tail call i32 @llvm.smin.i32(i32 %i.gr, i32 %.0870899)
  %i.gs = getelementptr inbounds nuw [72 x i8], ptr %i.fg, i64 %.0524901
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 96
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !28
  %.sroa.speculated860.1 = tail call i32 @llvm.smin.i32(i32 %i.gu, i32 %.sroa.speculated860)
  %i.gv = getelementptr inbounds nuw [72 x i8], ptr %i.fg, i64 %.0524901
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 168
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !28
  %.sroa.speculated860.2 = tail call i32 @llvm.smin.i32(i32 %i.gx, i32 %.sroa.speculated860.1)
  %i.gy = getelementptr inbounds nuw [72 x i8], ptr %i.fg, i64 %.0524901
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 240
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !28
  %.sroa.speculated860.3 = tail call i32 @llvm.smin.i32(i32 %i.ha, i32 %.sroa.speculated860.2) ; 3 uses
  %i.hb = add nuw i64 %.0524901, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph902, !llvm.loop !58

bb.v:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.0870.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hc = load ptr, ptr %4, align 16, !tbaa !18
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %.critedge623.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit740

_ZNK4ncnn3Mat5emptyEv.exit740:                    ; preds = %bb.w
  %i.he = load i64, ptr %i.gj, align 16, !tbaa !20
  %i.hf = load i32, ptr %i.gg, align 8, !tbaa !50
  %i.hg = sext i32 %i.hf to i64
  %i.hh = mul i64 %i.he, %i.hg
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %.critedge623.critedge, label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load ptr, ptr %i.ft, align 8, !tbaa !11 ; 2 uses
  %.not.i667 = icmp eq ptr %i.hk, null
  br i1 %.not.i667, label %_ZN4ncnn3MatD2Ev.exit665, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hl = atomicrmw add ptr %i.hk, i32 -1 acq_rel, align 4
  %i.hm = icmp eq i32 %i.hl, 1
  br i1 %i.hm, label %bb.z, label %_ZN4ncnn3MatD2Ev.exit665

bb.z:                                             ; preds = %bb.y
  %i.hn = load ptr, ptr %i.gb, align 16, !tbaa !17 ; 3 uses
  %.not3.i668 = icmp eq ptr %i.hn, null
  %i.ho = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i668, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !9
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  invoke void %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef %i.ho)
          to label %_ZN4ncnn3MatD2Ev.exit665 unwind label %bb.ad, !inline_history !19

bb.ab:                                            ; preds = %bb.z
  %.not.i730 = icmp eq ptr %i.ho, null
  br i1 %.not.i730, label %_ZN4ncnn3MatD2Ev.exit665, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.ho) #9
  br label %_ZN4ncnn3MatD2Ev.exit665

bb.ad:                                            ; preds = %bb.aa
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit665:                         ; preds = %bb.y, %bb.x, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ds

bb.ae:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit740, %_ZN4ncnn3Mat6addrefEv.exit
  %i.hu = load ptr, ptr %i.de, align 8, !tbaa !44 ; 2 uses
  %i.hv = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not980 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not980, label %._crit_edge920, label %.lr.ph919

.lr.ph919:                                        ; preds = %bb.ae
end_hunk_0
begin_hunk_1_@_ZNK4ncnn9Slice_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.nw = landingpad { ptr, i32 }
          catch ptr null
  %i.nx = extractvalue { ptr, i32 } %i.nw, 0
  call void @__clang_call_terminate(ptr %i.nx) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit666:                         ; preds = %bb.ai, %._crit_edge920, %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge616.thread, %_ZN4ncnn3MatD2Ev.exit666, %.critedge616
  %i.ny = phi i1 [ %i.al, %.critedge616.thread ], [ %i.cy, %_ZN4ncnn3MatD2Ev.exit666 ], [ %i.cy, %.critedge616 ]
  %i.nz = phi i1 [ false, %.critedge616.thread ], [ %i.cx, %_ZN4ncnn3MatD2Ev.exit666 ], [ %i.cx, %.critedge616 ]
  %i.oa = icmp eq i32 %i.z, 1                     ; 3 uses
  %or.cond23 = select i1 %i.nz, i1 %i.oa, i1 false
  br i1 %or.cond23, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.ob = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.od = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !53
  store i32 %i.oe, ptr %i.c, align 4, !tbaa !28
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !44 ; 2 uses
  %i.oh = load ptr, ptr %2, align 8, !tbaa !21    ; 3 uses
  %.not600.not921.not = icmp eq ptr %i.og, %i.oh
  br i1 %.not600.not921.not, label %.critedge650, label %.lr.ph925

.lr.ph925:                                        ; preds = %bb.ap
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = sub i64 %i.oi, %i.oj
  %i.ol = sdiv exact i64 %i.ok, 72
  %.not599 = icmp eq ptr %i.u, null
  %i.om = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph925, %bb.ax
  %i.on = phi i64 [ %i.ol, %.lr.ph925 ], [ %i.qb, %bb.ax ] ; 2 uses
  %i.oo = phi ptr [ %i.oh, %.lr.ph925 ], [ %i.px, %bb.ax ]
  %.0569923 = phi i32 [ 0, %.lr.ph925 ], [ %i.pu, %bb.ax ] ; 4 uses
  %.0571922 = phi i64 [ 0, %.lr.ph925 ], [ %i.pv, %bb.ax ] ; 6 uses
  br i1 %.not599, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.op = add nsw i64 %i.on, -1
  %i.oq = icmp eq i64 %.0571922, %i.op
  br i1 %i.oq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.or = sub nsw i32 %i.oc, %.0569923
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0571922
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !28 ; 2 uses
  %i.ou = icmp slt i32 %i.ot, 0
  %i.ov = select i1 %i.ou, i32 %i.oc, i32 0
  %i.ow = sub i32 %i.ot, %.0569923
  %i.ox = add i32 %i.ow, %i.ov
  br label %bb.aw

bb.au:                                            ; preds = %bb.aq
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0571922
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !28 ; 2 uses
  %i.pa = icmp eq i32 %i.oz, -233
  br i1 %i.pa, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.pb = sub nsw i32 %i.oc, %.0569923
  %i.pc = sext i32 %i.pb to i64
  %i.pd = sub i64 %i.on, %.0571922
  %i.pe = udiv i64 %i.pc, %i.pd
  %i.pf = trunc i64 %i.pe to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.as, %bb.at
  %.0576 = phi i32 [ %i.or, %bb.as ], [ %i.ox, %bb.at ], [ %i.pf, %bb.av ], [ %i.oz, %bb.au ] ; 2 uses
  %i.pg = getelementptr inbounds nuw [72 x i8], ptr %i.oo, i64 %.0571922 ; 4 uses
  %i.ph = load i32, ptr %i.c, align 4, !tbaa !28
  %i.pi = load i64, ptr %i.a, align 8, !tbaa !26
  %i.pj = load i32, ptr %i.b, align 4, !tbaa !28
  %i.pk = load ptr, ptr %i.om, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pg, i32 noundef %.0576, i32 noundef %i.ph, i64 noundef %i.pi, i32 noundef %i.pj, ptr noundef %i.pk)
  %i.pl = load ptr, ptr %i.pg, align 8, !tbaa !18
  %i.pm = icmp eq ptr %i.pl, null
  br i1 %i.pm, label %.critedge627, label %_ZNK4ncnn3Mat5emptyEv.exit739

_ZNK4ncnn3Mat5emptyEv.exit739:                    ; preds = %bb.aw
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pg, i64 64
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !20
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pg, i64 56
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !50
  %i.pr = sext i32 %i.pq to i64
  %i.ps = mul i64 %i.po, %i.pr
  %i.pt = icmp eq i64 %i.ps, 0
  br i1 %i.pt, label %.critedge627, label %bb.ax

bb.ax:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit739
  %i.pu = add nsw i32 %.0576, %.0569923
  %i.pv = add nuw i64 %.0571922, 1                ; 2 uses
  %i.pw = load ptr, ptr %i.of, align 8, !tbaa !44
  %i.px = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = sub i64 %i.py, %i.pz
  %i.qb = sdiv exact i64 %i.qa, 72                ; 2 uses
  %.not600.not = icmp ult i64 %i.pv, %i.qb
  br i1 %.not600.not, label %bb.aq, label %.critedge650, !llvm.loop !79

.critedge650:                                     ; preds = %bb.ax, %bb.ap
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !80
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.qd)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn9Slice_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.k, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge650, %bb.ao
  %i.qe = icmp eq i32 %i.m, 3                     ; 2 uses
  %i.qf = icmp eq i32 %i.m, 4                     ; 3 uses
  %i.qg = add i32 %i.m, -3
  %or.cond25 = icmp ult i32 %i.qg, 2
  %or.cond27 = select i1 %or.cond25, i1 %i.ny, i1 false
  br i1 %or.cond27, label %bb.az, label %bb.cc

bb.az:                                            ; preds = %bb.ay
  %i.qh = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !43
  %i.qj = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !53
  %i.ql = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !81
  %i.qn = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !50
  %i.qp = load i32, ptr %i.b, align 4, !tbaa !28
  %i.qq = mul nsw i32 %i.qp, %i.qo                ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !44 ; 2 uses
  %i.qt = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
  %.not602926.not = icmp eq ptr %i.qs, %i.qt
  br i1 %.not602926.not, label %.critedge629.thread, label %.lr.ph930

.critedge629.thread:                              ; preds = %bb.az
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !27
  br label %._crit_edge935

.lr.ph930:                                        ; preds = %bb.az
  %i.qw = ptrtoint ptr %i.qs to i64
  %i.qx = ptrtoint ptr %i.qt to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = sdiv exact i64 %i.qy, 72
  %.not601 = icmp eq ptr %i.u, null
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.rb = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph930, %bb.bh
  %i.rc = phi i64 [ %i.qz, %.lr.ph930 ], [ %i.ta, %bb.bh ] ; 2 uses
  %i.rd = phi ptr [ %i.qt, %.lr.ph930 ], [ %i.sw, %bb.bh ]
  %.0573928 = phi i64 [ 0, %.lr.ph930 ], [ %i.su, %bb.bh ] ; 6 uses
  %.0574927 = phi i32 [ 0, %.lr.ph930 ], [ %i.st, %bb.bh ] ; 4 uses
  br i1 %.not601, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.re = add nsw i64 %i.rc, -1
  %i.rf = icmp eq i64 %.0573928, %i.re
  br i1 %i.rf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.rg = sub nsw i32 %i.qq, %.0574927
  br label %bb.bg

bb.bd:                                            ; preds = %bb.bb
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0573928
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !28 ; 2 uses
  %i.rj = icmp slt i32 %i.ri, 0
  %i.rk = select i1 %i.rj, i32 %i.qq, i32 0
  %i.rl = sub i32 %i.ri, %.0574927
  %i.rm = add i32 %i.rl, %i.rk
  br label %bb.bg

bb.be:                                            ; preds = %bb.ba
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0573928
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !28 ; 2 uses
  %i.rp = icmp eq i32 %i.ro, -233
  br i1 %i.rp, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.rq = sub nsw i32 %i.qq, %.0574927
  %i.rr = sext i32 %i.rq to i64
  %i.rs = sub i64 %i.rc, %.0573928
  %i.rt = udiv i64 %i.rr, %i.rs
  %i.ru = trunc i64 %i.rt to i32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bc, %bb.bd
  %.0572 = phi i32 [ %i.rg, %bb.bc ], [ %i.rm, %bb.bd ], [ %i.ru, %bb.bf ], [ %i.ro, %bb.be ] ; 4 uses
  %i.rv = load i8, ptr %i.ra, align 1, !tbaa !45, !range !47, !noundef !48
  %i.rw = trunc nuw i8 %i.rv to i1
  %i.rx = and i32 %.0572, 3
  %i.ry = icmp eq i32 %i.rx, 0
  %i.rz = and i1 %i.ry, %i.rw                     ; 3 uses
  %.0568 = select i1 %i.rz, i32 4, i32 1
  %i.sa = load i64, ptr %i.a, align 8, !tbaa !26
  %i.sb = load i32, ptr %i.b, align 4, !tbaa !28
  %i.sc = sext i32 %i.sb to i64
  %i.sd = udiv i64 %i.sa, %i.sc
  %i.se = select i1 %i.rz, i64 2, i64 0
  %i.sf = shl i64 %i.sd, %i.se
  %i.sg = getelementptr inbounds nuw [72 x i8], ptr %i.rd, i64 %.0573928 ; 5 uses
  %i.sh = sdiv i32 %.0572, 4
  %8 = select i1 %i.rz, i32 %i.sh, i32 %.0572
  %i.si = load ptr, ptr %i.rb, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.sg, i32 noundef %i.qi, i32 noundef %i.qk, i32 noundef %i.qm, i32 noundef %8, i64 noundef %i.sf, i32 noundef %.0568, ptr noundef %i.si)
  %i.sj = load ptr, ptr %i.sg, align 8, !tbaa !18
  %i.sk = icmp eq ptr %i.sj, null
  br i1 %i.sk, label %.critedge623, label %_ZNK4ncnn3Mat5emptyEv.exit738

_ZNK4ncnn3Mat5emptyEv.exit738:                    ; preds = %bb.bg
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sg, i64 64
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !20
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sg, i64 56
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !50
  %i.sp = sext i32 %i.so to i64
  %i.sq = mul i64 %i.sm, %i.sp
  %i.sr = icmp eq i64 %i.sq, 0
  br i1 %i.sr, label %.critedge623, label %bb.bh

bb.bh:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit738
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sg, i64 40
  store i32 %i.m, ptr %i.ss, align 8, !tbaa !24
  %i.st = add nsw i32 %.0572, %.0574927
  %i.su = add nuw i64 %.0573928, 1                ; 2 uses
  %i.sv = load ptr, ptr %i.qr, align 8, !tbaa !44 ; 2 uses
  %i.sw = load ptr, ptr %2, align 8, !tbaa !21    ; 9 uses
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = ptrtoint ptr %i.sw to i64
  %i.sz = sub i64 %i.sx, %i.sy
  %i.ta = sdiv exact i64 %i.sz, 72                ; 5 uses
  %.not602 = icmp ult i64 %i.su, %i.ta
  br i1 %.not602, label %bb.ba, label %.critedge629, !llvm.loop !82

.critedge629:                                     ; preds = %bb.bh
  %i.tb = icmp eq ptr %i.sv, %i.sw
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !27 ; 3 uses
  br i1 %i.tb, label %._crit_edge935, label %.lr.ph934.preheader

.lr.ph934.preheader:                              ; preds = %.critedge629
  %xtraiter1246 = and i64 %i.ta, 3                ; 3 uses
  %i.te = icmp ult i64 %i.ta, 4
  br i1 %i.te, label %.lr.ph934.epil.preheader, label %.lr.ph934.preheader.new

.lr.ph934.preheader.new:                          ; preds = %.lr.ph934.preheader
  %unroll_iter1251 = and i64 %i.ta, -4
  br label %.lr.ph934

._crit_edge935.loopexit.unr-lcssa:                ; preds = %.lr.ph934
  %lcmp.mod1248.not = icmp eq i64 %xtraiter1246, 0
  br i1 %lcmp.mod1248.not, label %._crit_edge935, label %.lr.ph934.epil.preheader

.lr.ph934.epil.preheader:                         ; preds = %._crit_edge935.loopexit.unr-lcssa, %.lr.ph934.preheader
  %.0565933.epil.init = phi i64 [ 0, %.lr.ph934.preheader ], [ %i.uq, %._crit_edge935.loopexit.unr-lcssa ]
  %.0872931.epil.init = phi i32 [ %i.td, %.lr.ph934.preheader ], [ %.sroa.speculated.3, %._crit_edge935.loopexit.unr-lcssa ]
  %lcmp.mod1250 = icmp ne i64 %xtraiter1246, 0
  call void @llvm.assume(i1 %lcmp.mod1250)
  br label %.lr.ph934.epil

.lr.ph934.epil:                                   ; preds = %.lr.ph934.epil, %.lr.ph934.epil.preheader
  %.0565933.epil = phi i64 [ %i.ti, %.lr.ph934.epil ], [ %.0565933.epil.init, %.lr.ph934.epil.preheader ] ; 2 uses
  %.0872931.epil = phi i32 [ %.sroa.speculated.epil, %.lr.ph934.epil ], [ %.0872931.epil.init, %.lr.ph934.epil.preheader ]
  %epil.iter1247 = phi i64 [ %epil.iter1247.next, %.lr.ph934.epil ], [ 0, %.lr.ph934.epil.preheader ]
  %i.tf = getelementptr inbounds nuw [72 x i8], ptr %i.sw, i64 %.0565933.epil
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 24
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !28
  %.sroa.speculated.epil = call i32 @llvm.smin.i32(i32 %i.th, i32 %.0872931.epil) ; 2 uses
  %i.ti = add nuw i64 %.0565933.epil, 1
  %epil.iter1247.next = add i64 %epil.iter1247, 1 ; 2 uses
  %epil.iter1247.cmp.not = icmp eq i64 %epil.iter1247.next, %xtraiter1246
  br i1 %epil.iter1247.cmp.not, label %._crit_edge935, label %.lr.ph934.epil, !llvm.loop !83

._crit_edge935:                                   ; preds = %._crit_edge935.loopexit.unr-lcssa, %.lr.ph934.epil, %.critedge629.thread, %.critedge629
  %.0872.lcssa = phi i32 [ %i.td, %.critedge629 ], [ %i.qv, %.critedge629.thread ], [ %.sroa.speculated.3, %._crit_edge935.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph934.epil ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.tj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !11 ; 2 uses
  %i.tm = load <2 x ptr>, ptr %i.k, align 8, !tbaa !57
  store <2 x ptr> %i.tm, ptr %5, align 16, !tbaa !57
  %i.tn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.to = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.to, ptr %i.tn, align 16, !tbaa !25
  %i.tp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.tq = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.tq, ptr %i.tp, align 8, !tbaa !27
  %i.tr = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !17
  store ptr %i.tt, ptr %i.tr, align 16, !tbaa !17
  %i.tu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.tv = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.tv, ptr %i.tu, align 8, !tbaa !28
  %i.tw = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.tx = load i32, ptr %i.qn, align 8, !tbaa !50
  store i32 %i.tx, ptr %i.tw, align 8, !tbaa !50
  %i.ty = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !20
  store i64 %i.ua, ptr %i.ty, align 16, !tbaa !20
  %.not.i755 = icmp eq ptr %i.tl, null
  br i1 %.not.i755, label %_ZN4ncnn3Mat6addrefEv.exit756, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge935
  %i.ub = atomicrmw add ptr %i.tl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit756

_ZN4ncnn3Mat6addrefEv.exit756:                    ; preds = %._crit_edge935, %bb.bi
  %i.uc = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ud = icmp sgt i32 %i.uc, %.0872.lcssa
  br i1 %i.ud, label %bb.bj, label %bb.bm

.lr.ph934:                                        ; preds = %.lr.ph934, %.lr.ph934.preheader.new
  %.0565933 = phi i64 [ 0, %.lr.ph934.preheader.new ], [ %i.uq, %.lr.ph934 ] ; 5 uses
  %.0872931 = phi i32 [ %i.td, %.lr.ph934.preheader.new ], [ %.sroa.speculated.3, %.lr.ph934 ]
  %niter1252 = phi i64 [ 0, %.lr.ph934.preheader.new ], [ %niter1252.next.3, %.lr.ph934 ]
  %i.ue = getelementptr inbounds nuw [72 x i8], ptr %i.sw, i64 %.0565933
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !28
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ug, i32 %.0872931)
  %i.uh = getelementptr inbounds nuw [72 x i8], ptr %i.sw, i64 %.0565933
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 96
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !28
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.uj, i32 %.sroa.speculated)
  %i.uk = getelementptr inbounds nuw [72 x i8], ptr %i.sw, i64 %.0565933
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 168
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !28
  %.sroa.speculated.2 = call i32 @llvm.smin.i32(i32 %i.um, i32 %.sroa.speculated.1)
  %i.un = getelementptr inbounds nuw [72 x i8], ptr %i.sw, i64 %.0565933
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 240
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !28
  %.sroa.speculated.3 = call i32 @llvm.smin.i32(i32 %i.up, i32 %.sroa.speculated.2) ; 3 uses
  %i.uq = add nuw i64 %.0565933, 4                ; 2 uses
  %niter1252.next.3 = add i64 %niter1252, 4       ; 2 uses
  %niter1252.ncmp.3 = icmp eq i64 %niter1252.next.3, %unroll_iter1251
  br i1 %niter1252.ncmp.3, label %._crit_edge935.loopexit.unr-lcssa, label %.lr.ph934, !llvm.loop !84

bb.bj:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit756
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.0872.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ur = load ptr, ptr %5, align 16, !tbaa !18
  %i.us = icmp eq ptr %i.ur, null
  br i1 %i.us, label %.critedge623.critedge652, label %_ZNK4ncnn3Mat5emptyEv.exit737

_ZNK4ncnn3Mat5emptyEv.exit737:                    ; preds = %bb.bk
  %i.ut = load i64, ptr %i.ty, align 16, !tbaa !20
  %i.uu = load i32, ptr %i.tw, align 8, !tbaa !50
  %i.uv = sext i32 %i.uu to i64
  %i.uw = mul i64 %i.ut, %i.uv
  %i.ux = icmp eq i64 %i.uw, 0
  br i1 %i.ux, label %.critedge623.critedge652, label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.uy = landingpad { ptr, i32 }
          cleanup
  %i.uz = load ptr, ptr %i.tj, align 8, !tbaa !11 ; 2 uses
  %.not.i699 = icmp eq ptr %i.uz, null
  br i1 %.not.i699, label %_ZN4ncnn3MatD2Ev.exit657, label %bb.bw

bb.bm:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit737, %_ZN4ncnn3Mat6addrefEv.exit756
  %i.va = load ptr, ptr %i.qr, align 8, !tbaa !44 ; 2 uses
  %i.vb = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not982 = icmp eq ptr %i.va, %i.vb
  br i1 %.not982, label %._crit_edge963, label %.lr.ph962

.lr.ph962:                                        ; preds = %bb.bm
  %i.vc = icmp eq i32 %.0872.lcssa, 1
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph962, %bb.bp
  %i.vd = phi ptr [ %i.vb, %.lr.ph962 ], [ %i.abt, %bb.bp ] ; 2 uses
  %i.ve = phi ptr [ %i.va, %.lr.ph962 ], [ %i.abu, %bb.bp ]
  %.0560960 = phi i64 [ 0, %.lr.ph962 ], [ %i.abv, %bb.bp ] ; 2 uses
  %.0561959 = phi i32 [ 0, %.lr.ph962 ], [ %.3564, %bb.bp ] ; 4 uses
  %i.vf = getelementptr inbounds nuw [72 x i8], ptr %i.vd, i64 %.0560960 ; 12 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 8            ; 2 uses
  %i.vi = icmp eq i32 %i.vh, 4
  %or.cond632 = select i1 %i.vc, i1 %i.vi, i1 false
  br i1 %or.cond632, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 44
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !43
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 48
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !53
  %i.vn = mul i32 %i.vm, %i.vk
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vf, i64 52
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !81
  %i.vq = mul i32 %i.vn, %i.vp                    ; 7 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vf, i64 56
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !50 ; 3 uses
  %i.vt = icmp sgt i32 %i.vs, 0
  br i1 %i.vt, label %.noexc752.lr.ph, label %.loopexit

.noexc752.lr.ph:                                  ; preds = %bb.bo
  %i.vu = load ptr, ptr %5, align 16, !tbaa !18, !noalias !85 ; 12 uses
  %i.vv = load i64, ptr %i.ty, align 16, !tbaa !20, !noalias !85 ; 6 uses
  %i.vw = load i64, ptr %i.tn, align 16, !tbaa !25, !noalias !85 ; 6 uses
  %factor.op.mul948 = mul i64 %i.vv, %i.vw        ; 4 uses
  %i.vx = load ptr, ptr %i.vf, align 8, !tbaa !18, !noalias !88 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vf, i64 64
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !20, !noalias !88 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNK4ncnn9Slice_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.akj = load ptr, ptr %i.aki, align 8
  invoke void %i.akj(ptr noundef nonnull align 8 dereferenceable(8) %i.akf, ptr noundef %i.akg)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.dr, !inline_history !19

bb.dp:                                            ; preds = %bb.dn
  %.not.i711 = icmp eq ptr %i.akg, null
  br i1 %.not.i711, label %_ZN4ncnn3MatD2Ev.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @free(ptr noundef nonnull %i.akg) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.dr:                                            ; preds = %bb.do
  %i.akk = landingpad { ptr, i32 }
          catch ptr null
  %i.akl = extractvalue { ptr, i32 } %i.akk, 0
  call void @__clang_call_terminate(ptr %i.akl) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.dm, %.critedge623.critedge652, %bb.do, %bb.dp, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %.critedge623

.critedge623:                                     ; preds = %bb.j, %_ZNK4ncnn3Mat5emptyEv.exit742, %_ZNK4ncnn3Mat5emptyEv.exit741, %bb.s, %bb.bg, %_ZNK4ncnn3Mat5emptyEv.exit738, %bb.cw, %.critedge655, %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit656, %.critedge648, %.critedge644, %.critedge639, %.critedge627, %bb.b
  %.31 = phi i32 [ %i.ad, %bb.b ], [ -100, %.critedge627 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit741 ], [ -100, %.critedge639 ], [ -100, %.critedge644 ], [ -100, %_ZN4ncnn3MatD2Ev.exit ], [ -100, %bb.bg ], [ -100, %_ZN4ncnn3MatD2Ev.exit656 ], [ 0, %bb.cw ], [ -100, %.critedge648 ], [ 0, %.critedge655 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit738 ], [ -100, %bb.s ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit742 ], [ -100, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.31

bb.ds:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit657, %_ZN4ncnn3MatD2Ev.exit665
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.uy, %_ZN4ncnn3MatD2Ev.exit657 ], [ %i.hj, %_ZN4ncnn3MatD2Ev.exit665 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn9Slice_x86C2Ev(ptr noundef nonnull align 8 dereferenceable(356) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5SliceC2Ev(ptr noundef nonnull align 8 dereferenceable(356) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn9Slice_x86E, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !113
  %i.b = invoke noundef i32 @_ZN4ncnn20cpu_support_x86_f16cEv()
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.e = zext i1 %i.c to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !114
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.f, align 4, !tbaa !115
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4ncnn5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(356) dereferenceable(356) %0) #9
  resume { ptr, i32 } %i.g
}

declare void @_ZN4ncnn5SliceC2Ev(ptr noundef nonnull align 8 dereferenceable(356)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn20cpu_support_x86_f16cEv() local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn9Slice_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(356) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 13 uses
  %i.b = alloca i32, align 4                      ; 16 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 18 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 19 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 4 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !21     ; 40 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25   ; 3 uses
  store i64 %i.o, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27   ; 6 uses
  store i32 %i.q, ptr %i.b, align 4, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18   ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 %i.m, i32 0
  %i.z = add nsw i32 %i.y, %i.w                   ; 5 uses
  %i.aa = icmp eq i32 %i.m, 1
  br i1 %i.aa, label %bb.b, label %.critedge612

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !43
  %i.ad = mul nsw i32 %i.ac, %i.q                 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !44 ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !21    ; 3 uses
  %.not592887.not = icmp eq ptr %i.af, %i.ag
  br i1 %.not592887.not, label %.critedge612.thread, label %.lr.ph

.critedge612.thread:                              ; preds = %bb.b
  %i.ah = icmp eq i32 %i.z, 0
  br label %bb.an

.lr.ph:                                           ; preds = %bb.b
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 72
  %.not = icmp eq ptr %i.u, null
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.an = sext i32 %i.q to i64
  %i.ao = udiv i64 %i.o, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %i.aq = phi i64 [ %i.al, %.lr.ph ], [ %i.cs, %bb.j ] ; 2 uses
  %i.ar = phi ptr [ %i.ag, %.lr.ph ], [ %i.co, %bb.j ]
  %.0480889 = phi i32 [ 0, %.lr.ph ], [ %i.cl, %bb.j ] ; 5 uses
  %.0482888 = phi i64 [ 0, %.lr.ph ], [ %i.cm, %bb.j ] ; 6 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = add nsw i64 %i.aq, -1
  %i.at = icmp eq i64 %.0482888, %i.as
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = sub nsw i32 %i.ad, %.0480889
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0482888
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !28 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  %i.ay = select i1 %i.ax, i32 %i.ad, i32 0
  %i.az = sub i32 %i.aw, %.0480889
  %i.ba = add i32 %i.az, %i.ay
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0482888
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !28 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, -233
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = sub nsw i32 %i.ad, %.0480889
  %i.bf = sext i32 %i.be to i64
  %i.bg = sub i64 %i.aq, %.0482888
  %i.bh = udiv i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f
  %.0509 = phi i32 [ %i.au, %bb.e ], [ %i.ba, %bb.f ], [ %i.bi, %bb.h ], [ %i.bc, %bb.g ] ; 4 uses
  %i.bj = load i8, ptr %i.am, align 1, !tbaa !45, !range !47, !noundef !48
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = and i32 %.0509, 3
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = and i1 %i.bm, %i.bk                     ; 3 uses
  %.0510 = select i1 %i.bn, i32 4, i32 1
  %i.bo = select i1 %i.bn, i64 2, i64 0
  %i.bp = shl i64 %i.ao, %i.bo
  %i.bq = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %.0482888 ; 6 uses
  %i.br = sdiv i32 %.0509, 4
  %6 = select i1 %i.bn, i32 %i.br, i32 %.0509
  %i.bs = load ptr, ptr %i.ap, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.bq, i32 noundef %6, i64 noundef %i.bp, i32 noundef %.0510, ptr noundef %i.bs)
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !18 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.critedge619, label %_ZNK4ncnn3Mat5emptyEv.exit737

_ZNK4ncnn3Mat5emptyEv.exit737:                    ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !50
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul i64 %i.bw, %i.bz
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.critedge619, label %bb.j

bb.j:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit737
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.cd = sext i32 %.0480889 to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 44
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !43
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !25
  %i.ck = mul i64 %i.cj, %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bt, ptr align 2 %i.ce, i64 %i.ck, i1 false)
  %i.cl = add nsw i32 %.0509, %.0480889
  %i.cm = add nuw i64 %.0482888, 1                ; 2 uses
  %i.cn = load ptr, ptr %i.ae, align 8, !tbaa !44
  %i.co = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 72                ; 2 uses
  %.not592 = icmp ult i64 %i.cm, %i.cs
  br i1 %.not592, label %bb.c, label %.critedge612, !llvm.loop !116

.critedge612:                                     ; preds = %bb.j, %bb.a
  %i.ct = icmp eq i32 %i.m, 2                     ; 3 uses
  %i.cu = icmp eq i32 %i.z, 0                     ; 3 uses
  %or.cond = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond, label %bb.k, label %bb.an

bb.k:                                             ; preds = %.critedge612
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !43 ; 13 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !53
  %i.cz = mul nsw i32 %i.q, %i.cy                 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !44 ; 2 uses
  %i.dc = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
  %.not594890.not = icmp eq ptr %i.db, %i.dc
  br i1 %.not594890.not, label %.critedge614.thread, label %.lr.ph893

.critedge614.thread:                              ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !27
  br label %._crit_edge

.lr.ph893:                                        ; preds = %bb.k
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 72
  %.not593 = icmp eq ptr %i.u, null
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.dk = sext i32 %i.q to i64
  %i.dl = udiv i64 %i.o, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph893, %bb.s
  %i.dn = phi i64 [ %i.di, %.lr.ph893 ], [ %i.fg, %bb.s ] ; 2 uses
  %i.do = phi ptr [ %i.dc, %.lr.ph893 ], [ %i.fc, %bb.s ]
  %.0511892 = phi i32 [ 0, %.lr.ph893 ], [ %i.ez, %bb.s ] ; 4 uses
  %.0513891 = phi i64 [ 0, %.lr.ph893 ], [ %i.fa, %bb.s ] ; 6 uses
  br i1 %.not593, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = add nsw i64 %i.dn, -1
  %i.dq = icmp eq i64 %.0513891, %i.dp
  br i1 %i.dq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dr = sub nsw i32 %i.cz, %.0511892
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0513891
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !28 ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  %i.dv = select i1 %i.du, i32 %i.cz, i32 0
  %i.dw = sub i32 %i.dt, %.0511892
  %i.dx = add i32 %i.dw, %i.dv
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0513891
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !28 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, -233
  br i1 %i.ea, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eb = sub nsw i32 %i.cz, %.0511892
  %i.ec = sext i32 %i.eb to i64
  %i.ed = sub i64 %i.dn, %.0513891
  %i.ee = udiv i64 %i.ec, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n, %bb.o
  %.0514 = phi i32 [ %i.dr, %bb.n ], [ %i.dx, %bb.o ], [ %i.ef, %bb.q ], [ %i.dz, %bb.p ] ; 4 uses
  %i.eg = load i8, ptr %i.dj, align 1, !tbaa !45, !range !47, !noundef !48
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = and i32 %.0514, 3
  %i.ej = icmp eq i32 %i.ei, 0
  %i.ek = and i1 %i.ej, %i.eh                     ; 3 uses
  %.0519 = select i1 %i.ek, i32 4, i32 1
  %i.el = select i1 %i.ek, i64 2, i64 0
  %i.em = shl i64 %i.dl, %i.el
  %i.en = getelementptr inbounds nuw [72 x i8], ptr %i.do, i64 %.0513891 ; 4 uses
  %i.eo = sdiv i32 %.0514, 4
  %7 = select i1 %i.ek, i32 %i.eo, i32 %.0514
  %i.ep = load ptr, ptr %i.dm, align 8, !tbaa !49
  tail call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.en, i32 noundef %i.cw, i32 noundef %7, i64 noundef %i.em, i32 noundef %.0519, ptr noundef %i.ep)
  %i.eq = load ptr, ptr %i.en, align 8, !tbaa !18
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %.critedge619, label %_ZNK4ncnn3Mat5emptyEv.exit736

_ZNK4ncnn3Mat5emptyEv.exit736:                    ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.et = load i64, ptr %i.es, align 8, !tbaa !20
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !50
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul i64 %i.et, %i.ew
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %.critedge619, label %bb.s

bb.s:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit736
  %i.ez = add nsw i32 %.0514, %.0511892
  %i.fa = add nuw i64 %.0513891, 1                ; 2 uses
  %i.fb = load ptr, ptr %i.da, align 8, !tbaa !44 ; 2 uses
  %i.fc = load ptr, ptr %2, align 8, !tbaa !21    ; 9 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = sdiv exact i64 %i.ff, 72                ; 5 uses
  %.not594 = icmp ult i64 %i.fa, %i.fg
  br i1 %.not594, label %bb.l, label %.critedge614, !llvm.loop !117

.critedge614:                                     ; preds = %bb.s
  %i.fh = icmp eq ptr %i.fb, %i.fc
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !27 ; 3 uses
  br i1 %i.fh, label %._crit_edge, label %.lr.ph897.preheader

.lr.ph897.preheader:                              ; preds = %.critedge614
  %xtraiter = and i64 %i.fg, 3                    ; 3 uses
  %i.fk = icmp ult i64 %i.fg, 4
  br i1 %i.fk, label %.lr.ph897.epil.preheader, label %.lr.ph897.preheader.new

.lr.ph897.preheader.new:                          ; preds = %.lr.ph897.preheader
  %unroll_iter = and i64 %i.fg, -4
  br label %.lr.ph897

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph897
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph897.epil.preheader

.lr.ph897.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph897.preheader
  %.0520896.epil.init = phi i64 [ 0, %.lr.ph897.preheader ], [ %i.gx, %._crit_edge.loopexit.unr-lcssa ]
  %.0865894.epil.init = phi i32 [ %i.fj, %.lr.ph897.preheader ], [ %.sroa.speculated855.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1236 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1236)
  br label %.lr.ph897.epil

.lr.ph897.epil:                                   ; preds = %.lr.ph897.epil, %.lr.ph897.epil.preheader
  %.0520896.epil = phi i64 [ %i.fo, %.lr.ph897.epil ], [ %.0520896.epil.init, %.lr.ph897.epil.preheader ] ; 2 uses
  %.0865894.epil = phi i32 [ %.sroa.speculated855.epil, %.lr.ph897.epil ], [ %.0865894.epil.init, %.lr.ph897.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph897.epil ], [ 0, %.lr.ph897.epil.preheader ]
  %i.fl = getelementptr inbounds nuw [72 x i8], ptr %i.fc, i64 %.0520896.epil
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !28
  %.sroa.speculated855.epil = tail call i32 @llvm.smin.i32(i32 %i.fn, i32 %.0865894.epil) ; 2 uses
  %i.fo = add nuw i64 %.0520896.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph897.epil, !llvm.loop !118

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph897.epil, %.critedge614.thread, %.critedge614
  %.0865.lcssa = phi i32 [ %i.fj, %.critedge614 ], [ %i.de, %.critedge614.thread ], [ %.sroa.speculated855.3, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated855.epil, %.lr.ph897.epil ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !11 ; 2 uses
  %i.fs = load <2 x ptr>, ptr %i.k, align 8, !tbaa !57
  store <2 x ptr> %i.fs, ptr %4, align 16, !tbaa !57
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fu = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.fu, ptr %i.ft, align 16, !tbaa !25
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fw = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.fw, ptr %i.fv, align 8, !tbaa !27
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !17
  store ptr %i.fz, ptr %i.fx, align 16, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gb = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.gb, ptr %i.ga, align 8, !tbaa !28
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !50
  store i32 %i.ge, ptr %i.gc, align 8, !tbaa !50
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !20
  store i64 %i.gh, ptr %i.gf, align 16, !tbaa !20
  %.not.i749 = icmp eq ptr %i.fr, null
  br i1 %.not.i749, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.gi = atomicrmw add ptr %i.fr, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !28
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %._crit_edge, %bb.t
  %i.gj = phi i32 [ %i.q, %._crit_edge ], [ %.pre, %bb.t ]
  %i.gk = icmp sgt i32 %i.gj, %.0865.lcssa
  br i1 %i.gk, label %bb.u, label %bb.ad

.lr.ph897:                                        ; preds = %.lr.ph897, %.lr.ph897.preheader.new
  %.0520896 = phi i64 [ 0, %.lr.ph897.preheader.new ], [ %i.gx, %.lr.ph897 ] ; 5 uses
  %.0865894 = phi i32 [ %i.fj, %.lr.ph897.preheader.new ], [ %.sroa.speculated855.3, %.lr.ph897 ]
  %niter = phi i64 [ 0, %.lr.ph897.preheader.new ], [ %niter.next.3, %.lr.ph897 ]
  %i.gl = getelementptr inbounds nuw [72 x i8], ptr %i.fc, i64 %.0520896
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !28
  %.sroa.speculated855 = tail call i32 @llvm.smin.i32(i32 %i.gn, i32 %.0865894)
  %i.go = getelementptr inbounds nuw [72 x i8], ptr %i.fc, i64 %.0520896
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 96
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !28
  %.sroa.speculated855.1 = tail call i32 @llvm.smin.i32(i32 %i.gq, i32 %.sroa.speculated855)
  %i.gr = getelementptr inbounds nuw [72 x i8], ptr %i.fc, i64 %.0520896
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 168
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !28
  %.sroa.speculated855.2 = tail call i32 @llvm.smin.i32(i32 %i.gt, i32 %.sroa.speculated855.1)
  %i.gu = getelementptr inbounds nuw [72 x i8], ptr %i.fc, i64 %.0520896
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 240
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !28
  %.sroa.speculated855.3 = tail call i32 @llvm.smin.i32(i32 %i.gw, i32 %.sroa.speculated855.2) ; 3 uses
  %i.gx = add nuw i64 %.0520896, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph897, !llvm.loop !119

bb.u:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.0865.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gy = load ptr, ptr %4, align 16, !tbaa !18
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %.critedge619.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit735

_ZNK4ncnn3Mat5emptyEv.exit735:                    ; preds = %bb.v
  %i.ha = load i64, ptr %i.gf, align 16, !tbaa !20
  %i.hb = load i32, ptr %i.gc, align 8, !tbaa !50
  %i.hc = sext i32 %i.hb to i64
  %i.hd = mul i64 %i.ha, %i.hc
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %.critedge619.critedge, label %bb.ad

bb.w:                                             ; preds = %bb.u
  %i.hf = landingpad { ptr, i32 }
          cleanup
  %i.hg = load ptr, ptr %i.fp, align 8, !tbaa !11 ; 2 uses
  %.not.i663 = icmp eq ptr %i.hg, null
  br i1 %.not.i663, label %_ZN4ncnn3MatD2Ev.exit661, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hh = atomicrmw add ptr %i.hg, i32 -1 acq_rel, align 4
  %i.hi = icmp eq i32 %i.hh, 1
  br i1 %i.hi, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit661

bb.y:                                             ; preds = %bb.x
  %i.hj = load ptr, ptr %i.fx, align 16, !tbaa !17 ; 3 uses
  %.not3.i664 = icmp eq ptr %i.hj, null
  %i.hk = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i664, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !9
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  invoke void %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %i.hj, ptr noundef %i.hk)
          to label %_ZN4ncnn3MatD2Ev.exit661 unwind label %bb.ac, !inline_history !19

bb.aa:                                            ; preds = %bb.y
  %.not.i726 = icmp eq ptr %i.hk, null
  br i1 %.not.i726, label %_ZN4ncnn3MatD2Ev.exit661, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.hk) #9
  br label %_ZN4ncnn3MatD2Ev.exit661

bb.ac:                                            ; preds = %bb.z
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit661:                         ; preds = %bb.x, %bb.w, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.dr

bb.ad:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit735, %_ZN4ncnn3Mat6addrefEv.exit
  %i.hq = load ptr, ptr %i.da, align 8, !tbaa !44 ; 2 uses
  %i.hr = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not975 = icmp eq ptr %i.hq, %i.hr
  br i1 %.not975, label %._crit_edge915, label %.lr.ph914

.lr.ph914:                                        ; preds = %bb.ad
end_hunk_2
begin_hunk_3_@_ZNK4ncnn9Slice_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.ns = landingpad { ptr, i32 }
          catch ptr null
  %i.nt = extractvalue { ptr, i32 } %i.ns, 0
  call void @__clang_call_terminate(ptr %i.nt) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit662:                         ; preds = %bb.ah, %._crit_edge915, %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.an

bb.an:                                            ; preds = %.critedge612.thread, %_ZN4ncnn3MatD2Ev.exit662, %.critedge612
  %i.nu = phi i1 [ %i.ah, %.critedge612.thread ], [ %i.cu, %_ZN4ncnn3MatD2Ev.exit662 ], [ %i.cu, %.critedge612 ]
  %i.nv = phi i1 [ false, %.critedge612.thread ], [ %i.ct, %_ZN4ncnn3MatD2Ev.exit662 ], [ %i.ct, %.critedge612 ]
  %i.nw = icmp eq i32 %i.z, 1                     ; 3 uses
  %or.cond23 = select i1 %i.nv, i1 %i.nw, i1 false
  br i1 %or.cond23, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %bb.an
  %i.nx = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !43 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.nz = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !53
  store i32 %i.oa, ptr %i.c, align 4, !tbaa !28
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !44 ; 2 uses
  %i.od = load ptr, ptr %2, align 8, !tbaa !21    ; 3 uses
  %.not596.not916.not = icmp eq ptr %i.oc, %i.od
  br i1 %.not596.not916.not, label %.critedge646, label %.lr.ph920

.lr.ph920:                                        ; preds = %bb.ao
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of
  %i.oh = sdiv exact i64 %i.og, 72
  %.not595 = icmp eq ptr %i.u, null
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph920, %bb.aw
  %i.oj = phi i64 [ %i.oh, %.lr.ph920 ], [ %i.px, %bb.aw ] ; 2 uses
  %i.ok = phi ptr [ %i.od, %.lr.ph920 ], [ %i.pt, %bb.aw ]
  %.0565918 = phi i32 [ 0, %.lr.ph920 ], [ %i.pq, %bb.aw ] ; 4 uses
  %.0567917 = phi i64 [ 0, %.lr.ph920 ], [ %i.pr, %bb.aw ] ; 6 uses
  br i1 %.not595, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ol = add nsw i64 %i.oj, -1
  %i.om = icmp eq i64 %.0567917, %i.ol
  br i1 %i.om, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.on = sub nsw i32 %i.ny, %.0565918
  br label %bb.av

bb.as:                                            ; preds = %bb.aq
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0567917
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !28 ; 2 uses
  %i.oq = icmp slt i32 %i.op, 0
  %i.or = select i1 %i.oq, i32 %i.ny, i32 0
  %i.os = sub i32 %i.op, %.0565918
  %i.ot = add i32 %i.os, %i.or
  br label %bb.av

bb.at:                                            ; preds = %bb.ap
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0567917
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !28 ; 2 uses
  %i.ow = icmp eq i32 %i.ov, -233
  br i1 %i.ow, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ox = sub nsw i32 %i.ny, %.0565918
  %i.oy = sext i32 %i.ox to i64
  %i.oz = sub i64 %i.oj, %.0567917
  %i.pa = udiv i64 %i.oy, %i.oz
  %i.pb = trunc i64 %i.pa to i32
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.ar, %bb.as
  %.0572 = phi i32 [ %i.on, %bb.ar ], [ %i.ot, %bb.as ], [ %i.pb, %bb.au ], [ %i.ov, %bb.at ] ; 2 uses
  %i.pc = getelementptr inbounds nuw [72 x i8], ptr %i.ok, i64 %.0567917 ; 4 uses
  %i.pd = load i32, ptr %i.c, align 4, !tbaa !28
  %i.pe = load i64, ptr %i.a, align 8, !tbaa !26
  %i.pf = load i32, ptr %i.b, align 4, !tbaa !28
  %i.pg = load ptr, ptr %i.oi, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.pc, i32 noundef %.0572, i32 noundef %i.pd, i64 noundef %i.pe, i32 noundef %i.pf, ptr noundef %i.pg)
  %i.ph = load ptr, ptr %i.pc, align 8, !tbaa !18
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %.critedge623, label %_ZNK4ncnn3Mat5emptyEv.exit734

_ZNK4ncnn3Mat5emptyEv.exit734:                    ; preds = %bb.av
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 64
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !20
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pc, i64 56
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !50
  %i.pn = sext i32 %i.pm to i64
  %i.po = mul i64 %i.pk, %i.pn
  %i.pp = icmp eq i64 %i.po, 0
  br i1 %i.pp, label %.critedge623, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit734
  %i.pq = add nsw i32 %.0572, %.0565918
  %i.pr = add nuw i64 %.0567917, 1                ; 2 uses
  %i.ps = load ptr, ptr %i.ob, align 8, !tbaa !44
  %i.pt = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = sdiv exact i64 %i.pw, 72                ; 2 uses
  %.not596.not = icmp ult i64 %i.pr, %i.px
  br i1 %.not596.not, label %bb.ap, label %.critedge646, !llvm.loop !138

.critedge646:                                     ; preds = %bb.aw, %bb.ao
  %i.py = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !80
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.pz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn9Slice_x8619forward_bf16s_fp16sERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.k, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.ax

bb.ax:                                            ; preds = %.critedge646, %bb.an
  %i.qa = icmp eq i32 %i.m, 3                     ; 2 uses
  %i.qb = icmp eq i32 %i.m, 4                     ; 3 uses
  %i.qc = add i32 %i.m, -3
  %or.cond25 = icmp ult i32 %i.qc, 2
  %or.cond27 = select i1 %or.cond25, i1 %i.nu, i1 false
  br i1 %or.cond27, label %bb.ay, label %bb.cb

bb.ay:                                            ; preds = %bb.ax
  %i.qd = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !43
  %i.qf = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !53
  %i.qh = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !81
  %i.qj = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !50
  %i.ql = load i32, ptr %i.b, align 4, !tbaa !28
  %i.qm = mul nsw i32 %i.ql, %i.qk                ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !44 ; 2 uses
  %i.qp = load ptr, ptr %2, align 8, !tbaa !21    ; 4 uses
  %.not598921.not = icmp eq ptr %i.qo, %i.qp
  br i1 %.not598921.not, label %.critedge625.thread, label %.lr.ph925

.critedge625.thread:                              ; preds = %bb.ay
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !27
  br label %._crit_edge930

.lr.ph925:                                        ; preds = %bb.ay
  %i.qs = ptrtoint ptr %i.qo to i64
  %i.qt = ptrtoint ptr %i.qp to i64
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = sdiv exact i64 %i.qu, 72
  %.not597 = icmp eq ptr %i.u, null
  %i.qw = getelementptr inbounds nuw i8, ptr %3, i64 39
  %i.qx = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph925, %bb.bg
  %i.qy = phi i64 [ %i.qv, %.lr.ph925 ], [ %i.sw, %bb.bg ] ; 2 uses
  %i.qz = phi ptr [ %i.qp, %.lr.ph925 ], [ %i.ss, %bb.bg ]
  %.0569923 = phi i64 [ 0, %.lr.ph925 ], [ %i.sq, %bb.bg ] ; 6 uses
  %.0570922 = phi i32 [ 0, %.lr.ph925 ], [ %i.sp, %bb.bg ] ; 4 uses
  br i1 %.not597, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ra = add nsw i64 %i.qy, -1
  %i.rb = icmp eq i64 %.0569923, %i.ra
  br i1 %i.rb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.rc = sub nsw i32 %i.qm, %.0570922
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0569923
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !28 ; 2 uses
  %i.rf = icmp slt i32 %i.re, 0
  %i.rg = select i1 %i.rf, i32 %i.qm, i32 0
  %i.rh = sub i32 %i.re, %.0570922
  %i.ri = add i32 %i.rh, %i.rg
  br label %bb.bf

bb.bd:                                            ; preds = %bb.az
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0569923
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !28 ; 2 uses
  %i.rl = icmp eq i32 %i.rk, -233
  br i1 %i.rl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.rm = sub nsw i32 %i.qm, %.0570922
  %i.rn = sext i32 %i.rm to i64
  %i.ro = sub i64 %i.qy, %.0569923
  %i.rp = udiv i64 %i.rn, %i.ro
  %i.rq = trunc i64 %i.rp to i32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be, %bb.bb, %bb.bc
  %.0568 = phi i32 [ %i.rc, %bb.bb ], [ %i.ri, %bb.bc ], [ %i.rq, %bb.be ], [ %i.rk, %bb.bd ] ; 4 uses
  %i.rr = load i8, ptr %i.qw, align 1, !tbaa !45, !range !47, !noundef !48
  %i.rs = trunc nuw i8 %i.rr to i1
  %i.rt = and i32 %.0568, 3
  %i.ru = icmp eq i32 %i.rt, 0
  %i.rv = and i1 %i.ru, %i.rs                     ; 3 uses
  %.0564 = select i1 %i.rv, i32 4, i32 1
  %i.rw = load i64, ptr %i.a, align 8, !tbaa !26
  %i.rx = load i32, ptr %i.b, align 4, !tbaa !28
  %i.ry = sext i32 %i.rx to i64
  %i.rz = udiv i64 %i.rw, %i.ry
  %i.sa = select i1 %i.rv, i64 2, i64 0
  %i.sb = shl i64 %i.rz, %i.sa
  %i.sc = getelementptr inbounds nuw [72 x i8], ptr %i.qz, i64 %.0569923 ; 5 uses
  %i.sd = sdiv i32 %.0568, 4
  %8 = select i1 %i.rv, i32 %i.sd, i32 %.0568
  %i.se = load ptr, ptr %i.qx, align 8, !tbaa !49
  call void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.sc, i32 noundef %i.qe, i32 noundef %i.qg, i32 noundef %i.qi, i32 noundef %8, i64 noundef %i.sb, i32 noundef %.0564, ptr noundef %i.se)
  %i.sf = load ptr, ptr %i.sc, align 8, !tbaa !18
  %i.sg = icmp eq ptr %i.sf, null
  br i1 %i.sg, label %.critedge619, label %_ZNK4ncnn3Mat5emptyEv.exit733

_ZNK4ncnn3Mat5emptyEv.exit733:                    ; preds = %bb.bf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 64
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !20
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sc, i64 56
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !50
  %i.sl = sext i32 %i.sk to i64
  %i.sm = mul i64 %i.si, %i.sl
  %i.sn = icmp eq i64 %i.sm, 0
  br i1 %i.sn, label %.critedge619, label %bb.bg

bb.bg:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit733
  %i.so = getelementptr inbounds nuw i8, ptr %i.sc, i64 40
  store i32 %i.m, ptr %i.so, align 8, !tbaa !24
  %i.sp = add nsw i32 %.0568, %.0570922
  %i.sq = add nuw i64 %.0569923, 1                ; 2 uses
  %i.sr = load ptr, ptr %i.qn, align 8, !tbaa !44 ; 2 uses
  %i.ss = load ptr, ptr %2, align 8, !tbaa !21    ; 9 uses
  %i.st = ptrtoint ptr %i.sr to i64
  %i.su = ptrtoint ptr %i.ss to i64
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = sdiv exact i64 %i.sv, 72                ; 5 uses
  %.not598 = icmp ult i64 %i.sq, %i.sw
  br i1 %.not598, label %bb.az, label %.critedge625, !llvm.loop !139

.critedge625:                                     ; preds = %bb.bg
  %i.sx = icmp eq ptr %i.sr, %i.ss
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !27 ; 3 uses
  br i1 %i.sx, label %._crit_edge930, label %.lr.ph929.preheader

.lr.ph929.preheader:                              ; preds = %.critedge625
  %xtraiter1240 = and i64 %i.sw, 3                ; 3 uses
  %i.ta = icmp ult i64 %i.sw, 4
  br i1 %i.ta, label %.lr.ph929.epil.preheader, label %.lr.ph929.preheader.new

.lr.ph929.preheader.new:                          ; preds = %.lr.ph929.preheader
  %unroll_iter1245 = and i64 %i.sw, -4
  br label %.lr.ph929

._crit_edge930.loopexit.unr-lcssa:                ; preds = %.lr.ph929
  %lcmp.mod1242.not = icmp eq i64 %xtraiter1240, 0
  br i1 %lcmp.mod1242.not, label %._crit_edge930, label %.lr.ph929.epil.preheader

.lr.ph929.epil.preheader:                         ; preds = %._crit_edge930.loopexit.unr-lcssa, %.lr.ph929.preheader
  %.0561928.epil.init = phi i64 [ 0, %.lr.ph929.preheader ], [ %i.um, %._crit_edge930.loopexit.unr-lcssa ]
  %.0867926.epil.init = phi i32 [ %i.sz, %.lr.ph929.preheader ], [ %.sroa.speculated.3, %._crit_edge930.loopexit.unr-lcssa ]
  %lcmp.mod1244 = icmp ne i64 %xtraiter1240, 0
  call void @llvm.assume(i1 %lcmp.mod1244)
  br label %.lr.ph929.epil

.lr.ph929.epil:                                   ; preds = %.lr.ph929.epil, %.lr.ph929.epil.preheader
  %.0561928.epil = phi i64 [ %i.te, %.lr.ph929.epil ], [ %.0561928.epil.init, %.lr.ph929.epil.preheader ] ; 2 uses
  %.0867926.epil = phi i32 [ %.sroa.speculated.epil, %.lr.ph929.epil ], [ %.0867926.epil.init, %.lr.ph929.epil.preheader ]
  %epil.iter1241 = phi i64 [ %epil.iter1241.next, %.lr.ph929.epil ], [ 0, %.lr.ph929.epil.preheader ]
  %i.tb = getelementptr inbounds nuw [72 x i8], ptr %i.ss, i64 %.0561928.epil
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !28
  %.sroa.speculated.epil = call i32 @llvm.smin.i32(i32 %i.td, i32 %.0867926.epil) ; 2 uses
  %i.te = add nuw i64 %.0561928.epil, 1
  %epil.iter1241.next = add i64 %epil.iter1241, 1 ; 2 uses
  %epil.iter1241.cmp.not = icmp eq i64 %epil.iter1241.next, %xtraiter1240
  br i1 %epil.iter1241.cmp.not, label %._crit_edge930, label %.lr.ph929.epil, !llvm.loop !140

._crit_edge930:                                   ; preds = %._crit_edge930.loopexit.unr-lcssa, %.lr.ph929.epil, %.critedge625.thread, %.critedge625
  %.0867.lcssa = phi i32 [ %i.sz, %.critedge625 ], [ %i.qr, %.critedge625.thread ], [ %.sroa.speculated.3, %._crit_edge930.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph929.epil ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.tf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !11 ; 2 uses
  %i.ti = load <2 x ptr>, ptr %i.k, align 8, !tbaa !57
  store <2 x ptr> %i.ti, ptr %5, align 16, !tbaa !57
  %i.tj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.tk = load i64, ptr %i.n, align 8, !tbaa !25
  store i64 %i.tk, ptr %i.tj, align 16, !tbaa !25
  %i.tl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.tm = load i32, ptr %i.p, align 8, !tbaa !27
  store i32 %i.tm, ptr %i.tl, align 8, !tbaa !27
  %i.tn = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !17
  store ptr %i.tp, ptr %i.tn, align 16, !tbaa !17
  %i.tq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.tr = load <4 x i32>, ptr %i.l, align 8, !tbaa !28
  store <4 x i32> %i.tr, ptr %i.tq, align 8, !tbaa !28
  %i.ts = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.tt = load i32, ptr %i.qj, align 8, !tbaa !50
  store i32 %i.tt, ptr %i.ts, align 8, !tbaa !50
  %i.tu = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !20
  store i64 %i.tw, ptr %i.tu, align 16, !tbaa !20
  %.not.i750 = icmp eq ptr %i.th, null
  br i1 %.not.i750, label %_ZN4ncnn3Mat6addrefEv.exit751, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge930
  %i.tx = atomicrmw add ptr %i.th, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit751

_ZN4ncnn3Mat6addrefEv.exit751:                    ; preds = %._crit_edge930, %bb.bh
  %i.ty = load i32, ptr %i.b, align 4, !tbaa !28
  %i.tz = icmp sgt i32 %i.ty, %.0867.lcssa
  br i1 %i.tz, label %bb.bi, label %bb.bl

.lr.ph929:                                        ; preds = %.lr.ph929, %.lr.ph929.preheader.new
  %.0561928 = phi i64 [ 0, %.lr.ph929.preheader.new ], [ %i.um, %.lr.ph929 ] ; 5 uses
  %.0867926 = phi i32 [ %i.sz, %.lr.ph929.preheader.new ], [ %.sroa.speculated.3, %.lr.ph929 ]
  %niter1246 = phi i64 [ 0, %.lr.ph929.preheader.new ], [ %niter1246.next.3, %.lr.ph929 ]
  %i.ua = getelementptr inbounds nuw [72 x i8], ptr %i.ss, i64 %.0561928
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !28
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.uc, i32 %.0867926)
  %i.ud = getelementptr inbounds nuw [72 x i8], ptr %i.ss, i64 %.0561928
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 96
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !28
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.uf, i32 %.sroa.speculated)
  %i.ug = getelementptr inbounds nuw [72 x i8], ptr %i.ss, i64 %.0561928
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 168
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !28
  %.sroa.speculated.2 = call i32 @llvm.smin.i32(i32 %i.ui, i32 %.sroa.speculated.1)
  %i.uj = getelementptr inbounds nuw [72 x i8], ptr %i.ss, i64 %.0561928
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 240
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !28
  %.sroa.speculated.3 = call i32 @llvm.smin.i32(i32 %i.ul, i32 %.sroa.speculated.2) ; 3 uses
  %i.um = add nuw i64 %.0561928, 4                ; 2 uses
  %niter1246.next.3 = add i64 %niter1246, 4       ; 2 uses
  %niter1246.ncmp.3 = icmp eq i64 %niter1246.next.3, %unroll_iter1245
  br i1 %niter1246.ncmp.3, label %._crit_edge930.loopexit.unr-lcssa, label %.lr.ph929, !llvm.loop !141

bb.bi:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit751
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.0867.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.un = load ptr, ptr %5, align 16, !tbaa !18
  %i.uo = icmp eq ptr %i.un, null
  br i1 %i.uo, label %.critedge619.critedge648, label %_ZNK4ncnn3Mat5emptyEv.exit732

_ZNK4ncnn3Mat5emptyEv.exit732:                    ; preds = %bb.bj
  %i.up = load i64, ptr %i.tu, align 16, !tbaa !20
  %i.uq = load i32, ptr %i.ts, align 8, !tbaa !50
  %i.ur = sext i32 %i.uq to i64
  %i.us = mul i64 %i.up, %i.ur
  %i.ut = icmp eq i64 %i.us, 0
  br i1 %i.ut, label %.critedge619.critedge648, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.uu = landingpad { ptr, i32 }
          cleanup
  %i.uv = load ptr, ptr %i.tf, align 8, !tbaa !11 ; 2 uses
  %.not.i695 = icmp eq ptr %i.uv, null
  br i1 %.not.i695, label %_ZN4ncnn3MatD2Ev.exit653, label %bb.bv

bb.bl:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit732, %_ZN4ncnn3Mat6addrefEv.exit751
  %i.uw = load ptr, ptr %i.qn, align 8, !tbaa !44 ; 2 uses
  %i.ux = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not977 = icmp eq ptr %i.uw, %i.ux
  br i1 %.not977, label %._crit_edge958, label %.lr.ph957

.lr.ph957:                                        ; preds = %bb.bl
  %i.uy = icmp eq i32 %.0867.lcssa, 1
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph957, %bb.bo
  %i.uz = phi ptr [ %i.ux, %.lr.ph957 ], [ %i.abp, %bb.bo ] ; 2 uses
  %i.va = phi ptr [ %i.uw, %.lr.ph957 ], [ %i.abq, %bb.bo ]
  %.0556955 = phi i64 [ 0, %.lr.ph957 ], [ %i.abr, %bb.bo ] ; 2 uses
  %.0557954 = phi i32 [ 0, %.lr.ph957 ], [ %.3560, %bb.bo ] ; 4 uses
  %i.vb = getelementptr inbounds nuw [72 x i8], ptr %i.uz, i64 %.0556955 ; 12 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 24 ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 8            ; 2 uses
  %i.ve = icmp eq i32 %i.vd, 4
  %or.cond628 = select i1 %i.uy, i1 %i.ve, i1 false
  br i1 %or.cond628, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 44
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !43
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vb, i64 48
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !53
  %i.vj = mul i32 %i.vi, %i.vg
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vb, i64 52
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !81
  %i.vm = mul i32 %i.vj, %i.vl                    ; 7 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vb, i64 56
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !50 ; 3 uses
  %i.vp = icmp sgt i32 %i.vo, 0
  br i1 %i.vp, label %.noexc747.lr.ph, label %.loopexit

.noexc747.lr.ph:                                  ; preds = %bb.bn
  %i.vq = load ptr, ptr %5, align 16, !tbaa !18, !noalias !142 ; 12 uses
  %i.vr = load i64, ptr %i.tu, align 16, !tbaa !20, !noalias !142 ; 6 uses
  %i.vs = load i64, ptr %i.tj, align 16, !tbaa !25, !noalias !142 ; 6 uses
  %factor.op.mul943 = mul i64 %i.vr, %i.vs        ; 4 uses
  %i.vt = load ptr, ptr %i.vb, align 8, !tbaa !18, !noalias !145 ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vb, i64 64
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !20, !noalias !145 ; 3 uses
end_hunk_3
