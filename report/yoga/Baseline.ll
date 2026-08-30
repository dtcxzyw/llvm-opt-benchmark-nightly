Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/Baseline?download=true
inline.NumInlined: 140
inline.NumDeleted: 74
begin_hunk_0_@_ZN8facebook4yoga16isBaselineLayoutEPKNS0_4NodeE:bb.a
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit32 ], [ %i.r, %bb.f ], [ %i.r, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !alias.scope !94
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit: ; preds = %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge, %bb.g
  %i.u = phi i64 [ %.pre60, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ 0, %bb.g ] ; 2 uses
  %i.v = phi ptr [ %.pre, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ null, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not.i1648 = icmp ne ptr %i.v, null
  %i.x = icmp ne i64 %i.u, 0
  %.not37.not49 = select i1 %.not.i1648, i1 true, i1 %i.x
  br i1 %.not37.not49, label %.lr.ph, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

.lr.ph:                                           ; preds = %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %i.y = phi ptr [ %i.q, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.w, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ] ; 4 uses
  %i.z = phi ptr [ %0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.v, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.aa = phi i64 [ 0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.u, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit27

bb.i:                                             ; preds = %.lr.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit
  %i.ad = phi ptr [ %i.z, %.lr.ph ], [ %i.bw, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 3 uses
  %i.ae = phi i64 [ %i.aa, %.lr.ph ], [ %i.bv, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 696
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 704
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !72
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !73 ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.ae, %i.am
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.ae, i64 noundef %i.am) #10
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ae
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.ar = and i32 %i.aq, 805306368
  %.not = icmp ne i32 %i.ar, 536870912
  %i.as = and i32 %i.aq, 251658240
  %i.at = icmp eq i32 %i.as, 83886080
  %or.cond = and i1 %.not, %i.at                  ; 3 uses
  br i1 %or.cond, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit27

.critedge:                                        ; preds = %bb.k
  %i.av = add nuw i64 %i.ae, 1                    ; 2 uses
  %.not11.i.i = icmp ult i64 %i.av, %i.am
  br i1 %.not11.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %tailrecurse.i.i
  %i.aw = load ptr, ptr %i.ab, align 8, !tbaa !87 ; 5 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, label %tailrecurse.i.i, !prof !88

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

tailrecurse.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !89
  store ptr %i.az, ptr %1, align 8, !tbaa !74
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !91
  store i64 %i.bb, ptr %i.y, align 8, !tbaa !92
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !83
  store ptr %i.bc, ptr %i.ab, align 8, !tbaa !83
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 24) #9, !inline_history !93
  %i.bd = load i64, ptr %i.y, align 8, !tbaa !92
  %i.be = add i64 %i.bd, 1                        ; 2 uses
  %i.bf = load ptr, ptr %1, align 8, !tbaa !74    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 696
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 704
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !72
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !73 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3
  %.not.i.i = icmp ult i64 %i.be, %i.bn
  br i1 %.not.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i, label %.lr.ph.i.i

_ZNK8facebook4yoga4Node8getChildEm.exit.i.i:      ; preds = %tailrecurse.i.i, %.critedge
  %i.bo = phi ptr [ %i.ad, %.critedge ], [ %i.bf, %tailrecurse.i.i ]
  %.lcssa6.i.i = phi i64 [ %i.av, %.critedge ], [ %i.be, %tailrecurse.i.i ] ; 3 uses
  %.lcssa.i.i = phi ptr [ %i.ai, %.critedge ], [ %i.bj, %tailrecurse.i.i ]
  store i64 %.lcssa6.i.i, ptr %i.y, align 8, !tbaa !92
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.i.i, i64 %.lcssa6.i.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !81
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 60
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = and i8 %i.bs, 12
  %i.bu = icmp eq i8 %i.bt, 8
  br i1 %i.bu, label %bb.m, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit, !prof !82

bb.m:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
          to label %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge unwind label %bb.h

._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge: ; preds = %bb.m
  %.pre61 = load ptr, ptr %1, align 8, !tbaa !74
  %.pre62 = load i64, ptr %i.y, align 8
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit: ; preds = %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i
  %i.bv = phi i64 [ %.pre62, %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge ], [ 0, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i ], [ %.lcssa6.i.i, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i ] ; 2 uses
  %i.bw = phi ptr [ %.pre61, %._ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit_crit_edge ], [ null, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.i.i ], [ %i.bo, %_ZNK8facebook4yoga4Node8getChildEm.exit.i.i ] ; 2 uses
  %.not.i16 = icmp ne ptr %i.bw, null
  %i.bx = icmp ne i64 %i.bv, 0
  %.not37.not = select i1 %.not.i16, i1 true, i1 %i.bx
  br i1 %.not37.not, label %bb.i, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit, %bb.k, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.not37.not.lcssa = phi i1 [ false, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ], [ %or.cond, %bb.k ], [ %or.cond, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !83 ; 2 uses
  %.not12.i.i.i18 = icmp eq ptr %i.bz, null
  br i1 %.not12.i.i.i18, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit22, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, %.lr.ph.i.i.i19
  %.013.i.i.i20 = phi ptr [ %i.ca, %.lr.ph.i.i.i19 ], [ %i.bz, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 2 uses
  %i.ca = load ptr, ptr %.013.i.i.i20, align 8, !tbaa !83 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i20, i64 noundef 24) #9
  %.not.i.i.i21 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i21, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit22, label %.lr.ph.i.i.i19, !llvm.loop !84

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit22: ; preds = %.lr.ph.i.i.i19, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.n

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit27: ; preds = %bb.h, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %i.au, %bb.l ]
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !83 ; 2 uses
  %.not12.i.i.i28 = icmp eq ptr %i.cb, null
  br i1 %.not12.i.i.i28, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit32, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit27, %.lr.ph.i.i.i29
  %.013.i.i.i30 = phi ptr [ %i.cc, %.lr.ph.i.i.i29 ], [ %i.cb, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit27 ] ; 2 uses
  %i.cc = load ptr, ptr %.013.i.i.i30, align 8, !tbaa !83 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i30, i64 noundef 24) #9
  %.not.i.i.i31 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i31, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit32, label %.lr.ph.i.i.i29, !llvm.loop !84

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit32: ; preds = %.lr.ph.i.i.i29, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %common.resume

bb.n:                                             ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit22, %bb.b, %bb.a
  %.3 = phi i1 [ %.not37.not.lcssa, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit22 ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !92   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !73   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.c, %i.k
  br i1 %.not.i.i.i, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef %i.c, i64 noundef %i.k) #10
  unreachable

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.0.peel = load ptr, ptr %i.l, align 8, !tbaa !81 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.peel, i64 60
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, 12
  %i.q = icmp eq i8 %i.p, 8
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.0.peel, i64 696 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.peel, i64 704 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !73
  %.not.peel = icmp eq ptr %i.t, %i.u
  br i1 %.not.peel, label %.loopexit, label %_ZNK8facebook4yoga4Node8getChildEm.exit7.peel.next

_ZNK8facebook4yoga4Node8getChildEm.exit7.peel.next: ; preds = %bb.c
  %i.v = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.a, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx.peel, align 8
  %1 = load ptr, ptr %i.m, align 8, !tbaa !83
  store ptr %1, ptr %i.v, align 8, !tbaa !83
  store ptr %i.v, ptr %i.m, align 8, !tbaa !83
  store ptr %.0.peel, ptr %0, align 8, !tbaa !74
  store i64 0, ptr %i.b, align 8, !tbaa !92
  %2 = load ptr, ptr %i.s, align 8, !tbaa !72
  %3 = load ptr, ptr %i.r, align 8, !tbaa !73     ; 2 uses
  %.not.i.i.i6.not.peel = icmp eq ptr %2, %3
  br i1 %.not.i.i.i6.not.peel, label %.loopexit11, label %_ZNK8facebook4yoga4Node8getChildEm.exit7

_ZNK8facebook4yoga4Node8getChildEm.exit7:         ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit7.peel.next, %bb.e
  %i.x = phi ptr [ %.0, %bb.e ], [ %.0.peel, %_ZNK8facebook4yoga4Node8getChildEm.exit7.peel.next ]
  %.0.in = phi ptr [ %i.aj, %bb.e ], [ %3, %_ZNK8facebook4yoga4Node8getChildEm.exit7.peel.next ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !81  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 60
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, 12
  %i.ab = icmp eq i8 %i.aa, 8
  br i1 %i.ab, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit7
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 696 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 704 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !73
  %.not = icmp eq ptr %i.ae, %i.af
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.x, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %4 = load ptr, ptr %i.m, align 8, !tbaa !83
  store ptr %4, ptr %i.ag, align 8, !tbaa !83
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !83
  store ptr %.0, ptr %0, align 8, !tbaa !74
  store i64 0, ptr %i.b, align 8, !tbaa !92
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !72
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i6.not = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i.i6.not, label %.loopexit11, label %_ZNK8facebook4yoga4Node8getChildEm.exit7, !llvm.loop !97

.loopexit11:                                      ; preds = %bb.e, %_ZNK8facebook4yoga4Node8getChildEm.exit7.peel.next
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 0) #10
  unreachable

.loopexit:                                        ; preds = %bb.d, %bb.c
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %.critedge

.critedge:                                        ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %_ZNK8facebook4yoga4Node8getChildEm.exit7, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator4nextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 696
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not11 = icmp ult i64 %i.c, %i.l
  br i1 %.not11, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87   ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, label %tailrecurse, !prof !88

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

tailrecurse:                                      ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89
  store ptr %i.q, ptr %0, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !91
  store i64 %i.s, ptr %i.a, align 8, !tbaa !92
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !83
  store ptr %i.t, ptr %i.m, align 8, !tbaa !83
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 24) #9
  %i.u = load i64, ptr %i.a, align 8, !tbaa !92
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 696
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 704
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !73  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not = icmp ult i64 %i.v, %i.ae
  br i1 %.not, label %_ZNK8facebook4yoga4Node8getChildEm.exit, label %bb.b

_ZNK8facebook4yoga4Node8getChildEm.exit:          ; preds = %tailrecurse, %bb.a
  %.lcssa6 = phi i64 [ %i.c, %bb.a ], [ %i.v, %tailrecurse ] ; 2 uses
  %.lcssa = phi ptr [ %i.h, %bb.a ], [ %i.aa, %tailrecurse ]
  store i64 %.lcssa6, ptr %i.a, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %.lcssa6
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 12
  %i.ak = icmp eq i8 %i.aj, 8
  br i1 %i.ak, label %bb.c, label %bb.d, !prof !82

bb.c:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit
  tail call void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook4yoga4Node8getChildEm.exit, %bb.c, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN8facebook4yoga5Event7publishEPK6YGNodeNS1_4TypeERKNS1_4DataE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { noreturn }
attributes #11 = { "function-inline-cost-multiplier"="2" }
attributes #12 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !13, i64 40}
!10 = !{!"_ZTSN8facebook4yoga4NodeE", !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !14, i64 32, !14, i64 36, !13, i64 40, !13, i64 48, !16, i64 56, !51, i64 336, !43, i64 672, !43, i64 680, !57, i64 688, !58, i64 696, !64, i64 720, !65, i64 728}
!11 = !{!"bool", !7, i64 0}
!12 = !{!"_ZTSN8facebook4yoga8NodeTypeE", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"_ZTSN8facebook4yoga13FloatOptionalE", !15, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{!"_ZTSN8facebook4yoga5StyleE", !17, i64 0, !18, i64 0, !19, i64 0, !19, i64 1, !19, i64 1, !20, i64 2, !20, i64 2, !20, i64 3, !21, i64 3, !22, i64 3, !23, i64 4, !24, i64 4, !25, i64 4, !26, i64 5, !26, i64 7, !26, i64 9, !26, i64 11, !28, i64 13, !28, i64 31, !28, i64 49, !28, i64 67, !29, i64 85, !30, i64 91, !30, i64 95, !30, i64 99, !26, i64 103, !31, i64 112, !31, i64 136, !31, i64 160, !31, i64 184, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !38, i64 240}
!17 = !{!"_ZTSN8facebook4yoga9DirectionE", !7, i64 0}
!18 = !{!"_ZTSN8facebook4yoga13FlexDirectionE", !7, i64 0}
!19 = !{!"_ZTSN8facebook4yoga7JustifyE", !7, i64 0}
!20 = !{!"_ZTSN8facebook4yoga5AlignE", !7, i64 0}
!21 = !{!"_ZTSN8facebook4yoga12PositionTypeE", !7, i64 0}
!22 = !{!"_ZTSN8facebook4yoga4WrapE", !7, i64 0}
!23 = !{!"_ZTSN8facebook4yoga8OverflowE", !7, i64 0}
!24 = !{!"_ZTSN8facebook4yoga7DisplayE", !7, i64 0}
!25 = !{!"_ZTSN8facebook4yoga9BoxSizingE", !7, i64 0}
!26 = !{!"_ZTSN8facebook4yoga16StyleValueHandleE", !27, i64 0}
!27 = !{!"short", !7, i64 0}
!28 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm9EE", !7, i64 0}
!29 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm3EE", !7, i64 0}
!30 = !{!"_ZTSSt5arrayIN8facebook4yoga16StyleValueHandleELm2EE", !7, i64 0}
!31 = !{!"_ZTSSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EE", !32, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE12_Vector_implE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSN8facebook4yoga13GridTrackSizeE", !13, i64 0}
!36 = !{!"_ZTSN8facebook4yoga8GridLineE", !37, i64 0, !6, i64 4}
!37 = !{!"_ZTSN8facebook4yoga12GridLineTypeE", !7, i64 0}
!38 = !{!"_ZTSN8facebook4yoga14StyleValuePoolE", !39, i64 0}
!39 = !{!"_ZTSN8facebook4yoga16SmallValueBufferILm4EEE", !27, i64 0, !40, i64 4, !41, i64 24, !44, i64 32}
!40 = !{!"_ZTSSt5arrayIjLm4EE", !7, i64 0}
!41 = !{!"_ZTSSt6bitsetILm4EE", !42, i64 0}
!42 = !{!"_ZTSSt12_Base_bitsetILm1EE", !43, i64 0}
!43 = !{!"long", !7, i64 0}
!44 = !{!"_ZTSSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EE", !45, i64 0}
!45 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_ELb1ELb1EE", !46, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EE", !47, i64 0}
!47 = !{!"_ZTSSt5tupleIJPN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEE", !48, i64 0}
!48 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEE", !49, i64 0}
!49 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook4yoga16SmallValueBufferILm4EE8OverflowELb0EE", !50, i64 0}
!50 = !{!"p1 _ZTSN8facebook4yoga16SmallValueBufferILm4EE8OverflowE", !13, i64 0}
!51 = !{!"_ZTSN8facebook4yoga13LayoutResultsE", !6, i64 0, !14, i64 4, !14, i64 8, !6, i64 12, !6, i64 16, !17, i64 20, !6, i64 24, !52, i64 28, !53, i64 220, !17, i64 244, !11, i64 244, !55, i64 248, !55, i64 256, !55, i64 264, !56, i64 272, !56, i64 288, !56, i64 304, !56, i64 320}
!52 = !{!"_ZTSSt5arrayIN8facebook4yoga17CachedMeasurementELm8EE", !7, i64 0}
!53 = !{!"_ZTSN8facebook4yoga17CachedMeasurementE", !15, i64 0, !15, i64 4, !54, i64 8, !54, i64 12, !15, i64 16, !15, i64 20}
!54 = !{!"_ZTSN8facebook4yoga10SizingModeE", !7, i64 0}
!55 = !{!"_ZTSSt5arrayIfLm2EE", !7, i64 0}
!56 = !{!"_ZTSSt5arrayIfLm4EE", !7, i64 0}
!57 = !{!"p1 _ZTSN8facebook4yoga4NodeE", !13, i64 0}
!58 = !{!"_ZTSSt6vectorIPN8facebook4yoga4NodeESaIS3_EE", !59, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE12_Vector_implE", !61, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIPN8facebook4yoga4NodeESaIS3_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!62 = !{!"p2 _ZTSN8facebook4yoga4NodeE", !63, i64 0}
!63 = !{!"any p2 pointer", !13, i64 0}
!64 = !{!"p1 _ZTSN8facebook4yoga6ConfigE", !13, i64 0}
!65 = !{!"_ZTSSt5arrayIN8facebook4yoga15StyleSizeLengthELm2EE", !7, i64 0}
!66 = !{!67, !13, i64 0}
!67 = !{!"_ZTSN8facebook4yoga5Event4DataE", !13, i64 0}
!68 = !{!15, !15, i64 0}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv: argument 0"}
!71 = distinct !{!71, !"_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv"}
!72 = !{!61, !62, i64 8}
!73 = !{!61, !62, i64 0}
!74 = !{!75, !57, i64 0}
!75 = !{!"_ZTSN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorE", !57, i64 0, !43, i64 8, !76, i64 16}
!76 = !{!"_ZTSSt12forward_listISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !77, i64 0}
!77 = !{!"_ZTSSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE", !78, i64 0}
!78 = !{!"_ZTSNSt14_Fwd_list_baseISt4pairIPKN8facebook4yoga4NodeEmESaIS6_EE14_Fwd_list_implE", !79, i64 0}
!79 = !{!"_ZTSSt19_Fwd_list_node_base", !80, i64 0}
!80 = !{!"p1 _ZTSSt19_Fwd_list_node_base", !13, i64 0}
!81 = !{!57, !57, i64 0}
!82 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!83 = !{!79, !80, i64 0}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!10, !43, i64 672}
!87 = !{!77, !80, i64 0}
!88 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!89 = !{!90, !57, i64 0}
end_hunk_0
