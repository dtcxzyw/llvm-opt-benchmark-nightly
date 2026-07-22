inline.NumInlined: 480
inline.NumDeleted: 251
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context6headerEi:bb.a
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !25 ; 7 uses
  %i.lr = load i32, ptr %i.lq, align 1, !tbaa !100
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.lt = load i32, ptr %i.ls, align 1, !tbaa !102
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lv = load i32, ptr %i.lu, align 1, !tbaa !103
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  %i.lx = load i32, ptr %i.lw, align 1, !tbaa !104
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.lz = load i32, ptr %i.ly, align 1, !tbaa !105
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lq, i64 20
  %i.mb = load i32, ptr %i.ma, align 1, !tbaa !106
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.md = load i32, ptr %i.mc, align 1, !tbaa !107
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_57KeyCodeC1Eiiiiiii(ptr noundef nonnull align 4 dereferenceable(28) %50, i32 noundef %i.lr, i32 noundef %i.lt, i32 noundef %i.lv, i32 noundef %i.lx, i32 noundef %i.lz, i32 noundef %i.mb, i32 noundef %i.md)
          to label %bb.gc unwind label %bb.gf

bb.gc:                                            ; preds = %bb.gb
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_7KeyCodeEEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %49, ptr noundef nonnull align 4 dereferenceable(28) %50)
          to label %bb.gd unwind label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.lo, ptr noundef nonnull align 8 dereferenceable(8) %49)
          to label %bb.ge unwind label %bb.gg

bb.ge:                                            ; preds = %bb.gd
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_7KeyCodeEED1Ev(ptr noundef nonnull align 8 dereferenceable(36) %49) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  br label %.loopexit

bb.gf:                                            ; preds = %bb.gc, %bb.gb
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gg:                                            ; preds = %bb.gd
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_7KeyCodeEED1Ev(ptr noundef nonnull align 8 dereferenceable(36) %49) #27
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.pn88 = phi { ptr, i32 } [ %i.mf, %bb.gg ], [ %i.me, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  br label %bb.jg

bb.gi:                                            ; preds = %bb.ae
  %i.mg = load ptr, ptr %i.bv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27
  %i.mh = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !25
  %i.mj = load <2 x i32>, ptr %i.mi, align 1, !tbaa !3
  store <2 x i32> %i.mj, ptr %52, align 8, !tbaa !3
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8RationalEEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 4 dereferenceable(8) %52)
          to label %bb.gj unwind label %bb.gl

bb.gj:                                            ; preds = %bb.gi
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.mg, ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %bb.gk unwind label %bb.gm

bb.gk:                                            ; preds = %bb.gj
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8RationalEED1Ev(ptr noundef nonnull align 8 dereferenceable(16) %51) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br label %.loopexit

bb.gl:                                            ; preds = %bb.gi
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gj
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8RationalEED1Ev(ptr noundef nonnull align 8 dereferenceable(16) %51) #27
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %.pn86 = phi { ptr, i32 } [ %i.ml, %bb.gm ], [ %i.mk, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br label %bb.jg

bb.go:                                            ; preds = %bb.ae
  %i.mm = load ptr, ptr %i.bv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #27
  %i.mn = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !25 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 1, !tbaa !108
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mr = load i32, ptr %i.mq, align 1, !tbaa !110
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_58TimeCodeC1EjjNS0_7PackingE(ptr noundef nonnull align 4 dereferenceable(8) %54, i32 noundef %i.mp, i32 noundef %i.mr, i32 noundef 0)
          to label %bb.gp unwind label %bb.gs

bb.gp:                                            ; preds = %bb.go
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 4 dereferenceable(8) %54)
          to label %bb.gq unwind label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.mm, ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.gr unwind label %bb.gt

bb.gr:                                            ; preds = %bb.gq
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEED1Ev(ptr noundef nonnull align 8 dereferenceable(16) %53) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  br label %.loopexit

bb.gs:                                            ; preds = %bb.gp, %bb.go
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gq
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_8TimeCodeEED1Ev(ptr noundef nonnull align 8 dereferenceable(16) %53) #27
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.pn84 = phi { ptr, i32 } [ %i.mt, %bb.gt ], [ %i.ms, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  br label %bb.jg

bb.gv:                                            ; preds = %bb.ae
  %i.mu = load ptr, ptr %i.bv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #27
  %i.mv = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !25 ; 3 uses
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !111
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !113
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !114
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_512PreviewImageC1EjjPKNS_11PreviewRgbaE(ptr noundef nonnull align 8 dereferenceable(16) %56, i32 noundef %i.mx, i32 noundef %i.mz, ptr noundef %i.nb)
          to label %bb.gw unwind label %bb.gz

bb.gw:                                            ; preds = %bb.gv
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(16) %56)
          to label %bb.gx unwind label %bb.ha

bb.gx:                                            ; preds = %bb.gw
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.mu, ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %bb.gy unwind label %bb.hb

bb.gy:                                            ; preds = %bb.gx
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %55) #27
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_512PreviewImageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %56) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  br label %.loopexit

bb.gz:                                            ; preds = %bb.gv
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.ha:                                            ; preds = %bb.gw
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gx
  %i.ne = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %55) #27
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %.pn81 = phi { ptr, i32 } [ %i.ne, %bb.hb ], [ %i.nd, %bb.ha ]
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_512PreviewImageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %56) #27
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.gz
  %.pn81.pn = phi { ptr, i32 } [ %.pn81, %bb.hc ], [ %i.nc, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  br label %bb.jg

bb.he:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !25
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !115 ; 2 uses
  %.not212 = icmp eq i32 %i.nh, 0
  br i1 %.not212, label %._crit_edge, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.ni = sext i32 %i.nh to i64
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %57, i64 noundef %i.ni)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit unwind label %bb.hg

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %bb.hf
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !31  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre404 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.pre405 = load i32, ptr %.pre404, align 8, !tbaa !115
  %i.nj = icmp sgt i32 %.pre405, 0
  br i1 %i.nj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %64 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %bb.he, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %.lcssa = phi ptr [ %.pre, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ], [ %i.bv, %bb.he ], [ %i.pe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ]
  %i.nk = load ptr, ptr %.lcssa, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #27
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC1ERKS9_(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(24) %57)
          to label %bb.ht unwind label %bb.hw

bb.hg:                                            ; preds = %bb.hf
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ] ; 3 uses
  %i.nm = phi ptr [ %64, %.lr.ph.preheader ], [ %i.pf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #27
  %65 = load ptr, ptr %i.nm, align 8, !tbaa !25
  %i.nn = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !117
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %i.no, i64 %indvars.iv ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !64 ; 3 uses
  %i.ns = load i32, ptr %i.np, align 8, !tbaa !65 ; 4 uses
  %i.nt = sext i32 %i.ns to i64                   ; 2 uses
  store ptr %i.r, ptr %58, align 8, !tbaa !66
  %i.nu = icmp eq ptr %i.nr, null
  %i.nv = icmp ne i32 %i.ns, 0
  %or.cond.i166 = and i1 %i.nu, %i.nv
  br i1 %or.cond.i166, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %.lr.ph
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.58) #29
          to label %.noexc169 unwind label %.loopexit.split-lp

.noexc169:                                        ; preds = %bb.hh
  unreachable

bb.hi:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.nt, ptr %i.a, align 8, !tbaa !68
  %i.nw = icmp ugt i32 %i.ns, 15
  br i1 %i.nw, label %.noexc.i168, label %._crit_edge.i.i167

.noexc.i168:                                      ; preds = %bb.hi
  %i.nx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc170 unwind label %.loopexit214 ; 2 uses

.noexc170:                                        ; preds = %.noexc.i168
  store ptr %i.nx, ptr %58, align 8, !tbaa !70
  %i.ny = load i64, ptr %i.a, align 8, !tbaa !68
  store i64 %i.ny, ptr %i.r, align 8, !tbaa !25
  br label %._crit_edge.i.i167

._crit_edge.i.i167:                               ; preds = %.noexc170, %bb.hi
  %i.nz = phi ptr [ %i.nx, %.noexc170 ], [ %i.r, %bb.hi ] ; 2 uses
  switch i32 %i.ns, label %bb.hk [
    i32 1, label %bb.hj
    i32 0, label %bb.hl
  ]

bb.hj:                                            ; preds = %._crit_edge.i.i167
  %i.oa = load i8, ptr %i.nr, align 1, !tbaa !25
  store i8 %i.oa, ptr %i.nz, align 1, !tbaa !25
  br label %bb.hl

bb.hk:                                            ; preds = %._crit_edge.i.i167
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nz, ptr align 1 %i.nr, i64 %i.nt, i1 false)
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj, %._crit_edge.i.i167
  %i.ob = load i64, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  store i64 %i.ob, ptr %i.s, align 8, !tbaa !72
  %i.oc = load ptr, ptr %58, align 8, !tbaa !70
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.ob
  store i8 0, ptr %i.od, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.oe = load ptr, ptr %57, align 8, !tbaa !118
  %i.of = getelementptr inbounds nuw [32 x i8], ptr %i.oe, i64 %indvars.iv ; 9 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !70 ; 6 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 16 ; 4 uses
  %i.oi = icmp eq ptr %i.og, %i.oh
  %i.oj = load ptr, ptr %58, align 8, !tbaa !70   ; 6 uses
  %i.ok = icmp eq ptr %i.oj, %i.r                 ; 2 uses
  br i1 %i.oi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.hl
  br i1 %i.ok, label %bb.hm, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.hl
  br i1 %i.ok, label %bb.hm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.hm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ol = load i64, ptr %i.s, align 8, !tbaa !72  ; 3 uses
  %i.om = icmp ult i64 %i.ol, 16
  call void @llvm.assume(i1 %i.om)
  %.not21.i = icmp eq ptr %58, %i.of
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.hn, !prof !26

bb.hn:                                            ; preds = %bb.hm
  switch i64 %i.ol, label %bb.hp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ho
  ]

bb.ho:                                            ; preds = %bb.hn
  %i.on = load i8, ptr %i.oj, align 1, !tbaa !25
  store i8 %i.on, ptr %i.og, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.hp:                                            ; preds = %bb.hn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.og, ptr align 1 %i.oj, i64 %i.ol, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.hp, %bb.ho, %bb.hn
  %i.oo = load i64, ptr %i.s, align 8, !tbaa !72  ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  store i64 %i.oo, ptr %i.op, align 8, !tbaa !72
  %i.oq = load ptr, ptr %i.of, align 8, !tbaa !70
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.oo
  store i8 0, ptr %i.or, align 1, !tbaa !25
  %.pre.i = load ptr, ptr %58, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  store ptr %i.oj, ptr %i.of, align 8, !tbaa !70
  %i.ot = load i64, ptr %i.s, align 8, !tbaa !72
  store i64 %i.ot, ptr %i.os, align 8, !tbaa !72
  %i.ou = load i64, ptr %i.r, align 8, !tbaa !25
  store i64 %i.ou, ptr %i.oh, align 8, !tbaa !25
  br label %bb.hr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ov = load i64, ptr %i.oh, align 8, !tbaa !25
  store ptr %i.oj, ptr %i.of, align 8, !tbaa !70
  %i.ow = load i64, ptr %i.s, align 8, !tbaa !72
  %i.ox = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  store i64 %i.ow, ptr %i.ox, align 8, !tbaa !72
  %i.oy = load i64, ptr %i.r, align 8, !tbaa !25
  store i64 %i.oy, ptr %i.oh, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.og, null
  br i1 %.not.i, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.og, ptr %58, align 8, !tbaa !70
  store i64 %i.ov, ptr %i.r, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.hr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %58, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.hq, %bb.hr
  %i.oz = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.og, %bb.hq ], [ %i.r, %bb.hr ], [ %i.oj, %bb.hm ]
  store i64 0, ptr %i.s, align 8, !tbaa !72
  store i8 0, ptr %i.oz, align 1, !tbaa !25
  %i.pa = load ptr, ptr %58, align 8, !tbaa !70   ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.r
  br i1 %i.pb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.pc = load i64, ptr %i.r, align 8, !tbaa !25
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pe = load ptr, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 24 ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !25
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !115
  %i.pi = sext i32 %i.ph to i64
  %i.pj = icmp slt i64 %indvars.iv.next, %i.pi
  br i1 %i.pj, label %.lr.ph, label %._crit_edge, !llvm.loop !121

.loopexit214:                                     ; preds = %.noexc.i168
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

.loopexit.split-lp:                               ; preds = %bb.hh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

bb.hs:                                            ; preds = %.loopexit.split-lp, %.loopexit214
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit214 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  br label %bb.hz

bb.ht:                                            ; preds = %._crit_edge
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.nk, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.hu unwind label %bb.hx

bb.hu:                                            ; preds = %bb.ht
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %59) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  %i.pk = load ptr, ptr %57, align 8, !tbaa !118  ; 3 uses
  %i.pl = load ptr, ptr %i.q, align 8, !tbaa !122 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pk, %i.pl
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.hu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.pk, %bb.hu ] ; 3 uses
  %i.pm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.pp = load i64, ptr %i.pn, align 8, !tbaa !25
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pq) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.pr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i175 = icmp eq ptr %i.pr, %i.pl
  br i1 %.not.i.i.i175, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !123

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %57, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.hu
  %i.ps = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.pk, %bb.hu ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ps, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.hv

bb.hv:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.pt = load ptr, ptr %i.t, align 8, !tbaa !124
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = ptrtoint ptr %i.ps to i64
  %i.pw = sub i64 %i.pu, %i.pv
  call void @_ZdlPvm(ptr noundef nonnull %i.ps, i64 noundef %i.pw) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  br label %.loopexit

bb.hw:                                            ; preds = %._crit_edge
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.hy

bb.hx:                                            ; preds = %bb.ht
  %i.py = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %59) #27
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %.pn77 = phi { ptr, i32 } [ %i.py, %bb.hx ], [ %i.px, %bb.hw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hs, %bb.hg
  %.pn79 = phi { ptr, i32 } [ %lpad.phi, %bb.hs ], [ %.pn77, %bb.hy ], [ %i.nl, %bb.hg ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %57) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  br label %bb.jg

bb.ia:                                            ; preds = %bb.ae
  %i.pz = load ptr, ptr %i.bv, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.qa = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.qb = load i8, ptr %i.qa, align 8, !tbaa !25
  %i.qc = zext i8 %i.qb to i32
  store i32 %i.qc, ptr %i.h, align 4, !tbaa !125
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_14DeepImageStateEEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(12) %60, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.ib unwind label %bb.id

bb.ib:                                            ; preds = %bb.ia
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.pz, ptr noundef nonnull align 8 dereferenceable(8) %60)
          to label %bb.ic unwind label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_14DeepImageStateEED1Ev(ptr noundef nonnull align 8 dereferenceable(12) %60) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #27
  br label %.loopexit

bb.id:                                            ; preds = %bb.ia
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ie:                                            ; preds = %bb.ib
  %i.qe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_14DeepImageStateEED1Ev(ptr noundef nonnull align 8 dereferenceable(12) %60) #27
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.pn75 = phi { ptr, i32 } [ %i.qe, %bb.ie ], [ %i.qd, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #27
  br label %bb.jg

bb.ig:                                            ; preds = %bb.ae
  %i.qf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !127
  %i.qh = invoke noundef zeroext i1 @_ZN27OpenImageIO_v3_1_Imf__3_3_59Attribute9knownTypeEPKc(ptr noundef %i.qg)
          to label %bb.ih unwind label %.loopexit216

bb.ih:                                            ; preds = %bb.ig
  br i1 %i.qh, label %bb.ii, label %bb.ip

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #27
  %i.qi = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !25 ; 2 uses
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_57IStreamC2EPKc(ptr noundef nonnull align 8 dereferenceable(64) %61, ptr noundef nonnull @.str.55)
          to label %bb.ij unwind label %bb.im

bb.ij:                                            ; preds = %bb.ii
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_113MemAttrStreamE, i64 16), ptr %61, align 8, !tbaa !20
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !128
  store ptr %i.qm, ptr %i.n, align 8, !tbaa !130
  %i.qn = load i32, ptr %i.qk, align 8, !tbaa !133
  %i.qo = sext i32 %i.qn to i64
  store i64 %i.qo, ptr %i.o, align 8, !tbaa !134
  store i64 0, ptr %i.p, align 8, !tbaa !135
  %i.qp = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !127
  %i.qs = invoke noundef ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_59Attribute12newAttributeEPKc(ptr noundef %i.qr)
          to label %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_59AttributeESt14default_deleteIS1_EE5resetEPS1_.exit unwind label %.thread208 ; 8 uses

.thread208:                                       ; preds = %bb.ij
  %lpad.thr_comm.split-lp210 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_59AttributeESt14default_deleteIS1_EED2Ev.exit181

_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_59AttributeESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.ij
  %i.qt = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !25
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !133
  %i.qx = invoke noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context7versionEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.ik unwind label %bb.in

bb.ik:                                            ; preds = %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_59AttributeESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.qy = load ptr, ptr %i.qs, align 8, !tbaa !20
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 40
  %i.ra = load ptr, ptr %i.qz, align 8
  invoke void %i.ra(ptr noundef nonnull align 8 dereferenceable(8) %i.qs, ptr noundef nonnull align 8 dereferenceable(40) %61, i32 noundef %i.qw, i32 noundef %i.qx)
          to label %bb.il unwind label %.thread

bb.il:                                            ; preds = %bb.ik
  %i.rb = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !49
  invoke void @_ZN27OpenImageIO_v3_1_Imf__3_3_56Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %i.rc, ptr noundef nonnull align 8 dereferenceable(8) %i.qs)
          to label %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_59AttributeESt14default_deleteIS1_EED2Ev.exit unwind label %.thread

_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_59AttributeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.il
  %i.rd = load ptr, ptr %i.qs, align 8, !tbaa !20
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rf = load ptr, ptr %i.re, align 8
  call void %i.rf(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.qs) #27, !inline_history !136
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_57IStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %61) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #27
  br label %.loopexit

bb.im:                                            ; preds = %bb.ii
  %i.rg = landingpad { ptr, i32 }
end_hunk_0
