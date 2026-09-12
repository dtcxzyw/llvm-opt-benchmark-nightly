Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/dm_instantiator?download=true
inline.NumInlined: 7137
inline.NumDeleted: 1380
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 116
begin_hunk_0_@_ZNK6casadi6MatrixIdE11export_codeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSoRKSt3mapIS7_NS_11GenericTypeESt4lessIS7_ESaISt4pairIS8_SC_EEE:bb.a
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  invoke void @__cxa_throw(ptr nonnull %i.ft, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #24
          to label %bb.dl unwind label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.thread: ; preds = %bb.ap
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split747

bb.ay:                                            ; preds = %bb.ar
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

bb.az:                                            ; preds = %bb.as
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

bb.ba:                                            ; preds = %bb.at
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.bb:                                            ; preds = %bb.au
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.bc:                                            ; preds = %bb.av
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

bb.bd:                                            ; preds = %bb.ax, %bb.aw
  %.063 = phi i1 [ false, %bb.ax ], [ true, %bb.aw ] ; 2 uses
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %26, align 8, !tbaa !46   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.bd
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !47
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239, %bb.bc
  %.pn160 = phi { ptr, i32 } [ %i.fz, %bb.bc ], [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %i.ga, %bb.bd ] ; 2 uses
  %.164 = phi i1 [ true, %bb.bc ], [ %.063, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %.063, %bb.bd ] ; 2 uses
  %i.gg = load ptr, ptr %31, align 8, !tbaa !46   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !47
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %bb.bb
  %.pn160.pn = phi { ptr, i32 } [ %i.fy, %bb.bb ], [ %.pn160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %.pn160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ] ; 2 uses
  %.265 = phi i1 [ true, %bb.bb ], [ %.164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %.164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.gl = load ptr, ptr %32, align 8, !tbaa !46   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !47
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.ba
  %.pn160.pn.pn = phi { ptr, i32 } [ %i.fx, %bb.ba ], [ %.pn160.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.pn160.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ] ; 2 uses
  %.366 = phi i1 [ true, %bb.ba ], [ %.265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ] ; 2 uses
  %i.gq = load ptr, ptr %33, align 8, !tbaa !46   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !47
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %bb.az
  %.pn160.pn.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.az ], [ %.pn160.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %.pn160.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ] ; 2 uses
  %.467 = phi i1 [ true, %bb.az ], [ %.366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %.366, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  %i.gv = load ptr, ptr %27, align 8, !tbaa !46   ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !47
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %bb.ay
  %.pn160.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fv, %bb.ay ], [ %.pn160.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.pn160.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ] ; 4 uses
  %.568 = phi i1 [ true, %bb.ay ], [ %.467, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.467, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ] ; 2 uses
  %i.ha = load ptr, ptr %28, align 8, !tbaa !46   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !47
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  %i.hf = load ptr, ptr %29, align 8, !tbaa !46   ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256.thread: ; preds = %bb.aq
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hj = load ptr, ptr %29, align 8, !tbaa !46   ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %.sink.split747, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256.thread
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !47
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #27
  br label %.sink.split747

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
  %i.ho = load i64, ptr %i.hg, align 8, !tbaa !47
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hp) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br i1 %.568, label %bb.be, label %_ZNSt6vectorIdSaIdEED2Ev.exit424

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br i1 %.568, label %bb.be, label %_ZNSt6vectorIdSaIdEED2Ev.exit424

.sink.split747:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.thread
  %.pn160.pn.pn.pn.pn.pn.pn555.ph = phi { ptr, i32 } [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.thread ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.thread ], [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.be

bb.be:                                            ; preds = %.sink.split747, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
  %.pn160.pn.pn.pn.pn.pn.pn555 = phi { ptr, i32 } [ %.pn160.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %.pn160.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259 ], [ %.pn160.pn.pn.pn.pn.pn.pn555.ph, %.sink.split747 ]
  call void @__cxa_free_exception(ptr %i.ft) #28
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit424

bb.bf:                                            ; preds = %._crit_edge606.thread, %._crit_edge606
  %.082.lcssa733739 = phi i64 [ 0, %._crit_edge606.thread ], [ %.183, %._crit_edge606 ]
  %.080.lcssa734738 = phi i1 [ false, %._crit_edge606.thread ], [ %.181, %._crit_edge606 ]
  %i.hq = phi ptr [ %i.br, %._crit_edge606.thread ], [ %i.bv, %._crit_edge606 ] ; 5 uses
  %i.hr = phi ptr [ %i.bs, %._crit_edge606.thread ], [ %i.bw, %._crit_edge606 ] ; 6 uses
  %i.hs = load ptr, ptr %2, align 8, !tbaa !55
  %i.ht = getelementptr i8, ptr %i.hs, i64 -24    ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds i8, ptr %2, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !152 ; 3 uses
  %i.hy = and i32 %i.hx, -261
  %i.hz = or disjoint i32 %i.hy, 256
  store i32 %i.hz, ptr %i.hw, align 8, !tbaa !153
  %i.ia = load i64, ptr %i.ht, align 8
  %i.ib = getelementptr inbounds i8, ptr %2, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i64 16, ptr %i.ic, align 8, !tbaa !147
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !33 ; 2 uses
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !34 ; 3 uses
  %i.ih = ptrtoint ptr %i.if to i64               ; 2 uses
  %i.ii = ptrtoint ptr %i.ig to i64               ; 2 uses
  %i.ij = sub i64 %i.ih, %i.ii                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.if, %i.ig
  br i1 %.not.i.i.i.i, label %.noexc262, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ik = icmp ugt i64 %i.ij, 9223372036854775800
  br i1 %i.ik, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !35

.noexc.i.i:                                       ; preds = %bb.bg
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc261 unwind label %bb.bl

.noexc261:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.bg
  %i.il = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ij) #25
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc262_crit_edge unwind label %bb.bl

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc262_crit_edge: ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i
  %.pre627 = load ptr, ptr %i.id, align 8, !tbaa !37 ; 3 uses
  %.pre628 = load ptr, ptr %i.ie, align 8, !tbaa !37 ; 2 uses
  %.pre629 = ptrtoint ptr %.pre628 to i64
  %.pre630 = ptrtoint ptr %.pre627 to i64
  %45 = icmp ne ptr %.pre628, %.pre627
  br label %.noexc262

.noexc262:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc262_crit_edge, %bb.bf
  %.pre-phi631 = phi i64 [ %.pre630, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc262_crit_edge ], [ %i.ii, %bb.bf ]
  %.pre-phi = phi i64 [ %.pre629, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc262_crit_edge ], [ %i.ih, %bb.bf ]
  %.not577607 = phi i1 [ %45, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc262_crit_edge ], [ false, %bb.bf ] ; 3 uses
  %i.im = phi ptr [ %.pre627, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc262_crit_edge ], [ %i.ig, %bb.bf ] ; 2 uses
  %i.in = phi ptr [ %i.il, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i..noexc262_crit_edge ], [ null, %bb.bf ] ; 13 uses
  %i.io = sub i64 %.pre-phi, %.pre-phi631         ; 6 uses
  %i.ip = icmp sgt i64 %i.io, 8
  br i1 %i.ip, label %bb.bh, label %bb.bi, !prof !38

bb.bh:                                            ; preds = %.noexc262
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.in, ptr align 8 %i.im, i64 %i.io, i1 false)
  br label %bb.bk

bb.bi:                                            ; preds = %.noexc262
  %i.iq = icmp eq i64 %i.io, 8
  br i1 %i.iq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ir = load double, ptr %i.im, align 8, !tbaa !26
  store double %i.ir, ptr %i.in, align 8, !tbaa !26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.is = getelementptr inbounds i8, ptr %i.in, i64 %i.io ; 2 uses
  %or.cond620.not = and i1 %.not577607, %.080.lcssa734738
  br i1 %or.cond620.not, label %.lr.ph609, label %.loopexit

bb.bl:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit424

.lr.ph609:                                        ; preds = %bb.bk, %bb.bn
  %.sroa.0500.0608 = phi ptr [ %i.iw, %bb.bn ], [ %i.in, %bb.bk ] ; 3 uses
  %i.iu = load double, ptr %.sroa.0500.0608, align 8, !tbaa !26
  %i.iv = fcmp oeq double %i.iu, 0.000000e+00
  br i1 %i.iv, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph609
  store double f0x16687E92154EF7AC, ptr %.sroa.0500.0608, align 8, !tbaa !26
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph609
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0500.0608, i64 8 ; 2 uses
  %.not577 = icmp eq ptr %i.iw, %i.is
  br i1 %.not577, label %.loopexit, label %.lr.ph609

.loopexit:                                        ; preds = %bb.bn, %bb.bk
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.iy = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity9is_scalarEb(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, i1 noundef zeroext true)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE9is_scalarEb.exit unwind label %bb.bs

_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE9is_scalarEb.exit: ; preds = %.loopexit
  br i1 %i.iy, label %bb.bo, label %.preheader

.preheader:                                       ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE9is_scalarEb.exit
  br i1 %.not577607, label %.lr.ph613, label %._crit_edge614.thread

.lr.ph613:                                        ; preds = %.preheader
  %i.iz = load double, ptr %i.in, align 8, !tbaa !26
  br label %bb.bu

bb.bo:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE9is_scalarEb.exit
  %i.ja = load ptr, ptr %25, align 8, !tbaa !46
  %i.jb = load i64, ptr %i.hr, align 8, !tbaa !49
  %i.jc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ja, i64 noundef %i.jb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.bs

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.bo
  %i.jd = load ptr, ptr %14, align 8, !tbaa !46
  %i.je = load i64, ptr %i.bm, align 8, !tbaa !49
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef %i.jd, i64 noundef %i.je)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit266 unwind label %bb.bs ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit266: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef nonnull @.str.342, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit266
  %i.jh = load double, ptr %i.in, align 8, !tbaa !26
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, double noundef %i.jh)
          to label %_ZNSolsEd.exit unwind label %bb.bs ; 4 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull @.str.343, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270 unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270: ; preds = %_ZNSolsEd.exit
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !55
  %i.jl = getelementptr i8, ptr %i.jk, i64 -24
  %i.jm = load i64, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds i8, ptr %i.ji, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 240
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !164 ; 6 uses
  %.not.i.i.i431 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i431, label %bb.bp, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.bp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc432 unwind label %bb.bs

.noexc432:                                        ; preds = %bb.bp
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 56
  %i.jr = load i8, ptr %i.jq, align 8, !tbaa !170
  %.not.i1.i.i = icmp eq i8 %i.jr, 0
  br i1 %.not.i1.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 67
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !47
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.br:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jp)
          to label %.noexc433 unwind label %bb.bs

.noexc433:                                        ; preds = %bb.br
  %i.ju = load ptr, ptr %i.jp, align 8, !tbaa !55
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 48
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = invoke noundef signext i8 %i.jw(ptr noundef nonnull align 8 dereferenceable(570) %i.jp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.bs, !inline_history !11

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc433, %bb.bq
  %.0.i.i.i = phi i8 [ %i.jt, %bb.bq ], [ %i.jx, %.noexc433 ]
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, i8 noundef signext %.0.i.i.i)
          to label %.noexc435 unwind label %bb.bs

.noexc435:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jy)
          to label %_ZNSolsEPFRSoS_E.exit330.thread unwind label %bb.bs ; 0 uses

_ZNSolsEPFRSoS_E.exit330.thread:                  ; preds = %.noexc435
  %i.ka = load ptr, ptr %2, align 8, !tbaa !55
  %i.kb = getelementptr i8, ptr %i.ka, i64 -24
  %i.kc = load i64, ptr %i.kb, align 8
  %i.kd = getelementptr inbounds i8, ptr %2, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store i32 %i.hx, ptr %i.ke, align 8, !tbaa !152
  br label %bb.dh

bb.bs:                                            ; preds = %.noexc435, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc433, %bb.br, %bb.bp, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit266, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.bo, %.loopexit
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.bt:                                            ; preds = %bb.bu
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0496.0611, i64 8 ; 2 uses
  %.not578.not = icmp eq ptr %i.kg, %i.is
  br i1 %.not578.not, label %._crit_edge614, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph613, %bb.bt
  %.sroa.0496.0611 = phi ptr [ %i.in, %.lr.ph613 ], [ %i.kg, %bb.bt ] ; 2 uses
  %i.kh = load double, ptr %.sroa.0496.0611, align 8, !tbaa !26
  %i.ki = fcmp une double %i.kh, %i.iz
  br i1 %i.ki, label %._crit_edge614.thread, label %bb.bt

._crit_edge614:                                   ; preds = %bb.bt
  %i.kj = load ptr, ptr %25, align 8, !tbaa !46
  %i.kk = load i64, ptr %i.hr, align 8, !tbaa !49
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.kj, i64 noundef %i.kk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273 unwind label %bb.bw

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273: ; preds = %._crit_edge614
  %i.km = load ptr, ptr %14, align 8, !tbaa !46
  %i.kn = load i64, ptr %i.bm, align 8, !tbaa !49
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef %i.km, i64 noundef %i.kn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit275 unwind label %bb.bw ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit275: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273
  %i.kp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef nonnull @.str.344, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277 unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit275
  %i.kq = ashr exact i64 %i.io, 3
  %i.kr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ko, i64 noundef %i.kq)
          to label %_ZNSolsEm.exit unwind label %bb.bw ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, ptr noundef nonnull @.str.345, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280 unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280: ; preds = %_ZNSolsEm.exit
  %i.kt = load double, ptr %i.in, align 8, !tbaa !26
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, double noundef %i.kt)
          to label %_ZNSolsEd.exit282 unwind label %bb.bw ; 5 uses

_ZNSolsEd.exit282:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280
  %i.kv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef nonnull @.str.343, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284 unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284: ; preds = %_ZNSolsEd.exit282
  %i.kw = load ptr, ptr %i.ku, align 8, !tbaa !55
  %i.kx = getelementptr i8, ptr %i.kw, i64 -24
  %i.ky = load i64, ptr %i.kx, align 8
  %i.kz = getelementptr inbounds i8, ptr %i.ku, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 240
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !164 ; 6 uses
  %.not.i.i.i437 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i437, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i438

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i438: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit284
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  %i.ld = load i8, ptr %i.lc, align 8, !tbaa !170
  %.not.i1.i.i439 = icmp eq i8 %i.ld, 0
  br i1 %.not.i1.i.i439, label %bb.bv, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i462.invoke.sink.split

bb.bv:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i438
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.lb)
          to label %.noexc443 unwind label %bb.bw

.noexc443:                                        ; preds = %bb.bv
  %i.le = load ptr, ptr %i.lb, align 8, !tbaa !55
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = invoke noundef signext i8 %i.lg(ptr noundef nonnull align 8 dereferenceable(570) %i.lb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i462.invoke unwind label %bb.bw, !inline_history !11

bb.bw:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i462.invoke, %.noexc467.invoke, %.invoke, %.noexc478, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i473, %.noexc476, %bb.ce, %.noexc465, %bb.cb, %.noexc443, %bb.bv, %_ZNSolsEx.exit326, %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE5size2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit323, %_ZNSolsEx.exit, %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE5size1Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit319, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit317, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit315, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit313, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit311, %bb.cc, %_ZNSolsEPFRSoS_E.exit286, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit290, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288, %._crit_edge614.thread, %_ZNSolsEd.exit282, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit277, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit275, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit273, %._crit_edge614
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

._crit_edge614.thread:                            ; preds = %bb.bu, %.preheader
  %i.lj = load ptr, ptr %25, align 8, !tbaa !46
  %i.lk = load i64, ptr %i.hr, align 8, !tbaa !49
  %i.ll = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.lj, i64 noundef %i.lk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288 unwind label %bb.bw

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288: ; preds = %._crit_edge614.thread
  %i.lm = load ptr, ptr %14, align 8, !tbaa !46
  %i.ln = load i64, ptr %i.bm, align 8, !tbaa !49
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ll, ptr noundef %i.lm, i64 noundef %i.ln)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit290 unwind label %bb.bw

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit290: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288
  %i.lp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lo, ptr noundef nonnull @.str.346, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292.preheader unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292.preheader: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit290
  br i1 %.not577607, label %.lr.ph619.preheader, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge

.lr.ph619.preheader:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292.preheader
  %i.lq = ashr exact i64 %i.io, 3
  %umax = call i64 @llvm.umax.i64(i64 %i.lq, i64 1)
  br label %.lr.ph619

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292.preheader
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.349, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294 unwind label %bb.bw ; 0 uses

.lr.ph619:                                        ; preds = %.lr.ph619.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  %.0618 = phi i64 [ %i.lw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306 ], [ 0, %.lr.ph619.preheader ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %.0618
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !26
  %i.lu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.lt)
          to label %_ZNSolsEd.exit296 unwind label %.thread.loopexit

_ZNSolsEd.exit296:                                ; preds = %.lr.ph619
  %i.lv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lu, ptr noundef nonnull @.str.347, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit298 unwind label %.thread.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit298: ; preds = %_ZNSolsEd.exit296
  %i.lw = add nuw i64 %.0618, 1                   ; 3 uses
  %i.lx = urem i64 %i.lw, 20
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %bb.bx, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit298
  %i.lz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.348, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300 unwind label %.thread.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300: ; preds = %bb.bx
  %i.ma = load ptr, ptr %2, align 8, !tbaa !55
  %i.mb = getelementptr i8, ptr %i.ma, i64 -24
  %i.mc = load i64, ptr %i.mb, align 8
  %i.md = getelementptr inbounds i8, ptr %2, i64 %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 240
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !164 ; 6 uses
  %.not.i.i.i448 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i448, label %bb.by, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i449

bb.by:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc453 unwind label %.thread.loopexit.split-lp

.noexc453:                                        ; preds = %bb.by
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i449: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  %i.mh = load i8, ptr %i.mg, align 8, !tbaa !170
  %.not.i1.i.i450 = icmp eq i8 %i.mh, 0
  br i1 %.not.i1.i.i450, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i449
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 67
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !47
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i451

bb.ca:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i449
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mf)
          to label %.noexc454 unwind label %.thread.loopexit

.noexc454:                                        ; preds = %bb.ca
  %i.mk = load ptr, ptr %i.mf, align 8, !tbaa !55
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 48
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = invoke noundef signext i8 %i.mm(ptr noundef nonnull align 8 dereferenceable(570) %i.mf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i451 unwind label %.thread.loopexit, !inline_history !11

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i451: ; preds = %.noexc454, %bb.bz
  %.0.i.i.i452 = phi i8 [ %i.mj, %bb.bz ], [ %i.mn, %.noexc454 ]
  %i.mo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %.0.i.i.i452)
          to label %.noexc456 unwind label %.thread.loopexit

.noexc456:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i451
  %i.mp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mo)
          to label %_ZNSolsEPFRSoS_E.exit302 unwind label %.thread.loopexit

_ZNSolsEPFRSoS_E.exit302:                         ; preds = %.noexc456
  %i.mq = load ptr, ptr %25, align 8, !tbaa !46
  %i.mr = load i64, ptr %i.hr, align 8, !tbaa !49
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mp, ptr noundef %i.mq, i64 noundef %i.mr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit304 unwind label %.thread.loopexit

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit304: ; preds = %_ZNSolsEPFRSoS_E.exit302
  %i.mt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef nonnull @.str.338, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306 unwind label %.thread.loopexit ; 0 uses

.thread.loopexit:                                 ; preds = %.noexc456, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i451, %.noexc454, %bb.ca, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit304, %_ZNSolsEPFRSoS_E.exit302, %bb.bx, %_ZNSolsEd.exit296, %.lr.ph619
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.by
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit304, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit298
  %exitcond624.not = icmp eq i64 %i.lw, %umax
  br i1 %exitcond624.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge, label %.lr.ph619, !llvm.loop !1890

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292._crit_edge
  %i.mu = load ptr, ptr %2, align 8, !tbaa !55
  %i.mv = getelementptr i8, ptr %i.mu, i64 -24
  %i.mw = load i64, ptr %i.mv, align 8
  %i.mx = getelementptr inbounds i8, ptr %2, i64 %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 240
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !164 ; 6 uses
  %.not.i.i.i459 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i459, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i460

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i460: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit294
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 56
  %i.nb = load i8, ptr %i.na, align 8, !tbaa !170
  %.not.i1.i.i461 = icmp eq i8 %i.nb, 0
  br i1 %.not.i1.i.i461, label %bb.cb, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i462.invoke.sink.split

bb.cb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i460
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mz)
          to label %.noexc465 unwind label %bb.bw

.noexc465:                                        ; preds = %bb.cb
  %i.nc = load ptr, ptr %i.mz, align 8, !tbaa !55
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 48
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = invoke noundef signext i8 %i.ne(ptr noundef nonnull align 8 dereferenceable(570) %i.mz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i462.invoke unwind label %bb.bw, !inline_history !11

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i462.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i460, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i438
  %.sink749 = phi ptr [ %i.lb, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i438 ], [ %i.mz, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i460 ]
  %.ph = phi ptr [ %i.ku, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i438 ], [ %2, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i460 ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.sink749, i64 67
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !47
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i462.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i462.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i462.invoke.sink.split, %.noexc443, %.noexc465
  %i.ni = phi ptr [ %i.ku, %.noexc443 ], [ %2, %.noexc465 ], [ %.ph, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i462.invoke.sink.split ]
  %i.nj = phi i8 [ %i.lh, %.noexc443 ], [ %i.nf, %.noexc465 ], [ %i.nh, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i462.invoke.sink.split ]
  %i.nk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ni, i8 noundef signext %i.nj)
          to label %.noexc467.invoke unwind label %bb.bw

.noexc467.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i462.invoke
  %i.nl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nk)
          to label %_ZNSolsEPFRSoS_E.exit286 unwind label %bb.bw ; 0 uses

_ZNSolsEPFRSoS_E.exit286:                         ; preds = %.noexc467.invoke
  %i.nm = load ptr, ptr %2, align 8, !tbaa !55
  %i.nn = getelementptr i8, ptr %i.nm, i64 -24
  %i.no = load i64, ptr %i.nn, align 8
  %i.np = getelementptr inbounds i8, ptr %2, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  store i32 %i.hx, ptr %i.nq, align 8, !tbaa !152
  %i.nr = invoke noundef zeroext i1 @_ZNK6casadi8Sparsity8is_denseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ix)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE8is_denseEv.exit unwind label %bb.bw

_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE8is_denseEv.exit: ; preds = %_ZNSolsEPFRSoS_E.exit286
  br i1 %i.nr, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE8is_denseEv.exit
  %i.ns = load ptr, ptr %25, align 8, !tbaa !46
  %i.nt = load i64, ptr %i.hr, align 8, !tbaa !49
  %i.nu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ns, i64 noundef %i.nt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit311 unwind label %bb.bw

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit311: ; preds = %bb.cc
  %i.nv = load ptr, ptr %14, align 8, !tbaa !46
  %i.nw = load i64, ptr %i.bm, align 8, !tbaa !49
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nu, ptr noundef %i.nv, i64 noundef %i.nw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit313 unwind label %bb.bw

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit313: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit311
  %i.ny = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nx, ptr noundef nonnull @.str.350, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit315 unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit315: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit313
  %i.nz = load ptr, ptr %14, align 8, !tbaa !46
  %i.oa = load i64, ptr %i.bm, align 8, !tbaa !49
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.nz, i64 noundef %i.oa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit317 unwind label %bb.bw

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit317: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit315
  %i.oc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ob, ptr noundef nonnull @.str.351, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit319 unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit319: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit317
  %i.od = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ix)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE5size1Ev.exit unwind label %bb.bw

_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE5size1Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit319
  %i.oe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.od)
          to label %_ZNSolsEx.exit unwind label %bb.bw ; 2 uses

_ZNSolsEx.exit:                                   ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE5size1Ev.exit
  %i.of = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oe, ptr noundef nonnull @.str.252, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit323 unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit323: ; preds = %_ZNSolsEx.exit
  %i.og = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ix)
end_hunk_0
