inline.NumInlined: 6243
inline.NumDeleted: 1690
begin_hunk_0_@_ZN7testing8internal12UnitTestImpl11FilterTestsENS1_18ReactionToShardingE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7    ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !14
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.414) #56
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #53
  store i64 %i.w, ptr %i.b, align 8, !tbaa !15
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !7
  %i.z = load i64, ptr %i.b, align 8, !tbaa !15
  store i64 %i.z, ptr %i.l, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.aa = phi ptr [ %i.y, %.noexc.i ], [ %i.l, %bb.e ] ; 2 uses
  switch i64 %i.w, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !13
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !13
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  store i64 %i.ac, ptr %i.m, align 8, !tbaa !16
  %i.ad = load ptr, ptr %2, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 112 ; 3 uses
  store i8 0, ptr %i.af, align 8, !tbaa !215
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !237
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !238 ; 2 uses
  %.not106 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not106, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %bb.h
  %.140.lcssa = phi i32 [ %.03999, %bb.h ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0100, %bb.h ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ]
  %i.ak = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.l
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.am = load i64, ptr %i.l, align 8, !tbaa !13
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %i.ao = add nuw i64 %.04198, 1                  ; 2 uses
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !233 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = icmp ult i64 %i.ao, %i.au
  br i1 %i.av, label %bb.d, label %._crit_edge103, !llvm.loop !988

.lr.ph:                                           ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.aw = phi ptr [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.aj, %bb.h ]
  %.196 = phi i32 [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %.0100, %bb.h ] ; 2 uses
  %.14095 = phi i32 [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %.03999, %bb.h ]
  %.04494 = phi i64 [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ 0, %bb.h ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04494
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !224 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !7  ; 4 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !14
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.414) #56
          to label %.noexc55 unwind label %.loopexit.split-lp

.noexc55:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.lr.ph
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !15
  %i.bd = icmp ugt i64 %i.bc, 15
  br i1 %i.bd, label %.noexc.i54, label %._crit_edge.i.i53

.noexc.i54:                                       ; preds = %bb.j
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc56 unwind label %.loopexit ; 2 uses

.noexc56:                                         ; preds = %.noexc.i54
  store ptr %i.be, ptr %3, align 8, !tbaa !7
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.bf, ptr %i.n, align 8, !tbaa !13
  br label %._crit_edge.i.i53

._crit_edge.i.i53:                                ; preds = %.noexc56, %bb.j
  %i.bg = phi ptr [ %i.be, %.noexc56 ], [ %i.n, %bb.j ] ; 2 uses
  switch i64 %i.bc, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i53
  %i.bh = load i8, ptr %i.ba, align 1, !tbaa !13
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !13
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr nonnull align 1 %i.ba, i64 %i.bc, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i53
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  store i64 %i.bi, ptr %i.o, align 8, !tbaa !16
  %i.bj = load ptr, ptr %3, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  %i.bl = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.bm = call noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions20PatternMatchesStringEPKcS3_(ptr noundef nonnull @_ZN7testingL18kDisableTestFilterE, ptr noundef %i.bl)
  br i1 %i.bm, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit62, label %.lr.ph.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  %i.bo = call noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions20PatternMatchesStringEPKcS3_(ptr noundef nonnull %i.bn, ptr noundef %i.bl)
  br i1 %i.bo, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit62, label %.lr.ph.i, !llvm.loop !161

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.09.i = phi ptr [ %i.bn, %bb.n ], [ @_ZN7testingL18kDisableTestFilterE, %bb.m ]
  %i.bp = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.09.i, i32 noundef 58) #55 ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %bb.n

_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %.lr.ph.i
  %i.bq = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.br = call noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions20PatternMatchesStringEPKcS3_(ptr noundef nonnull @_ZN7testingL18kDisableTestFilterE, ptr noundef %i.bq)
  br i1 %i.br, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit62, label %.lr.ph.i58

bb.o:                                             ; preds = %.lr.ph.i58
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 2 uses
  %i.bt = call noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions20PatternMatchesStringEPKcS3_(ptr noundef nonnull %i.bs, ptr noundef %i.bq)
  br i1 %i.bt, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit62, label %.lr.ph.i58, !llvm.loop !161

.lr.ph.i58:                                       ; preds = %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, %bb.o
  %.09.i59 = phi ptr [ %i.bs, %bb.o ], [ @_ZN7testingL18kDisableTestFilterE, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ]
  %i.bu = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.09.i59, i32 noundef 58) #55 ; 2 uses
  %.not.i60.not.not = icmp ne ptr %i.bu, null     ; 3 uses
  br i1 %.not.i60.not.not, label %bb.o, label %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit62

_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit62: ; preds = %bb.n, %.lr.ph.i58, %bb.o, %bb.m, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %i.bv = phi i1 [ true, %bb.m ], [ true, %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit ], [ %.not.i60.not.not, %.lr.ph.i58 ], [ %.not.i60.not.not, %bb.o ], [ true, %bb.n ] ; 2 uses
  %i.bw = zext i1 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 129
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !236
  %i.by = invoke noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions17FilterMatchesTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.p unwind label %bb.s       ; 2 uses

bb.p:                                             ; preds = %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit62
  %i.bz = zext i1 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 130
  store i8 %i.bz, ptr %i.ca, align 2, !tbaa !235
  %i.cb = load i8, ptr @_ZN7testing35FLAGS_gtest_also_run_disabled_testsE, align 1, !tbaa !73, !range !74, !noundef !75
  %i.cc = trunc nuw i8 %i.cb to i1
  %.not51 = xor i1 %i.bv, true
  %not.or.cond = or i1 %.not51, %i.cc
  %i.cd = and i1 %i.by, %not.or.cond              ; 3 uses
  %brmerge.not = and i1 %i.p, %i.cd
  br i1 %brmerge.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = srem i32 %.196, %i.f
  %i.cf = icmp eq i32 %i.ce, %i.g
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.cg = phi i1 [ %i.cd, %bb.p ], [ %i.cf, %bb.q ] ; 3 uses
  %i.ch = zext i1 %i.cg to i8
  %i.ci = zext i1 %i.cd to i32
  %i.cj = add nsw i32 %.196, %i.ci                ; 2 uses
  %i.ck = zext i1 %i.cg to i32
  %i.cl = add nsw i32 %.14095, %i.ck              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  store i8 %i.ch, ptr %i.cm, align 8, !tbaa !225
  %i.cn = load i8, ptr %i.af, align 8, !tbaa !215, !range !74, !noundef !75
  %4 = trunc nuw i8 %i.cn to i1
  %5 = or i1 %i.cg, %4
  %6 = zext i1 %5 to i8
  store i8 %6, ptr %i.af, align 8, !tbaa !215
  %i.co = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.n
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.r
  %i.cq = load i64, ptr %i.n, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  %i.cs = add nuw i64 %.04494, 1                  ; 2 uses
  %i.ct = load ptr, ptr %i.ah, align 8, !tbaa !237
  %i.cu = load ptr, ptr %i.ag, align 8, !tbaa !238 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3
  %i.cz = icmp ult i64 %i.cs, %i.cy
  br i1 %i.cz, label %.lr.ph, label %._crit_edge, !llvm.loop !989

.loopexit:                                        ; preds = %.noexc.i54
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.s:                                             ; preds = %_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit62
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.n
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.s
  %i.dd = load i64, ptr %i.n, align 8, !tbaa !13
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.s, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  %.pn.pn = phi { ptr, i32 } [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.da, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  %i.df = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.l
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.dh = load i64, ptr %i.l, align 8, !tbaa !13
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7testing8internal12UnitTestImpl23ListTestsMatchingFilterEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(497) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !233  ; 2 uses
  %.not53 = icmp eq ptr %i.c, %i.d
  br i1 %.not53, label %._crit_edge52, label %.lr.ph51

._crit_edge52:                                    ; preds = %._crit_edge, %bb.a
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !34
  %i.f = tail call i32 @fflush(ptr noundef %i.e)  ; 0 uses
  ret void

.lr.ph51:                                         ; preds = %bb.a, %._crit_edge
  %i.g = phi ptr [ %i.q, %._crit_edge ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = phi ptr [ %i.r, %._crit_edge ], [ %i.c, %bb.a ]
  %.049 = phi i64 [ %i.s, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.049
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !214  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !237  ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !238  ; 2 uses
  %.not54 = icmp eq ptr %i.m, %i.n
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph51
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.r
  %.pre56 = load ptr, ptr %i.b, align 8, !tbaa !232
  %.pre57 = load ptr, ptr %i.a, align 8, !tbaa !233
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph51
  %i.q = phi ptr [ %.pre57, %._crit_edge.loopexit ], [ %i.g, %.lr.ph51 ] ; 2 uses
  %i.r = phi ptr [ %.pre56, %._crit_edge.loopexit ], [ %i.h, %.lr.ph51 ] ; 2 uses
  %i.s = add nuw i64 %.049, 1                     ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.s, %i.w
  br i1 %i.x, label %.lr.ph51, label %._crit_edge52, !llvm.loop !990

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %i.y = phi ptr [ %i.n, %.lr.ph ], [ %i.bp, %bb.r ] ; 2 uses
  %i.z = phi ptr [ %i.m, %.lr.ph ], [ %i.bq, %bb.r ]
  %.01648 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.r ] ; 2 uses
  %.01747 = phi i1 [ false, %.lr.ph ], [ %.2, %bb.r ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.01648
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !224 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 130
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !235, !range !74, !noundef !75
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  br i1 %.01747, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.246, ptr noundef %i.af) ; 0 uses
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !630 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZN7testing8internalL14PrintOnOneLineEPKci.exit, label %_ZNK7testing8TestCase10type_paramEv.exit

_ZNK7testing8TestCase10type_paramEv.exit:         ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !7
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %_ZN7testing8internalL14PrintOnOneLineEPKci.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK7testing8TestCase10type_paramEv.exit
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.247, ptr noundef nonnull @_ZN7testing8internalL15kTypeParamLabelE) ; 0 uses
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !630 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ak, null
  br i1 %.not.i20, label %_ZN7testing8internalL14PrintOnOneLineEPKci.exit, label %_ZNK7testing8TestCase10type_paramEv.exit22

_ZNK7testing8TestCase10type_paramEv.exit22:       ; preds = %bb.e
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !7  ; 3 uses
  %.not.i23 = icmp eq ptr %i.al, null
  br i1 %.not.i23, label %_ZN7testing8internalL14PrintOnOneLineEPKci.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK7testing8TestCase10type_paramEv.exit22
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13  ; 2 uses
  %.not1112.i = icmp eq i8 %i.am, 0
  br i1 %.not1112.i, label %_ZN7testing8internalL14PrintOnOneLineEPKci.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %i.an = phi i8 [ %i.av, %bb.j ], [ %i.am, %.preheader.i ] ; 2 uses
  %.014.i = phi i32 [ %i.at, %bb.j ], [ 0, %.preheader.i ] ; 2 uses
  %.0813.i = phi ptr [ %i.au, %bb.j ], [ %i.al, %.preheader.i ]
  %i.ao = sext i8 %i.an to i32
  %i.ap = icmp samesign ugt i32 %.014.i, 249
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.382) ; 0 uses
  br label %_ZN7testing8internalL14PrintOnOneLineEPKci.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.ar = icmp eq i8 %i.an, 10
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.383) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %putchar.i = tail call i32 @putchar(i32 %i.ao)  ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi i32 [ 2, %bb.h ], [ 1, %bb.i ]
  %i.at = add nuw nsw i32 %.sink.i, %.014.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0813.i, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13  ; 2 uses
  %.not11.i = icmp eq i8 %i.av, 0
  br i1 %.not11.i, label %_ZN7testing8internalL14PrintOnOneLineEPKci.exit, label %.lr.ph.i, !llvm.loop !991

_ZN7testing8internalL14PrintOnOneLineEPKci.exit:  ; preds = %bb.j, %bb.e, %bb.d, %bb.f, %.preheader.i, %_ZNK7testing8TestCase10type_paramEv.exit22, %_ZNK7testing8TestCase10type_paramEv.exit
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN7testing8internalL14PrintOnOneLineEPKci.exit, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !7
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.248, ptr noundef %i.ax) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !630 ; 2 uses
  %.not.i24 = icmp eq ptr %i.ba, null
  br i1 %.not.i24, label %_ZN7testing8internalL14PrintOnOneLineEPKci.exit38, label %_ZNK7testing8TestInfo11value_paramEv.exit

end_hunk_0
