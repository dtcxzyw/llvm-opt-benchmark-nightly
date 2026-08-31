Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/opencv-onnx.pb?download=true
inline.NumInlined: 4916
inline.NumDeleted: 1399
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11opencv_onnx14AttributeProtoC2ERKS0_:bb.a
.noexc63:                                         ; preds = %.noexc62
  %i.dr = load i32, ptr %i.do, align 8, !tbaa !75
  %i.ds = add nsw i32 %i.dr, %i.df                ; 3 uses
  store i32 %i.ds, ptr %i.do, align 8, !tbaa !75
  %i.dt = load ptr, ptr %i.dl, align 8, !tbaa !69 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !76
  %i.dv = icmp slt i32 %i.du, %i.ds
  br i1 %i.dv, label %bb.h, label %.noexc

bb.h:                                             ; preds = %.noexc63
  store i32 %i.ds, ptr %i.dt, align 8, !tbaa !76
  br label %.noexc

.noexc:                                           ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx9TypeProtoEEC2ERKS4_.exit, %.noexc63, %bb.h
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !60 ; 2 uses
  %i.dy = trunc i64 %i.dx to i1
  br i1 %i.dy, label %.noexc44, label %bb.i

.noexc44:                                         ; preds = %.noexc
  %i.dz = and i64 %i.dx, -4
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.eb)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %.noexc, %.noexc44
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.ec, align 8, !tbaa !68
  %i.ed = load i32, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.ee = trunc i32 %i.ed to i1
  br i1 %i.ee, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !68
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = and i64 %i.eh, -2
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.el = trunc i64 %i.ek to i1
  %i.em = and i64 %i.ek, -4
  %i.en = inttoptr i64 %i.em to ptr               ; 2 uses
  br i1 %i.el, label %bb.k, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.k:                                             ; preds = %bb.j
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.eo, %bb.k ], [ %i.en, %bb.j ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.s

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.t

bb.l:                                             ; preds = %bb.b
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.m:                                             ; preds = %bb.c
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.n:                                             ; preds = %.noexc50, %.noexc.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.o:                                             ; preds = %.noexc53, %.noexc.i52
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.p:                                             ; preds = %.noexc56, %.noexc.i55
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.q:                                             ; preds = %.noexc59, %.noexc.i58
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.r:                                             ; preds = %.noexc62, %.noexc.i61
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.s:                                             ; preds = %.noexc44, %bb.av, %bb.ap, %bb.aj, %bb.ad, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit65, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.t:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.i
  %i.ex = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.ed, %bb.i ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.ey, align 8, !tbaa !68
  %i.ez = and i32 %i.ex, 2
  %.not = icmp eq i32 %i.ez, 0
  br i1 %.not, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !68
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = and i64 %i.fc, -2
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.fg = trunc i64 %i.ff to i1
  %i.fh = and i64 %i.ff, -4
  %i.fi = inttoptr i64 %i.fh to ptr               ; 2 uses
  br i1 %i.fg, label %bb.v, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit65, !prof !70

bb.v:                                             ; preds = %bb.u
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit65

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit65: ; preds = %bb.v, %bb.u
  %.0.i.i64 = phi ptr [ %i.fj, %bb.v ], [ %i.fi, %bb.u ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noundef %.0.i.i64)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit65._crit_edge unwind label %bb.s

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit65._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit65
  %.pre79 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.w

bb.w:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit65._crit_edge, %bb.t
  %i.fk = phi i32 [ %.pre79, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit65._crit_edge ], [ %i.ex, %bb.t ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.fl, align 8, !tbaa !68
  %i.fm = and i32 %i.fk, 4
  %.not73 = icmp eq i32 %i.fm, 0
  br i1 %.not73, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !68
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = and i64 %i.fp, -2
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.ft = trunc i64 %i.fs to i1
  %i.fu = and i64 %i.fs, -4
  %i.fv = inttoptr i64 %i.fu to ptr               ; 2 uses
  br i1 %i.ft, label %bb.y, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67, !prof !70

bb.y:                                             ; preds = %bb.x
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67: ; preds = %bb.y, %bb.x
  %.0.i.i66 = phi ptr [ %i.fw, %bb.y ], [ %i.fv, %bb.x ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %i.fr, ptr noundef %.0.i.i66)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67._crit_edge unwind label %bb.s

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67
  %.pre80 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67._crit_edge, %bb.w
  %i.fx = phi i32 [ %.pre80, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67._crit_edge ], [ %i.fk, %bb.w ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.fy, align 8, !tbaa !68
  %i.fz = and i32 %i.fx, 8
  %.not74 = icmp eq i32 %i.fz, 0
  br i1 %.not74, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !68
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = and i64 %i.gc, -2
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.gg = trunc i64 %i.gf to i1
  %i.gh = and i64 %i.gf, -4
  %i.gi = inttoptr i64 %i.gh to ptr               ; 2 uses
  br i1 %i.gg, label %bb.ab, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69, !prof !70

bb.ab:                                            ; preds = %bb.aa
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69: ; preds = %bb.ab, %bb.aa
  %.0.i.i68 = phi ptr [ %i.gj, %bb.ab ], [ %i.gi, %bb.aa ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %i.ge, ptr noundef %.0.i.i68)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69._crit_edge unwind label %bb.s

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69
  %.pre81 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69._crit_edge, %bb.z
  %i.gk = phi i32 [ %.pre81, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69._crit_edge ], [ %i.fx, %bb.z ] ; 2 uses
  %i.gl = and i32 %i.gk, 16
  %.not75 = icmp eq i32 %i.gl, 0                  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %2 = load ptr, ptr %i.gm, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %.not75, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not75, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gn = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #27
          to label %bb.ae unwind label %bb.s      ; 3 uses

bb.ae:                                            ; preds = %bb.ad
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !32
  invoke void @_ZN11opencv_onnx11TensorProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.gn, ptr noundef nonnull align 8 dereferenceable(256) %i.go)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.gn, ptr %i.gp, align 8, !tbaa !32
  %.pre82 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.gq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef 256) #26
  br label %bb.az

bb.ah:                                            ; preds = %bb.ac
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.gr, align 8, !tbaa !32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ah
  %i.gs = phi i32 [ %.pre82, %bb.af ], [ %i.gk, %bb.ah ] ; 2 uses
  %i.gt = and i32 %i.gs, 32
  %.not76 = icmp eq i32 %i.gt, 0                  ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %5 = load ptr, ptr %i.gu, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %.not76, i1 true, i1 %6
  tail call void @llvm.assume(i1 %7)
  br i1 %.not76, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gv = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.ak unwind label %bb.s      ; 3 uses

bb.ak:                                            ; preds = %bb.aj
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !57
  invoke void @_ZN11opencv_onnx10GraphProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(232) %i.gv, ptr noundef nonnull align 8 dereferenceable(232) %i.gw)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.gv, ptr %i.gx, align 8, !tbaa !57
  %.pre83 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.gy = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef 232) #26
  br label %bb.az

bb.an:                                            ; preds = %bb.ai
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.gz, align 8, !tbaa !57
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.an
  %i.ha = phi i32 [ %.pre83, %bb.al ], [ %i.gs, %bb.an ] ; 2 uses
  %i.hb = and i32 %i.ha, 64
  %.not77 = icmp eq i32 %i.hb, 0                  ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %8 = load ptr, ptr %i.hc, align 8
  %9 = icmp ne ptr %8, null
  %10 = select i1 %.not77, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  br i1 %.not77, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hd = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %bb.aq unwind label %bb.s      ; 3 uses

bb.aq:                                            ; preds = %bb.ap
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !59
  invoke void @_ZN11opencv_onnx9TypeProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.hd, ptr noundef nonnull align 8 dereferenceable(48) %i.he)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !59
  %.pre84 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.hg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef 48) #26
  br label %bb.az

bb.at:                                            ; preds = %bb.ao
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.hh, align 8, !tbaa !59
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.at
  %i.hi = phi i32 [ %.pre84, %bb.ar ], [ %i.ha, %bb.at ]
  %i.hj = and i32 %i.hi, 128
  %.not78 = icmp eq i32 %i.hj, 0                  ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %11 = load ptr, ptr %i.hk, align 8
  %12 = icmp ne ptr %11, null
  %13 = select i1 %.not78, i1 true, i1 %12
  tail call void @llvm.assume(i1 %13)
  br i1 %.not78, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hl = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %bb.aw unwind label %bb.s      ; 3 uses

bb.aw:                                            ; preds = %bb.av
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !58
  invoke void @_ZN11opencv_onnx17SparseTensorProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.hl, ptr noundef nonnull align 8 dereferenceable(56) %i.hm)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef 56) #26
  br label %bb.az

bb.ay:                                            ; preds = %bb.au, %bb.aw
  %.sink = phi ptr [ %i.hl, %bb.aw ], [ null, %bb.au ]
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %.sink, ptr %i.ho, align 8, !tbaa !58
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i64 16, i1 false)
  ret void

bb.az:                                            ; preds = %bb.ax, %bb.as, %bb.am, %bb.ag, %bb.s
  %.pn = phi { ptr, i32 } [ %i.hn, %bb.ax ], [ %i.ew, %bb.s ], [ %i.hg, %bb.as ], [ %i.gy, %bb.am ], [ %i.gq, %bb.ag ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx17SparseTensorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dd) #24
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.az ], [ %i.ev, %bb.r ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx9TypeProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ck) #24
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ba ], [ %i.eu, %bb.q ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx10GraphProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.br) #24
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bb ], [ %i.et, %bb.p ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx11TensorProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ay) #24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.o
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.bc ], [ %i.es, %bb.o ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.af) #24
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.n
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.bd ], [ %i.er, %bb.n ]
  tail call void @_ZN6google8protobuf13RepeatedFieldIlED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.s) #24
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.be ], [ %i.eq, %bb.m ]
  tail call void @_ZN6google8protobuf13RepeatedFieldIfED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.f) #24
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.bf ], [ %i.ep, %bb.l ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx14AttributeProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  invoke void @_ZN11opencv_onnx14AttributeProto10SharedDtorEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !60
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit unwind label %bb.q

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %bb.d, %bb.e, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  %.not.i.i = icmp ne ptr %i.k, null
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %.not.i.i, i1 %i.m, i1 false
  br i1 %i.n, label %bb.f, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx17SparseTensorProtoEED2Ev.exit

bb.f:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx17SparseTensorProtoEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #25
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx17SparseTensorProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69
  %.not.i.i1 = icmp ne ptr %i.s, null
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = icmp eq ptr %i.t, null
  %i.v = select i1 %.not.i.i1, i1 %i.u, i1 false
  br i1 %i.v, label %bb.h, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx9TypeProtoEED2Ev.exit

bb.h:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx17SparseTensorProtoEED2Ev.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx9TypeProtoEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx9TypeProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx17SparseTensorProtoEED2Ev.exit, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !69
  %.not.i.i2 = icmp ne ptr %i.aa, null
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = select i1 %.not.i.i2, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.j, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx10GraphProtoEED2Ev.exit

bb.j:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx9TypeProtoEED2Ev.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx10GraphProtoEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #25
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx10GraphProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx9TypeProtoEED2Ev.exit, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !69
  %.not.i.i3 = icmp ne ptr %i.ai, null
  %i.aj = load ptr, ptr %i.ag, align 8
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = select i1 %.not.i.i3, i1 %i.ak, i1 false
  br i1 %i.al, label %bb.l, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx11TensorProtoEED2Ev.exit

bb.l:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx10GraphProtoEED2Ev.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx11TensorProtoEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #25
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx11TensorProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx10GraphProtoEED2Ev.exit, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ao) #24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6google8protobuf13RepeatedFieldIlED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ap) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_ZN11opencv_onnx10GraphProto9MergeFromERKS0_:bb.a
  %i.fm = and i64 %i.fk, -4
  %i.fn = inttoptr i64 %i.fm to ptr               ; 2 uses
  br i1 %i.fl, label %bb.t, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.t:                                             ; preds = %bb.s
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.s, %bb.t
  %.0.i.i = phi ptr [ %i.fo, %bb.t ], [ %i.fn, %bb.s ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noundef %.0.i.i)
  br label %bb.u

bb.u:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, %bb.r
  %i.fp = and i32 %i.ex, 2
  %.not16 = icmp eq i32 %i.fp, 0
  br i1 %.not16, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !68
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, -2
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !21
  %i.fx = or i32 %i.fw, 2
  store i32 %i.fx, ptr %i.fv, align 8, !tbaa !21
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !60 ; 2 uses
  %i.gb = trunc i64 %i.ga to i1
  %i.gc = and i64 %i.ga, -4
  %i.gd = inttoptr i64 %i.gc to ptr               ; 2 uses
  br i1 %i.gb, label %bb.w, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit20, !prof !70

bb.w:                                             ; preds = %bb.v
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit20

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit20: ; preds = %bb.v, %bb.w
  %.0.i.i19 = phi ptr [ %i.ge, %bb.w ], [ %i.gd, %bb.v ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef %.0.i.i19)
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit20, %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE9MergeFromERKS4_.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !60 ; 2 uses
  %i.gh = trunc i64 %i.gg to i1
  br i1 %i.gh, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.x
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gj = and i64 %i.gg, -4
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull align 8 dereferenceable(32) %i.gl)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %bb.x, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -2
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = or i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !60   ; 2 uses
  %i.o = trunc i64 %i.n to i1
  %i.p = and i64 %i.n, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  br i1 %i.o, label %bb.c, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ %i.q, %bb.b ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef %.0.i.i)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21
  switch i32 %i.t, label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit [
    i32 1, label %bb.e
    i32 4, label %bb.i
    i32 5, label %bb.q
    i32 9, label %bb.ac
    i32 8, label %bb.ak
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !21
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %_ZN11opencv_onnx9TypeProto29_internal_mutable_tensor_typeEv.exit.thread, label %bb.f

_ZN11opencv_onnx9TypeProto29_internal_mutable_tensor_typeEv.exit.thread: ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %0), !inline_history !174
  store i32 1, ptr %i.u, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !60  ; 2 uses
  %i.ab = trunc i64 %i.aa to i1
  %i.ac = and i64 %i.aa, -4
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  br i1 %i.ab, label %bb.g, label %_ZN11opencv_onnx9TypeProto29_internal_mutable_tensor_typeEv.exit, !prof !70

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71
  br label %_ZN11opencv_onnx9TypeProto29_internal_mutable_tensor_typeEv.exit

_ZN11opencv_onnx9TypeProto29_internal_mutable_tensor_typeEv.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.ad, %bb.f ]
  %i.af = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx16TypeProto_TensorEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !175 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !73
  %.pre44 = load i32, ptr %i.s, align 8, !tbaa !21
  %.pre44.fr = freeze i32 %.pre44
  %i.ah = icmp eq i32 %.pre44.fr, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %spec.select = select i1 %i.ah, ptr %i.aj, ptr @_ZN11opencv_onnx35_TypeProto_Tensor_default_instance_E
  br label %bb.h

bb.h:                                             ; preds = %_ZN11opencv_onnx9TypeProto29_internal_mutable_tensor_typeEv.exit, %_ZN11opencv_onnx9TypeProto29_internal_mutable_tensor_typeEv.exit.thread
  %i.ak = phi ptr [ %i.af, %_ZN11opencv_onnx9TypeProto29_internal_mutable_tensor_typeEv.exit ], [ %.pre.i, %_ZN11opencv_onnx9TypeProto29_internal_mutable_tensor_typeEv.exit.thread ]
  %i.al = phi ptr [ %spec.select, %_ZN11opencv_onnx9TypeProto29_internal_mutable_tensor_typeEv.exit ], [ %i.y, %_ZN11opencv_onnx9TypeProto29_internal_mutable_tensor_typeEv.exit.thread ]
  tail call void @_ZN11opencv_onnx16TypeProto_Tensor9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.al)
  br label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

bb.i:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !21
  %i.ao = icmp eq i32 %i.an, 4
  br i1 %i.ao, label %_ZN11opencv_onnx9TypeProto31_internal_mutable_sequence_typeEv.exit.thread, label %bb.j

_ZN11opencv_onnx9TypeProto31_internal_mutable_sequence_typeEv.exit.thread: ; preds = %bb.i
  %.phi.trans.insert.i13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i14 = load ptr, ptr %.phi.trans.insert.i13, align 8, !tbaa !73
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %0), !inline_history !176
  store i32 4, ptr %i.am, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !60 ; 2 uses
  %i.at = trunc i64 %i.as to i1
  %i.au = and i64 %i.as, -4
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  br i1 %i.at, label %bb.k, label %_ZN11opencv_onnx9TypeProto31_internal_mutable_sequence_typeEv.exit, !prof !70

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !71
  br label %_ZN11opencv_onnx9TypeProto31_internal_mutable_sequence_typeEv.exit

_ZN11opencv_onnx9TypeProto31_internal_mutable_sequence_typeEv.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i11 = phi ptr [ %i.aw, %bb.k ], [ %i.av, %bb.j ]
  %i.ax = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx18TypeProto_SequenceEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i11), !inline_history !177 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !73
  %.pre43 = load i32, ptr %i.s, align 8, !tbaa !21
  %.pre43.fr = freeze i32 %.pre43
  %i.az = icmp eq i32 %.pre43.fr, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %spec.select56 = select i1 %i.az, ptr %i.bb, ptr @_ZN11opencv_onnx37_TypeProto_Sequence_default_instance_E
  br label %bb.l

bb.l:                                             ; preds = %_ZN11opencv_onnx9TypeProto31_internal_mutable_sequence_typeEv.exit, %_ZN11opencv_onnx9TypeProto31_internal_mutable_sequence_typeEv.exit.thread
  %i.bc = phi ptr [ %i.ax, %_ZN11opencv_onnx9TypeProto31_internal_mutable_sequence_typeEv.exit ], [ %.pre.i14, %_ZN11opencv_onnx9TypeProto31_internal_mutable_sequence_typeEv.exit.thread ] ; 4 uses
  %i.bd = phi ptr [ %spec.select56, %_ZN11opencv_onnx9TypeProto31_internal_mutable_sequence_typeEv.exit ], [ %i.aq, %_ZN11opencv_onnx9TypeProto31_internal_mutable_sequence_typeEv.exit.thread ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !21
  %i.bg = trunc i32 %i.bf to i1                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.bh, align 8
  %3 = icmp ne ptr %2, null
  %not..i.i = xor i1 %i.bg, true
  %4 = select i1 %not..i.i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.bg, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !21
  %i.bk = or i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !178 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.n, label %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !60 ; 2 uses
  %i.bq = trunc i64 %i.bp to i1
  %i.br = and i64 %i.bp, -4
  %i.bs = inttoptr i64 %i.br to ptr               ; 2 uses
  br i1 %i.bq, label %bb.o, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, !prof !70

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi ptr [ %i.bt, %bb.o ], [ %i.bs, %bb.n ]
  %i.bu = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i.i), !inline_history !180 ; 2 uses
  store ptr %i.bu, ptr %i.bl, align 8, !tbaa !178
  br label %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i

_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, %bb.m
  %i.bv = phi ptr [ %i.bu, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %i.bm, %bb.m ]
  %i.bw = load ptr, ptr %i.bh, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, null
  %i.bx = select i1 %.not.i.i, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.bw
  tail call void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(48) %i.bx), !inline_history !181
  br label %bb.p

bb.p:                                             ; preds = %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i, %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !60 ; 2 uses
  %i.ca = trunc i64 %i.bz to i1
  br i1 %i.ca, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i: ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.cc = and i64 %i.bz, -4
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %i.ce), !inline_history !181
  br label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

bb.q:                                             ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !21
  %i.ch = icmp eq i32 %i.cg, 5
  br i1 %i.ch, label %_ZN11opencv_onnx9TypeProto26_internal_mutable_map_typeEv.exit.thread, label %bb.r

_ZN11opencv_onnx9TypeProto26_internal_mutable_map_typeEv.exit.thread: ; preds = %bb.q
  %.phi.trans.insert.i19 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i20 = load ptr, ptr %.phi.trans.insert.i19, align 8, !tbaa !73
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %0), !inline_history !182
  store i32 5, ptr %i.cf, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !60 ; 2 uses
  %i.cm = trunc i64 %i.cl to i1
  %i.cn = and i64 %i.cl, -4
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  br i1 %i.cm, label %bb.s, label %_ZN11opencv_onnx9TypeProto26_internal_mutable_map_typeEv.exit, !prof !70

bb.s:                                             ; preds = %bb.r
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !71
  br label %_ZN11opencv_onnx9TypeProto26_internal_mutable_map_typeEv.exit

_ZN11opencv_onnx9TypeProto26_internal_mutable_map_typeEv.exit: ; preds = %bb.r, %bb.s
  %.0.i.i.i17 = phi ptr [ %i.cp, %bb.s ], [ %i.co, %bb.r ]
  %i.cq = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx13TypeProto_MapEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i17), !inline_history !183 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !73
  %.pre42 = load i32, ptr %i.s, align 8, !tbaa !21
  %.pre42.fr = freeze i32 %.pre42
  %i.cs = icmp eq i32 %.pre42.fr, 5
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8
  %spec.select57 = select i1 %i.cs, ptr %i.cu, ptr @_ZN11opencv_onnx32_TypeProto_Map_default_instance_E
  br label %bb.t

bb.t:                                             ; preds = %_ZN11opencv_onnx9TypeProto26_internal_mutable_map_typeEv.exit, %_ZN11opencv_onnx9TypeProto26_internal_mutable_map_typeEv.exit.thread
  %i.cv = phi ptr [ %i.cq, %_ZN11opencv_onnx9TypeProto26_internal_mutable_map_typeEv.exit ], [ %.pre.i20, %_ZN11opencv_onnx9TypeProto26_internal_mutable_map_typeEv.exit.thread ] ; 6 uses
  %i.cw = phi ptr [ %spec.select57, %_ZN11opencv_onnx9TypeProto26_internal_mutable_map_typeEv.exit ], [ %i.cj, %_ZN11opencv_onnx9TypeProto26_internal_mutable_map_typeEv.exit.thread ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !21 ; 4 uses
  %i.cz = and i32 %i.cy, 3
  %.not.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = and i32 %i.cy, 1
  %.not8.i = icmp eq i32 %i.da, 0
  br i1 %.not8.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !21
  %i.dd = or i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !184 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.w, label %_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !60 ; 2 uses
  %i.dj = trunc i64 %i.di to i1
  %i.dk = and i64 %i.di, -4
  %i.dl = inttoptr i64 %i.dk to ptr               ; 2 uses
  br i1 %i.dj, label %bb.x, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i36, !prof !70

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i36

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i36: ; preds = %bb.x, %bb.w
  %.0.i.i.i37 = phi ptr [ %i.dm, %bb.x ], [ %i.dl, %bb.w ]
  %i.dn = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i37), !inline_history !186 ; 2 uses
  store ptr %i.dn, ptr %i.de, align 8, !tbaa !184
  br label %_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit

_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit: ; preds = %bb.v, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i36
  %i.do = phi ptr [ %i.dn, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i36 ], [ %i.df, %bb.v ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !184 ; 2 uses
  %.not.i35 = icmp eq ptr %i.dq, null
  %i.dr = select i1 %.not.i35, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.dq
  tail call void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.do, ptr noundef nonnull align 8 dereferenceable(48) %i.dr), !inline_history !187
  br label %bb.y

bb.y:                                             ; preds = %_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit, %bb.u
  %i.ds = and i32 %i.cy, 2
  %.not9.i = icmp eq i32 %i.ds, 0
  br i1 %.not9.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !188
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !188
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !21
  %i.dy = or i32 %i.dx, %i.cy
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.t
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !60 ; 2 uses
  %i.eb = trunc i64 %i.ea to i1
  br i1 %i.eb, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i21, label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i21: ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.ed = and i64 %i.ea, -4
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %i.ef), !inline_history !187
  br label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

bb.ac:                                            ; preds = %bb.d
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !21
  %i.ei = icmp eq i32 %i.eh, 9
  br i1 %i.ei, label %_ZN11opencv_onnx9TypeProto31_internal_mutable_optional_typeEv.exit.thread, label %bb.ad

_ZN11opencv_onnx9TypeProto31_internal_mutable_optional_typeEv.exit.thread: ; preds = %bb.ac
  %.phi.trans.insert.i26 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i27 = load ptr, ptr %.phi.trans.insert.i26, align 8, !tbaa !73
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %0), !inline_history !189
  store i32 9, ptr %i.eg, align 8, !tbaa !21
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !60 ; 2 uses
  %i.en = trunc i64 %i.em to i1
  %i.eo = and i64 %i.em, -4
  %i.ep = inttoptr i64 %i.eo to ptr               ; 2 uses
  br i1 %i.en, label %bb.ae, label %_ZN11opencv_onnx9TypeProto31_internal_mutable_optional_typeEv.exit, !prof !70

bb.ae:                                            ; preds = %bb.ad
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !71
  br label %_ZN11opencv_onnx9TypeProto31_internal_mutable_optional_typeEv.exit

_ZN11opencv_onnx9TypeProto31_internal_mutable_optional_typeEv.exit: ; preds = %bb.ad, %bb.ae
  %.0.i.i.i24 = phi ptr [ %i.eq, %bb.ae ], [ %i.ep, %bb.ad ]
  %i.er = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx18TypeProto_OptionalEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i24), !inline_history !190 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.er, ptr %i.es, align 8, !tbaa !73
  %.pre41 = load i32, ptr %i.s, align 8, !tbaa !21
  %.pre41.fr = freeze i32 %.pre41
  %i.et = icmp eq i32 %.pre41.fr, 9
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8
  %spec.select58 = select i1 %i.et, ptr %i.ev, ptr @_ZN11opencv_onnx37_TypeProto_Optional_default_instance_E
  br label %bb.af

bb.af:                                            ; preds = %_ZN11opencv_onnx9TypeProto31_internal_mutable_optional_typeEv.exit, %_ZN11opencv_onnx9TypeProto31_internal_mutable_optional_typeEv.exit.thread
  %i.ew = phi ptr [ %i.er, %_ZN11opencv_onnx9TypeProto31_internal_mutable_optional_typeEv.exit ], [ %.pre.i27, %_ZN11opencv_onnx9TypeProto31_internal_mutable_optional_typeEv.exit.thread ] ; 4 uses
  %i.ex = phi ptr [ %spec.select58, %_ZN11opencv_onnx9TypeProto31_internal_mutable_optional_typeEv.exit ], [ %i.ek, %_ZN11opencv_onnx9TypeProto31_internal_mutable_optional_typeEv.exit.thread ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !21
  %i.fa = trunc i32 %i.ez to i1                   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 2 uses
  %5 = load ptr, ptr %i.fb, align 8
  %6 = icmp ne ptr %5, null
  %not..i = xor i1 %i.fa, true
  %7 = select i1 %not..i, i1 true, i1 %6
  tail call void @llvm.assume(i1 %7)
  br i1 %i.fa, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !21
  %i.fe = or i32 %i.fd, 1
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !21
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !191 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.ah, label %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit

bb.ah:                                            ; preds = %bb.ag
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !60 ; 2 uses
  %i.fk = trunc i64 %i.fj to i1
  %i.fl = and i64 %i.fj, -4
  %i.fm = inttoptr i64 %i.fl to ptr               ; 2 uses
  br i1 %i.fk, label %bb.ai, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i39, !prof !70

bb.ai:                                            ; preds = %bb.ah
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i39

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i39: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i40 = phi ptr [ %i.fn, %bb.ai ], [ %i.fm, %bb.ah ]
  %i.fo = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i40), !inline_history !193 ; 2 uses
  store ptr %i.fo, ptr %i.ff, align 8, !tbaa !191
  br label %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit

_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit: ; preds = %bb.ag, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i39
  %i.fp = phi ptr [ %i.fo, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i39 ], [ %i.fg, %bb.ag ]
  %i.fq = load ptr, ptr %i.fb, align 8, !tbaa !191 ; 2 uses
  %.not.i38 = icmp eq ptr %i.fq, null
  %i.fr = select i1 %.not.i38, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.fq
  tail call void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.fp, ptr noundef nonnull align 8 dereferenceable(48) %i.fr), !inline_history !194
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit, %bb.af
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !60 ; 2 uses
  %i.fu = trunc i64 %i.ft to i1
  br i1 %i.fu, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i28, label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i28: ; preds = %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fw = and i64 %i.ft, -4
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %i.fy), !inline_history !194
  br label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

bb.ak:                                            ; preds = %bb.d
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !21
  %i.gb = icmp eq i32 %i.ga, 8
  br i1 %i.gb, label %_ZN11opencv_onnx9TypeProto36_internal_mutable_sparse_tensor_typeEv.exit.thread, label %bb.al

_ZN11opencv_onnx9TypeProto36_internal_mutable_sparse_tensor_typeEv.exit.thread: ; preds = %bb.ak
  %.phi.trans.insert.i33 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i34 = load ptr, ptr %.phi.trans.insert.i33, align 8, !tbaa !73
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8
  br label %bb.an

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %0), !inline_history !195
  store i32 8, ptr %i.fz, align 8, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !60 ; 2 uses
  %i.gg = trunc i64 %i.gf to i1
  %i.gh = and i64 %i.gf, -4
  %i.gi = inttoptr i64 %i.gh to ptr               ; 2 uses
  br i1 %i.gg, label %bb.am, label %_ZN11opencv_onnx9TypeProto36_internal_mutable_sparse_tensor_typeEv.exit, !prof !70

bb.am:                                            ; preds = %bb.al
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !71
  br label %_ZN11opencv_onnx9TypeProto36_internal_mutable_sparse_tensor_typeEv.exit

_ZN11opencv_onnx9TypeProto36_internal_mutable_sparse_tensor_typeEv.exit: ; preds = %bb.al, %bb.am
  %.0.i.i.i31 = phi ptr [ %i.gj, %bb.am ], [ %i.gi, %bb.al ]
  %i.gk = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx22TypeProto_SparseTensorEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i31), !inline_history !196 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !73
  %.pre = load i32, ptr %i.s, align 8, !tbaa !21
  %.pre.fr = freeze i32 %.pre
  %i.gm = icmp eq i32 %.pre.fr, 8
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.go = load ptr, ptr %i.gn, align 8
  %spec.select59 = select i1 %i.gm, ptr %i.go, ptr @_ZN11opencv_onnx41_TypeProto_SparseTensor_default_instance_E
  br label %bb.an

bb.an:                                            ; preds = %_ZN11opencv_onnx9TypeProto36_internal_mutable_sparse_tensor_typeEv.exit, %_ZN11opencv_onnx9TypeProto36_internal_mutable_sparse_tensor_typeEv.exit.thread
  %i.gp = phi ptr [ %i.gk, %_ZN11opencv_onnx9TypeProto36_internal_mutable_sparse_tensor_typeEv.exit ], [ %.pre.i34, %_ZN11opencv_onnx9TypeProto36_internal_mutable_sparse_tensor_typeEv.exit.thread ]
  %i.gq = phi ptr [ %spec.select59, %_ZN11opencv_onnx9TypeProto36_internal_mutable_sparse_tensor_typeEv.exit ], [ %i.gd, %_ZN11opencv_onnx9TypeProto36_internal_mutable_sparse_tensor_typeEv.exit.thread ]
  tail call void @_ZN11opencv_onnx22TypeProto_SparseTensor9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.gp, ptr noundef nonnull align 8 dereferenceable(40) %i.gq)
  br label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i28, %bb.aj, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i21, %bb.ab, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, %bb.p, %bb.an, %bb.h, %bb.d
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !60 ; 2 uses
  %i.gt = trunc i64 %i.gs to i1
  br i1 %i.gt, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gv = and i64 %i.gs, -4
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %i.gx)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx17SparseTensorProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = add nsw i32 %i.d, %i.b
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.e)
  %i.f = load i32, ptr %i.a, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = load i32, ptr %i.c, align 8, !tbaa !64
  %i.j = add nsw i32 %i.i, %i.f
  store i32 %i.j, ptr %i.c, align 8, !tbaa !64
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.o = load i32, ptr %i.a, align 8, !tbaa !64
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr nonnull align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !21   ; 3 uses
  %i.t = and i32 %i.s, 3
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit
  %i.u = and i32 %i.s, 1
  %.not8 = icmp eq i32 %i.u, 0
  br i1 %.not8, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !21
  %i.x = or i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %_ZN11opencv_onnx17SparseTensorProto24_internal_mutable_valuesEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !60 ; 2 uses
  %i.ad = trunc i64 %i.ac to i1
  %i.ae = and i64 %i.ac, -4
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  br i1 %i.ad, label %bb.f, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !70

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.af, %bb.e ]
  %i.ah = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx11TensorProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !122 ; 2 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !88
  br label %_ZN11opencv_onnx17SparseTensorProto24_internal_mutable_valuesEv.exit

_ZN11opencv_onnx17SparseTensorProto24_internal_mutable_valuesEv.exit: ; preds = %bb.d, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.ai = phi ptr [ %i.ah, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.z, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88 ; 2 uses
  %.not.i10 = icmp eq ptr %i.ak, null
  %i.al = select i1 %.not.i10, ptr @_ZN11opencv_onnx30_TensorProto_default_instance_E, ptr %i.ak
  tail call void @_ZN11opencv_onnx11TensorProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.ai, ptr noundef nonnull align 8 dereferenceable(256) %i.al)
  br label %bb.g

bb.g:                                             ; preds = %_ZN11opencv_onnx17SparseTensorProto24_internal_mutable_valuesEv.exit, %bb.c
  %i.am = and i32 %i.s, 2
  %.not9 = icmp eq i32 %i.am, 0
  br i1 %.not9, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_1
begin_hunk_2_@_ZNK11opencv_onnx14AttributeProto11GetTypeNameB5cxx11Ev:.noexc.i

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN11opencv_onnx14ValueInfoProto9_Internal4typeEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx14ValueInfoProtoC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx14ValueInfoProtoE, i64 16), ptr %0, align 8, !tbaa !61
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.h, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.i, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.j, align 8, !tbaa !229
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %.not.i = icmp ne ptr %i.b, null
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp eq ptr %i.c, null
  %i.e = select i1 %.not.i, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx14ValueInfoProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx14ValueInfoProtoE, i64 16), ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  store i32 %i.d, ptr %i.b, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !75   ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.noexc, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.l = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef %i.h)
          to label %.noexc18 unwind label %bb.f

.noexc18:                                         ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.p = load i32, ptr %i.o, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !75
  %i.s = sub nsw i32 %i.p, %i.r
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.h, i32 noundef %i.s)
          to label %.noexc19 unwind label %bb.f

.noexc19:                                         ; preds = %.noexc18
  %i.t = load i32, ptr %i.q, align 8, !tbaa !75
  %i.u = add nsw i32 %i.t, %i.h                   ; 3 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !75
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !69   ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !76
  %i.x = icmp slt i32 %i.w, %i.u
  br i1 %i.x, label %bb.b, label %.noexc

bb.b:                                             ; preds = %.noexc19
  store i32 %i.u, ptr %i.v, align 8, !tbaa !76
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %.noexc19, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !60   ; 2 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %.noexc15, label %bb.c

.noexc15:                                         ; preds = %.noexc
  %i.ab = and i64 %i.z, -4
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %.noexc, %.noexc15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.ae, align 8, !tbaa !68
  %i.af = load i32, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !68
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, -2
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.an = trunc i64 %i.am to i1
  %i.ao = and i64 %i.am, -4
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  br i1 %i.an, label %bb.e, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.ap, %bb.d ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.g

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.h

bb.f:                                             ; preds = %.noexc18, %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %.noexc15, %bb.l, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.c
  %i.at = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.af, %bb.c ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.au, align 8, !tbaa !68
  %i.av = and i32 %i.at, 2
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !68
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, -2
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.bc = trunc i64 %i.bb to i1
  %i.bd = and i64 %i.bb, -4
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  br i1 %i.bc, label %bb.j, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21, !prof !70

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21: ; preds = %bb.j, %bb.i
  %.0.i.i20 = phi ptr [ %i.bf, %bb.j ], [ %i.be, %bb.i ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef %.0.i.i20)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge unwind label %bb.g

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21
  %.pre23 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge, %bb.h
  %i.bg = phi i32 [ %.pre23, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge ], [ %i.at, %bb.h ]
  %i.bh = and i32 %i.bg, 4
  %.not22 = icmp eq i32 %i.bh, 0                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %2 = load ptr, ptr %i.bi, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %.not22, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not22, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %bb.m unwind label %bb.g       ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !229
  invoke void @_ZN11opencv_onnx9TypeProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %i.bk)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 48) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.m
  %.sink = phi ptr [ %i.bj, %bb.m ], [ null, %bb.k ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sink, ptr %i.bm, align 8, !tbaa !229
  ret void

bb.p:                                             ; preds = %bb.n, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.n ], [ %i.as, %bb.g ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ar, %bb.f ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx14ValueInfoProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = icmp eq ptr %i.h, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.i, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.n, !inline_history !232

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = icmp eq ptr %i.k, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.l, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i unwind label %bb.n, !inline_history !232

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i: ; preds = %bb.e, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %.not.i = icmp eq ptr %0, @_ZN11opencv_onnx33_ValueInfoProto_default_instance_E
  br i1 %.not.i, label %_ZN11opencv_onnx14ValueInfoProto10SharedDtorEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !229  ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN11opencv_onnx14ValueInfoProto10SharedDtorEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11opencv_onnx9TypeProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(48) %i.n) #24, !inline_history !232
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #26, !inline_history !232
  br label %_ZN11opencv_onnx14ValueInfoProto10SharedDtorEv.exit

_ZN11opencv_onnx14ValueInfoProto10SharedDtorEv.exit: ; preds = %bb.g, %bb.f, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !60
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %bb.h, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.h:                                             ; preds = %_ZN11opencv_onnx14ValueInfoProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit unwind label %bb.n

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %_ZN11opencv_onnx14ValueInfoProto10SharedDtorEv.exit, %bb.h, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69
  %.not.i.i = icmp ne ptr %i.t, null
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = icmp eq ptr %i.u, null
  %i.w = select i1 %.not.i.i, i1 %i.v, i1 false
  br i1 %i.w, label %bb.i, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit

bb.i:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #25
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !61
  %i.z = load i64, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.aa = and i64 %i.z, 2
  %.not.i.i3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i3, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit
  %i.ab = trunc i64 %i.z to i1
  %i.ac = and i64 %i.z, -4
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  br i1 %i.ab, label %bb.l, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !70

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %i.ad, %bb.k ] ; 3 uses
  %i.af = icmp eq ptr %.0.i.i.i, null
  br i1 %i.af, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #26
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.m
  ret void

bb.n:                                             ; preds = %bb.h, %bb.e, %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx14ValueInfoProtoD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN11opencv_onnx14ValueInfoProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN11opencv_onnx14ValueInfoProto9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK11opencv_onnx14ValueInfoProto13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx14ValueInfoProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE5ClearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerIN11opencv_onnx22StringStringEntryProtoEE5ClearEPS4_.exit.i.i, %bb.b
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN6google8protobuf8internal18GenericTypeHandlerIN11opencv_onnx22StringStringEntryProtoEE5ClearEPS4_.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21   ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK11opencv_onnx21SimpleShardedDimProto13IsInitializedEv:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11opencv_onnx21SimpleShardedDimProto12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !128
  %i.d = load i64, ptr %i.b, align 8, !tbaa !128
  store i64 %i.d, ptr %i.a, align 8, !tbaa !128
  store i64 %i.c, ptr %i.b, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !21
  %i.h = load i32, ptr %i.f, align 8, !tbaa !21
  store i32 %i.h, ptr %i.e, align 8, !tbaa !21
  store i32 %i.g, ptr %i.f, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !128
  %i.l = load i64, ptr %i.j, align 8, !tbaa !128
  store i64 %i.l, ptr %i.i, align 8, !tbaa !128
  store i64 %i.k, ptr %i.j, align 8, !tbaa !128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 8, !tbaa !73
  %i.o = load i64, ptr %i.n, align 8, !tbaa !73
  store i64 %i.o, ptr %i.m, align 8, !tbaa !73
  store i64 %.sroa.0.0.copyload.i, ptr %i.n, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load i32, ptr %i.p, align 8, !tbaa !21
  %i.s = load i32, ptr %i.q, align 8, !tbaa !21
  store i32 %i.s, ptr %i.p, align 8, !tbaa !21
  store i32 %i.r, ptr %i.q, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11opencv_onnx21SimpleShardedDimProto11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 33, ptr %i.a, align 8, !tbaa !128
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14
  %i.d = load i64, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.c, ptr noundef nonnull align 1 dereferenceable(33) @.str.18, i64 33, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(232) ptr @_ZN11opencv_onnx17TrainingInfoProto9_Internal14initializationEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !349
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(232) ptr @_ZN11opencv_onnx17TrainingInfoProto9_Internal9algorithmEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !351
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx17TrainingInfoProtoC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx17TrainingInfoProtoE, i64 16), ptr %0, align 8, !tbaa !61
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.h, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx17TrainingInfoProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx17TrainingInfoProtoE, i64 16), ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  store i32 %i.d, ptr %i.b, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !75   ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEEC2ERKS4_.exit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.l = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i32 noundef %i.h)
          to label %.noexc19 unwind label %bb.h

.noexc19:                                         ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.p = load i32, ptr %i.o, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !75
  %i.s = sub nsw i32 %i.p, %i.r
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.h, i32 noundef %i.s)
          to label %.noexc20 unwind label %bb.h

.noexc20:                                         ; preds = %.noexc19
  %i.t = load i32, ptr %i.q, align 8, !tbaa !75
  %i.u = add nsw i32 %i.t, %i.h                   ; 3 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !75
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !69   ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !76
  %i.x = icmp slt i32 %i.w, %i.u
  br i1 %i.x, label %bb.b, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEEC2ERKS4_.exit

bb.b:                                             ; preds = %.noexc20
  store i32 %i.u, ptr %i.v, align 8, !tbaa !76
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEEC2ERKS4_.exit

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEEC2ERKS4_.exit: ; preds = %bb.b, %.noexc20, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !75  ; 4 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.noexc, label %.noexc.i21

.noexc.i21:                                       ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEEC2ERKS4_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69
  %i.ae = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i32 noundef %i.aa)
          to label %.noexc22 unwind label %bb.i

.noexc22:                                         ; preds = %.noexc.i21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !69
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !75
  %i.al = sub nsw i32 %i.ai, %i.ak
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef %i.ae, ptr noundef nonnull %i.af, i32 noundef %i.aa, i32 noundef %i.al)
          to label %.noexc23 unwind label %bb.i

.noexc23:                                         ; preds = %.noexc22
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !75
  %i.an = add nsw i32 %i.am, %i.aa                ; 3 uses
  store i32 %i.an, ptr %i.aj, align 8, !tbaa !75
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !69 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !76
  %i.aq = icmp slt i32 %i.ap, %i.an
  br i1 %i.aq, label %bb.c, label %.noexc

bb.c:                                             ; preds = %.noexc23
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !76
  br label %.noexc

.noexc:                                           ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEEC2ERKS4_.exit, %.noexc23, %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !60 ; 2 uses
  %i.at = trunc i64 %i.as to i1
  br i1 %i.at, label %.noexc16, label %bb.d

.noexc16:                                         ; preds = %.noexc
  %i.au = and i64 %i.as, -4
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %.noexc16, %.noexc
  %i.ax = load i32, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.ay = trunc i32 %i.ax to i1                   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %2 = load ptr, ptr %i.az, align 8
  %3 = icmp ne ptr %2, null
  %not..i = xor i1 %i.ay, true
  %4 = select i1 %not..i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.ay, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.ba = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.f unwind label %bb.j       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !349
  invoke void @_ZN11opencv_onnx10GraphProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(232) %i.ba, ptr noundef nonnull align 8 dereferenceable(232) %i.bb)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !349
  %.pre = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.m

bb.h:                                             ; preds = %.noexc19, %.noexc.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.i:                                             ; preds = %.noexc22, %.noexc.i21
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %.noexc16, %bb.n, %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 232) #26
  br label %bb.r

bb.l:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.bh, align 8, !tbaa !349
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l
  %i.bi = phi i32 [ %.pre, %bb.g ], [ %i.ax, %bb.l ]
  %i.bj = and i32 %i.bi, 2
  %.not = icmp eq i32 %i.bj, 0                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %5 = load ptr, ptr %i.bk, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %.not, i1 true, i1 %6
  tail call void @llvm.assume(i1 %7)
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.o unwind label %bb.j       ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !351
  invoke void @_ZN11opencv_onnx10GraphProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(232) %i.bl, ptr noundef nonnull align 8 dereferenceable(232) %i.bm)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 232) #26
  br label %bb.r

bb.q:                                             ; preds = %bb.m, %bb.o
  %.sink = phi ptr [ %i.bl, %bb.o ], [ null, %bb.m ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sink, ptr %i.bo, align 8, !tbaa !351
  ret void

bb.r:                                             ; preds = %bb.p, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.p ], [ %i.bf, %bb.j ], [ %i.bg, %bb.k ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.be, %bb.i ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.bd, %bb.h ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx17TrainingInfoProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.not.i = icmp eq ptr %0, @_ZN11opencv_onnx36_TrainingInfoProto_default_instance_E
  br i1 %.not.i, label %_ZN11opencv_onnx17TrainingInfoProto10SharedDtorEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !349  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11opencv_onnx10GraphProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %i.h) #24, !inline_history !352
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 232) #26, !inline_history !352
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !351  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN11opencv_onnx17TrainingInfoProto10SharedDtorEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11opencv_onnx10GraphProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %i.k) #24, !inline_history !352
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 232) #26, !inline_history !352
  br label %_ZN11opencv_onnx17TrainingInfoProto10SharedDtorEv.exit

_ZN11opencv_onnx17TrainingInfoProto10SharedDtorEv.exit: ; preds = %bb.g, %bb.f, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !60
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.h, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.h:                                             ; preds = %_ZN11opencv_onnx17TrainingInfoProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit unwind label %bb.p

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %_ZN11opencv_onnx17TrainingInfoProto10SharedDtorEv.exit, %bb.h, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69
  %.not.i.i = icmp ne ptr %i.q, null
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = icmp eq ptr %i.r, null
  %i.t = select i1 %.not.i.i, i1 %i.s, i1 false
  br i1 %i.t, label %bb.i, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit

bb.i:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !69
  %.not.i.i1 = icmp ne ptr %i.y, null
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = icmp eq ptr %i.z, null
  %i.ab = select i1 %.not.i.i1, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.k, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit2

bb.k:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit2 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #25
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit2: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit, %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !61
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !60  ; 3 uses
  %i.af = and i64 %i.ae, 2
  %.not.i.i3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i3, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit2
  %i.ag = trunc i64 %i.ae to i1
  %i.ah = and i64 %i.ae, -4
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  br i1 %i.ag, label %bb.n, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !70

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !71
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi ptr [ %i.aj, %bb.n ], [ %i.ai, %bb.m ] ; 3 uses
  %i.ak = icmp eq ptr %.0.i.i.i, null
  br i1 %i.ak, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #26
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit2, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.o
  ret void

bb.p:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx17TrainingInfoProtoD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN11opencv_onnx17TrainingInfoProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN11opencv_onnx17TrainingInfoProto9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK11opencv_onnx17TrainingInfoProto13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx17TrainingInfoProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN11opencv_onnx10ModelProtoC2ERKS0_:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !69
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !76
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !75
  %i.cq = sub nsw i32 %i.cn, %i.cp
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx24DeviceConfigurationProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef %i.cj, ptr noundef nonnull %i.ck, i32 noundef %i.cf, i32 noundef %i.cq)
          to label %.noexc48 unwind label %bb.n

.noexc48:                                         ; preds = %.noexc47
  %i.cr = load i32, ptr %i.co, align 8, !tbaa !75
  %i.cs = add nsw i32 %i.cr, %i.cf                ; 3 uses
  store i32 %i.cs, ptr %i.co, align 8, !tbaa !75
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !69 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !76
  %i.cv = icmp slt i32 %i.cu, %i.cs
  br i1 %i.cv, label %bb.f, label %.noexc

bb.f:                                             ; preds = %.noexc48
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !76
  br label %.noexc

.noexc:                                           ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx13FunctionProtoEEC2ERKS4_.exit, %.noexc48, %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !60 ; 2 uses
  %i.cy = trunc i64 %i.cx to i1
  br i1 %i.cy, label %.noexc32, label %bb.g

.noexc32:                                         ; preds = %.noexc
  %i.cz = and i64 %i.cx, -4
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.db)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %.noexc, %.noexc32
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.dc, align 8, !tbaa !68
  %i.dd = load i32, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.de = trunc i32 %i.dd to i1
  br i1 %i.de, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !68
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = and i64 %i.dh, -2
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.dl = trunc i64 %i.dk to i1
  %i.dm = and i64 %i.dk, -4
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  br i1 %i.dl, label %bb.i, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.i:                                             ; preds = %bb.h
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.do, %bb.i ], [ %i.dn, %bb.h ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.o

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.p

bb.j:                                             ; preds = %.noexc35, %.noexc.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.k:                                             ; preds = %.noexc38, %.noexc.i37
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.l:                                             ; preds = %.noexc41, %.noexc.i40
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.m:                                             ; preds = %.noexc44, %.noexc.i43
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.n:                                             ; preds = %.noexc47, %.noexc.i46
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.o:                                             ; preds = %.noexc32, %bb.z, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit54, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit52, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit50, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.p:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.g
  %i.dv = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.dd, %bb.g ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.dw, align 8, !tbaa !68
  %i.dx = and i32 %i.dv, 2
  %.not = icmp eq i32 %i.dx, 0
  br i1 %.not, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !68
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = and i64 %i.ea, -2
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.ee = trunc i64 %i.ed to i1
  %i.ef = and i64 %i.ed, -4
  %i.eg = inttoptr i64 %i.ef to ptr               ; 2 uses
  br i1 %i.ee, label %bb.r, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit50, !prof !70

bb.r:                                             ; preds = %bb.q
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit50

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit50: ; preds = %bb.r, %bb.q
  %.0.i.i49 = phi ptr [ %i.eh, %bb.r ], [ %i.eg, %bb.q ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %i.ec, ptr noundef %.0.i.i49)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit50._crit_edge unwind label %bb.o

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit50._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit50
  %.pre58 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.s

bb.s:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit50._crit_edge, %bb.p
  %i.ei = phi i32 [ %.pre58, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit50._crit_edge ], [ %i.dv, %bb.p ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.ej, align 8, !tbaa !68
  %i.ek = and i32 %i.ei, 4
  %.not55 = icmp eq i32 %i.ek, 0
  br i1 %.not55, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !68
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = and i64 %i.en, -2
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.er = trunc i64 %i.eq to i1
  %i.es = and i64 %i.eq, -4
  %i.et = inttoptr i64 %i.es to ptr               ; 2 uses
  br i1 %i.er, label %bb.u, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit52, !prof !70

bb.u:                                             ; preds = %bb.t
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit52

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit52: ; preds = %bb.u, %bb.t
  %.0.i.i51 = phi ptr [ %i.eu, %bb.u ], [ %i.et, %bb.t ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %i.ep, ptr noundef %.0.i.i51)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit52._crit_edge unwind label %bb.o

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit52._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit52
  %.pre59 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.v

bb.v:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit52._crit_edge, %bb.s
  %i.ev = phi i32 [ %.pre59, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit52._crit_edge ], [ %i.ei, %bb.s ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.ew, align 8, !tbaa !68
  %i.ex = and i32 %i.ev, 8
  %.not56 = icmp eq i32 %i.ex, 0
  br i1 %.not56, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !68
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = and i64 %i.fa, -2
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.fe = trunc i64 %i.fd to i1
  %i.ff = and i64 %i.fd, -4
  %i.fg = inttoptr i64 %i.ff to ptr               ; 2 uses
  br i1 %i.fe, label %bb.x, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit54, !prof !70

bb.x:                                             ; preds = %bb.w
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit54

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit54: ; preds = %bb.x, %bb.w
  %.0.i.i53 = phi ptr [ %i.fh, %bb.x ], [ %i.fg, %bb.w ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef %.0.i.i53)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit54._crit_edge unwind label %bb.o

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit54._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit54
  %.pre60 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.y

bb.y:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit54._crit_edge, %bb.v
  %i.fi = phi i32 [ %.pre60, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit54._crit_edge ], [ %i.ev, %bb.v ]
  %i.fj = and i32 %i.fi, 16
  %.not57 = icmp eq i32 %i.fj, 0                  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %2 = load ptr, ptr %i.fk, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %.not57, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not57, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fl = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.aa unwind label %bb.o      ; 3 uses

bb.aa:                                            ; preds = %bb.z
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !371
  invoke void @_ZN11opencv_onnx10GraphProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(232) %i.fl, ptr noundef nonnull align 8 dereferenceable(232) %i.fm)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef 232) #26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %bb.aa
  %.sink = phi ptr [ %i.fl, %bb.aa ], [ null, %bb.y ]
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.sink, ptr %i.fo, align 8, !tbaa !371
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 16, i1 false)
  ret void

bb.ad:                                            ; preds = %bb.ab, %bb.o
  %.pn = phi { ptr, i32 } [ %i.fn, %bb.ab ], [ %i.du, %bb.o ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx24DeviceConfigurationProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cd) #24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.dt, %bb.n ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx13FunctionProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bk) #24
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %i.ds, %bb.m ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx17TrainingInfoProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ar) #24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.af ], [ %i.dr, %bb.l ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ag ], [ %i.dq, %bb.k ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx18OperatorSetIdProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.j
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ah ], [ %i.dp, %bb.j ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx10ModelProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = icmp eq ptr %i.h, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.i, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.x, !inline_history !377

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = icmp eq ptr %i.k, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.l, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i unwind label %bb.x, !inline_history !377

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i: ; preds = %bb.e, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.o = icmp eq ptr %i.n, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.o, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i unwind label %bb.x, !inline_history !377

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i: ; preds = %bb.f, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit2.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.r = icmp eq ptr %i.q, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.r, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i unwind label %bb.x, !inline_history !377

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i: ; preds = %bb.g, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit3.i
  %.not.i = icmp eq ptr %0, @_ZN11opencv_onnx29_ModelProto_default_instance_E
  br i1 %.not.i, label %_ZN11opencv_onnx10ModelProto10SharedDtorEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !371  ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN11opencv_onnx10ModelProto10SharedDtorEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN11opencv_onnx10GraphProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %i.t) #24, !inline_history !377
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 232) #26, !inline_history !377
  br label %_ZN11opencv_onnx10ModelProto10SharedDtorEv.exit

_ZN11opencv_onnx10ModelProto10SharedDtorEv.exit:  ; preds = %bb.i, %bb.h, %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit4.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !60
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %bb.j, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.j:                                             ; preds = %_ZN11opencv_onnx10ModelProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit unwind label %bb.x

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %_ZN11opencv_onnx10ModelProto10SharedDtorEv.exit, %bb.j, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !69
  %.not.i.i = icmp ne ptr %i.z, null
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = select i1 %.not.i.i, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.k, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx24DeviceConfigurationProtoEED2Ev.exit

bb.k:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx24DeviceConfigurationProtoEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #25
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx24DeviceConfigurationProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !69
  %.not.i.i5 = icmp ne ptr %i.ah, null
  %i.ai = load ptr, ptr %i.af, align 8
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = select i1 %.not.i.i5, i1 %i.aj, i1 false
  br i1 %i.ak, label %bb.m, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx13FunctionProtoEED2Ev.exit

bb.m:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx24DeviceConfigurationProtoEED2Ev.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx13FunctionProtoEED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #25
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx13FunctionProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx24DeviceConfigurationProtoEED2Ev.exit, %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !69
  %.not.i.i6 = icmp ne ptr %i.ap, null
  %i.aq = load ptr, ptr %i.an, align 8
  %i.ar = icmp eq ptr %i.aq, null
  %i.as = select i1 %.not.i.i6, i1 %i.ar, i1 false
  br i1 %i.as, label %bb.o, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx17TrainingInfoProtoEED2Ev.exit

bb.o:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx13FunctionProtoEED2Ev.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx17TrainingInfoProtoEED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
end_hunk_4
begin_hunk_5_@_ZN11opencv_onnx11TensorProtoC2ERKS0_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i8 0, i64 24, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !75 ; 4 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %.noexc, label %.noexc.i62

.noexc.i62:                                       ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEEC2ERKS4_.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !69
  %i.dx = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i32 noundef %i.dt)
          to label %.noexc63 unwind label %bb.v

.noexc63:                                         ; preds = %.noexc.i62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !69
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !76
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !75
  %i.ee = sub nsw i32 %i.eb, %i.ed
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef %i.dx, ptr noundef nonnull %i.dy, i32 noundef %i.dt, i32 noundef %i.ee)
          to label %.noexc64 unwind label %bb.v

.noexc64:                                         ; preds = %.noexc63
  %i.ef = load i32, ptr %i.ec, align 8, !tbaa !75
  %i.eg = add nsw i32 %i.ef, %i.dt                ; 3 uses
  store i32 %i.eg, ptr %i.ec, align 8, !tbaa !75
  %i.eh = load ptr, ptr %i.dz, align 8, !tbaa !69 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !76
  %i.ej = icmp slt i32 %i.ei, %i.eg
  br i1 %i.ej, label %bb.j, label %.noexc

bb.j:                                             ; preds = %.noexc64
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !76
  br label %.noexc

.noexc:                                           ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEEC2ERKS4_.exit, %.noexc64, %bb.j
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !60 ; 2 uses
  %i.em = trunc i64 %i.el to i1
  br i1 %i.em, label %.noexc42, label %bb.k

.noexc42:                                         ; preds = %.noexc
  %i.en = and i64 %i.el, -4
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ep)
          to label %bb.k unwind label %bb.w

bb.k:                                             ; preds = %.noexc, %.noexc42
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.eq, align 8, !tbaa !68
  %i.er = load i32, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.es = trunc i32 %i.er to i1
  br i1 %i.es, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !68
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = and i64 %i.ev, -2
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.ez = trunc i64 %i.ey to i1
  %i.fa = and i64 %i.ey, -4
  %i.fb = inttoptr i64 %i.fa to ptr               ; 2 uses
  br i1 %i.ez, label %bb.m, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.m:                                             ; preds = %bb.l
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ %i.fc, %bb.m ], [ %i.fb, %bb.l ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.w

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.x

bb.n:                                             ; preds = %bb.b
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.o:                                             ; preds = %bb.c
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.p:                                             ; preds = %bb.d
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.q:                                             ; preds = %.noexc50, %.noexc.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.r:                                             ; preds = %bb.f
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.s:                                             ; preds = %bb.g
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.t:                                             ; preds = %bb.h
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.u:                                             ; preds = %.noexc60, %.noexc.i59
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.v:                                             ; preds = %.noexc63, %.noexc.i62
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.w:                                             ; preds = %.noexc42, %bb.ae, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.k
  %i.fn = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.er, %bb.k ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.fo, align 8, !tbaa !68
  %i.fp = and i32 %i.fn, 2
  %.not = icmp eq i32 %i.fp, 0
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !68
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, -2
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.fw = trunc i64 %i.fv to i1
  %i.fx = and i64 %i.fv, -4
  %i.fy = inttoptr i64 %i.fx to ptr               ; 2 uses
  br i1 %i.fw, label %bb.z, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67, !prof !70

bb.z:                                             ; preds = %bb.y
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67: ; preds = %bb.z, %bb.y
  %.0.i.i66 = phi ptr [ %i.fz, %bb.z ], [ %i.fy, %bb.y ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef %.0.i.i66)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67._crit_edge unwind label %bb.w

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67
  %.pre73 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67._crit_edge, %bb.x
  %i.ga = phi i32 [ %.pre73, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit67._crit_edge ], [ %i.fn, %bb.x ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.gb, align 8, !tbaa !68
  %i.gc = and i32 %i.ga, 4
  %.not71 = icmp eq i32 %i.gc, 0
  br i1 %.not71, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !68
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = and i64 %i.gf, -2
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.gj = trunc i64 %i.gi to i1
  %i.gk = and i64 %i.gi, -4
  %i.gl = inttoptr i64 %i.gk to ptr               ; 2 uses
  br i1 %i.gj, label %bb.ac, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69, !prof !70

bb.ac:                                            ; preds = %bb.ab
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69: ; preds = %bb.ac, %bb.ab
  %.0.i.i68 = phi ptr [ %i.gm, %bb.ac ], [ %i.gl, %bb.ab ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef %.0.i.i68)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69._crit_edge unwind label %bb.w

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69
  %.pre74 = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69._crit_edge, %bb.aa
  %i.gn = phi i32 [ %.pre74, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit69._crit_edge ], [ %i.ga, %bb.aa ]
  %i.go = and i32 %i.gn, 8
  %.not72 = icmp eq i32 %i.go, 0                  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %2 = load ptr, ptr %i.gp, align 8
  %3 = icmp ne ptr %2, null
  %4 = select i1 %.not72, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %.not72, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gq = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %bb.af unwind label %bb.w      ; 8 uses

bb.af:                                            ; preds = %bb.ae
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !100 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  store i64 0, ptr %i.gs, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx19TensorProto_SegmentE, i64 16), ptr %i.gq, align 8, !tbaa !61
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !73
  store i32 %i.gv, ptr %i.gt, align 8, !tbaa !73
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 20
  store i32 0, ptr %i.gw, align 4, !tbaa !231
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !60 ; 2 uses
  %i.gz = trunc i64 %i.gy to i1
  br i1 %i.gz, label %.noexc5.i, label %bb.ag

.noexc5.i:                                        ; preds = %bb.af
  %i.ha = and i64 %i.gy, -4
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %i.hc)
          to label %bb.ag unwind label %.body

.body:                                            ; preds = %.noexc5.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(40) %i.gq) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef 40) #26
  br label %bb.ai

bb.ag:                                            ; preds = %.noexc5.i, %bb.af
  %i.he = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.hf, i64 16, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.ag
  %.sink = phi ptr [ %i.gq, %bb.ag ], [ null, %bb.ad ]
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %.sink, ptr %i.hg, align 8, !tbaa !100
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.hj = load i64, ptr %i.hi, align 8
  store i64 %i.hj, ptr %i.hh, align 8
  ret void

bb.ai:                                            ; preds = %.body, %bb.w
  %.pn = phi { ptr, i32 } [ %i.hd, %.body ], [ %i.fm, %bb.w ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dr) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ai ], [ %i.fl, %bb.v ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cy) #24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aj ], [ %i.fk, %bb.u ]
  tail call void @_ZN6google8protobuf13RepeatedFieldImED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cl) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ak ], [ %i.fj, %bb.t ]
  tail call void @_ZN6google8protobuf13RepeatedFieldIdED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.by) #24
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.al ], [ %i.fi, %bb.s ]
  tail call void @_ZN6google8protobuf13RepeatedFieldIlED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bl) #24
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.r
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.am ], [ %i.fh, %bb.r ]
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.an ], [ %i.fg, %bb.q ]
  tail call void @_ZN6google8protobuf13RepeatedFieldIiED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.af) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.p
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.ao ], [ %i.ff, %bb.p ]
  tail call void @_ZN6google8protobuf13RepeatedFieldIfED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.s) #24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.o
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ap ], [ %i.fe, %bb.o ]
  tail call void @_ZN6google8protobuf13RepeatedFieldIlED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.f) #24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.aq ], [ %i.fd, %bb.n ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx11TensorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  invoke void @_ZN11opencv_onnx11TensorProto10SharedDtorEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !60
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit unwind label %bb.m

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %bb.d, %bb.e, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  %.not.i.i = icmp ne ptr %i.k, null
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %.not.i.i, i1 %i.m, i1 false
  br i1 %i.n, label %bb.f, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit

bb.f:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #25
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69
  %.not.i.i1 = icmp ne ptr %i.s, null
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = icmp eq ptr %i.t, null
  %i.v = select i1 %.not.i.i1, i1 %i.u, i1 false
  br i1 %i.v, label %bb.h, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit2

bb.h:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit2 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit2: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN6google8protobuf13RepeatedFieldImED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.y) #24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN6google8protobuf13RepeatedFieldIdED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.z) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6google8protobuf13RepeatedFieldIlED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aa) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ab) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6google8protobuf13RepeatedFieldIiED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ac) #24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6google8protobuf13RepeatedFieldIfED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ad) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf13RepeatedFieldIlED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ae) #24
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !61
  %i.af = load i64, ptr %i.a, align 8, !tbaa !60  ; 3 uses
  %i.ag = and i64 %i.af, 2
  %.not.i.i3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i3, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx22StringStringEntryProtoEED2Ev.exit2
  %i.ah = trunc i64 %i.af to i1
end_hunk_5
begin_hunk_6_@_ZN11opencv_onnx11TensorProto12InternalSwapEPS0_:_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.0.copyload.i.i.i26 = load i128, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i26, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !222, !noalias !540
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !197, !noalias !540
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !222, !noalias !543
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !197, !noalias !543
  store ptr %i.x, ptr %i.p, align 8, !tbaa !197
  store ptr %i.w, ptr %i.r, align 8, !tbaa !222
  store ptr %i.t, ptr %i.o, align 8, !tbaa !197
  %i.y = load <2 x i32>, ptr %i.q, align 8, !tbaa !21, !noalias !540
  %i.z = load <2 x i32>, ptr %i.u, align 8, !tbaa !21, !noalias !543
  store <2 x i32> %i.z, ptr %i.q, align 8, !tbaa !21
  store <2 x i32> %i.y, ptr %i.u, align 8, !tbaa !21
  store ptr %i.s, ptr %i.v, align 8, !tbaa !222
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.0.copyload.i.i.i27 = load i128, ptr %i.aa, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i27, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.0.copyload.i.i.i28 = load i128, ptr %i.ac, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i28, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %.0.copyload.i.i.i29 = load i128, ptr %i.ae, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i29, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !197, !noalias !546
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !197, !noalias !549
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !197
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !197
  %i.ao = load <2 x i32>, ptr %i.ai, align 8, !tbaa !21, !noalias !546
  %i.ap = load <2 x i32>, ptr %i.al, align 8, !tbaa !21, !noalias !549
  store <2 x i32> %i.ap, ptr %i.ai, align 8, !tbaa !21
  store <2 x i32> %i.ao, ptr %i.al, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !78, !noalias !12
  %i.av = load <2 x ptr>, ptr %i.am, align 8, !tbaa !78, !noalias !12
  store <2 x ptr> %i.av, ptr %i.aj, align 8, !tbaa !78
  store <2 x ptr> %i.au, ptr %i.am, align 8, !tbaa !78
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !222, !noalias !552
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !222, !noalias !555
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !222
  %i.ay = load <2 x i32>, ptr %i.aq, align 8, !tbaa !21, !noalias !552
  %i.az = load <2 x i32>, ptr %i.as, align 8, !tbaa !21, !noalias !555
  store <2 x i32> %i.az, ptr %i.aq, align 8, !tbaa !21
  store <2 x i32> %i.ay, ptr %i.as, align 8, !tbaa !21
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !222
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 8, !tbaa !78
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !78
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !78
  store ptr %.sroa.0.0.copyload.i, ptr %i.ba, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %.sroa.0.0.copyload.i30 = load ptr, ptr %i.be, align 8, !tbaa !78
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !78
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !78
  store ptr %.sroa.0.0.copyload.i30, ptr %i.bd, align 8, !tbaa !78
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %.sroa.0.0.copyload.i31 = load ptr, ptr %i.bh, align 8, !tbaa !78
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !78
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !78
  store ptr %.sroa.0.0.copyload.i31, ptr %i.bg, align 8, !tbaa !78
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.bj, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.bk, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11opencv_onnx11TensorProto11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 23, ptr %i.a, align 8, !tbaa !128
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14
  %i.d = load i64, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.30, i64 23, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !20
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(256) ptr @_ZN11opencv_onnx17SparseTensorProto9_Internal6valuesEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(256) ptr @_ZN11opencv_onnx17SparseTensorProto9_Internal7indicesEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx17SparseTensorProtoC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx17SparseTensorProtoE, i64 16), ptr %0, align 8, !tbaa !61
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.e, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx17SparseTensorProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx17SparseTensorProtoE, i64 16), ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  store i32 %i.d, ptr %i.b, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  %i.h = load i32, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %i.h)
          to label %.noexc16 unwind label %bb.g

.noexc16:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.g, align 8, !tbaa !64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.l = load i32, ptr %i.f, align 8, !tbaa !64
  %i.m = add nsw i32 %i.l, %i.j
  store i32 %i.m, ptr %i.f, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  %i.p = load i32, ptr %i.g, align 8, !tbaa !64
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.k, ptr nonnull align 8 %i.o, i64 %i.r, i1 false)
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %.noexc16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !60   ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %.noexc13, label %bb.c

.noexc13:                                         ; preds = %.noexc
  %i.v = and i64 %i.t, -4
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %.noexc13, %.noexc
  %i.y = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.z = trunc i32 %i.y to i1                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %2 = load ptr, ptr %i.aa, align 8
  %3 = icmp ne ptr %2, null
  %not..i = xor i1 %i.z, true
  %4 = select i1 %not..i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.z, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ab = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #27
          to label %bb.e unwind label %bb.h       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !88
  invoke void @_ZN11opencv_onnx11TensorProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.ab, ptr noundef nonnull align 8 dereferenceable(256) %i.ac)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !88
  %.pre = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.h:                                             ; preds = %.noexc13, %bb.l, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 256) #26
  br label %bb.p

bb.j:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.ah, align 8, !tbaa !88
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j
  %i.ai = phi i32 [ %.pre, %bb.f ], [ %i.y, %bb.j ]
  %i.aj = and i32 %i.ai, 2
  %.not = icmp eq i32 %i.aj, 0                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %5 = load ptr, ptr %i.ak, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %.not, i1 true, i1 %6
  tail call void @llvm.assume(i1 %7)
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #27
          to label %bb.m unwind label %bb.h       ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !90
  invoke void @_ZN11opencv_onnx11TensorProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.al, ptr noundef nonnull align 8 dereferenceable(256) %i.am)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 256) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.m
  %.sink = phi ptr [ %i.al, %bb.m ], [ null, %bb.k ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink, ptr %i.ao, align 8, !tbaa !90
  ret void

bb.p:                                             ; preds = %bb.n, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.an, %bb.n ], [ %i.af, %bb.h ], [ %i.ag, %bb.i ]
  tail call void @_ZN6google8protobuf13RepeatedFieldIlED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.f) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.ae, %bb.g ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx17SparseTensorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.not.i = icmp eq ptr %0, @_ZN11opencv_onnx36_SparseTensorProto_default_instance_E
  br i1 %.not.i, label %_ZN11opencv_onnx17SparseTensorProto10SharedDtorEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11opencv_onnx11TensorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %i.h) #24, !inline_history !558
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 256) #26, !inline_history !558
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN11opencv_onnx17SparseTensorProto10SharedDtorEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11opencv_onnx11TensorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %i.k) #24, !inline_history !558
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 256) #26, !inline_history !558
  br label %_ZN11opencv_onnx17SparseTensorProto10SharedDtorEv.exit

_ZN11opencv_onnx17SparseTensorProto10SharedDtorEv.exit: ; preds = %bb.g, %bb.f, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !60
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.h, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.h:                                             ; preds = %_ZN11opencv_onnx17SparseTensorProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit unwind label %bb.l

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %_ZN11opencv_onnx17SparseTensorProto10SharedDtorEv.exit, %bb.h, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf13RepeatedFieldIlED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.o) #24
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !61
  %i.p = load i64, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.q = and i64 %i.p, 2
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  %i.r = trunc i64 %i.p to i1
  %i.s = and i64 %i.p, -4
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  br i1 %i.r, label %bb.j, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !70

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi ptr [ %i.u, %bb.j ], [ %i.t, %bb.i ] ; 3 uses
  %i.v = icmp eq ptr %.0.i.i.i, null
  br i1 %i.v, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #26
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx17SparseTensorProtoD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN11opencv_onnx17SparseTensorProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN11opencv_onnx17SparseTensorProto9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK11opencv_onnx17SparseTensorProto13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11opencv_onnx17SparseTensorProto14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit

_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit: ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader
  %.038 = phi ptr [ %1, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader ], [ %.038.be, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge ] ; 4 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !108
  %i.l = load ptr, ptr %2, align 8, !tbaa !115
  %i.m = icmp ult ptr %.038, %i.l
  br i1 %i.m, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread41, label %bb.a, !prof !13

bb.a:                                             ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.o = ptrtoint ptr %.038 to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !117
  %i.t = icmp eq i32 %i.s, %i.r
  br i1 %i.t, label %bb.b, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.u = icmp sgt i32 %i.r, 0
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.w, null
  %or.cond.i.i = select i1 %i.u, i1 %i.x, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.038
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.a
  %i.y = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackEii(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %i.r, i32 noundef %i.k) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.y, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.y, 1
  %i.z = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.z, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread41

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread41: ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.544 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.038, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit ] ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN11opencv_onnx16TensorShapeProto8CopyFromERKS0_:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !60   ; 2 uses
  %i.y = trunc i64 %i.x to i1
  %i.z = and i64 %i.x, -4
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  br i1 %i.y, label %bb.h, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i.i.i.i.i, !prof !70

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i.i.i.i.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %i.aa, %bb.g ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyENS2_12EmptyDefaultEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %.0.i.i.i.i.i.i.i.i)
  br label %_ZN11opencv_onnx26TensorShapeProto_Dimension11clear_valueEv.exit.i.i.i.i.i

_ZN11opencv_onnx26TensorShapeProto_Dimension11clear_valueEv.exit.i.i.i.i.i: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i.i.i.i.i, %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !21
  store i32 0, ptr %i.j, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !60
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %_ZN6google8protobuf8internal18GenericTypeHandlerIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEPS4_.exit.i.i.i

bb.i:                                             ; preds = %_ZN11opencv_onnx26TensorShapeProto_Dimension11clear_valueEv.exit.i.i.i.i.i
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  br label %_ZN6google8protobuf8internal18GenericTypeHandlerIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEPS4_.exit.i.i.i

_ZN6google8protobuf8internal18GenericTypeHandlerIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEPS4_.exit.i.i.i: ; preds = %bb.i, %_ZN11opencv_onnx26TensorShapeProto_Dimension11clear_valueEv.exit.i.i.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %bb.j, label %bb.d, !llvm.loop !562

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEPS4_.exit.i.i.i
  store i32 0, ptr %i.b, align 8, !tbaa !75
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEv.exit.i: ; preds = %bb.j, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !60
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %bb.k, label %_ZN11opencv_onnx16TensorShapeProto5ClearEv.exit

bb.k:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEv.exit.i
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  br label %_ZN11opencv_onnx16TensorShapeProto5ClearEv.exit

_ZN11opencv_onnx16TensorShapeProto5ClearEv.exit:  ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEv.exit.i, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !75 ; 4 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE9MergeFromERKS4_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN11opencv_onnx16TensorShapeProto5ClearEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i32 noundef %i.aj)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !76
  %i.at = load i32, ptr %i.b, align 8, !tbaa !75
  %i.au = sub nsw i32 %i.as, %i.at
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef %i.ap, ptr noundef nonnull %i.ao, i32 noundef %i.aj, i32 noundef %i.au), !inline_history !160
  %i.av = load i32, ptr %i.b, align 8, !tbaa !75
  %i.aw = add nsw i32 %i.av, %i.aj                ; 3 uses
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !75
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !69 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !76
  %i.az = icmp slt i32 %i.ay, %i.aw
  br i1 %i.az, label %bb.m, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE9MergeFromERKS4_.exit.i

bb.m:                                             ; preds = %bb.l
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !76
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE9MergeFromERKS4_.exit.i

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE9MergeFromERKS4_.exit.i: ; preds = %bb.m, %bb.l, %_ZN11opencv_onnx16TensorShapeProto5ClearEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !60 ; 2 uses
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, label %_ZN11opencv_onnx16TensorShapeProto9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE9MergeFromERKS4_.exit.i
  %i.bd = and i64 %i.bb, -4
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
  br label %_ZN11opencv_onnx16TensorShapeProto9MergeFromERKS0_.exit

_ZN11opencv_onnx16TensorShapeProto9MergeFromERKS0_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE9MergeFromERKS4_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK11opencv_onnx16TensorShapeProto13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11opencv_onnx16TensorShapeProto12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !128
  %i.d = load i64, ptr %i.b, align 8, !tbaa !128
  store i64 %i.d, ptr %i.a, align 8, !tbaa !128
  store i64 %i.c, ptr %i.b, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !222, !noalias !567
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !197, !noalias !567
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !222, !noalias !570
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !197, !noalias !570
  store ptr %i.n, ptr %i.f, align 8, !tbaa !197
  store ptr %i.m, ptr %i.h, align 8, !tbaa !222
  store ptr %i.j, ptr %i.e, align 8, !tbaa !197
  %i.o = load <2 x i32>, ptr %i.g, align 8, !tbaa !21, !noalias !567
  %i.p = load <2 x i32>, ptr %i.k, align 8, !tbaa !21, !noalias !570
  store <2 x i32> %i.p, ptr %i.g, align 8, !tbaa !21
  store <2 x i32> %i.o, ptr %i.k, align 8, !tbaa !21
  store ptr %i.i, ptr %i.l, align 8, !tbaa !222
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11opencv_onnx16TensorShapeProto11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 28, ptr %i.a, align 8, !tbaa !128
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14
  %i.d = load i64, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.c, ptr noundef nonnull align 1 dereferenceable(28) @.str.35, i64 28, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !20
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN11opencv_onnx16TypeProto_Tensor9_Internal5shapeEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !573
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx16TypeProto_TensorC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 36)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx16TypeProto_TensorE, i64 16), ptr %0, align 8, !tbaa !61
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx16TypeProto_TensorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx16TypeProto_TensorE, i64 16), ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  store i32 %i.d, ptr %i.b, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc9, label %bb.a

.noexc9:                                          ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc9, %.noexc
  %i.l = load i32, ptr %i.c, align 8, !tbaa !21
  %i.m = trunc i32 %i.l to i1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.n, align 8
  %3 = icmp ne ptr %2, null
  %not..i = xor i1 %i.m, true
  %4 = select i1 %not..i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %bb.c unwind label %bb.d       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !573
  invoke void @_ZN11opencv_onnx16TensorShapeProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %.noexc9, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 48) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.s, align 8, !tbaa !573
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !576
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.u, ptr %i.v, align 8, !tbaa !576
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx16TypeProto_TensorD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(40) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 5 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.not.i = icmp eq ptr %0, @_ZN11opencv_onnx35_TypeProto_Tensor_default_instance_E
  br i1 %.not.i, label %_ZN11opencv_onnx16TypeProto_Tensor10SharedDtorEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !573  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN11opencv_onnx16TypeProto_Tensor10SharedDtorEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11opencv_onnx16TensorShapeProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(48) %i.h) #24, !inline_history !577
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 48) #26, !inline_history !577
  %.pre = load i64, ptr %i.a, align 8, !tbaa !60
  br label %_ZN11opencv_onnx16TypeProto_Tensor10SharedDtorEv.exit

_ZN11opencv_onnx16TypeProto_Tensor10SharedDtorEv.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.j = phi i64 [ %.pre, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.f:                                             ; preds = %_ZN11opencv_onnx16TypeProto_Tensor10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge unwind label %bb.j

._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge: ; preds = %bb.f
  %.pre1 = load i64, ptr %i.a, align 8, !tbaa !60
  br label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge, %_ZN11opencv_onnx16TypeProto_Tensor10SharedDtorEv.exit, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.l = phi i64 [ %.pre1, %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge ], [ %i.j, %_ZN11opencv_onnx16TypeProto_Tensor10SharedDtorEv.exit ], [ %i.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !61
  %i.m = and i64 %i.l, 2
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  %i.n = trunc i64 %i.l to i1
  %i.o = and i64 %i.l, -4
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  br i1 %i.n, label %bb.h, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !70

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.q, %bb.h ], [ %i.p, %bb.g ] ; 3 uses
  %i.r = icmp eq ptr %.0.i.i.i, null
  br i1 %i.r, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #26
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.i
  ret void

bb.j:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx16TypeProto_TensorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN11opencv_onnx16TypeProto_TensorD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(40) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN11opencv_onnx16TypeProto_Tensor9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK11opencv_onnx16TypeProto_Tensor13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx16TypeProto_Tensor5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN11opencv_onnx16TensorShapeProto5ClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !573  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !75   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.trip.count.i.i.i = zext nneg i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEPS4_.exit.i.i.i, %bb.c
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %_ZN6google8protobuf8internal18GenericTypeHandlerIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEPS4_.exit.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21
  %i.p = and i32 %i.o, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, -2
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !20
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !14
  store i8 0, ptr %i.w, align 1, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !21
  %cond.i.i.i.i.i.i = icmp eq i32 %i.y, 2
  br i1 %cond.i.i.i.i.i.i, label %bb.g, label %_ZN11opencv_onnx26TensorShapeProto_Dimension11clear_valueEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
end_hunk_7
begin_hunk_8_@_ZN11opencv_onnx16TypeProto_Tensor9MergeFromERKS0_:bb.a
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE9MergeFromERKS4_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN11opencv_onnx16TypeProto_Tensor23_internal_mutable_shapeEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i32 noundef %i.w)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !69
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !75
  %i.ai = sub nsw i32 %i.af, %i.ah
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef %i.ac, ptr noundef nonnull %i.ab, i32 noundef %i.w, i32 noundef %i.ai), !inline_history !160
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !75
  %i.ak = add nsw i32 %i.aj, %i.w                 ; 3 uses
  store i32 %i.ak, ptr %i.ag, align 8, !tbaa !75
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !76
  %i.an = icmp slt i32 %i.am, %i.ak
  br i1 %i.an, label %bb.g, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE9MergeFromERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !76
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE9MergeFromERKS4_.exit.i

_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE9MergeFromERKS4_.exit.i: ; preds = %bb.g, %bb.f, %_ZN11opencv_onnx16TypeProto_Tensor23_internal_mutable_shapeEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !60 ; 2 uses
  %i.aq = trunc i64 %i.ap to i1
  br i1 %i.aq, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, label %_ZN11opencv_onnx16TensorShapeProto9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE9MergeFromERKS4_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.as = and i64 %i.ap, -4
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  br label %_ZN11opencv_onnx16TensorShapeProto9MergeFromERKS0_.exit

_ZN11opencv_onnx16TensorShapeProto9MergeFromERKS0_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE9MergeFromERKS4_.exit.i, %bb.b
  %i.av = and i32 %i.b, 2
  %.not9 = icmp eq i32 %i.av, 0
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN11opencv_onnx16TensorShapeProto9MergeFromERKS0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !576
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !576
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN11opencv_onnx16TensorShapeProto9MergeFromERKS0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !21
  %i.bb = or i32 %i.ba, %i.b
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !60 ; 2 uses
  %i.be = trunc i64 %i.bd to i1
  br i1 %i.be, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = and i64 %i.bd, -4
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.bi)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %bb.j, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx16TypeProto_Tensor8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11opencv_onnx16TypeProto_Tensor5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  tail call void @_ZN11opencv_onnx16TypeProto_Tensor9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK11opencv_onnx16TypeProto_Tensor13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11opencv_onnx16TypeProto_Tensor12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !128
  %i.d = load i64, ptr %i.b, align 8, !tbaa !128
  store i64 %i.d, ptr %i.a, align 8, !tbaa !128
  store i64 %i.c, ptr %i.b, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !21
  %i.h = load i32, ptr %i.f, align 8, !tbaa !21
  store i32 %i.h, ptr %i.e, align 8, !tbaa !21
  store i32 %i.g, ptr %i.f, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.i, align 8
  %i.k = load i64, ptr %i.j, align 8
  store i64 %i.k, ptr %i.i, align 8
  store i64 %.0.copyload.i.i, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.l, align 8
  %i.n = load i32, ptr %i.m, align 8
  store i32 %i.n, ptr %i.l, align 8
  store i32 %.0.copyload.i.i.i, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11opencv_onnx16TypeProto_Tensor11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 28, ptr %i.a, align 8, !tbaa !128
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14
  %i.d = load i64, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.c, ptr noundef nonnull align 1 dereferenceable(28) @.str.37, i64 28, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !20
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN11opencv_onnx18TypeProto_Sequence9_Internal9elem_typeEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_SequenceC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx18TypeProto_SequenceE, i64 16), ptr %0, align 8, !tbaa !61
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_SequenceC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx18TypeProto_SequenceE, i64 16), ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  store i32 %i.d, ptr %i.b, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc8, label %bb.a

.noexc8:                                          ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc8, %.noexc
  %i.l = load i32, ptr %i.c, align 8, !tbaa !21
  %i.m = trunc i32 %i.l to i1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.n, align 8
  %3 = icmp ne ptr %2, null
  %not..i = xor i1 %i.m, true
  %4 = select i1 %not..i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %bb.c unwind label %bb.d       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !178
  invoke void @_ZN11opencv_onnx9TypeProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %.noexc8, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 48) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.s, align 8, !tbaa !178
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_SequenceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  invoke void @_ZN11opencv_onnx18TypeProto_Sequence10SharedDtorEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge unwind label %bb.i

._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge: ; preds = %bb.e
  %.pre = load i64, ptr %i.a, align 8, !tbaa !60
  br label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge, %bb.d, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.i = phi i64 [ %.pre, %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge ], [ %i.g, %bb.d ], [ %i.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !61
  %i.j = and i64 %i.i, 2
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  %i.k = trunc i64 %i.i to i1
  %i.l = and i64 %i.i, -4
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  br i1 %i.k, label %bb.g, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !70

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.n, %bb.g ], [ %i.m, %bb.f ] ; 3 uses
  %i.o = icmp eq ptr %.0.i.i.i, null
  br i1 %i.o, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #26
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11opencv_onnx18TypeProto_Sequence10SharedDtorEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, @_ZN11opencv_onnx37_TypeProto_Sequence_default_instance_E
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178  ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60   ; 3 uses
  %i.f = trunc i64 %i.e to i1
  %i.g = and i64 %i.e, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  br i1 %i.f, label %bb.d, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %bb.e, label %_ZN11opencv_onnx9TypeProtoD2Ev.exit

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = icmp eq ptr %i.k, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.l, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.i, !inline_history !579

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !21
  %.not4 = icmp eq i32 %i.n, 0
  br i1 %.not4, label %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  invoke void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit unwind label %bb.i, !inline_history !579

_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit:    ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.g
  %i.o = load i64, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.h, label %_ZN11opencv_onnx9TypeProtoD2Ev.exit

bb.h:                                             ; preds = %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._ZN11opencv_onnx9TypeProtoD2Ev.exit_crit_edge unwind label %bb.i

._ZN11opencv_onnx9TypeProtoD2Ev.exit_crit_edge:   ; preds = %bb.h
  %.pre = load i64, ptr %i.d, align 8, !tbaa !60
  br label %_ZN11opencv_onnx9TypeProtoD2Ev.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #25, !inline_history !580
  unreachable

_ZN11opencv_onnx9TypeProtoD2Ev.exit:              ; preds = %._ZN11opencv_onnx9TypeProtoD2Ev.exit_crit_edge, %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.s = phi i64 [ %.pre, %._ZN11opencv_onnx9TypeProtoD2Ev.exit_crit_edge ], [ %i.o, %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit ], [ %i.e, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %i.b, align 8, !tbaa !61
  %i.t = and i64 %i.s, 2
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN11opencv_onnx9TypeProtoD2Ev.exit
  %i.u = trunc i64 %i.s to i1
  %i.v = and i64 %i.s, -4
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  br i1 %i.u, label %bb.k, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !70

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.x, %bb.k ], [ %i.w, %bb.j ] ; 3 uses
  %i.y = icmp eq ptr %.0.i.i.i, null
  br i1 %i.y, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
end_hunk_8
begin_hunk_9_@_ZN11opencv_onnx18TypeProto_Sequence14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE:_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader
  br i1 %i.ao, label %bb.h, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !70

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.ar, %bb.h ], [ %i.aq, %bb.g ]
  %i.as = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !582 ; 2 uses
  store ptr %i.as, ptr %i.f, align 8, !tbaa !178
  br label %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit

_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit: ; preds = %bb.f, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.at = phi ptr [ %i.as, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.al, %bb.f ]
  %i.au = tail call noundef ptr @_ZN6google8protobuf8internal12ParseContext12ParseMessageEPNS0_11MessageLiteEPKc(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef %i.at, ptr noundef %.1.i) ; 2 uses
  %.not9 = icmp eq ptr %i.au, null
  br i1 %.not9, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !70

bb.i:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.av = icmp eq i32 %.020, 0
  %i.aw = and i32 %.020, 7
  %i.ax = icmp eq i32 %i.aw, 4
  %or.cond11 = or i1 %i.av, %i.ax
  br i1 %or.cond11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not8 = icmp eq ptr %.1.i, null
  br i1 %.not8, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %.thread31, !prof !70

.thread31:                                        ; preds = %bb.j
  %i.ay = add i32 %.020, -1
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !144
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !60  ; 2 uses
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.bc = and i64 %i.ba, -4
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit: ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %i.be, %bb.l ], [ %i.bf, %bb.m ]
  %i.bg = tail call noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(i32 noundef %.020, ptr noundef %.0.i, ptr noundef %.1.i, ptr noundef nonnull %2) ; 2 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !70

_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge: ; preds = %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit, %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit
  %.021.be = phi ptr [ %i.au, %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit ], [ %i.bg, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ]
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit, %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.b, %bb.j, %.thread31
  %.2 = phi ptr [ null, %bb.j ], [ %.1.i, %.thread31 ], [ %spec.select, %bb.b ], [ null, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ], [ null, %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK11opencv_onnx18TypeProto_Sequence18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !146
  %.not.i = icmp ult ptr %1, %i.d
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.b, %bb.c
  %.0.i10 = phi ptr [ %i.e, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !178  ; 2 uses
  store i8 10, ptr %.0.i10, align 1, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i10, i64 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.j = load atomic i32, ptr %i.i monotonic, align 4 ; 3 uses
  %i.k = trunc i32 %i.j to i8
  store i8 %i.k, ptr %i.h, align 1, !tbaa !73
  %i.l = icmp ult i32 %i.j, 128
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i10, i64 2
  br label %_ZN6google8protobuf2io17CodedOutputStream29WriteVarint32ToArrayOutOfLineEjPh.exit

bb.e:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf2io17CodedOutputStream35WriteVarint32ToArrayOutOfLineHelperEjPh(i32 noundef %i.j, ptr noundef nonnull %i.h)
  br label %_ZN6google8protobuf2io17CodedOutputStream29WriteVarint32ToArrayOutOfLineEjPh.exit

_ZN6google8protobuf2io17CodedOutputStream29WriteVarint32ToArrayOutOfLineEjPh.exit: ; preds = %bb.d, %bb.e
  %.0.i11 = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.e ]
  %i.o = tail call noundef ptr @_ZNK11opencv_onnx9TypeProto18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %.0.i11, ptr noundef nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream29WriteVarint32ToArrayOutOfLineEjPh.exit, %bb.a
  %.0 = phi ptr [ %i.o, %_ZN6google8protobuf2io17CodedOutputStream29WriteVarint32ToArrayOutOfLineEjPh.exit ], [ %1, %bb.a ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60   ; 2 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit, !prof !70

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.f
  %i.s = and i64 %i.q, -4
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 2 uses
  %.pre14 = load ptr, ptr %2, align 8, !tbaa !146
  %i.w = ptrtoint ptr %.pre14 to i64
  %i.x = ptrtoint ptr %.0 to i64
  %i.y = sub i64 %i.w, %i.x
  %sext = shl i64 %.pre, 32
  %i.z = ashr exact i64 %sext, 32                 ; 3 uses
  %i.aa = icmp slt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !70

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  %i.ab = trunc i64 %.pre to i32
  %i.ac = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef %i.v, i32 noundef %i.ab, ptr noundef %.0)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %i.v, i64 %i.z, i1 false)
  %i.ad = getelementptr inbounds i8, ptr %.0, i64 %i.z
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit: ; preds = %bb.h, %bb.g, %bb.f
  %.1 = phi ptr [ %.0, %bb.f ], [ %i.ac, %bb.g ], [ %i.ad, %bb.h ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK11opencv_onnx18TypeProto_Sequence12ByteSizeLongEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !178
  %i.f = tail call noundef i64 @_ZNK11opencv_onnx9TypeProto12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e), !inline_history !159 ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = or i32 %i.g, 1
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 true)
  %i.j = xor i32 %i.i, 31
  %i.k = mul nuw nsw i32 %i.j, 9
  %i.l = add nuw nsw i32 %i.k, 73
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = add i64 %i.f, 1
  %i.p = add i64 %i.o, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !60   ; 2 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %bb.d, !prof !70

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.c
  %i.t = and i64 %i.r, -4
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20
  %i.x = add i64 %i.w, %.0
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, %bb.c
  %.1 = phi i64 [ %i.x, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit ], [ %.0, %bb.c ] ; 2 uses
  %i.y = trunc i64 %.1 to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %i.y, ptr %i.z monotonic, align 4
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_Sequence21CheckTypeAndMergeFromERKN6google8protobuf11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = trunc i32 %i.b to i1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.d, align 8                ; 2 uses
  %3 = icmp ne ptr %2, null
  %not..i.i = xor i1 %i.c, true
  %4 = select i1 %not..i.i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = or i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !178  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = trunc i64 %i.l to i1
  %i.n = and i64 %i.l, -4
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, !prof !70

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.o, %bb.c ]
  %i.q = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i.i), !inline_history !180 ; 2 uses
  store ptr %i.q, ptr %i.h, align 8, !tbaa !178
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !178
  br label %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i

_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, %bb.b
  %i.r = phi ptr [ %.pre.i, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %2, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.q, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %i.i, %bb.b ]
  %.not.i.i = icmp eq ptr %i.r, null
  %i.t = select i1 %.not.i.i, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.r
  tail call void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.t), !inline_history !181
  br label %bb.e

bb.e:                                             ; preds = %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60   ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = and i64 %i.v, -4
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.aa), !inline_history !181
  br label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit: ; preds = %bb.e, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = trunc i32 %i.b to i1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.d, align 8                ; 2 uses
  %3 = icmp ne ptr %2, null
  %not..i = xor i1 %i.c, true
  %4 = select i1 %not..i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = or i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !178  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = trunc i64 %i.l to i1
  %i.n = and i64 %i.l, -4
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !70

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.o, %bb.c ]
  %i.q = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !582 ; 2 uses
  store ptr %i.q, ptr %i.h, align 8, !tbaa !178
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !178
  br label %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit

_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit: ; preds = %bb.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.r = phi ptr [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %2, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.q, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.i, %bb.b ]
  %.not.i = icmp eq ptr %i.r, null
  %i.t = select i1 %.not.i, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.r
  tail call void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.t)
  br label %bb.e

bb.e:                                             ; preds = %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60   ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = and i64 %i.v, -4
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %bb.e, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_Sequence8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN11opencv_onnx9TypeProto5ClearEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %i.i = and i32 %i.h, 1
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, -2
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !20
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !14
  store i8 0, ptr %i.p, align 1, !tbaa !73
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f), !inline_history !583
  store i32 0, ptr %i.g, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !60
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.f, label %_ZN11opencv_onnx9TypeProto5ClearEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !583
  br label %_ZN11opencv_onnx9TypeProto5ClearEv.exit.i

_ZN11opencv_onnx9TypeProto5ClearEv.exit.i:        ; preds = %bb.f, %bb.e, %bb.b
  store i32 0, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !60
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %_ZN11opencv_onnx18TypeProto_Sequence5ClearEv.exit

bb.g:                                             ; preds = %_ZN11opencv_onnx9TypeProto5ClearEv.exit.i
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.t), !inline_history !584
  br label %_ZN11opencv_onnx18TypeProto_Sequence5ClearEv.exit

_ZN11opencv_onnx18TypeProto_Sequence5ClearEv.exit: ; preds = %_ZN11opencv_onnx9TypeProto5ClearEv.exit.i, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = trunc i32 %i.x to i1                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.z, align 8                ; 2 uses
  %3 = icmp ne ptr %2, null
  %not..i.i = xor i1 %i.y, true
  %4 = select i1 %not..i.i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.y, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN11opencv_onnx18TypeProto_Sequence5ClearEv.exit
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !21
  %i.ab = or i32 %i.aa, 1
  store i32 %i.ab, ptr %i.b, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !178 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.t, align 8, !tbaa !60  ; 2 uses
  %i.ag = trunc i64 %i.af to i1
  %i.ah = and i64 %i.af, -4
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  br i1 %i.ag, label %bb.j, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, !prof !70

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.aj, %bb.j ], [ %i.ai, %bb.i ]
  %i.ak = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i.i), !inline_history !180 ; 2 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !178
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !178
  br label %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i

_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, %bb.h
  %i.al = phi ptr [ %.pre.i, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %2, %bb.h ] ; 2 uses
  %i.am = phi ptr [ %i.ak, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %i.ad, %bb.h ]
  %.not.i.i4 = icmp eq ptr %i.al, null
  %i.an = select i1 %.not.i.i4, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.al
  tail call void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.an), !inline_history !181
  br label %bb.k

bb.k:                                             ; preds = %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i, %_ZN11opencv_onnx18TypeProto_Sequence5ClearEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !60 ; 2 uses
  %i.aq = trunc i64 %i.ap to i1
  br i1 %i.aq, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i: ; preds = %bb.k
  %i.ar = and i64 %i.ap, -4
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.at), !inline_history !181
  br label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, %bb.k, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK11opencv_onnx18TypeProto_Sequence13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_Sequence12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !128
  %i.d = load i64, ptr %i.b, align 8, !tbaa !128
  store i64 %i.d, ptr %i.a, align 8, !tbaa !128
  store i64 %i.c, ptr %i.b, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !21
  %i.h = load i32, ptr %i.f, align 8, !tbaa !21
  store i32 %i.h, ptr %i.e, align 8, !tbaa !21
  store i32 %i.g, ptr %i.f, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !242
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !242
  store ptr %i.l, ptr %i.i, align 8, !tbaa !242
  store ptr %i.k, ptr %i.j, align 8, !tbaa !242
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11opencv_onnx18TypeProto_Sequence11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 30, ptr %i.a, align 8, !tbaa !128
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14
  %i.d = load i64, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.c, ptr noundef nonnull align 1 dereferenceable(30) @.str.39, i64 30, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !20
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN11opencv_onnx13TypeProto_Map9_Internal10value_typeEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx13TypeProto_MapC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 36)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx13TypeProto_MapE, i64 16), ptr %0, align 8, !tbaa !61
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx13TypeProto_MapC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx13TypeProto_MapE, i64 16), ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  store i32 %i.d, ptr %i.b, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc9, label %bb.a

.noexc9:                                          ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc9, %.noexc
  %i.l = load i32, ptr %i.c, align 8, !tbaa !21
  %i.m = trunc i32 %i.l to i1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.n, align 8
  %3 = icmp ne ptr %2, null
  %not..i = xor i1 %i.m, true
  %4 = select i1 %not..i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %bb.c unwind label %bb.d       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !184
  invoke void @_ZN11opencv_onnx9TypeProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %.noexc9, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 48) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.s, align 8, !tbaa !184
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !188
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.u, ptr %i.v, align 8, !tbaa !188
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx13TypeProto_MapD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(40) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  invoke void @_ZN11opencv_onnx13TypeProto_Map10SharedDtorEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge unwind label %bb.i

._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge: ; preds = %bb.e
  %.pre = load i64, ptr %i.a, align 8, !tbaa !60
  br label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge, %bb.d, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.i = phi i64 [ %.pre, %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge ], [ %i.g, %bb.d ], [ %i.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !61
  %i.j = and i64 %i.i, 2
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  %i.k = trunc i64 %i.i to i1
  %i.l = and i64 %i.i, -4
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  br i1 %i.k, label %bb.g, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !70

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.n, %bb.g ], [ %i.m, %bb.f ] ; 3 uses
  %i.o = icmp eq ptr %.0.i.i.i, null
  br i1 %i.o, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #26
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11opencv_onnx13TypeProto_Map10SharedDtorEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, @_ZN11opencv_onnx32_TypeProto_Map_default_instance_E
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60   ; 3 uses
  %i.f = trunc i64 %i.e to i1
  %i.g = and i64 %i.e, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  br i1 %i.f, label %bb.d, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %bb.e, label %_ZN11opencv_onnx9TypeProtoD2Ev.exit

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = icmp eq ptr %i.k, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.l, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.i, !inline_history !579

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !21
  %.not4 = icmp eq i32 %i.n, 0
  br i1 %.not4, label %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  invoke void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit unwind label %bb.i, !inline_history !579

_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit:    ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.g
  %i.o = load i64, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.h, label %_ZN11opencv_onnx9TypeProtoD2Ev.exit

bb.h:                                             ; preds = %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._ZN11opencv_onnx9TypeProtoD2Ev.exit_crit_edge unwind label %bb.i

._ZN11opencv_onnx9TypeProtoD2Ev.exit_crit_edge:   ; preds = %bb.h
  %.pre = load i64, ptr %i.d, align 8, !tbaa !60
  br label %_ZN11opencv_onnx9TypeProtoD2Ev.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #25, !inline_history !580
  unreachable

_ZN11opencv_onnx9TypeProtoD2Ev.exit:              ; preds = %._ZN11opencv_onnx9TypeProtoD2Ev.exit_crit_edge, %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.s = phi i64 [ %.pre, %._ZN11opencv_onnx9TypeProtoD2Ev.exit_crit_edge ], [ %i.o, %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit ], [ %i.e, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %i.b, align 8, !tbaa !61
  %i.t = and i64 %i.s, 2
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN11opencv_onnx9TypeProtoD2Ev.exit
  %i.u = trunc i64 %i.s to i1
  %i.v = and i64 %i.s, -4
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  br i1 %i.u, label %bb.k, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !70

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.x, %bb.k ], [ %i.w, %bb.j ] ; 3 uses
end_hunk_9
begin_hunk_10_@_ZN11opencv_onnx13TypeProto_Map8CopyFromERKS0_:bb.a
_ZN11opencv_onnx9TypeProto5ClearEv.exit.i:        ; preds = %bb.f, %bb.e, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.t, align 8, !tbaa !188
  store i32 0, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZN11opencv_onnx13TypeProto_Map5ClearEv.exit

bb.g:                                             ; preds = %_ZN11opencv_onnx9TypeProto5ClearEv.exit.i
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.u), !inline_history !589
  br label %_ZN11opencv_onnx13TypeProto_Map5ClearEv.exit

_ZN11opencv_onnx13TypeProto_Map5ClearEv.exit:     ; preds = %_ZN11opencv_onnx9TypeProto5ClearEv.exit.i, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !21   ; 4 uses
  %i.z = and i32 %i.y, 3
  %.not.i4 = icmp eq i32 %i.z, 0
  br i1 %.not.i4, label %bb.o, label %bb.h

bb.h:                                             ; preds = %_ZN11opencv_onnx13TypeProto_Map5ClearEv.exit
  %i.aa = and i32 %i.y, 1
  %.not8.i = icmp eq i32 %i.aa, 0
  br i1 %.not8.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !21
  %i.ac = or i32 %i.ab, 1
  store i32 %i.ac, ptr %i.b, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !184 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %i.ah = trunc i64 %i.ag to i1
  %i.ai = and i64 %i.ag, -4
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  br i1 %i.ah, label %bb.k, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, !prof !70

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi ptr [ %i.ak, %bb.k ], [ %i.aj, %bb.j ]
  %i.al = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i.i), !inline_history !587 ; 2 uses
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !184
  br label %_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit.i

_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, %bb.i
  %i.am = phi ptr [ %i.al, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %i.ae, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !184 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ao, null
  %i.ap = select i1 %.not.i.i5, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.ao
  tail call void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.ap), !inline_history !187
  br label %bb.l

bb.l:                                             ; preds = %_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit.i, %bb.h
  %i.aq = and i32 %i.y, 2
  %.not9.i = icmp eq i32 %i.aq, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !188
  store i32 %i.as, ptr %i.t, align 8, !tbaa !188
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = load i32, ptr %i.b, align 8, !tbaa !21
  %i.au = or i32 %i.at, %i.y
  store i32 %i.au, ptr %i.b, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN11opencv_onnx13TypeProto_Map5ClearEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !60 ; 2 uses
  %i.ax = trunc i64 %i.aw to i1
  br i1 %i.ax, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, label %_ZN11opencv_onnx13TypeProto_Map9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i: ; preds = %bb.o
  %i.ay = and i64 %i.aw, -4
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.ba), !inline_history !187
  br label %_ZN11opencv_onnx13TypeProto_Map9MergeFromERKS0_.exit

_ZN11opencv_onnx13TypeProto_Map9MergeFromERKS0_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, %bb.o, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK11opencv_onnx13TypeProto_Map13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11opencv_onnx13TypeProto_Map12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !128
  %i.d = load i64, ptr %i.b, align 8, !tbaa !128
  store i64 %i.d, ptr %i.a, align 8, !tbaa !128
  store i64 %i.c, ptr %i.b, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !21
  %i.h = load i32, ptr %i.f, align 8, !tbaa !21
  store i32 %i.h, ptr %i.e, align 8, !tbaa !21
  store i32 %i.g, ptr %i.f, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.i, align 8
  %i.k = load i64, ptr %i.j, align 8
  store i64 %i.k, ptr %i.i, align 8
  store i64 %.0.copyload.i.i, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.l, align 8
  %i.n = load i32, ptr %i.m, align 8
  store i32 %i.n, ptr %i.l, align 8
  store i32 %.0.copyload.i.i.i, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11opencv_onnx13TypeProto_Map11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 25, ptr %i.a, align 8, !tbaa !128
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14
  %i.d = load i64, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.c, ptr noundef nonnull align 1 dereferenceable(25) @.str.41, i64 25, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !20
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN11opencv_onnx18TypeProto_Optional9_Internal9elem_typeEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_OptionalC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx18TypeProto_OptionalE, i64 16), ptr %0, align 8, !tbaa !61
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_OptionalC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx18TypeProto_OptionalE, i64 16), ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  store i32 %i.d, ptr %i.b, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc8, label %bb.a

.noexc8:                                          ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc8, %.noexc
  %i.l = load i32, ptr %i.c, align 8, !tbaa !21
  %i.m = trunc i32 %i.l to i1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.n, align 8
  %3 = icmp ne ptr %2, null
  %not..i = xor i1 %i.m, true
  %4 = select i1 %not..i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %bb.c unwind label %bb.d       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !191
  invoke void @_ZN11opencv_onnx9TypeProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %.noexc8, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 48) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.s, align 8, !tbaa !191
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_OptionalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  invoke void @_ZN11opencv_onnx18TypeProto_Optional10SharedDtorEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge unwind label %bb.i

._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge: ; preds = %bb.e
  %.pre = load i64, ptr %i.a, align 8, !tbaa !60
  br label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge, %bb.d, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.i = phi i64 [ %.pre, %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge ], [ %i.g, %bb.d ], [ %i.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !61
  %i.j = and i64 %i.i, 2
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  %i.k = trunc i64 %i.i to i1
  %i.l = and i64 %i.i, -4
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  br i1 %i.k, label %bb.g, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !70

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.n, %bb.g ], [ %i.m, %bb.f ] ; 3 uses
  %i.o = icmp eq ptr %.0.i.i.i, null
  br i1 %i.o, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #26
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11opencv_onnx18TypeProto_Optional10SharedDtorEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, @_ZN11opencv_onnx37_TypeProto_Optional_default_instance_E
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60   ; 3 uses
  %i.f = trunc i64 %i.e to i1
  %i.g = and i64 %i.e, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  br i1 %i.f, label %bb.d, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %bb.e, label %_ZN11opencv_onnx9TypeProtoD2Ev.exit

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = icmp eq ptr %i.k, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.l, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.i, !inline_history !579

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !21
  %.not4 = icmp eq i32 %i.n, 0
  br i1 %.not4, label %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  invoke void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit unwind label %bb.i, !inline_history !579

_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit:    ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.g
  %i.o = load i64, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.h, label %_ZN11opencv_onnx9TypeProtoD2Ev.exit

bb.h:                                             ; preds = %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._ZN11opencv_onnx9TypeProtoD2Ev.exit_crit_edge unwind label %bb.i

._ZN11opencv_onnx9TypeProtoD2Ev.exit_crit_edge:   ; preds = %bb.h
  %.pre = load i64, ptr %i.d, align 8, !tbaa !60
  br label %_ZN11opencv_onnx9TypeProtoD2Ev.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #25, !inline_history !580
  unreachable

_ZN11opencv_onnx9TypeProtoD2Ev.exit:              ; preds = %._ZN11opencv_onnx9TypeProtoD2Ev.exit_crit_edge, %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.s = phi i64 [ %.pre, %._ZN11opencv_onnx9TypeProtoD2Ev.exit_crit_edge ], [ %i.o, %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit ], [ %i.e, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %i.b, align 8, !tbaa !61
  %i.t = and i64 %i.s, 2
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN11opencv_onnx9TypeProtoD2Ev.exit
  %i.u = trunc i64 %i.s to i1
  %i.v = and i64 %i.s, -4
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  br i1 %i.u, label %bb.k, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !70

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.x, %bb.k ], [ %i.w, %bb.j ] ; 3 uses
  %i.y = icmp eq ptr %.0.i.i.i, null
  br i1 %i.y, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
end_hunk_10
begin_hunk_11_@_ZN11opencv_onnx18TypeProto_Optional14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE:_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader
  br i1 %i.ao, label %bb.h, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !70

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.ar, %bb.h ], [ %i.aq, %bb.g ]
  %i.as = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !591 ; 2 uses
  store ptr %i.as, ptr %i.f, align 8, !tbaa !191
  br label %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit

_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit: ; preds = %bb.f, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.at = phi ptr [ %i.as, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.al, %bb.f ]
  %i.au = tail call noundef ptr @_ZN6google8protobuf8internal12ParseContext12ParseMessageEPNS0_11MessageLiteEPKc(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef %i.at, ptr noundef %.1.i) ; 2 uses
  %.not9 = icmp eq ptr %i.au, null
  br i1 %.not9, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !70

bb.i:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.av = icmp eq i32 %.020, 0
  %i.aw = and i32 %.020, 7
  %i.ax = icmp eq i32 %i.aw, 4
  %or.cond11 = or i1 %i.av, %i.ax
  br i1 %or.cond11, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not8 = icmp eq ptr %.1.i, null
  br i1 %.not8, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %.thread31, !prof !70

.thread31:                                        ; preds = %bb.j
  %i.ay = add i32 %.020, -1
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !144
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !60  ; 2 uses
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.bc = and i64 %i.ba, -4
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit: ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %i.be, %bb.l ], [ %i.bf, %bb.m ]
  %i.bg = tail call noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(i32 noundef %.020, ptr noundef %.0.i, ptr noundef %.1.i, ptr noundef nonnull %2) ; 2 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !70

_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge: ; preds = %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit, %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit
  %.021.be = phi ptr [ %i.au, %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit ], [ %i.bg, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ]
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit, %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.b, %bb.j, %.thread31
  %.2 = phi ptr [ null, %bb.j ], [ %.1.i, %.thread31 ], [ %spec.select, %bb.b ], [ null, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ], [ null, %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK11opencv_onnx18TypeProto_Optional18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !146
  %.not.i = icmp ult ptr %1, %i.d
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.b, %bb.c
  %.0.i10 = phi ptr [ %i.e, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191  ; 2 uses
  store i8 10, ptr %.0.i10, align 1, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i10, i64 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.j = load atomic i32, ptr %i.i monotonic, align 4 ; 3 uses
  %i.k = trunc i32 %i.j to i8
  store i8 %i.k, ptr %i.h, align 1, !tbaa !73
  %i.l = icmp ult i32 %i.j, 128
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i10, i64 2
  br label %_ZN6google8protobuf2io17CodedOutputStream29WriteVarint32ToArrayOutOfLineEjPh.exit

bb.e:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf2io17CodedOutputStream35WriteVarint32ToArrayOutOfLineHelperEjPh(i32 noundef %i.j, ptr noundef nonnull %i.h)
  br label %_ZN6google8protobuf2io17CodedOutputStream29WriteVarint32ToArrayOutOfLineEjPh.exit

_ZN6google8protobuf2io17CodedOutputStream29WriteVarint32ToArrayOutOfLineEjPh.exit: ; preds = %bb.d, %bb.e
  %.0.i11 = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.e ]
  %i.o = tail call noundef ptr @_ZNK11opencv_onnx9TypeProto18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %.0.i11, ptr noundef nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream29WriteVarint32ToArrayOutOfLineEjPh.exit, %bb.a
  %.0 = phi ptr [ %i.o, %_ZN6google8protobuf2io17CodedOutputStream29WriteVarint32ToArrayOutOfLineEjPh.exit ], [ %1, %bb.a ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60   ; 2 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit, !prof !70

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.f
  %i.s = and i64 %i.q, -4
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 2 uses
  %.pre14 = load ptr, ptr %2, align 8, !tbaa !146
  %i.w = ptrtoint ptr %.pre14 to i64
  %i.x = ptrtoint ptr %.0 to i64
  %i.y = sub i64 %i.w, %i.x
  %sext = shl i64 %.pre, 32
  %i.z = ashr exact i64 %sext, 32                 ; 3 uses
  %i.aa = icmp slt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !70

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  %i.ab = trunc i64 %.pre to i32
  %i.ac = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef %i.v, i32 noundef %i.ab, ptr noundef %.0)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %i.v, i64 %i.z, i1 false)
  %i.ad = getelementptr inbounds i8, ptr %.0, i64 %i.z
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit: ; preds = %bb.h, %bb.g, %bb.f
  %.1 = phi ptr [ %.0, %bb.f ], [ %i.ac, %bb.g ], [ %i.ad, %bb.h ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK11opencv_onnx18TypeProto_Optional12ByteSizeLongEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191
  %i.f = tail call noundef i64 @_ZNK11opencv_onnx9TypeProto12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e), !inline_history !159 ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = or i32 %i.g, 1
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 true)
  %i.j = xor i32 %i.i, 31
  %i.k = mul nuw nsw i32 %i.j, 9
  %i.l = add nuw nsw i32 %i.k, 73
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = add i64 %i.f, 1
  %i.p = add i64 %i.o, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !60   ; 2 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %bb.d, !prof !70

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.c
  %i.t = and i64 %i.r, -4
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20
  %i.x = add i64 %i.w, %.0
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, %bb.c
  %.1 = phi i64 [ %i.x, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit ], [ %.0, %bb.c ] ; 2 uses
  %i.y = trunc i64 %.1 to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %i.y, ptr %i.z monotonic, align 4
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_Optional21CheckTypeAndMergeFromERKN6google8protobuf11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = trunc i32 %i.b to i1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.d, align 8                ; 2 uses
  %3 = icmp ne ptr %2, null
  %not..i.i = xor i1 %i.c, true
  %4 = select i1 %not..i.i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = or i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = trunc i64 %i.l to i1
  %i.n = and i64 %i.l, -4
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, !prof !70

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.o, %bb.c ]
  %i.q = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i.i), !inline_history !592 ; 2 uses
  store ptr %i.q, ptr %i.h, align 8, !tbaa !191
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !191
  br label %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i

_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, %bb.b
  %i.r = phi ptr [ %.pre.i, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %2, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.q, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %i.i, %bb.b ]
  %.not.i.i = icmp eq ptr %i.r, null
  %i.t = select i1 %.not.i.i, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.r
  tail call void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.t), !inline_history !194
  br label %bb.e

bb.e:                                             ; preds = %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60   ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, label %_ZN11opencv_onnx18TypeProto_Optional9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = and i64 %i.v, -4
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.aa), !inline_history !194
  br label %_ZN11opencv_onnx18TypeProto_Optional9MergeFromERKS0_.exit

_ZN11opencv_onnx18TypeProto_Optional9MergeFromERKS0_.exit: ; preds = %bb.e, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_Optional9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = trunc i32 %i.b to i1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.d, align 8                ; 2 uses
  %3 = icmp ne ptr %2, null
  %not..i = xor i1 %i.c, true
  %4 = select i1 %not..i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = or i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = trunc i64 %i.l to i1
  %i.n = and i64 %i.l, -4
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %i.m, label %bb.d, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !70

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.o, %bb.c ]
  %i.q = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i), !inline_history !591 ; 2 uses
  store ptr %i.q, ptr %i.h, align 8, !tbaa !191
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !191
  br label %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit

_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit: ; preds = %bb.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.r = phi ptr [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %2, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.q, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i ], [ %i.i, %bb.b ]
  %.not.i = icmp eq ptr %i.r, null
  %i.t = select i1 %.not.i, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.r
  tail call void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.t)
  br label %bb.e

bb.e:                                             ; preds = %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !60   ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = and i64 %i.v, -4
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %bb.e, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_Optional8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN11opencv_onnx18TypeProto_Optional9MergeFromERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN11opencv_onnx9TypeProto5ClearEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !191  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %i.i = and i32 %i.h, 1
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, -2
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !20
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !14
  store i8 0, ptr %i.p, align 1, !tbaa !73
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f), !inline_history !593
  store i32 0, ptr %i.g, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !60
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.f, label %_ZN11opencv_onnx9TypeProto5ClearEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !593
  br label %_ZN11opencv_onnx9TypeProto5ClearEv.exit.i

_ZN11opencv_onnx9TypeProto5ClearEv.exit.i:        ; preds = %bb.f, %bb.e, %bb.b
  store i32 0, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !60
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %_ZN11opencv_onnx18TypeProto_Optional5ClearEv.exit

bb.g:                                             ; preds = %_ZN11opencv_onnx9TypeProto5ClearEv.exit.i
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.t), !inline_history !594
  br label %_ZN11opencv_onnx18TypeProto_Optional5ClearEv.exit

_ZN11opencv_onnx18TypeProto_Optional5ClearEv.exit: ; preds = %_ZN11opencv_onnx9TypeProto5ClearEv.exit.i, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = trunc i32 %i.x to i1                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.z, align 8                ; 2 uses
  %3 = icmp ne ptr %2, null
  %not..i.i = xor i1 %i.y, true
  %4 = select i1 %not..i.i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.y, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN11opencv_onnx18TypeProto_Optional5ClearEv.exit
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !21
  %i.ab = or i32 %i.aa, 1
  store i32 %i.ab, ptr %i.b, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !191 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.t, align 8, !tbaa !60  ; 2 uses
  %i.ag = trunc i64 %i.af to i1
  %i.ah = and i64 %i.af, -4
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  br i1 %i.ag, label %bb.j, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, !prof !70

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.aj, %bb.j ], [ %i.ai, %bb.i ]
  %i.ak = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i.i), !inline_history !592 ; 2 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !191
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !191
  br label %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i

_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, %bb.h
  %i.al = phi ptr [ %.pre.i, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %2, %bb.h ] ; 2 uses
  %i.am = phi ptr [ %i.ak, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i ], [ %i.ad, %bb.h ]
  %.not.i.i4 = icmp eq ptr %i.al, null
  %i.an = select i1 %.not.i.i4, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.al
  tail call void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.an), !inline_history !194
  br label %bb.k

bb.k:                                             ; preds = %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i, %_ZN11opencv_onnx18TypeProto_Optional5ClearEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !60 ; 2 uses
  %i.aq = trunc i64 %i.ap to i1
  br i1 %i.aq, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, label %_ZN11opencv_onnx18TypeProto_Optional9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i: ; preds = %bb.k
  %i.ar = and i64 %i.ap, -4
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.at), !inline_history !194
  br label %_ZN11opencv_onnx18TypeProto_Optional9MergeFromERKS0_.exit

_ZN11opencv_onnx18TypeProto_Optional9MergeFromERKS0_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i, %bb.k, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK11opencv_onnx18TypeProto_Optional13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11opencv_onnx18TypeProto_Optional12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !128
  %i.d = load i64, ptr %i.b, align 8, !tbaa !128
  store i64 %i.d, ptr %i.a, align 8, !tbaa !128
  store i64 %i.c, ptr %i.b, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !21
  %i.h = load i32, ptr %i.f, align 8, !tbaa !21
  store i32 %i.h, ptr %i.e, align 8, !tbaa !21
  store i32 %i.g, ptr %i.f, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !242
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !242
  store ptr %i.l, ptr %i.i, align 8, !tbaa !242
  store ptr %i.k, ptr %i.j, align 8, !tbaa !242
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11opencv_onnx18TypeProto_Optional11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 30, ptr %i.a, align 8, !tbaa !128
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !14
  %i.d = load i64, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.c, ptr noundef nonnull align 1 dereferenceable(30) @.str.42, i64 30, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !20
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN11opencv_onnx22TypeProto_SparseTensor9_Internal5shapeEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !595
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx22TypeProto_SparseTensorC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 36)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx22TypeProto_SparseTensorE, i64 16), ptr %0, align 8, !tbaa !61
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx22TypeProto_SparseTensorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx22TypeProto_SparseTensorE, i64 16), ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  store i32 %i.d, ptr %i.b, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc9, label %bb.a

.noexc9:                                          ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc9, %.noexc
  %i.l = load i32, ptr %i.c, align 8, !tbaa !21
  %i.m = trunc i32 %i.l to i1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.n, align 8
  %3 = icmp ne ptr %2, null
  %not..i = xor i1 %i.m, true
  %4 = select i1 %not..i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %bb.c unwind label %bb.d       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !595
  invoke void @_ZN11opencv_onnx16TensorShapeProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %.noexc9, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 48) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.s, align 8, !tbaa !595
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !597
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.u, ptr %i.v, align 8, !tbaa !597
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx22TypeProto_SparseTensorD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(40) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 5 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.not.i = icmp eq ptr %0, @_ZN11opencv_onnx41_TypeProto_SparseTensor_default_instance_E
  br i1 %.not.i, label %_ZN11opencv_onnx22TypeProto_SparseTensor10SharedDtorEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !595  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN11opencv_onnx22TypeProto_SparseTensor10SharedDtorEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11opencv_onnx16TensorShapeProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(48) %i.h) #24, !inline_history !598
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 48) #26, !inline_history !598
  %.pre = load i64, ptr %i.a, align 8, !tbaa !60
  br label %_ZN11opencv_onnx22TypeProto_SparseTensor10SharedDtorEv.exit

_ZN11opencv_onnx22TypeProto_SparseTensor10SharedDtorEv.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.j = phi i64 [ %.pre, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.f:                                             ; preds = %_ZN11opencv_onnx22TypeProto_SparseTensor10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge unwind label %bb.j

._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge: ; preds = %bb.f
  %.pre1 = load i64, ptr %i.a, align 8, !tbaa !60
  br label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge, %_ZN11opencv_onnx22TypeProto_SparseTensor10SharedDtorEv.exit, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.l = phi i64 [ %.pre1, %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge ], [ %i.j, %_ZN11opencv_onnx22TypeProto_SparseTensor10SharedDtorEv.exit ], [ %i.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !61
  %i.m = and i64 %i.l, 2
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  %i.n = trunc i64 %i.l to i1
  %i.o = and i64 %i.l, -4
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  br i1 %i.n, label %bb.h, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !70

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.q, %bb.h ], [ %i.p, %bb.g ] ; 3 uses
  %i.r = icmp eq ptr %.0.i.i.i, null
  br i1 %i.r, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #26
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.i
  ret void

bb.j:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx22TypeProto_SparseTensorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN11opencv_onnx22TypeProto_SparseTensorD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(40) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN11opencv_onnx22TypeProto_SparseTensor9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK11opencv_onnx22TypeProto_SparseTensor13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx22TypeProto_SparseTensor5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN11opencv_onnx16TensorShapeProto5ClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !595  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !75   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.trip.count.i.i.i = zext nneg i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEPS4_.exit.i.i.i, %bb.c
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %_ZN6google8protobuf8internal18GenericTypeHandlerIN11opencv_onnx26TensorShapeProto_DimensionEE5ClearEPS4_.exit.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21
  %i.p = and i32 %i.o, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, -2
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !20
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !14
  store i8 0, ptr %i.w, align 1, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !21
  %cond.i.i.i.i.i.i = icmp eq i32 %i.y, 2
  br i1 %cond.i.i.i.i.i.i, label %bb.g, label %_ZN11opencv_onnx26TensorShapeProto_Dimension11clear_valueEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
end_hunk_11
begin_hunk_12_@_ZN11opencv_onnx9TypeProto32set_allocated_sparse_tensor_typeEPNS_22TypeProto_SparseTensorE:bb.a
  tail call void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60   ; 4 uses
  %i.i = and i64 %i.h, 2
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN6google8protobuf5Arena14InternalHelperIN11opencv_onnx22TypeProto_SparseTensorEE14GetOwningArenaEPKS4_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %i.h to i1
  br i1 %i.j, label %bb.e, label %bb.f, !prof !70

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %i.h, -4
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71
  br label %_ZN6google8protobuf5Arena14InternalHelperIN11opencv_onnx22TypeProto_SparseTensorEE14GetOwningArenaEPKS4_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = inttoptr i64 %i.h to ptr
  br label %_ZN6google8protobuf5Arena14InternalHelperIN11opencv_onnx22TypeProto_SparseTensorEE14GetOwningArenaEPKS4_.exit

_ZN6google8protobuf5Arena14InternalHelperIN11opencv_onnx22TypeProto_SparseTensorEE14GetOwningArenaEPKS4_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.o = phi ptr [ null, %bb.c ], [ %i.m, %bb.e ], [ %i.n, %bb.f ] ; 2 uses
  %.not12 = icmp eq ptr %.0.i.i, %i.o
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf5Arena14InternalHelperIN11opencv_onnx22TypeProto_SparseTensorEE14GetOwningArenaEPKS4_.exit
  %i.p = tail call noundef ptr @_ZN6google8protobuf8internal23GetOwnedMessageInternalEPNS0_5ArenaEPNS0_11MessageLiteES3_(ptr noundef %.0.i.i, ptr noundef nonnull %1, ptr noundef %i.o)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN6google8protobuf5Arena14InternalHelperIN11opencv_onnx22TypeProto_SparseTensorEE14GetOwningArenaEPKS4_.exit
  %.0 = phi ptr [ %i.p, %bb.g ], [ %1, %_ZN6google8protobuf5Arena14InternalHelperIN11opencv_onnx22TypeProto_SparseTensorEE14GetOwningArenaEPKS4_.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 8, ptr %i.q, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0, ptr %i.r, align 8, !tbaa !73
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11opencv_onnx9TypeProtoC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 32), (40, 44)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx9TypeProtoE, i64 16), ptr %0, align 8, !tbaa !61
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.g, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_onnx9TypeProtoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i64 0, ptr %i.a, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN11opencv_onnx9TypeProtoE, i64 16), ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !73
  store i32 %i.d, ptr %i.b, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %.noexc12, label %bb.a

.noexc12:                                         ; preds = %.noexc
  %i.i = and i64 %i.g, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc, %.noexc12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E, ptr %i.l, align 8, !tbaa !68
  %i.m = load i32, ptr %i.c, align 8, !tbaa !21
  %i.n = trunc i32 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -2
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.u = trunc i64 %i.t to i1
  %i.v = and i64 %i.t, -4
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  br i1 %i.u, label %bb.c, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef %.0.i.i)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i50.invoke, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i58, %bb.ae, %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i52, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i42, %bb.y, %_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit.i, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i37, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i28, %bb.o, %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i17, %bb.i, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, %bb.f, %.noexc12, %bb.ag, %bb.h, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %i.y

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  store i32 0, ptr %i.z, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !21
  switch i32 %i.ab, label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit [
    i32 1, label %bb.f
    i32 4, label %bb.i
    i32 5, label %bb.o
    i32 9, label %bb.y
    i32 8, label %bb.ae
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %.noexc15 unwind label %bb.d, !inline_history !174

.noexc15:                                         ; preds = %bb.f
  store i32 1, ptr %i.z, align 8, !tbaa !21
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.ad = trunc i64 %i.ac to i1
  %i.ae = and i64 %i.ac, -4
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  br i1 %i.ad, label %bb.g, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i, !prof !70

bb.g:                                             ; preds = %.noexc15
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i: ; preds = %bb.g, %.noexc15
  %.0.i.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.af, %.noexc15 ]
  %i.ah = invoke noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx16TypeProto_TensorEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i)
          to label %bb.h unwind label %bb.d, !inline_history !174 ; 2 uses

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !73
  %i.aj = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.ak = icmp eq i32 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr @_ZN11opencv_onnx35_TypeProto_Tensor_default_instance_E
  invoke void @_ZN11opencv_onnx16TypeProto_Tensor9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.an)
          to label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit unwind label %bb.d

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %.noexc22 unwind label %bb.d, !inline_history !176

.noexc22:                                         ; preds = %bb.i
  store i32 4, ptr %i.z, align 8, !tbaa !21
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.ap = trunc i64 %i.ao to i1
  %i.aq = and i64 %i.ao, -4
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  br i1 %i.ap, label %bb.j, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i17, !prof !70

bb.j:                                             ; preds = %.noexc22
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i17

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i17: ; preds = %bb.j, %.noexc22
  %.0.i.i.i18 = phi ptr [ %i.as, %bb.j ], [ %i.ar, %.noexc22 ]
  %i.at = invoke noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx18TypeProto_SequenceEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i18)
          to label %bb.k unwind label %bb.d, !inline_history !176 ; 5 uses

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i17
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.at, ptr %i.au, align 8, !tbaa !73
  %i.av = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.aw = icmp eq i32 %i.av, 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = select i1 %i.aw, ptr %i.ay, ptr @_ZN11opencv_onnx37_TypeProto_Sequence_default_instance_E ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !21
  %i.bc = trunc i32 %i.bb to i1                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %2 = load ptr, ptr %i.bd, align 8               ; 2 uses
  %3 = icmp ne ptr %2, null
  %not..i.i = xor i1 %i.bc, true
  %4 = select i1 %not..i.i, i1 true, i1 %3
  tail call void @llvm.assume(i1 %4)
  br i1 %i.bc, label %bb.l, label %.noexc26

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !21
  %i.bg = or i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !178 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.m, label %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !60 ; 2 uses
  %i.bm = trunc i64 %i.bl to i1
  %i.bn = and i64 %i.bl, -4
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  br i1 %i.bm, label %bb.n, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, !prof !70

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi ptr [ %i.bp, %bb.n ], [ %i.bo, %bb.m ]
  %i.bq = invoke noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i.i)
          to label %.noexc25 unwind label %bb.d, !inline_history !181 ; 2 uses

.noexc25:                                         ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i
  store ptr %i.bq, ptr %i.bh, align 8, !tbaa !178
  %.pre.i24 = load ptr, ptr %i.bd, align 8, !tbaa !178
  br label %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i

_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i: ; preds = %.noexc25, %bb.l
  %i.br = phi ptr [ %.pre.i24, %.noexc25 ], [ %2, %bb.l ] ; 2 uses
  %i.bs = phi ptr [ %i.bq, %.noexc25 ], [ %i.bi, %bb.l ]
  %.not.i.i = icmp eq ptr %i.br, null
  %i.bt = select i1 %.not.i.i, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.br
  invoke void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.bt)
          to label %.noexc26 unwind label %bb.d, !inline_history !181

.noexc26:                                         ; preds = %_ZN11opencv_onnx18TypeProto_Sequence27_internal_mutable_elem_typeEv.exit.i, %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !60 ; 2 uses
  %i.bw = trunc i64 %i.bv to i1
  br i1 %i.bw, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i50.invoke, label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

bb.o:                                             ; preds = %bb.e
  invoke void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %.noexc33 unwind label %bb.d, !inline_history !182

.noexc33:                                         ; preds = %bb.o
  store i32 5, ptr %i.z, align 8, !tbaa !21
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.by = trunc i64 %i.bx to i1
  %i.bz = and i64 %i.bx, -4
  %i.ca = inttoptr i64 %i.bz to ptr               ; 2 uses
  br i1 %i.by, label %bb.p, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i28, !prof !70

bb.p:                                             ; preds = %.noexc33
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i28

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i28: ; preds = %bb.p, %.noexc33
  %.0.i.i.i29 = phi ptr [ %i.cb, %bb.p ], [ %i.ca, %.noexc33 ]
  %i.cc = invoke noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx13TypeProto_MapEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i29)
          to label %bb.q unwind label %bb.d, !inline_history !182 ; 7 uses

bb.q:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i28
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !73
  %i.ce = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.cf = icmp eq i32 %i.ce, 5
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = select i1 %i.cf, ptr %i.ch, ptr @_ZN11opencv_onnx32_TypeProto_Map_default_instance_E ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !21 ; 4 uses
  %i.cl = and i32 %i.ck, 3
  %.not.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = and i32 %i.ck, 1
  %.not8.i = icmp eq i32 %i.cm, 0
  br i1 %.not8.i, label %.noexc40, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !21
  %i.cp = or i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !184 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.t, label %_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !60 ; 2 uses
  %i.cv = trunc i64 %i.cu to i1
  %i.cw = and i64 %i.cu, -4
  %i.cx = inttoptr i64 %i.cw to ptr               ; 2 uses
  br i1 %i.cv, label %bb.u, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i37, !prof !70

bb.u:                                             ; preds = %bb.t
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i37

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i37: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i38 = phi ptr [ %i.cy, %bb.u ], [ %i.cx, %bb.t ]
  %i.cz = invoke noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i.i38)
          to label %.noexc39 unwind label %bb.d, !inline_history !187 ; 2 uses

.noexc39:                                         ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i37
  store ptr %i.cz, ptr %i.cq, align 8, !tbaa !184
  br label %_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit.i

_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit.i: ; preds = %.noexc39, %bb.s
  %i.da = phi ptr [ %i.cz, %.noexc39 ], [ %i.cr, %bb.s ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !184 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.dc, null
  %i.dd = select i1 %.not.i.i35, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.dc
  invoke void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(48) %i.dd)
          to label %.noexc40 unwind label %bb.d, !inline_history !187

.noexc40:                                         ; preds = %_ZN11opencv_onnx13TypeProto_Map28_internal_mutable_value_typeEv.exit.i, %bb.r
  %i.de = and i32 %i.ck, 2
  %.not9.i = icmp eq i32 %i.de, 0
  br i1 %.not9.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc40
  %i.df = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !188
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !188
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.noexc40
  %i.di = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !21
  %i.dk = or i32 %i.dj, %i.ck
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !60 ; 2 uses
  %i.dn = trunc i64 %i.dm to i1
  br i1 %i.dn, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i50.invoke, label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

bb.y:                                             ; preds = %bb.e
  invoke void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %.noexc47 unwind label %bb.d, !inline_history !189

.noexc47:                                         ; preds = %bb.y
  store i32 9, ptr %i.z, align 8, !tbaa !21
  %i.do = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.dp = trunc i64 %i.do to i1
  %i.dq = and i64 %i.do, -4
  %i.dr = inttoptr i64 %i.dq to ptr               ; 2 uses
  br i1 %i.dp, label %bb.z, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i42, !prof !70

bb.z:                                             ; preds = %.noexc47
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i42

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i42: ; preds = %bb.z, %.noexc47
  %.0.i.i.i43 = phi ptr [ %i.ds, %bb.z ], [ %i.dr, %.noexc47 ]
  %i.dt = invoke noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx18TypeProto_OptionalEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i43)
          to label %bb.aa unwind label %bb.d, !inline_history !189 ; 5 uses

bb.aa:                                            ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i42
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !73
  %i.dv = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.dw = icmp eq i32 %i.dv, 9
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = select i1 %i.dw, ptr %i.dy, ptr @_ZN11opencv_onnx37_TypeProto_Optional_default_instance_E ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !21
  %i.ec = trunc i32 %i.eb to i1                   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %5 = load ptr, ptr %i.ed, align 8               ; 2 uses
  %6 = icmp ne ptr %5, null
  %not..i.i49 = xor i1 %i.ec, true
  %7 = select i1 %not..i.i49, i1 true, i1 %6
  tail call void @llvm.assume(i1 %7)
  br i1 %i.ec, label %bb.ab, label %.noexc56

bb.ab:                                            ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !21
  %i.eg = or i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !21
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !191 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.ac, label %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !60 ; 2 uses
  %i.em = trunc i64 %i.el to i1
  %i.en = and i64 %i.el, -4
  %i.eo = inttoptr i64 %i.en to ptr               ; 2 uses
  br i1 %i.em, label %bb.ad, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i52, !prof !70

bb.ad:                                            ; preds = %bb.ac
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i52

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i52: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i53 = phi ptr [ %i.ep, %bb.ad ], [ %i.eo, %bb.ac ]
  %i.eq = invoke noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx9TypeProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i.i53)
          to label %.noexc55 unwind label %bb.d, !inline_history !194 ; 2 uses

.noexc55:                                         ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i52
  store ptr %i.eq, ptr %i.eh, align 8, !tbaa !191
  %.pre.i54 = load ptr, ptr %i.ed, align 8, !tbaa !191
  br label %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i

_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i: ; preds = %.noexc55, %bb.ab
  %i.er = phi ptr [ %.pre.i54, %.noexc55 ], [ %5, %bb.ab ] ; 2 uses
  %i.es = phi ptr [ %i.eq, %.noexc55 ], [ %i.ei, %bb.ab ]
  %.not.i.i51 = icmp eq ptr %i.er, null
  %i.et = select i1 %.not.i.i51, ptr @_ZN11opencv_onnx28_TypeProto_default_instance_E, ptr %i.er
  invoke void @_ZN11opencv_onnx9TypeProto9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.es, ptr noundef nonnull align 8 dereferenceable(48) %i.et)
          to label %.noexc56 unwind label %bb.d, !inline_history !194

.noexc56:                                         ; preds = %_ZN11opencv_onnx18TypeProto_Optional27_internal_mutable_elem_typeEv.exit.i, %bb.aa
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !60 ; 2 uses
  %i.ew = trunc i64 %i.ev to i1
  br i1 %i.ew, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i50.invoke, label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i50.invoke: ; preds = %.noexc56, %bb.x, %.noexc26
  %.sink68 = phi ptr [ %i.cc, %bb.x ], [ %i.at, %.noexc26 ], [ %i.dt, %.noexc56 ]
  %.sink = phi i64 [ %i.dm, %bb.x ], [ %i.bv, %.noexc26 ], [ %i.ev, %.noexc56 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sink68, i64 8
  %i.ey = and i64 %.sink, -4
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  invoke void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull align 8 dereferenceable(32) %i.fa)
          to label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit unwind label %bb.d, !inline_history !194

bb.ae:                                            ; preds = %bb.e
  invoke void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %.noexc63 unwind label %bb.d, !inline_history !195

.noexc63:                                         ; preds = %bb.ae
  store i32 8, ptr %i.z, align 8, !tbaa !21
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.fc = trunc i64 %i.fb to i1
  %i.fd = and i64 %i.fb, -4
  %i.fe = inttoptr i64 %i.fd to ptr               ; 2 uses
  br i1 %i.fc, label %bb.af, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i58, !prof !70

bb.af:                                            ; preds = %.noexc63
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i58

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i58: ; preds = %bb.af, %.noexc63
  %.0.i.i.i59 = phi ptr [ %i.ff, %bb.af ], [ %i.fe, %.noexc63 ]
  %i.fg = invoke noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN11opencv_onnx22TypeProto_SparseTensorEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i59)
          to label %bb.ag unwind label %bb.d, !inline_history !195 ; 2 uses

bb.ag:                                            ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i58
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !73
  %i.fi = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.fj = icmp eq i32 %i.fi, 8
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = select i1 %i.fj, ptr %i.fl, ptr @_ZN11opencv_onnx41_TypeProto_SparseTensor_default_instance_E
  invoke void @_ZN11opencv_onnx22TypeProto_SparseTensor9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.fg, ptr noundef nonnull align 8 dereferenceable(40) %i.fm)
          to label %_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit unwind label %bb.d

_ZN11opencv_onnx18TypeProto_Sequence9MergeFromERKS0_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit.i50.invoke, %.noexc56, %bb.x, %.noexc26, %bb.ag, %bb.h, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx9TypeProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(48) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !70

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = icmp eq ptr %i.h, @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E
  br i1 %i.i, label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr22DestroyNoArenaSlowPathEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.j, !inline_history !599

_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !21
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  invoke void @_ZN11opencv_onnx9TypeProto11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit unwind label %bb.j, !inline_history !599

_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit:    ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr14DestroyNoArenaEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.e
  %i.l = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.f, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.f:                                             ; preds = %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge unwind label %bb.j

._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge: ; preds = %bb.f
  %.pre = load i64, ptr %i.a, align 8, !tbaa !60
  br label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge, %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.n = phi i64 [ %.pre, %._ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit_crit_edge ], [ %i.l, %_ZN11opencv_onnx9TypeProto10SharedDtorEv.exit ], [ %i.b, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !61
  %i.o = and i64 %i.n, 2
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  %i.p = trunc i64 %i.n to i1
  %i.q = and i64 %i.n, -4
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  br i1 %i.p, label %bb.h, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, !prof !70

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi ptr [ %i.s, %bb.h ], [ %i.r, %bb.g ] ; 3 uses
  %i.t = icmp eq ptr %.0.i.i.i, null
  br i1 %i.t, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.0.i.i.i) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.i.i.i, i64 noundef 32) #26
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit.i.i, %bb.i
  ret void

bb.j:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11opencv_onnx9TypeProtoD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN11opencv_onnx9TypeProtoD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(48) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN11opencv_onnx9TypeProto9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK11opencv_onnx9TypeProto13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11opencv_onnx9TypeProto14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit

_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit: ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader
  %.063 = phi ptr [ %1, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader ], [ %.063.be, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge ] ; 4 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !108
  %i.j = load ptr, ptr %2, align 8, !tbaa !115
  %i.k = icmp ult ptr %.063, %i.j
  br i1 %i.k, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread67, label %bb.a, !prof !13

bb.a:                                             ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.m = ptrtoint ptr %.063 to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = load i32, ptr %i.c, align 4, !tbaa !117
  %i.r = icmp eq i32 %i.q, %i.p
  br i1 %i.r, label %bb.b, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

end_hunk_12
