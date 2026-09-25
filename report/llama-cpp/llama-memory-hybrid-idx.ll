Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-memory-hybrid-idx?download=true
inline.NumInlined: 1406
inline.NumDeleted: 697
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS1_S1_S1_PK12llama_ubatchjb:bb.a
  %i.n = load i64, ptr %i.m, align 8, !tbaa !94   ; 7 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !94   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !94
  %i.s = shl nsw i64 %i.p, 2
  %i.t = sdiv i64 %i.r, %i.s                      ; 7 uses
  store i64 %i.t, ptr %i.b, align 8, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !55
  %i.w = zext i32 %i.v to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.x = zext i32 %6 to i64                       ; 2 uses
  store i64 %i.x, ptr %i.c, align 8, !tbaa !94
  %i.y = srem i64 %i.w, %i.p
  %i.z = sdiv i64 %i.w, %i.p                      ; 3 uses
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 288, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #26
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !296
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !296 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !296 ; 2 uses
  %i.aj = icmp ult i32 %6, 65
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 298, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8) #26
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ak = icmp eq i32 %6, 64
  %notmask = shl nsw i64 -1, %i.x
  %i.al = xor i64 %notmask, -1
  %i.am = select i1 %i.ak, i64 -1, i64 %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.an = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.an, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i258, label %.noexc252

.noexc252:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ao = shl nuw nsw i64 %i.n, 2                 ; 2 uses
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #22 ; 4 uses
  store ptr %i.ap, ptr %8, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.n
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !84
  store i32 0, ptr %i.ap, align 4, !tbaa !18
  %i.as = getelementptr i8, ptr %i.ap, i64 4      ; 3 uses
  %i.at = add nsw i64 %i.n, -1                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 0                    ; 2 uses
  br i1 %i.au, label %bb.l, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc252
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.at, 2  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.l

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i258: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %.noexc252, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.av, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.as, %.noexc252 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.0.i.i.i.i.i.ph, ptr %i.aw, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #22
          to label %.noexc260 unwind label %bb.ad ; 4 uses

.noexc260:                                        ; preds = %bb.l
  store ptr %i.ax, ptr %9, align 8, !tbaa !83
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.n
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !84
  store i32 0, ptr %i.ax, align 4, !tbaa !18
  %i.ba = getelementptr i8, ptr %i.ax, i64 4      ; 3 uses
  br i1 %i.au, label %bb.m, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i255

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i255: ; preds = %.noexc260
  %.idx.i.i.i.i.i.i.i256 = shl nuw nsw i64 %i.at, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ba, i8 0, i64 %.idx.i.i.i.i.i.i.i256, i1 false), !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i256
  br label %bb.m

bb.m:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i255, %.noexc260, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i258
  %.0.i.i.i.i.i257 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i258 ], [ %i.ba, %.noexc260 ], [ %i.bb, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i255 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.0.i.i.i.i.i257, ptr %i.bc, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.bd = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.bd, label %bb.n, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i262

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
          to label %.noexc268 unwind label %bb.ae

.noexc268:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i262: ; preds = %bb.m
  %.not.i.i.i.i263 = icmp eq i64 %i.t, 0          ; 2 uses
  br i1 %.not.i.i.i.i263, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i267, label %bb.o

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i267: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i262
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i262
  %i.be = shl nuw nsw i64 %i.t, 2
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #22
          to label %.noexc269 unwind label %bb.ae ; 4 uses

.noexc269:                                        ; preds = %bb.o
  store ptr %i.bf, ptr %10, align 8, !tbaa !83
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.t
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !84
  store i32 0, ptr %i.bf, align 4, !tbaa !18
  %i.bi = getelementptr i8, ptr %i.bf, i64 4      ; 3 uses
  %i.bj = add nsw i64 %i.t, -1                    ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.p, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i264

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i264: ; preds = %.noexc269
  %.idx.i.i.i.i.i.i.i265 = shl nuw nsw i64 %i.bj, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bi, i8 0, i64 %.idx.i.i.i.i.i.i.i265, i1 false), !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i.i.i.i.i.i265
  br label %bb.p

bb.p:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i264, %.noexc269, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i267
  %.0.i.i.i.i.i266 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i267 ], [ %i.bi, %.noexc269 ], [ %i.bl, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i264 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.0.i.i.i.i.i266, ptr %i.bm, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i263, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.p
  %i.bn = shl i64 %i.p, 4
  %.idx445 = mul i64 %i.bn, %i.t
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ag, i8 0, i64 %.idx445, i1 false), !tbaa !18
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i.preheader, %bb.p
  %i.bo = icmp sgt i64 %i.p, 0
  br i1 %i.bo, label %.lr.ph999, label %._crit_edge1000

.lr.ph999:                                        ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.ca = getelementptr inbounds nuw i8, ptr %17, i64 88
  %i.cb = getelementptr inbounds nuw i8, ptr %17, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 104
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 112
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %.not1009 = icmp eq i64 %i.z, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.idx = shl nuw nsw i64 %i.w, 3
  %smax = tail call i64 @llvm.smax.i64(i64 %i.z, i64 1)
  br label %bb.af

._crit_edge1000.loopexit:                         ; preds = %._crit_edge985
  %i.ck = ptrtoint ptr %.sroa.26.4 to i64
  %i.cl = ptrtoint ptr %.sroa.15.1.lcssa13671384 to i64
  %i.cm = ptrtoint ptr %.sroa.15417.1.lcssa13621387 to i64
  %i.cn = ptrtoint ptr %.sroa.19.1.lcssa13571390 to i64
  br label %._crit_edge1000

._crit_edge1000:                                  ; preds = %._crit_edge1000.loopexit, %_ZSt4fillIPiiEvT_S1_RKT0_.exit
  %.sroa.0420.0.lcssa = phi ptr [ null, %_ZSt4fillIPiiEvT_S1_RKT0_.exit ], [ %.sroa.0420.1.lcssa13541392, %._crit_edge1000.loopexit ] ; 3 uses
  %.sroa.19.0.lcssa = phi i64 [ 0, %_ZSt4fillIPiiEvT_S1_RKT0_.exit ], [ %i.cn, %._crit_edge1000.loopexit ]
  %.sroa.0410.0.lcssa = phi ptr [ null, %_ZSt4fillIPiiEvT_S1_RKT0_.exit ], [ %.sroa.0410.1.lcssa13591389, %._crit_edge1000.loopexit ] ; 3 uses
  %.sroa.15417.0.lcssa = phi i64 [ 0, %_ZSt4fillIPiiEvT_S1_RKT0_.exit ], [ %i.cm, %._crit_edge1000.loopexit ]
  %.sroa.0402.0.lcssa = phi ptr [ null, %_ZSt4fillIPiiEvT_S1_RKT0_.exit ], [ %.sroa.0402.1.lcssa13641386, %._crit_edge1000.loopexit ] ; 3 uses
  %.sroa.15.0.lcssa = phi i64 [ 0, %_ZSt4fillIPiiEvT_S1_RKT0_.exit ], [ %i.cl, %._crit_edge1000.loopexit ]
  %.sroa.0.0.lcssa = phi ptr [ null, %_ZSt4fillIPiiEvT_S1_RKT0_.exit ], [ %.sroa.0.4, %._crit_edge1000.loopexit ] ; 3 uses
  %.sroa.26.0.lcssa = phi i64 [ 0, %_ZSt4fillIPiiEvT_S1_RKT0_.exit ], [ %i.ck, %._crit_edge1000.loopexit ]
  %i.co = load ptr, ptr %16, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i271 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i271, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge1000
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !84
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge1000, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %.not.i.i.i272 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i272, label %_ZNSt6vectorIiSaIiEED2Ev.exit273, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.cu = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.cv = sub i64 %.sroa.26.0.lcssa, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.cv) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit273

_ZNSt6vectorIiSaIiEED2Ev.exit273:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.r
  %.not.i.i.i274 = icmp eq ptr %.sroa.0402.0.lcssa, null
  br i1 %.not.i.i.i274, label %_ZNSt6vectorIiSaIiEED2Ev.exit275, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit273
  %i.cw = ptrtoint ptr %.sroa.0402.0.lcssa to i64
  %i.cx = sub i64 %.sroa.15.0.lcssa, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0402.0.lcssa, i64 noundef %i.cx) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit275

_ZNSt6vectorIiSaIiEED2Ev.exit275:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit273, %bb.s
  %.not.i.i.i276 = icmp eq ptr %.sroa.0410.0.lcssa, null
  br i1 %.not.i.i.i276, label %_ZNSt6vectorIiSaIiEED2Ev.exit277, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit275
  %i.cy = ptrtoint ptr %.sroa.0410.0.lcssa to i64
  %i.cz = sub i64 %.sroa.15417.0.lcssa, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0410.0.lcssa, i64 noundef %i.cz) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit277

_ZNSt6vectorIiSaIiEED2Ev.exit277:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit275, %bb.t
  %.not.i.i.i278 = icmp eq ptr %.sroa.0420.0.lcssa, null
  br i1 %.not.i.i.i278, label %_ZNSt6vectorIiSaIiEED2Ev.exit279, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit277
  %i.da = ptrtoint ptr %.sroa.0420.0.lcssa to i64
  %i.db = sub i64 %.sroa.19.0.lcssa, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0420.0.lcssa, i64 noundef %i.db) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit279

_ZNSt6vectorIiSaIiEED2Ev.exit279:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit277, %bb.u
  %i.dc = load ptr, ptr %15, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i280 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i280, label %_ZNSt6vectorIiSaIiEED2Ev.exit281, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit279
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !84
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit281

_ZNSt6vectorIiSaIiEED2Ev.exit281:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit279, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.di = load ptr, ptr %14, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i282 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i282, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit281
  %i.dj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !102
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit281, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.do = load ptr, ptr %13, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i283 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i283, label %_ZNSt6vectorIiSaIiEED2Ev.exit284, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !84
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dt) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit284

_ZNSt6vectorIiSaIiEED2Ev.exit284:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.du = load ptr, ptr %12, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i285 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i285, label %_ZNSt6vectorIiSaIiEED2Ev.exit286, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit284
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !84
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dz) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit286

_ZNSt6vectorIiSaIiEED2Ev.exit286:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit284, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.ea = load ptr, ptr %11, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i287 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i287, label %_ZNSt6vectorIiSaIiEED2Ev.exit288, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit286
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !84
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit288

_ZNSt6vectorIiSaIiEED2Ev.exit288:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit286, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.eg = load ptr, ptr %10, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i289 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i289, label %_ZNSt6vectorIiSaIiEED2Ev.exit290, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit288
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !84
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit290

_ZNSt6vectorIiSaIiEED2Ev.exit290:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit288, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.em = load ptr, ptr %9, align 8, !tbaa !83    ; 3 uses
  %.not.i.i.i291 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i291, label %_ZNSt6vectorIiSaIiEED2Ev.exit292, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit290
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !84
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.er) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit292

_ZNSt6vectorIiSaIiEED2Ev.exit292:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit290, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.es = load ptr, ptr %8, align 8, !tbaa !83    ; 3 uses
  %.not.i.i.i293 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i293, label %_ZNSt6vectorIiSaIiEED2Ev.exit294, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit292
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !84
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit294

_ZNSt6vectorIiSaIiEED2Ev.exit294:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit292, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.ad:                                            ; preds = %bb.l
  %i.ey = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS1_S1_S1_PK12llama_ubatchjb:bb.a

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.cn, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.rn
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.cj
  %.sroa.0410.7 = phi ptr [ %i.rp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0410.2822, %bb.cj ] ; 4 uses
  %.pn449 = phi ptr [ %i.rq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.10415.2823, %bb.cj ]
  %.sroa.15417.7 = phi ptr [ %i.rt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.15417.2824, %bb.cj ] ; 4 uses
  %.sroa.10415.5 = getelementptr inbounds nuw i8, ptr %.pn449, i64 4 ; 2 uses
  %i.ru = load ptr, ptr %13, align 8, !tbaa !83
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %i.qe ; 2 uses
  %.not.i332 = icmp eq ptr %.sroa.10.2826, %.sroa.15.2827
  br i1 %.not.i332, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !18
  store i32 %i.rw, ptr %.sroa.10.2826, align 4, !tbaa !18
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.10.2826, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit341

bb.cp:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ry = ptrtoint ptr %.sroa.15.2827 to i64
  %i.rz = ptrtoint ptr %.sroa.0402.2825 to i64
  %i.sa = sub i64 %i.ry, %i.rz                    ; 6 uses
  %i.sb = icmp eq i64 %i.sa, 9223372036854775804
  br i1 %i.sb, label %bb.cq, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i333

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #26
          to label %.noexc339 unwind label %.loopexit.split-lp452

.noexc339:                                        ; preds = %bb.cq
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i333: ; preds = %bb.cp
  %i.sc = ashr exact i64 %i.sa, 2                 ; 3 uses
  %.sroa.speculated.i.i.i334 = call i64 @llvm.umax.i64(i64 %i.sc, i64 1)
  %i.sd = add nsw i64 %.sroa.speculated.i.i.i334, %i.sc ; 2 uses
  %i.se = icmp ult i64 %i.sd, %i.sc
  %i.sf = call i64 @llvm.umin.i64(i64 %i.sd, i64 2305843009213693951)
  %i.sg = select i1 %i.se, i64 2305843009213693951, i64 %i.sf ; 3 uses
  %.not.i.i.i335 = icmp ne i64 %i.sg, 0
  call void @llvm.assume(i1 %.not.i.i.i335)
  %i.sh = shl nuw nsw i64 %i.sg, 2
  %i.si = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sh) #22
          to label %.noexc340 unwind label %.loopexit451 ; 4 uses

.noexc340:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i333
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 %i.sa ; 2 uses
  %i.sk = load i32, ptr %i.rv, align 4, !tbaa !18
  store i32 %i.sk, ptr %i.sj, align 4, !tbaa !18
  %i.sl = icmp sgt i64 %i.sa, 0
  br i1 %i.sl, label %bb.cr, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i336

bb.cr:                                            ; preds = %.noexc340
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.si, ptr align 4 %.sroa.0402.2825, i64 %i.sa, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i336

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i336: ; preds = %bb.cr, %.noexc340
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %.not.i17.i.i337 = icmp eq ptr %.sroa.0402.2825, null
  br i1 %.not.i17.i.i337, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i336
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0402.2825, i64 noundef %i.sa) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338: ; preds = %bb.cs, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i336
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.sg
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit341

_ZNSt6vectorIiSaIiEE9push_backERKi.exit341:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338, %bb.co, %.lr.ph831
  %.sroa.0420.3 = phi ptr [ %.sroa.0420.2819, %.lr.ph831 ], [ %.sroa.0420.6, %bb.co ], [ %.sroa.0420.6, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338 ] ; 2 uses
  %.sroa.14.3 = phi ptr [ %.sroa.14.2820, %.lr.ph831 ], [ %.sroa.14.5, %bb.co ], [ %.sroa.14.5, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338 ] ; 2 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.2821, %.lr.ph831 ], [ %.sroa.19.6, %bb.co ], [ %.sroa.19.6, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338 ] ; 2 uses
  %.sroa.0410.3 = phi ptr [ %.sroa.0410.2822, %.lr.ph831 ], [ %.sroa.0410.7, %bb.co ], [ %.sroa.0410.7, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338 ] ; 2 uses
  %.sroa.10415.3 = phi ptr [ %.sroa.10415.2823, %.lr.ph831 ], [ %.sroa.10415.5, %bb.co ], [ %.sroa.10415.5, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338 ] ; 2 uses
  %.sroa.15417.3 = phi ptr [ %.sroa.15417.2824, %.lr.ph831 ], [ %.sroa.15417.7, %bb.co ], [ %.sroa.15417.7, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338 ] ; 2 uses
  %.sroa.0402.3 = phi ptr [ %.sroa.0402.2825, %.lr.ph831 ], [ %.sroa.0402.2825, %bb.co ], [ %i.si, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338 ] ; 2 uses
  %.sroa.10.3 = phi ptr [ %.sroa.10.2826, %.lr.ph831 ], [ %i.rx, %bb.co ], [ %i.sm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338 ] ; 2 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.2827, %.lr.ph831 ], [ %.sroa.15.2827, %bb.co ], [ %i.sn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338 ] ; 2 uses
  %.2 = phi i32 [ %.1208828, %.lr.ph831 ], [ %i.qi, %bb.co ], [ %i.qi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i338 ] ; 2 uses
  %i.so = load ptr, ptr %11, align 8, !tbaa !83
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.qe
  %.0205 = load i32, ptr %i.sp, align 4, !tbaa !18 ; 2 uses
  %i.sq = icmp sgt i32 %.0205, -1
  br i1 %i.sq, label %.lr.ph831, label %._crit_edge832.loopexit, !llvm.loop !283

.loopexit450:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i320
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit.split-lp:                               ; preds = %bb.cg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit451:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i333
  %.sroa.0410.4.ph = phi ptr [ %.sroa.0410.2822, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0410.7, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i333 ]
  %.sroa.15417.4.ph = phi ptr [ %.sroa.15417.2824, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.15417.7, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i333 ]
  %lpad.loopexit455 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit.split-lp452:                            ; preds = %bb.cl, %bb.cq
  %.sroa.0410.4.ph453 = phi ptr [ %.sroa.0410.7, %bb.cq ], [ %.sroa.0410.2822, %bb.cl ]
  %.sroa.15417.4.ph454 = phi ptr [ %.sroa.15417.7, %bb.cq ], [ %.sroa.15417.2824, %bb.cl ]
  %lpad.loopexit.split-lp456 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ct:                                            ; preds = %._crit_edge855.thread, %._crit_edge855
  %.sroa.15.1.lcssa1368 = phi ptr [ %.sroa.15.0994, %._crit_edge855.thread ], [ %.sroa.15.2.lcssa, %._crit_edge855 ]
  %.sroa.0402.1.lcssa1365 = phi ptr [ %.sroa.0402.0992, %._crit_edge855.thread ], [ %.sroa.0402.2.lcssa, %._crit_edge855 ]
  %.sroa.15417.1.lcssa1363 = phi ptr [ %.sroa.15417.0991, %._crit_edge855.thread ], [ %.sroa.15417.2.lcssa, %._crit_edge855 ]
  %.sroa.0410.1.lcssa1360 = phi ptr [ %.sroa.0410.0989, %._crit_edge855.thread ], [ %.sroa.0410.2.lcssa, %._crit_edge855 ]
  %.sroa.19.1.lcssa1358 = phi ptr [ %.sroa.19.0988, %._crit_edge855.thread ], [ %.sroa.19.2.lcssa, %._crit_edge855 ]
  %.sroa.0420.1.lcssa1355 = phi ptr [ %.sroa.0420.0986, %._crit_edge855.thread ], [ %.sroa.0420.2.lcssa, %._crit_edge855 ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.2, i32 noundef 470, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10) #26
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

._crit_edge872:                                   ; preds = %bb.cy, %._crit_edge855.thread, %.preheader458
  %.sroa.0420.1.lcssa13541392 = phi ptr [ %.sroa.0420.0986, %._crit_edge855.thread ], [ %.sroa.0420.2.lcssa, %.preheader458 ], [ %.sroa.0420.2.lcssa, %bb.cy ] ; 5 uses
  %.sroa.14.1.lcssa13561391 = phi ptr [ %spec.select, %._crit_edge855.thread ], [ %.sroa.14.2.lcssa, %.preheader458 ], [ %.sroa.14.2.lcssa, %bb.cy ]
  %.sroa.19.1.lcssa13571390 = phi ptr [ %.sroa.19.0988, %._crit_edge855.thread ], [ %.sroa.19.2.lcssa, %.preheader458 ], [ %.sroa.19.2.lcssa, %bb.cy ] ; 4 uses
  %.sroa.0410.1.lcssa13591389 = phi ptr [ %.sroa.0410.0989, %._crit_edge855.thread ], [ %.sroa.0410.2.lcssa, %.preheader458 ], [ %.sroa.0410.2.lcssa, %bb.cy ] ; 5 uses
  %.sroa.10415.1.lcssa13611388 = phi ptr [ %.sroa.10415.4, %._crit_edge855.thread ], [ %.sroa.10415.2.lcssa, %.preheader458 ], [ %.sroa.10415.2.lcssa, %bb.cy ]
  %.sroa.15417.1.lcssa13621387 = phi ptr [ %.sroa.15417.0991, %._crit_edge855.thread ], [ %.sroa.15417.2.lcssa, %.preheader458 ], [ %.sroa.15417.2.lcssa, %bb.cy ] ; 4 uses
  %.sroa.0402.1.lcssa13641386 = phi ptr [ %.sroa.0402.0992, %._crit_edge855.thread ], [ %.sroa.0402.2.lcssa, %.preheader458 ], [ %.sroa.0402.2.lcssa, %bb.cy ] ; 4 uses
  %.sroa.10.1.lcssa13661385 = phi ptr [ %.sroa.10.4, %._crit_edge855.thread ], [ %.sroa.10.2.lcssa, %.preheader458 ], [ %.sroa.10.2.lcssa, %bb.cy ]
  %.sroa.15.1.lcssa13671384 = phi ptr [ %.sroa.15.0994, %._crit_edge855.thread ], [ %.sroa.15.2.lcssa, %.preheader458 ], [ %.sroa.15.2.lcssa, %bb.cy ] ; 4 uses
  %.0207.lcssa13691383 = phi i1 [ false, %._crit_edge855.thread ], [ false, %.preheader458 ], [ true, %bb.cy ]
  %.lcssa56113701382 = phi i64 [ 0, %._crit_edge855.thread ], [ %i.qb, %.preheader458 ], [ %i.qb, %bb.cy ] ; 6 uses
  %i.ss = phi i64 [ 0, %._crit_edge855.thread ], [ %i.pp, %.preheader458 ], [ %i.pp, %bb.cy ] ; 3 uses
  %i.st = icmp sgt i64 %.lcssa56113701382, %i.ss
  %i.su = add nsw i64 %.lcssa56113701382, -1
  %i.sv = call i64 @llvm.smin.i64(i64 %i.ss, i64 %i.su) ; 2 uses
  %i.sw = trunc i64 %i.sv to i32                  ; 3 uses
  %i.sx = load i64, ptr %i.a, align 8, !tbaa !94  ; 5 uses
  %i.sy = icmp sgt i64 %i.sx, 0                   ; 2 uses
  br i1 %i.sy, label %.lr.ph875, label %.preheader

.lr.ph875:                                        ; preds = %._crit_edge872
  %i.sz = load ptr, ptr %9, align 8, !tbaa !83
  %i.ta = load ptr, ptr %15, align 8
  %i.tb = load ptr, ptr %8, align 8               ; 2 uses
  %i.tc = load i8, ptr %i.g, align 1, !range !109
  %i.td = trunc nuw i8 %i.tc to i1
  %i.te = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.tf = load ptr, ptr %16, align 8
  %i.tg = load i64, ptr %i.c, align 8             ; 2 uses
  br label %bb.cz

bb.cw:                                            ; preds = %.lr.ph871, %bb.cy
  %indvars.iv1235 = phi i64 [ 0, %.lr.ph871 ], [ %indvars.iv.next1236, %bb.cy ] ; 4 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0420.2.lcssa, i64 %indvars.iv1235
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !18 ; 3 uses
  br i1 %i.ps, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0402.2.lcssa, i64 %indvars.iv1235
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !18
  %i.tl = zext i32 %i.tk to i64                   ; 2 uses
  %i.tm = load ptr, ptr %i.pt, align 8, !tbaa !83
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.tl
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !18
  %i.tp = load ptr, ptr %i.pu, align 8, !tbaa !113
  %i.tq = getelementptr inbounds nuw [12 x i8], ptr %i.tp, i64 %i.tl ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !116
  %i.tt = load i32, ptr %i.tq, align 4, !tbaa !115
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.11.0 = phi i32 [ %i.to, %bb.cx ], [ %i.ti, %bb.cw ] ; 2 uses
  %.sroa.8.0 = phi i32 [ %i.tt, %bb.cx ], [ %i.ti, %bb.cw ]
  %.sroa.5.0 = phi i32 [ %i.ts, %bb.cx ], [ %i.ti, %bb.cw ]
  %invariant.gep867 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv1235 ; 4 uses
  store i32 %.sroa.11.0, ptr %invariant.gep867, align 4, !tbaa !18
  %gep868.1 = getelementptr [4 x i8], ptr %invariant.gep867, i64 %i.pv
  store i32 %.sroa.5.0, ptr %gep868.1, align 4, !tbaa !18
  %gep868.2 = getelementptr i8, ptr %invariant.gep867, i64 %gep868.2.idx
  store i32 %.sroa.8.0, ptr %gep868.2, align 4, !tbaa !18
  %gep868.3 = getelementptr i8, ptr %invariant.gep867, i64 %gep868.3.idx
  store i32 %.sroa.11.0, ptr %gep868.3, align 4, !tbaa !18
  %indvars.iv.next1236 = add nuw nsw i64 %indvars.iv1235, 1 ; 2 uses
  %exitcond1238.not = icmp eq i64 %indvars.iv.next1236, %wide.trip.count
  br i1 %exitcond1238.not, label %._crit_edge872, label %bb.cw, !llvm.loop !284

.preheader:                                       ; preds = %.thread440, %._crit_edge872
  br i1 %.not1009, label %._crit_edge985, label %.lr.ph984

.lr.ph984:                                        ; preds = %.preheader
  %i.tu = load ptr, ptr %i.bp, align 8, !tbaa !297
  %i.tv = load ptr, ptr %i.cj, align 8, !tbaa !307
  %i.tw = load i8, ptr %i.g, align 1, !tbaa !104, !range !109, !noundef !110
  %i.tx = trunc nuw i8 %i.tw to i1                ; 2 uses
  %i.ty = ptrtoint ptr %.sroa.16.3 to i64
  %i.tz = ptrtoint ptr %.sroa.0.4 to i64
  %i.ua = sub i64 %i.ty, %i.tz
  %i.ub = ashr exact i64 %i.ua, 2                 ; 2 uses
  %i.uc = icmp sgt i64 %i.ub, 0
  %i.ud = getelementptr inbounds nuw i8, ptr %i.fg, i64 56 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.uf = load i64, ptr %i.c, align 8, !tbaa !94
  %i.ug = getelementptr inbounds nuw i8, ptr %i.fg, i64 128 ; 2 uses
  %i.uh = icmp sgt i64 %.lcssa56113701382, 0
  %sext = shl i64 %i.sv, 32
  %i.ui = ashr exact i64 %sext, 30
  br label %bb.df

bb.cz:                                            ; preds = %.lr.ph875, %.thread440
  %.0202873 = phi i64 [ 0, %.lr.ph875 ], [ %i.vh, %.thread440 ] ; 8 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %.0202873
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !18 ; 2 uses
  %i.ul = icmp slt i32 %i.uk, 0
  br i1 %i.ul, label %.thread, label %bb.da

.thread:                                          ; preds = %bb.cz
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %.0202873
  store i32 -1, ptr %i.um, align 4, !tbaa !18
  br label %.thread440

bb.da:                                            ; preds = %bb.cz
  %i.un = zext nneg i32 %i.uk to i64
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.un
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !18 ; 3 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %.0202873 ; 2 uses
  store i32 %i.up, ptr %i.uq, align 4, !tbaa !18
  %i.ur = icmp sgt i32 %i.up, -1
  br i1 %i.ur, label %bb.db, label %.thread440

bb.db:                                            ; preds = %bb.da
  br i1 %i.td, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %.0202873
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.ut = and i64 %.0202873, 4294967295
  %i.uu = load ptr, ptr %i.te, align 8, !tbaa !83
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.ut
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %.in = phi ptr [ %i.us, %bb.dc ], [ %i.uv, %bb.dd ]
  %i.uw = load i32, ptr %.in, align 4, !tbaa !18
  %i.ux = sext i32 %i.uw to i64
  %i.uy = trunc i64 %.0202873 to i32
  %i.uz = zext nneg i32 %i.up to i64
  %i.va = mul nsw i64 %i.tg, %i.uz
  %i.vb = srem i64 %i.ux, %i.tg
  %i.vc = getelementptr [4 x i8], ptr %i.fo, i64 %i.va
  %i.vd = getelementptr [4 x i8], ptr %i.vc, i64 %i.vb
  store i32 %i.uy, ptr %i.vd, align 4, !tbaa !18
  %.pr438 = load i32, ptr %i.uq, align 4, !tbaa !18 ; 2 uses
  %i.ve = icmp slt i32 %.pr438, 0
  %spec.select444 = select i1 %i.ve, i32 %i.sw, i32 %.pr438
  br label %.thread440

.thread440:                                       ; preds = %bb.de, %bb.da, %.thread
  %i.vf = phi i32 [ %i.sw, %bb.da ], [ %spec.select444, %bb.de ], [ %i.sw, %.thread ]
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %.0202873
  store i32 %i.vf, ptr %i.vg, align 4, !tbaa !18
  %i.vh = add nuw nsw i64 %.0202873, 1            ; 2 uses
  %exitcond1239.not = icmp eq i64 %i.vh, %i.sx
  br i1 %exitcond1239.not, label %.preheader, label %bb.cz, !llvm.loop !285

._crit_edge985:                                   ; preds = %.loopexit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.vi = add nuw nsw i64 %.0214998, 1            ; 2 uses
  %exitcond1245.not.a = icmp eq i64 %i.vi, %i.p
  br i1 %exitcond1245.not.a, label %._crit_edge1000.loopexit, label %bb.af, !llvm.loop !286

bb.df:                                            ; preds = %.lr.ph984, %.loopexit
  %.0201983 = phi i64 [ 0, %.lr.ph984 ], [ %i.zb, %.loopexit ] ; 2 uses
  %i.vj = add nuw nsw i64 %.0201983, %i.fb        ; 4 uses
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %i.vj
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !103
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !18
  %.fr1009 = freeze i32 %i.vm                     ; 4 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.vj ; 3 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !18 ; 3 uses
  %i.vp = sext i32 %i.vo to i64
  br i1 %i.tx, label %bb.dg, label %._crit_edge881

bb.dg:                                            ; preds = %bb.df
  %i.vq = getelementptr [4 x i8], ptr %i.vn, i64 %i.w
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !18 ; 2 uses
  %i.vs = getelementptr i8, ptr %i.vn, i64 %.idx
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !18
  br i1 %i.uc, label %.lr.ph880, label %._crit_edge881

.lr.ph880:                                        ; preds = %bb.dg
  %i.vu = load ptr, ptr %i.ud, align 8, !tbaa !83
  br label %bb.dh

bb.dh:                                            ; preds = %.lr.ph880, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread
  %.0196878 = phi i64 [ %i.ub, %.lr.ph880 ], [ %.1197, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread ] ; 2 uses
  %.0198877 = phi i64 [ 0, %.lr.ph880 ], [ %.1199, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread ] ; 4 uses
  %i.vv = add nuw nsw i64 %.0196878, %.0198877
  %i.vw = lshr i64 %i.vv, 1                       ; 5 uses
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !18
  %i.vz = zext i32 %i.vy to i64                   ; 2 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %i.vz
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !18 ; 2 uses
  %i.wc = icmp slt i32 %i.wb, %i.vo
  br i1 %i.wc, label %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread441, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wd = icmp eq i32 %i.wb, %i.vo
  br i1 %i.wd, label %bb.dj, label %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread

bb.dj:                                            ; preds = %bb.di
  %i.we = load ptr, ptr %i.ue, align 8, !tbaa !113
  %i.wf = getelementptr inbounds nuw [12 x i8], ptr %i.we, i64 %i.vz ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !116 ; 2 uses
  %i.wi = icmp sgt i32 %i.wh, %i.vr
  br i1 %i.wi, label %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.wj = icmp eq i32 %i.wh, %i.vr
  br i1 %i.wj, label %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit, label %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread441

_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit:         ; preds = %bb.dk
  %i.wk = load i32, ptr %i.wf, align 4, !tbaa !115
  %i.wl = icmp sgt i32 %i.wk, %i.vt
  br i1 %i.wl, label %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread, label %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread441

_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread441: ; preds = %bb.dk, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit, %bb.dh
  %i.wm = add nuw nsw i64 %i.vw, 1
  br label %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread

_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread:  ; preds = %bb.dj, %bb.di, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread441
  %.1199 = phi i64 [ %i.wm, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread441 ], [ %.0198877, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit ], [ %.0198877, %bb.di ], [ %.0198877, %bb.dj ] ; 3 uses
  %.1197 = phi i64 [ %.0196878, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread441 ], [ %i.vw, %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit ], [ %i.vw, %bb.di ], [ %i.vw, %bb.dj ] ; 2 uses
  %i.wn = icmp slt i64 %.1199, %.1197
  br i1 %i.wn, label %bb.dh, label %._crit_edge881.loopexit, !llvm.loop !287

._crit_edge881.loopexit:                          ; preds = %_ZNK17llama_kv_cell_ext8is_2d_gtEii.exit.thread
  %i.wo = add nsw i64 %.1199, -1
  br label %._crit_edge881

._crit_edge881:                                   ; preds = %bb.dg, %._crit_edge881.loopexit, %bb.df
  %.0200 = phi i64 [ %i.vp, %bb.df ], [ -1, %bb.dg ], [ %i.wo, %._crit_edge881.loopexit ]
  %.0200.fr = freeze i64 %.0200                   ; 2 uses
  %i.wp = add i64 %.0200.fr, 1                    ; 2 uses
  %i.wq = srem i64 %i.wp, %i.uf
  %i.wr = sub nsw i64 %i.wp, %i.wq                ; 2 uses
  br i1 %7, label %bb.dl, label %bb.ds

bb.dl:                                            ; preds = %._crit_edge881
  %i.ws = mul nsw i64 %i.vj, %.lcssa56113701382
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ws ; 3 uses
  br i1 %i.uh, label %.lr.ph934, label %._crit_edge935

.lr.ph934:                                        ; preds = %bb.dl
  %i.wu = sext i32 %.fr1009 to i64                ; 3 uses
  %i.wv = icmp ugt i32 %.fr1009, 255
  %i.ww = lshr i64 %i.wu, 6
  %i.wx = and i64 %i.wu, 63
  %i.wy = shl nuw i64 1, %i.wx
  br i1 %i.wv, label %.lr.ph934.split.us, label %.lr.ph934.split

.lr.ph934.split.us:                               ; preds = %.lr.ph934, %bb.dm
  %.0195932.us = phi i64 [ %i.xa, %bb.dm ], [ 0, %.lr.ph934 ] ; 2 uses
  br i1 %.0207.lcssa13691383, label %.split.us936, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph934.split.us
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.0195932.us
  store float -inf, ptr %i.wz, align 4, !tbaa !308
  %i.xa = add nuw nsw i64 %.0195932.us, 1         ; 2 uses
  %exitcond1243.not.a = icmp eq i64 %i.xa, %.lcssa56113701382
  br i1 %exitcond1243.not.a, label %._crit_edge935, label %.lr.ph934.split.us, !llvm.loop !288

._crit_edge935:                                   ; preds = %bb.dq, %bb.dm, %bb.dl
  br i1 %i.st, label %bb.dr, label %.loopexit

.lr.ph934.split:                                  ; preds = %.lr.ph934, %bb.dq
  %.0195932 = phi i64 [ %i.xp, %bb.dq ], [ 0, %.lr.ph934 ] ; 5 uses
  %.not239 = icmp slt i64 %.0195932, %i.ss
  br i1 %.not239, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %.lr.ph934.split
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0410.1.lcssa13591389, i64 %.0195932
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !18
  %i.xd = load ptr, ptr %i.ug, align 8, !tbaa !120
  %i.xe = zext i32 %i.xc to i64
  %i.xf = getelementptr inbounds nuw [32 x i8], ptr %i.xd, i64 %i.xe
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.ww
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !94
  %i.xi = and i64 %i.xh, %i.wy
  %.not448 = icmp eq i64 %i.xi, 0
  br i1 %.not448, label %bb.dq, label %bb.dp

.split.us936:                                     ; preds = %.lr.ph934.split.us
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i64 noundef %i.wu, i64 noundef 256) #26
          to label %.noexc342 unwind label %bb.do

.noexc342:                                        ; preds = %.split.us936
  unreachable

bb.do:                                            ; preds = %.split.us936
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.dp:                                            ; preds = %bb.dn
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0420.1.lcssa13541392, i64 %.0195932
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !18
  %i.xm = sext i32 %i.xl to i64
  %.not241 = icmp sgt i64 %i.wr, %i.xm
  %i.xn = select i1 %.not241, float 0.000000e+00, float 1.000000e+09
  br label %bb.dq

bb.dq:                                            ; preds = %.lr.ph934.split, %bb.dn, %bb.dp
  %.sink = phi float [ %i.xn, %bb.dp ], [ -inf, %bb.dn ], [ -inf, %.lr.ph934.split ]
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.0195932
  store float %.sink, ptr %i.xo, align 4, !tbaa !308
  %i.xp = add nuw nsw i64 %.0195932, 1            ; 2 uses
  %exitcond1242.not.a = icmp eq i64 %i.xp, %.lcssa56113701382
  br i1 %exitcond1242.not.a, label %._crit_edge935, label %.lr.ph934.split, !llvm.loop !288

bb.dr:                                            ; preds = %._crit_edge935
  %i.xq = getelementptr inbounds i8, ptr %i.wt, i64 %i.ui
  store float 1.000000e+09, ptr %i.xq, align 4, !tbaa !308
  br label %.loopexit

bb.ds:                                            ; preds = %._crit_edge881
  %i.xr = mul nsw i64 %i.vj, %i.sx
  %i.xs = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.xr ; 2 uses
  br i1 %i.sy, label %.lr.ph885, label %.loopexit

.lr.ph885:                                        ; preds = %bb.ds
  %i.xt = load ptr, ptr %i.ud, align 8, !tbaa !83 ; 2 uses
  %i.xu = sext i32 %.fr1009 to i64                ; 3 uses
  %i.xv = icmp ugt i32 %.fr1009, 255
  %i.xw = lshr i64 %i.xu, 6
  %i.xx = and i64 %i.xu, 63
  %i.xy = shl nuw i64 1, %i.xx
  %i.xz = load ptr, ptr %16, align 8
  %i.ya = load ptr, ptr %8, align 8
  br i1 %i.xv, label %.lr.ph885.split.us, label %.lr.ph885.split

.lr.ph885.split.us:                               ; preds = %.lr.ph885, %bb.dt
  %.0194883.us = phi i64 [ %i.yg, %bb.dt ], [ 0, %.lr.ph885 ] ; 3 uses
  %i.yb = and i64 %.0194883.us, 4294967295
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %i.yb
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !18
  %i.ye = icmp eq i32 %i.yd, -1
  br i1 %i.ye, label %bb.dt, label %.split.us

bb.dt:                                            ; preds = %.lr.ph885.split.us
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %.0194883.us
  store float -inf, ptr %i.yf, align 4, !tbaa !308
  %i.yg = add nuw nsw i64 %.0194883.us, 1         ; 2 uses
  %exitcond1241.not.a = icmp eq i64 %i.yg, %i.sx
  br i1 %exitcond1241.not.a, label %.loopexit, label %.lr.ph885.split.us, !llvm.loop !289

.lr.ph885.split:                                  ; preds = %.lr.ph885, %bb.eb
  %.0194883 = phi i64 [ %i.za, %bb.eb ], [ 0, %.lr.ph885 ] ; 5 uses
  %i.yh = and i64 %.0194883, 4294967295           ; 2 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %i.yh
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !18 ; 2 uses
  %i.yk = icmp eq i32 %i.yj, -1
  br i1 %i.yk, label %bb.eb, label %bb.du

bb.du:                                            ; preds = %.lr.ph885.split
  %i.yl = load ptr, ptr %i.ug, align 8, !tbaa !120
  %i.ym = getelementptr inbounds nuw [32 x i8], ptr %i.yl, i64 %i.yh
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %i.xw
  %i.yo = load i64, ptr %i.yn, align 8, !tbaa !94
  %i.yp = and i64 %i.yo, %i.xy
  %.not447 = icmp eq i64 %i.yp, 0
  br i1 %.not447, label %bb.eb, label %bb.dv

.split.us:                                        ; preds = %.lr.ph885.split.us
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i64 noundef %i.xu, i64 noundef 256) #26
          to label %.noexc343 unwind label %bb.ea

.noexc343:                                        ; preds = %.split.us
  unreachable

bb.dv:                                            ; preds = %bb.du
  br i1 %i.tx, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %.0194883
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !18
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dv, %bb.dw
  %i.ys = phi i32 [ %i.yr, %bb.dw ], [ %i.yj, %bb.dv ]
  %i.yt = sext i32 %i.ys to i64                   ; 2 uses
  %.not237 = icmp slt i64 %.0200.fr, %i.yt
  br i1 %.not237, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.not238 = icmp sgt i64 %i.wr, %i.yt
  br i1 %.not238, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.0194883
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !18
  %i.yw = icmp slt i32 %i.yv, 0
  %i.yx = select i1 %i.yw, float -inf, float 0.000000e+00
  br label %bb.eb

bb.ea:                                            ; preds = %.split.us
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dx, %bb.dy, %bb.dz, %bb.du, %.lr.ph885.split
  %.1 = phi float [ -inf, %.lr.ph885.split ], [ -inf, %bb.du ], [ -inf, %bb.dx ], [ %i.yx, %bb.dz ], [ 1.000000e+09, %bb.dy ]
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %.0194883
  store float %.1, ptr %i.yz, align 4, !tbaa !308
  %i.za = add nuw nsw i64 %.0194883, 1            ; 2 uses
  %exitcond1240.not = icmp eq i64 %i.za, %i.sx
  br i1 %exitcond1240.not, label %.loopexit, label %.lr.ph885.split, !llvm.loop !289

.loopexit:                                        ; preds = %bb.eb, %bb.dt, %bb.ds, %._crit_edge935, %bb.dr
  %i.zb = add nuw nsw i64 %.0201983, 1            ; 2 uses
  %exitcond1244.not = icmp eq i64 %i.zb, %smax
  br i1 %exitcond1244.not, label %._crit_edge985, label %bb.df, !llvm.loop !290

bb.ec:                                            ; preds = %.loopexit451, %.loopexit.split-lp452, %.loopexit450, %.loopexit.split-lp, %.loopexit473, %.loopexit.split-lp474, %.loopexit461, %.loopexit.split-lp462, %.loopexit466, %.loopexit.split-lp467, %bb.cv, %bb.ea, %bb.do
  %.sroa.0420.4 = phi ptr [ %.sroa.0420.1.lcssa13541392, %bb.ea ], [ %.sroa.0420.0986, %.loopexit.split-lp467 ], [ %.sroa.0420.0986, %.loopexit.split-lp462 ], [ %.sroa.0420.0986, %.loopexit.split-lp474 ], [ %.sroa.0420.2819, %.loopexit.split-lp ], [ %.sroa.0420.1.lcssa1355, %bb.cv ], [ %.sroa.0420.1.lcssa13541392, %bb.do ], [ %.sroa.0420.0986, %.loopexit466 ], [ %.sroa.0420.0986, %.loopexit461 ], [ %.sroa.0420.0986, %.loopexit473 ], [ %.sroa.0420.2819, %.loopexit450 ], [ %.sroa.0420.6, %.loopexit451 ], [ %.sroa.0420.6, %.loopexit.split-lp452 ]
  %.sroa.19.4 = phi ptr [ %.sroa.19.1.lcssa13571390, %bb.ea ], [ %.sroa.19.0988, %.loopexit.split-lp467 ], [ %.sroa.19.0988, %.loopexit.split-lp462 ], [ %.sroa.19.0988, %.loopexit.split-lp474 ], [ %.sroa.19.2821, %.loopexit.split-lp ], [ %.sroa.19.1.lcssa1358, %bb.cv ], [ %.sroa.19.1.lcssa13571390, %bb.do ], [ %.sroa.19.0988, %.loopexit466 ], [ %.sroa.19.0988, %.loopexit461 ], [ %.sroa.19.0988, %.loopexit473 ], [ %.sroa.19.2821, %.loopexit450 ], [ %.sroa.19.6, %.loopexit451 ], [ %.sroa.19.6, %.loopexit.split-lp452 ]
  %.sroa.0410.5 = phi ptr [ %.sroa.0410.1.lcssa13591389, %bb.ea ], [ %.sroa.0410.0989, %.loopexit.split-lp467 ], [ %.sroa.0410.0989, %.loopexit.split-lp462 ], [ %.sroa.0410.0989, %.loopexit.split-lp474 ], [ %.sroa.0410.2822, %.loopexit.split-lp ], [ %.sroa.0410.1.lcssa1360, %bb.cv ], [ %.sroa.0410.1.lcssa13591389, %bb.do ], [ %.sroa.0410.0989, %.loopexit466 ], [ %.sroa.0410.0989, %.loopexit461 ], [ %.sroa.0410.0989, %.loopexit473 ], [ %.sroa.0410.2822, %.loopexit450 ], [ %.sroa.0410.4.ph, %.loopexit451 ], [ %.sroa.0410.4.ph453, %.loopexit.split-lp452 ]
  %.sroa.15417.5 = phi ptr [ %.sroa.15417.1.lcssa13621387, %bb.ea ], [ %.sroa.15417.0991, %.loopexit.split-lp467 ], [ %.sroa.15417.0991, %.loopexit.split-lp462 ], [ %.sroa.15417.0991, %.loopexit.split-lp474 ], [ %.sroa.15417.2824, %.loopexit.split-lp ], [ %.sroa.15417.1.lcssa1363, %bb.cv ], [ %.sroa.15417.1.lcssa13621387, %bb.do ], [ %.sroa.15417.0991, %.loopexit466 ], [ %.sroa.15417.0991, %.loopexit461 ], [ %.sroa.15417.0991, %.loopexit473 ], [ %.sroa.15417.2824, %.loopexit450 ], [ %.sroa.15417.4.ph, %.loopexit451 ], [ %.sroa.15417.4.ph454, %.loopexit.split-lp452 ]
  %.sroa.0402.4 = phi ptr [ %.sroa.0402.1.lcssa13641386, %bb.ea ], [ %.sroa.0402.0992, %.loopexit.split-lp467 ], [ %.sroa.0402.0992, %.loopexit.split-lp462 ], [ %.sroa.0402.0992, %.loopexit.split-lp474 ], [ %.sroa.0402.2825, %.loopexit.split-lp ], [ %.sroa.0402.1.lcssa1365, %bb.cv ], [ %.sroa.0402.1.lcssa13641386, %bb.do ], [ %.sroa.0402.0992, %.loopexit466 ], [ %.sroa.0402.0992, %.loopexit461 ], [ %.sroa.0402.0992, %.loopexit473 ], [ %.sroa.0402.2825, %.loopexit450 ], [ %.sroa.0402.2825, %.loopexit451 ], [ %.sroa.0402.2825, %.loopexit.split-lp452 ]
  %.sroa.15.4 = phi ptr [ %.sroa.15.1.lcssa13671384, %bb.ea ], [ %.sroa.15.0994, %.loopexit.split-lp467 ], [ %.sroa.15.0994, %.loopexit.split-lp462 ], [ %.sroa.15.0994, %.loopexit.split-lp474 ], [ %.sroa.15.2827, %.loopexit.split-lp ], [ %.sroa.15.1.lcssa1368, %bb.cv ], [ %.sroa.15.1.lcssa13671384, %bb.do ], [ %.sroa.15.0994, %.loopexit466 ], [ %.sroa.15.0994, %.loopexit461 ], [ %.sroa.15.0994, %.loopexit473 ], [ %.sroa.15.2827, %.loopexit450 ], [ %.sroa.15.2827, %.loopexit451 ], [ %.sroa.15.2827, %.loopexit.split-lp452 ]
  %.sroa.0.5 = phi ptr [ %.sroa.0.4, %bb.ea ], [ %.sroa.0.2.ph468, %.loopexit.split-lp467 ], [ %.sroa.0.1808, %.loopexit.split-lp462 ], [ %.sroa.0.1.lcssa, %.loopexit.split-lp474 ], [ %.sroa.0.4, %.loopexit.split-lp ], [ %.sroa.0.4, %bb.cv ], [ %.sroa.0.4, %bb.do ], [ %.sroa.0.2.ph, %.loopexit466 ], [ %.sroa.0.1808, %.loopexit461 ], [ %.sroa.0.1.lcssa, %.loopexit473 ], [ %.sroa.0.4, %.loopexit450 ], [ %.sroa.0.4, %.loopexit451 ], [ %.sroa.0.4, %.loopexit.split-lp452 ]
  %.sroa.26.5 = phi ptr [ %.sroa.26.4, %bb.ea ], [ %.sroa.26.2.ph469, %.loopexit.split-lp467 ], [ %.sroa.26.1810, %.loopexit.split-lp462 ], [ %.sroa.26.1.lcssa, %.loopexit.split-lp474 ], [ %.sroa.26.4, %.loopexit.split-lp ], [ %.sroa.26.4, %bb.cv ], [ %.sroa.26.4, %bb.do ], [ %.sroa.26.2.ph, %.loopexit466 ], [ %.sroa.26.1810, %.loopexit461 ], [ %.sroa.26.1.lcssa, %.loopexit473 ], [ %.sroa.26.4, %.loopexit450 ], [ %.sroa.26.4, %.loopexit451 ], [ %.sroa.26.4, %.loopexit.split-lp452 ]
  %.pn246 = phi { ptr, i32 } [ %i.yy, %bb.ea ], [ %lpad.loopexit.split-lp471, %.loopexit.split-lp467 ], [ %lpad.loopexit.split-lp464, %.loopexit.split-lp462 ], [ %lpad.loopexit.split-lp476, %.loopexit.split-lp474 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.sr, %bb.cv ], [ %i.xj, %bb.do ], [ %lpad.loopexit470, %.loopexit466 ], [ %lpad.loopexit463, %.loopexit461 ], [ %lpad.loopexit475, %.loopexit473 ], [ %lpad.loopexit, %.loopexit450 ], [ %lpad.loopexit455, %.loopexit451 ], [ %lpad.loopexit.split-lp456, %.loopexit.split-lp452 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ai
  %.sroa.0420.5 = phi ptr [ %.sroa.0420.4, %bb.ec ], [ %.sroa.0420.0986, %bb.ai ] ; 3 uses
  %.sroa.19.5 = phi ptr [ %.sroa.19.4, %bb.ec ], [ %.sroa.19.0988, %bb.ai ]
  %.sroa.0410.6 = phi ptr [ %.sroa.0410.5, %bb.ec ], [ %.sroa.0410.0989, %bb.ai ] ; 3 uses
  %.sroa.15417.6 = phi ptr [ %.sroa.15417.5, %bb.ec ], [ %.sroa.15417.0991, %bb.ai ]
  %.sroa.0402.5 = phi ptr [ %.sroa.0402.4, %bb.ec ], [ %.sroa.0402.0992, %bb.ai ] ; 3 uses
  %.sroa.15.5 = phi ptr [ %.sroa.15.4, %bb.ec ], [ %.sroa.15.0994, %bb.ai ]
  %.sroa.0.6 = phi ptr [ %.sroa.0.5, %bb.ec ], [ %.sroa.0.0995, %bb.ai ] ; 3 uses
  %.sroa.26.6 = phi ptr [ %.sroa.26.5, %bb.ec ], [ %.sroa.26.0997, %bb.ai ]
  %.pn246.pn = phi { ptr, i32 } [ %.pn246, %bb.ec ], [ %i.fr, %bb.ai ] ; 2 uses
  %i.zc = load ptr, ptr %16, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i345 = icmp eq ptr %i.zc, null
  br i1 %.not.i.i.i345, label %_ZNSt6vectorIiSaIiEED2Ev.exit346, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.zd = load ptr, ptr %i.ch, align 8, !tbaa !84
  %i.ze = ptrtoint ptr %i.zd to i64
  %i.zf = ptrtoint ptr %i.zc to i64
  %i.zg = sub i64 %i.ze, %i.zf
  call void @_ZdlPvm(ptr noundef nonnull %i.zc, i64 noundef %i.zg) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit346

_ZNSt6vectorIiSaIiEED2Ev.exit346:                 ; preds = %bb.ed, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %.not.i.i.i347 = icmp eq ptr %.sroa.0.6, null
  br i1 %.not.i.i.i347, label %_ZNSt6vectorIiSaIiEED2Ev.exit348, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit346
  %i.zh = ptrtoint ptr %.sroa.26.6 to i64
  %i.zi = ptrtoint ptr %.sroa.0.6 to i64
  %i.zj = sub i64 %i.zh, %i.zi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.6, i64 noundef %i.zj) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit348

_ZNSt6vectorIiSaIiEED2Ev.exit348:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit346, %bb.ef
  %.not.i.i.i349 = icmp eq ptr %.sroa.0402.5, null
  br i1 %.not.i.i.i349, label %_ZNSt6vectorIiSaIiEED2Ev.exit350, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit348
  %i.zk = ptrtoint ptr %.sroa.15.5 to i64
  %i.zl = ptrtoint ptr %.sroa.0402.5 to i64
  %i.zm = sub i64 %i.zk, %i.zl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0402.5, i64 noundef %i.zm) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit350

_ZNSt6vectorIiSaIiEED2Ev.exit350:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit348, %bb.eg
  %.not.i.i.i351 = icmp eq ptr %.sroa.0410.6, null
  br i1 %.not.i.i.i351, label %_ZNSt6vectorIiSaIiEED2Ev.exit352, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit350
  %i.zn = ptrtoint ptr %.sroa.15417.6 to i64
  %i.zo = ptrtoint ptr %.sroa.0410.6 to i64
  %i.zp = sub i64 %i.zn, %i.zo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0410.6, i64 noundef %i.zp) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit352

_ZNSt6vectorIiSaIiEED2Ev.exit352:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit350, %bb.eh
  %.not.i.i.i353 = icmp eq ptr %.sroa.0420.5, null
  br i1 %.not.i.i.i353, label %_ZNSt6vectorIiSaIiEED2Ev.exit354, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit352
  %i.zq = ptrtoint ptr %.sroa.19.5 to i64
  %i.zr = ptrtoint ptr %.sroa.0420.5 to i64
  %i.zs = sub i64 %i.zq, %i.zr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0420.5, i64 noundef %i.zs) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit354

_ZNSt6vectorIiSaIiEED2Ev.exit354:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit352, %bb.ei
  %i.zt = load ptr, ptr %15, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i355 = icmp eq ptr %i.zt, null
  br i1 %.not.i.i.i355, label %_ZNSt6vectorIiSaIiEED2Ev.exit356, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit354
  %i.zu = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !84
  %i.zw = ptrtoint ptr %i.zv to i64
  %i.zx = ptrtoint ptr %i.zt to i64
  %i.zy = sub i64 %i.zw, %i.zx
  call void @_ZdlPvm(ptr noundef nonnull %i.zt, i64 noundef %i.zy) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit356

_ZNSt6vectorIiSaIiEED2Ev.exit356:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit354, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.zz = load ptr, ptr %14, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i357 = icmp eq ptr %i.zz, null
  br i1 %.not.i.i.i357, label %_ZNSt6vectorImSaImEED2Ev.exit358, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit356
  %i.aaa = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !102
  %i.aac = ptrtoint ptr %i.aab to i64
  %i.aad = ptrtoint ptr %i.zz to i64
  %i.aae = sub i64 %i.aac, %i.aad
  call void @_ZdlPvm(ptr noundef nonnull %i.zz, i64 noundef %i.aae) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit358

_ZNSt6vectorImSaImEED2Ev.exit358:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit356, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.aaf = load ptr, ptr %13, align 8, !tbaa !83  ; 3 uses
  %.not.i.i.i359 = icmp eq ptr %i.aaf, null
  br i1 %.not.i.i.i359, label %_ZNSt6vectorIiSaIiEED2Ev.exit360, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit358
  %i.aag = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !84
  %i.aai = ptrtoint ptr %i.aah to i64
  %i.aaj = ptrtoint ptr %i.aaf to i64
  %i.aak = sub i64 %i.aai, %i.aaj
  call void @_ZdlPvm(ptr noundef nonnull %i.aaf, i64 noundef %i.aak) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit360

_ZNSt6vectorIiSaIiEED2Ev.exit360:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit358, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.aal = load ptr, ptr %12, align 8, !tbaa !83  ; 3 uses
  %.not.i.i.i361 = icmp eq ptr %i.aal, null
  br i1 %.not.i.i.i361, label %_ZNSt6vectorIiSaIiEED2Ev.exit362, label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit360
  %i.aam = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !84
  %i.aao = ptrtoint ptr %i.aan to i64
  %i.aap = ptrtoint ptr %i.aal to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  call void @_ZdlPvm(ptr noundef nonnull %i.aal, i64 noundef %i.aaq) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit362

_ZNSt6vectorIiSaIiEED2Ev.exit362:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit360, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.aar = load ptr, ptr %11, align 8, !tbaa !83  ; 3 uses
  %.not.i.i.i363 = icmp eq ptr %i.aar, null
  br i1 %.not.i.i.i363, label %_ZNSt6vectorIiSaIiEED2Ev.exit364, label %bb.en

bb.en:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit362
  %i.aas = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !84
  %i.aau = ptrtoint ptr %i.aat to i64
  %i.aav = ptrtoint ptr %i.aar to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  call void @_ZdlPvm(ptr noundef nonnull %i.aar, i64 noundef %i.aaw) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit364

_ZNSt6vectorIiSaIiEED2Ev.exit364:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit362, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.aax = load ptr, ptr %10, align 8, !tbaa !83  ; 3 uses
  %.not.i.i.i365 = icmp eq ptr %i.aax, null
  br i1 %.not.i.i.i365, label %_ZNSt6vectorIiSaIiEED2Ev.exit366, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit364
  %i.aay = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !84
  %i.aba = ptrtoint ptr %i.aaz to i64
  %i.abb = ptrtoint ptr %i.aax to i64
  %i.abc = sub i64 %i.aba, %i.abb
  call void @_ZdlPvm(ptr noundef nonnull %i.aax, i64 noundef %i.abc) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit366

_ZNSt6vectorIiSaIiEED2Ev.exit366:                 ; preds = %bb.eo, %_ZNSt6vectorIiSaIiEED2Ev.exit364, %bb.ae
  %.pn246.pn.pn = phi { ptr, i32 } [ %i.ez, %bb.ae ], [ %.pn246.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit364 ], [ %.pn246.pn, %bb.eo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.abd = load ptr, ptr %9, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i367 = icmp eq ptr %i.abd, null
  br i1 %.not.i.i.i367, label %_ZNSt6vectorIiSaIiEED2Ev.exit368, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit366
  %i.abe = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !84
  %i.abg = ptrtoint ptr %i.abf to i64
  %i.abh = ptrtoint ptr %i.abd to i64
  %i.abi = sub i64 %i.abg, %i.abh
  call void @_ZdlPvm(ptr noundef nonnull %i.abd, i64 noundef %i.abi) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit368

_ZNSt6vectorIiSaIiEED2Ev.exit368:                 ; preds = %bb.ep, %_ZNSt6vectorIiSaIiEED2Ev.exit366, %bb.ad
  %.pn246.pn.pn.pn = phi { ptr, i32 } [ %i.ey, %bb.ad ], [ %.pn246.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit366 ], [ %.pn246.pn.pn, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.abj = load ptr, ptr %8, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i369 = icmp eq ptr %i.abj, null
  br i1 %.not.i.i.i369, label %_ZNSt6vectorIiSaIiEED2Ev.exit370, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit368
  %i.abk = getelementptr inbounds nuw i8, ptr %8, i64 16
end_hunk_1
begin_hunk_2_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_SH_T0_T1_":bb.a
  br i1 %i.es, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.backedge", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit11.thread22.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i.backedge": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit11.i.i", %bb.r, %.split24.i.i
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread19.i.i", !llvm.loop !374

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit11.thread22.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit11.i.i", %bb.s, %.split24.i.i
  %i.et = icmp ult ptr %.sroa.015.1.i.i, %.sroa.012.1.i.i
  br i1 %i.et, label %bb.t, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEET_SH_SH_T0_.exit"

bb.t:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit11.thread22.i.i"
  store i32 %i.ec, ptr %.sroa.015.1.i.i, align 4, !tbaa !18
  store i32 %i.dk, ptr %.sroa.012.1.i.i, align 4, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.015.1.i.i, i64 4
  br label %bb.n, !llvm.loop !375

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEET_SH_SH_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit11.thread22.i.i"
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.015.1.i.i, ptr %storemerge2267, i64 noundef %i.x, ptr %3)
  %i.ev = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.ew = sub i64 %i.ev, %i.a
  %i.ex = ashr exact i64 %i.ew, 2                 ; 3 uses
  %i.ey = icmp sgt i64 %i.ex, 16
  br i1 %i.ey, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_SH_SH_T0_.exit", !llvm.loop !370

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEET_SH_SH_T0_.exit", %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_SI_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree readonly captures(none) %4) unnamed_addr #17 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread40"
  %.044 = phi i64 [ %1, %.lr.ph ], [ %i.ah, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread40" ] ; 2 uses
  %i.g = shl i64 %.044, 1                         ; 2 uses
  %i.h = add i64 %i.g, 2                          ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %0, i64 %i.h
  %i.j = or disjoint i64 %i.g, 1                  ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %i.j
  %i.l = load i32, ptr %i.i, align 4, !tbaa !18   ; 4 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !18   ; 2 uses
  %i.n = zext i32 %i.l to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !18   ; 2 uses
  %i.q = zext i32 %i.m to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18   ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, %i.s
  br i1 %.not.i.i, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.t = icmp slt i32 %i.p, %i.s
  %cond.fr43 = freeze i1 %i.t
  br i1 %cond.fr43, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread40"

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !113  ; 2 uses
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.n ; 2 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.q ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !115
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !116  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !116 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, %i.z
  br i1 %i.ac, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i32 %i.ab, %i.z
  br i1 %i.ad, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread40"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit": ; preds = %bb.d
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !115
  %i.af = icmp sgt i32 %i.ae, %i.x
  %cond.fr = freeze i1 %i.af
  br i1 %cond.fr, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread40"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread": ; preds = %bb.c, %.split, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit"
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread40"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread40": ; preds = %bb.d, %.split, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread"
  %i.ag = phi i32 [ %i.m, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread" ], [ %i.l, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit" ], [ %i.l, %.split ], [ %i.l, %bb.d ]
  %i.ah = phi i64 [ %i.j, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread" ], [ %i.h, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit" ], [ %i.h, %.split ], [ %i.h, %bb.d ] ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.044
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !18
  %i.aj = icmp slt i64 %i.ah, %i.b
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !376

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread40", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.ah, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESG_EEbT_T0_.exit.thread40" ] ; 5 uses
  %i.ak = and i64 %2, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.am = add nsw i64 %2, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = shl nsw i64 %.0.lcssa, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !18
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa
  store i32 %i.as, ptr %i.at, align 4, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.1 = phi i64 [ %i.aq, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.au = icmp sgt i64 %.1, %1
  br i1 %i.au, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_SI_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !83 ; 2 uses
  %i.ax = zext i32 %3 to i64                      ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 80
  br label %bb.h

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.thread.i", %.lr.ph.i
  %.013.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0914.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.thread.i" ] ; 5 uses
  %.0914.in.i = add nsw i64 %.013.i, -1
  %.0914.i = sdiv i64 %.0914.in.i, 2              ; 4 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %.0914.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !18 ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18 ; 2 uses
  %i.bf = load i32, ptr %i.ay, align 4, !tbaa !18 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.be, %i.bf
  br i1 %.not.i.i.i, label %bb.i, label %.split.i

.split.i:                                         ; preds = %bb.h
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.thread.i", label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_SI_T1_RT2_.exit"

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !113 ; 2 uses
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.bh, i64 %i.bc ; 2 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.bh, i64 %i.ax ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !115
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !116 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !116 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, %i.bm
  br i1 %i.bp, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.thread.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = icmp eq i32 %i.bo, %i.bm
  br i1 %i.bq, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.i", label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_SI_T1_RT2_.exit"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.i": ; preds = %bb.j
  %i.br = load i32, ptr %i.bj, align 4, !tbaa !115
  %i.bs = icmp sgt i32 %i.br, %i.bk
  br i1 %i.bs, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.thread.i", label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_SI_T1_RT2_.exit"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.thread.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.i", %bb.i, %.split.i
  %i.bt = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.i
  store i32 %i.bb, ptr %i.bt, align 4, !tbaa !18
  %i.bu = icmp sgt i64 %.0914.i, %1
  br i1 %i.bu, label %bb.h, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_SI_T1_RT2_.exit", !llvm.loop !377

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorSB_SB_SB_PK12llama_ubatchjbE3$_1EEEvT_T0_SI_T1_RT2_.exit": ; preds = %.split.i, %bb.j, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.thread.i", %bb.g
  %.0.lcssa.i = phi i64 [ %.1, %bb.g ], [ %.013.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.i" ], [ %.0914.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK23llama_memory_hybrid_idx13set_input_qsaEP11ggml_tensorS4_S4_S4_PK12llama_ubatchjbE3$_1EclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_.exit.thread.i" ], [ %.013.i, %.split.i ], [ %.013.i, %bb.j ]
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i
  store i32 %3, ptr %i.bv, align 4, !tbaa !18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null, null, null}
!1 = distinct !{null, null, null}
!2 = distinct !{ptr @_ZNSt6vectorI12llama_ubatchSaIS0_EED2Ev, null, null, null, ptr @_ZN12llama_ubatchD2Ev, null, null, null}
!3 = distinct !{!3, !71}
!4 = distinct !{!4, !71}
!5 = distinct !{!5, !71}
!6 = distinct !{null, null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"vtable pointer", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{!"p1 omnipotent char", !17, i64 0}
!20 = !{!"long", !11, i64 0}
!21 = !{!"bool", !11, i64 0}
!22 = !{!"float", !11, i64 0}
!23 = !{!"p1 _ZTS11ggml_tensor", !17, i64 0}
!24 = !{!"p1 int", !17, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !27, i64 0}
!29 = !{!"any p2 pointer", !17, i64 0}
!30 = !{!"p1 float", !17, i64 0}
!31 = !{!"_ZTS14llama_memory_i"}
!32 = !{!"p1 _ZTS13llama_hparams", !17, i64 0}
!33 = !{!"p1 _ZTS14llama_kv_cache", !17, i64 0}
!34 = !{!"p1 _ZTS22llama_memory_recurrent", !17, i64 0}
!35 = !{!33, !33, i64 0}
!36 = !{!34, !34, i64 0}
!37 = !{!17, !17, i64 0}
!38 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!39 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !38, i64 0}
!40 = !{!39, !38, i64 0}
!41 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 8, !12, i64 12}
!42 = !{!41, !12, i64 8}
!43 = !{!41, !12, i64 12}
!44 = !{!11, !11, i64 0}
!45 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!46 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIjSaIjEE", !48, i64 0}
!50 = !{!"p2 int", !29, i64 0}
!51 = !{!"p1 _ZTSN12llama_ubatch6data_tE", !17, i64 0}
!52 = !{!"_ZTSSt12__shared_ptrIN12llama_ubatch6data_tELN9__gnu_cxx12_Lock_policyE2EE", !51, i64 0, !39, i64 8}
!53 = !{!"_ZTSSt10shared_ptrIN12llama_ubatch6data_tEE", !52, i64 0}
!54 = !{!"_ZTS12llama_ubatch", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !24, i64 24, !30, i64 32, !24, i64 40, !24, i64 48, !50, i64 56, !24, i64 64, !24, i64 72, !19, i64 80, !53, i64 88}
!55 = !{!54, !12, i64 4}
!56 = !{!"p1 _ZTS12llama_ubatch", !17, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseI12llama_ubatchSaIS0_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!57, !56, i64 8}
!59 = !{!57, !56, i64 16}
!60 = !{!52, !51, i64 0}
!61 = !{!"p1 _ZTS22llama_memory_context_i", !17, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm0EP22llama_memory_context_iLb0EE", !61, i64 0}
!63 = !{!62, !61, i64 0}
!64 = !{!"p1 _ZTSN14llama_kv_cache9slot_infoE", !17, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"p1 _ZTS23llama_memory_hybrid_idx", !17, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"p1 _ZTS31llama_memory_hybrid_idx_context", !17, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!57, !56, i64 0}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"_ZTSNSt12_Vector_baseIN14llama_kv_cache9slot_infoESaIS1_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!73 = !{!72, !64, i64 8}
!74 = !{!72, !64, i64 0}
!75 = !{!72, !64, i64 16}
!76 = !{!"p1 _ZTSSt6vectorIjSaIjEE", !17, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseISt6vectorIjSaIjEESaIS2_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!77, !76, i64 0}
!79 = !{!77, !76, i64 8}
!80 = !{!46, !24, i64 0}
!81 = !{!46, !24, i64 16}
!82 = !{!77, !76, i64 16}
!83 = !{!25, !24, i64 0}
!84 = !{!25, !24, i64 16}
!85 = !{!"_ZTSSt14_Rb_tree_color", !11, i64 0}
!86 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !17, i64 0}
!87 = !{!"_ZTSSt18_Rb_tree_node_base", !85, i64 0, !86, i64 8, !86, i64 16, !86, i64 24}
!88 = !{!"_ZTSSt15_Rb_tree_header", !87, i64 0, !20, i64 32}
!89 = !{!88, !86, i64 16}
!90 = !{!88, !86, i64 8}
!91 = !{!"p1 _ZTS24ggml_backend_buffer_type", !17, i64 0}
!92 = !{!"_ZTSSt4pairIKP24ggml_backend_buffer_typemE", !91, i64 0, !20, i64 8}
!93 = !{!92, !20, i64 8}
!94 = !{!20, !20, i64 0}
!95 = !{!91, !91, i64 0}
!96 = !{!86, !86, i64 0}
!97 = !{!88, !20, i64 32}
!98 = !{!25, !24, i64 8}
!99 = !{!"p1 long", !17, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!101 = !{!100, !99, i64 0}
!102 = !{!100, !99, i64 16}
!103 = !{!24, !24, i64 0}
!104 = !{!21, !21, i64 0}
!105 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !17, i64 0}
!106 = !{!"p1 _ZTSSt6vectorImSaImEE", !17, i64 0}
!107 = !{!"p1 bool", !17, i64 0}
!108 = !{!"p1 _ZTS14llama_kv_cells", !17, i64 0}
!109 = !{i8 0, i8 2}
!110 = !{}
!111 = !{!"p1 _ZTS17llama_kv_cell_ext", !17, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseI17llama_kv_cell_extSaIS0_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!"_ZTS17llama_kv_cell_ext", !12, i64 0, !12, i64 4, !12, i64 8}
!115 = !{!114, !12, i64 0}
!116 = !{!114, !12, i64 4}
!117 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!118 = !{!"p1 _ZTSSt6bitsetILm256EE", !17, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseISt6bitsetILm256EESaIS1_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!120 = !{!119, !118, i64 0}
!121 = !{!"_ZTS22llama_memory_context_i"}
!122 = !{!"_ZTSNSt12_Vector_baseI12llama_ubatchSaIS0_EE12_Vector_implE", !57, i64 0}
!123 = !{!"_ZTSSt12_Vector_baseI12llama_ubatchSaIS0_EE", !122, i64 0}
!124 = !{!"_ZTSSt6vectorI12llama_ubatchSaIS0_EE", !123, i64 0}
!125 = !{!"_ZTSSt11_Tuple_implILm0EJP22llama_memory_context_iSt14default_deleteIS0_EEE", !62, i64 0}
!126 = !{!"_ZTSSt5tupleIJP22llama_memory_context_iSt14default_deleteIS0_EEE", !125, i64 0}
!127 = !{!"_ZTSSt15__uniq_ptr_implI22llama_memory_context_iSt14default_deleteIS0_EE", !126, i64 0}
!128 = !{!"_ZTSSt15__uniq_ptr_dataI22llama_memory_context_iSt14default_deleteIS0_ELb1ELb1EE", !127, i64 0}
!129 = !{!"_ZTSSt10unique_ptrI22llama_memory_context_iSt14default_deleteIS0_EE", !128, i64 0}
!130 = !{!"_ZTS19llama_memory_status", !11, i64 0}
!131 = !{!"_ZTS27llama_memory_hybrid_context", !121, i64 0, !20, i64 8, !124, i64 16, !129, i64 40, !129, i64 48, !130, i64 56}
!132 = !{!"_ZTS31llama_memory_hybrid_idx_context", !131, i64 0, !66, i64 64, !49, i64 72, !129, i64 96, !20, i64 104}
!133 = !{!132, !66, i64 64}
!134 = !{!46, !24, i64 8}
!135 = !{!61, !61, i64 0}
!136 = !{!132, !20, i64 104}
!137 = !{!87, !86, i64 24}
!138 = !{!76, !76, i64 0}
!139 = !{!"_ZTSSt14_Function_base", !11, i64 0, !17, i64 16}
!140 = !{!139, !17, i64 16}
!141 = !{!"_ZTS8llm_type", !11, i64 0}
!142 = !{!"_ZTS8llm_arch", !11, i64 0}
!143 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!144 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !143, i64 0, !20, i64 8, !11, i64 16}
!145 = !{!"_ZTS20llama_hparams_posnet", !12, i64 0, !12, i64 4}
!146 = !{!"_ZTS22llama_hparams_convnext", !12, i64 0, !12, i64 4}
!147 = !{!"_ZTSSt5arrayIjLm512EE", !11, i64 0}
!148 = !{!"_ZTSSt5arrayIiLm4EE", !11, i64 0}
!149 = !{!"_ZTS14llama_swa_type", !11, i64 0}
!150 = !{!"_ZTS21llama_non_causal_type", !11, i64 0}
!151 = !{!"_ZTSSt5arrayIfLm512EE", !11, i64 0}
!152 = !{!"_ZTSSt12_Base_bitsetILm8EE", !11, i64 0}
!153 = !{!"_ZTSSt6bitsetILm512EE", !152, i64 0}
!154 = !{!"_ZTSSt5arrayImLm8EE", !11, i64 0}
!155 = !{!"_ZTSSt5arrayIjLm64EE", !11, i64 0}
!156 = !{!"_ZTSSt5arrayIiLm512EE", !11, i64 0}
!157 = !{!"_ZTS18llama_pooling_type", !11, i64 0}
!158 = !{!"_ZTS15llama_rope_type", !11, i64 0}
!159 = !{!"_ZTS23llama_rope_scaling_type", !11, i64 0}
!160 = !{!"_ZTS15llm_ffn_op_type", !11, i64 0}
!161 = !{!"_ZTS13llama_hparams", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !21, i64 4, !21, i64 5, !21, i64 6, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !145, i64 72, !146, i64 80, !12, i64 88, !147, i64 92, !147, i64 2140, !147, i64 4188, !147, i64 6236, !147, i64 8284, !12, i64 10332, !12, i64 10336, !12, i64 10340, !12, i64 10344, !12, i64 10348, !12, i64 10352, !12, i64 10356, !12, i64 10360, !12, i64 10364, !12, i64 10368, !12, i64 10372, !12, i64 10376, !12, i64 10380, !22, i64 10384, !22, i64 10388, !21, i64 10392, !12, i64 10396, !12, i64 10400, !12, i64 10404, !22, i64 10408, !22, i64 10412, !22, i64 10416, !22, i64 10420, !22, i64 10424, !22, i64 10428, !12, i64 10432, !12, i64 10436, !12, i64 10440, !12, i64 10444, !12, i64 10448, !12, i64 10452, !12, i64 10456, !12, i64 10460, !12, i64 10464, !22, i64 10468, !22, i64 10472, !22, i64 10476, !22, i64 10480, !22, i64 10484, !22, i64 10488, !12, i64 10492, !22, i64 10496, !22, i64 10500, !22, i64 10504, !22, i64 10508, !22, i64 10512, !148, i64 10516, !147, i64 10532, !149, i64 12580, !12, i64 12584, !150, i64 12588, !147, i64 12592, !147, i64 14640, !12, i64 16688, !12, i64 16692, !12, i64 16696, !12, i64 16700, !12, i64 16704, !12, i64 16708, !12, i64 16712, !21, i64 16716, !12, i64 16720, !12, i64 16724, !22, i64 16728, !22, i64 16732, !22, i64 16736, !21, i64 16740, !22, i64 16744, !22, i64 16748, !22, i64 16752, !22, i64 16756, !22, i64 16760, !22, i64 16764, !22, i64 16768, !12, i64 16772, !22, i64 16776, !21, i64 16780, !21, i64 16781, !21, i64 16782, !21, i64 16783, !12, i64 16784, !12, i64 16788, !12, i64 16792, !12, i64 16796, !12, i64 16800, !12, i64 16804, !12, i64 16808, !12, i64 16812, !12, i64 16816, !12, i64 16820, !12, i64 16824, !12, i64 16828, !22, i64 16832, !22, i64 16836, !12, i64 16840, !12, i64 16844, !12, i64 16848, !12, i64 16852, !12, i64 16856, !12, i64 16860, !12, i64 16864, !12, i64 16868, !151, i64 16872, !151, i64 18920, !151, i64 20968, !151, i64 23016, !12, i64 25064, !12, i64 25068, !12, i64 25072, !12, i64 25076, !12, i64 25080, !147, i64 25084, !12, i64 27132, !12, i64 27136, !12, i64 27140, !12, i64 27144, !12, i64 27148, !22, i64 27152, !22, i64 27156, !147, i64 27160, !12, i64 29208, !12, i64 29212, !12, i64 29216, !12, i64 29220, !12, i64 29224, !12, i64 29228, !12, i64 29232, !12, i64 29236, !153, i64 29240, !154, i64 29304, !155, i64 29368, !155, i64 29624, !12, i64 29880, !156, i64 29884, !12, i64 31932, !12, i64 31936, !12, i64 31940, !157, i64 31944, !158, i64 31948, !159, i64 31952, !160, i64 31956, !151, i64 31960, !151, i64 34008}
!162 = !{!"p1 _ZTSN11llama_vocab4implE", !17, i64 0}
!163 = !{!"_ZTSSt10_Head_baseILm0EPN11llama_vocab4implELb0EE", !162, i64 0}
!164 = !{!"_ZTSSt11_Tuple_implILm0EJPN11llama_vocab4implESt14default_deleteIS1_EEE", !163, i64 0}
!165 = !{!"_ZTSSt5tupleIJPN11llama_vocab4implESt14default_deleteIS1_EEE", !164, i64 0}
!166 = !{!"_ZTSSt15__uniq_ptr_implIN11llama_vocab4implESt14default_deleteIS1_EE", !165, i64 0}
end_hunk_2
