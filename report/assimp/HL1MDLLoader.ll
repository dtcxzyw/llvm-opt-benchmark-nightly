inline.NumInlined: 2805
inline.NumDeleted: 972
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader26load_sequence_groups_filesEv:bb.a
  %i.hn = load ptr, ptr %i.j, align 8
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %indvars.iv
  invoke void @_ZN6Assimp3MDL8HalfLife12HL1MDLLoader21load_file_into_bufferINS1_18SequenceHeader_HL1EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_13HL1DataBufferE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %bb.al unwind label %.loopexit84

bb.al:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.gk, ptr %i.a, align 4
  %i.hp = load i32, ptr %i.i, align 8
  %i.hq = sext i32 %i.hp to i64
  %.not.i64 = icmp slt i64 %indvars.iv, %i.hq
  br i1 %.not.i64, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hr = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA49_KcRiRA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull align 1 dereferenceable(49) @.str.99, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.81)
          to label %.invoke unwind label %bb.an

.invoke:                                          ; preds = %bb.ap, %bb.am
  %i.hs = phi ptr [ %i.hr, %bb.am ], [ %i.hz, %bb.ap ]
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %.cont unwind label %.loopexit.split-lp85

.cont:                                            ; preds = %.invoke
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hr) #23
  br label %.body66

bb.ao:                                            ; preds = %bb.al
  %i.hu = load ptr, ptr %i.j, align 8
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %i.hu, i64 %indvars.iv ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = icmp ult i64 %i.hx, 76
  br i1 %i.hy, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.hz = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull @.str.86)
          to label %.invoke unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hz) #23
  br label %.body66

bb.ar:                                            ; preds = %bb.ao
  %i.ib = load ptr, ptr %i.hv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ic = load ptr, ptr %i.z, align 8
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv
  store ptr %i.ib, ptr %i.id, align 8
  %i.ie = load ptr, ptr %7, align 8               ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.dy
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.ar
  %i.ig = load i64, ptr %i.dy, align 8
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  store ptr %i.ee, ptr %5, align 8
  %i.ii = load i64, ptr %i.eg, align 8
  %i.ij = getelementptr inbounds i8, ptr %5, i64 %i.ii
  store ptr %i.ef, ptr %i.ij, align 8
  store ptr %i.eh, ptr %i.du, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ei, align 8
  %i.ik = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.ej
  br i1 %i.il, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.im = load i64, ptr %i.ej, align 8
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ei, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ek) #23
  store ptr %i.el, ptr %5, align 8
  %i.io = load i64, ptr %i.en, align 8
  %i.ip = getelementptr inbounds i8, ptr %5, i64 %i.io
  store ptr %i.em, ptr %i.ip, align 8
  store i64 0, ptr %i.eo, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ep) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.iq = load i32, ptr %i.i, align 8
  %i.ir = sext i32 %i.iq to i64
  %i.is = icmp slt i64 %indvars.iv.next, %i.ir
  br i1 %i.is, label %bb.w, label %._crit_edge, !llvm.loop !144

bb.as:                                            ; preds = %bb.w
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit:                                        ; preds = %bb.ac, %bb.x, %bb.ab, %.noexc53, %bb.ae, %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.at:                                            ; preds = %bb.ag
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.au:                                            ; preds = %bb.ah
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iw = load ptr, ptr %6, align 8               ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.dx
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.au
  %i.iy = load i64, ptr %i.dx, align 8
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.at
  %.pn20 = phi { ptr, i32 } [ %i.iu, %bb.at ], [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.iv, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.av

.loopexit84:                                      ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %lpad.loopexit86 = landingpad { ptr, i32 }
          cleanup
  br label %.body66

.loopexit.split-lp85:                             ; preds = %.invoke
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %.body66

.body66:                                          ; preds = %.loopexit84, %.loopexit.split-lp85, %bb.aq, %bb.an
  %eh.lpad-body67 = phi { ptr, i32 } [ %i.ht, %bb.an ], [ %i.ia, %bb.aq ], [ %lpad.loopexit86, %.loopexit84 ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp85 ] ; 2 uses
  %i.ja = load ptr, ptr %7, align 8               ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.dy
  br i1 %i.jb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body66, %bb.aj
  %.sink = phi ptr [ %i.hl, %bb.aj ], [ %i.ja, %.body66 ]
  %.pn22.ph = phi { ptr, i32 } [ %i.hk, %bb.aj ], [ %eh.lpad-body67, %.body66 ]
  %i.jc = load i64, ptr %i.dy, align 8
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.jd) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body66, %bb.aj
  %.pn22 = phi { ptr, i32 } [ %i.hk, %bb.aj ], [ %eh.lpad-body67, %.body66 ], [ %.pn22.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.av

bb.av:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %.body ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #23
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %bb.av ], [ %i.it, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.je = load ptr, ptr %1, align 8               ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.aw
  %i.jh = load i64, ptr %i.jf, align 8
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.ax:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn22.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %.pn22.pn.pn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn22.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3MDL8HalfLife12HL1MDLLoader13read_texturesEv(ptr noundef nonnull align 8 dereferenceable(320) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %struct.aiColor3D, align 8          ; 7 uses
  %2 = alloca %struct.aiString, align 4           ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 180
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i32 %i.i, 0
  %i.l = shl nsw i64 %i.j, 3
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #26
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.n, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 180
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i32 %i.s, 0
  %i.v = shl nsw i64 %i.t, 3
  %i.w = select i1 %i.u, i64 -1, i64 %i.v
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #26
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.x, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 180
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ag = tail call noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataINS1_11Texture_HL1EEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i32 noundef %i.ac, i32 noundef %i.ae)
  %i.ah = load ptr, ptr %i.f, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 180
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.m, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %i.ap = call noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #26 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1060) %i.ap, i8 0, i64 17, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.aq, i8 0, i64 1036, i1 false)
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  store ptr %i.ap, ptr %i.au, align 8
  %i.av = load ptr, ptr %0, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw [80 x i8], ptr %i.ag, i64 %indvars.iv ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 76 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 68 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 72 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = mul nsw i32 %i.bf, %i.bd
  %i.bh = call noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataIhEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i32 noundef %i.bb, i32 noundef %i.bg) ; 3 uses
  %i.bi = load i32, ptr %i.ba, align 1
  %i.bj = load i32, ptr %i.bc, align 1
  %i.bk = load i32, ptr %i.be, align 1
  %i.bl = mul nsw i32 %i.bk, %i.bj
  %i.bm = add nsw i32 %i.bl, %i.bi
  %i.bn = call noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataIhEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i32 noundef %i.bm, i32 noundef 768) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store <2 x float> zeroinitializer, ptr %1, align 8
  store float 0.000000e+00, ptr %i.al, align 8
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = load ptr, ptr %i.br, align 8            ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = call noundef nonnull align 4 dereferenceable(1028) ptr @_ZN8aiStringaSEPKc(ptr noundef nonnull align 4 dereferenceable(1028) %i.bt, ptr noundef %i.az) ; 0 uses
  %i.bv = load i32, ptr %i.bc, align 1            ; 2 uses
  store i32 %i.bv, ptr %i.bs, align 8
  %i.bw = load i32, ptr %i.be, align 1            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %i.bw, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store <4 x i8> <i8 114, i8 103, i8 98, i8 97>, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 943208504, ptr %i.bz, align 4
  store i8 0, ptr %i.ca, align 8
  %i.cb = mul i32 %i.bw, %i.bv                    ; 4 uses
  %i.cc = zext i32 %i.cb to i64                   ; 3 uses
  %i.cd = shl nuw nsw i64 %i.cc, 2
  %i.ce = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cd) #26 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %i.ce, ptr %i.cf, align 8
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader12read_textureEPKNS1_11Texture_HL1EPKhS7_P9aiTextureR9aiColor3D.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.cc, 1
  %i.cg = icmp eq i32 %i.cb, 1
  br i1 %i.cg, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.cc, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.043.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.dj, %.lr.ph.i ] ; 3 uses
  %.04142.i = phi ptr [ %i.ce, %.lr.ph.i.preheader.new ], [ %i.dk, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.043.i
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = mul nuw nsw i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ck ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.04142.i, i64 2
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.04142.i, i64 1
  store i8 %i.cp, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cs = load i8, ptr %i.cr, align 1
  store i8 %i.cs, ptr %.04142.i, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.04142.i, i64 3
  store i8 -1, ptr %i.ct, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.04142.i, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.043.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = zext i8 %i.cx to i64
  %i.cz = mul nuw nsw i64 %i.cy, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cz ; 3 uses
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.04142.i, i64 6
  store i8 %i.db, ptr %i.dc, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.04142.i, i64 5
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.dh = load i8, ptr %i.dg, align 1
  store i8 %i.dh, ptr %i.cu, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.04142.i, i64 7
  store i8 -1, ptr %i.di, align 1
  %i.dj = add nuw nsw i64 %.043.i, 2              ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.04142.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader12read_textureEPKNS1_11Texture_HL1EPKhS7_P9aiTextureR9aiColor3D.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !145

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader12read_textureEPKNS1_11Texture_HL1EPKhS7_P9aiTextureR9aiColor3D.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader12read_textureEPKNS1_11Texture_HL1EPKhS7_P9aiTextureR9aiColor3D.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader12read_textureEPKNS1_11Texture_HL1EPKhS7_P9aiTextureR9aiColor3D.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.043.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dj, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader12read_textureEPKNS1_11Texture_HL1EPKhS7_P9aiTextureR9aiColor3D.exit.loopexit.unr-lcssa ]
  %.04142.i.epil.init = phi ptr [ %i.ce, %.lr.ph.i.preheader ], [ %i.dk, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader12read_textureEPKNS1_11Texture_HL1EPKhS7_P9aiTextureR9aiColor3D.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod54 = trunc i32 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod54)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.043.i.epil.init
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i64
  %i.do = mul nuw nsw i64 %i.dn, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.do ; 3 uses
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.04142.i.epil.init, i64 2
  store i8 %i.dq, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %.04142.i.epil.init, i64 1
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.dw = load i8, ptr %i.dv, align 1
  store i8 %i.dw, ptr %.04142.i.epil.init, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.04142.i.epil.init, i64 3
  store i8 -1, ptr %i.dx, align 1
  br label %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader12read_textureEPKNS1_11Texture_HL1EPKhS7_P9aiTextureR9aiColor3D.exit

_ZN6Assimp3MDL8HalfLife12HL1MDLLoader12read_textureEPKNS1_11Texture_HL1EPKhS7_P9aiTextureR9aiColor3D.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader12read_textureEPKNS1_11Texture_HL1EPKhS7_P9aiTextureR9aiColor3D.exit.loopexit.unr-lcssa, %bb.b
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bn, i64 765
  %i.dz = load <2 x i8>, ptr %i.dy, align 1
  %i.ea = uitofp <2 x i8> %i.dz to <2 x float>
  store <2 x float> %i.ea, ptr %1, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bn, i64 767
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = uitofp i8 %i.ec to float
  store float %i.ed, ptr %i.al, align 8
  %i.ee = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 9 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ee)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader12read_textureEPKNS1_11Texture_HL1EPKhS7_P9aiTextureR9aiColor3D.exit
  %i.ef = load ptr, ptr %0, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv
  store ptr %i.ee, ptr %i.ei, align 8
  %i.ej = load ptr, ptr %0, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.am, ptr %3, align 8
  %i.en = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.en, ptr %i.a, align 8
  %i.eo = icmp ugt i64 %i.en, 15
  br i1 %i.eo, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.ep = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ep, ptr %3, align 8
  %i.eq = load i64, ptr %i.a, align 8
  store i64 %i.eq, ptr %i.am, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.er = phi ptr [ %i.ep, %.noexc.i ], [ %i.am, %bb.c ] ; 2 uses
  switch i64 %i.en, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.es = load i8, ptr %i.az, align 1
  store i8 %i.es, ptr %i.er, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.er, ptr nonnull align 1 %i.az, i64 %i.en, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.et = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.et, ptr %i.an, align 8
  %i.eu = load ptr, ptr %3, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.et
  store i8 0, ptr %i.ev, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ew = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ex = trunc i64 %i.ew to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ao, i8 0, i64 1024, i1 false)
  %i.ey = and i64 %i.ew, 4294966272
  %.not.i46 = icmp eq i64 %i.ey, 0
  %spec.select.i = select i1 %.not.i46, i32 %i.ex, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %2, align 4
  %i.ez = load ptr, ptr %3, align 8               ; 3 uses
  %i.fa = zext i32 %spec.select.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 1 %i.ez, i64 %i.fa, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.fa
  store i8 0, ptr %i.fb, align 1
  %i.fc = icmp eq ptr %i.ez, %i.am
  br i1 %i.fc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  %i.fd = icmp ult i64 %i.ew, 16
  call void @llvm.assume(i1 %i.fd)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.fe = load i64, ptr %i.am, align 8
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.ff) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.fg = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull %2, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.fh = getelementptr inbounds nuw i8, ptr %i.az, i64 64 ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 1
  %i.fj = lshr i32 %i.fi, 1
  %.lobit = and i32 %i.fj, 1
  store i32 %.lobit, ptr %i.b, align 4
  %i.fk = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef 0, i32 noundef 4) ; 0 uses
  %i.fl = load i32, ptr %i.fh, align 1            ; 2 uses
  %i.fm = and i32 %i.fl, 1
  %.not = icmp eq i32 %i.fm, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 1, ptr %i.c, align 4
  %i.fn = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i32 noundef 5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %.pre = load i32, ptr %i.fh, align 1
  br label %bb.i

bb.h:                                             ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader12read_textureEPKNS1_11Texture_HL1EPKhS7_P9aiTextureR9aiColor3D.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.fo

bb.i:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fp = phi i32 [ %.pre, %bb.g ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.fq = and i32 %i.fp, 32
  %.not43 = icmp eq i32 %i.fq, 0
  br i1 %.not43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 1, ptr %i.d, align 4
  %i.fr = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull %i.d, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i32 noundef 5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.fs = and i32 %i.fp, 64
  %.not44 = icmp eq i32 %i.fs, 0
  br i1 %.not44, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 2, ptr %i.e, align 4
  %i.ft = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull %i.e, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 0, i32 noundef 5) ; 0 uses
  %i.fu = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull %1, i32 noundef 12, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fv = load ptr, ptr %i.f, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 180
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = sext i32 %i.fx to i64
  %i.fz = icmp slt i64 %indvars.iv.next, %i.fy
  br i1 %i.fz, label %bb.b, label %._crit_edge, !llvm.loop !146
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3MDL8HalfLife12HL1MDLLoader10read_skinsEv(ptr noundef nonnull align 8 dereferenceable(320) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %struct.aiString, align 4           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = tail call noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataIsEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i32 noundef %i.g, i32 noundef %i.i)
  %i.l = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = shl i32 %i.p, 1
  %i.r = add i32 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 196
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add nsw i32 %i.t, -1
  %i.v = mul nsw i32 %i.u, %i.p
  %i.w = tail call noundef ptr @_ZNK6Assimp3MDL8HalfLife13HL1DataBuffer8get_dataIsEEPKT_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i32 noundef %i.r, i32 noundef %i.v)
  %i.x = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 196
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.af = phi ptr [ %i.aj, %._crit_edge ], [ %i.x, %.preheader.lr.ph ] ; 4 uses
  %.01419 = phi i32 [ %i.ak, %._crit_edge ], [ 1, %.preheader.lr.ph ] ; 2 uses
  %.01518 = phi ptr [ %i.al, %._crit_edge ], [ %i.w, %.preheader.lr.ph ] ; 2 uses
end_hunk_0
