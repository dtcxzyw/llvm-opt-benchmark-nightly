Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/pe_builder?download=true
inline.NumInlined: 247
inline.NumDeleted: 138
begin_hunk_0_@main:bb.a
  %i.y = load i64, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = load ptr, ptr %3, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.ac = load atomic i8, ptr @_ZGVZN4LIEF2PE12ParserConfig12default_confEvE7DEFAULT acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %_ZN4LIEF2PE12ParserConfig12default_confEv.exit, !prof !35

bb.k:                                             ; preds = %bb.j
  %i.ae = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4LIEF2PE12ParserConfig12default_confEvE7DEFAULT) #15
  %.not.i41 = icmp eq i32 %i.ae, 0
  br i1 %.not.i41, label %_ZN4LIEF2PE12ParserConfig12default_confEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) @_ZZN4LIEF2PE12ParserConfig12default_confEvE7DEFAULT, i8 1, i64 5, i1 false)
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4LIEF2PE12ParserConfig12default_confEvE7DEFAULT, i64 5), align 1, !tbaa !47
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4LIEF2PE12ParserConfig12default_confEvE7DEFAULT, i64 6), align 2, !tbaa !48
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4LIEF2PE12ParserConfig12default_confEvE7DEFAULT, i64 8), align 8, !tbaa !51
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4LIEF2PE12ParserConfig12default_confEvE7DEFAULT, i64 16), align 8, !tbaa !52
  %i.af = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4LIEF2PE12ParserConfig12default_confEvE7DEFAULT) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4LIEF2PE12ParserConfig12default_confEvE7DEFAULT) #15
  br label %_ZN4LIEF2PE12ParserConfig12default_confEv.exit

_ZN4LIEF2PE12ParserConfig12default_confEv.exit:   ; preds = %bb.l, %bb.k, %bb.j
  invoke void @_ZN4LIEF2PE6Parser5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_12ParserConfigE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4LIEF2PE12ParserConfig12default_confEvE7DEFAULT)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %_ZN4LIEF2PE12ParserConfig12default_confEv.exit
  %i.ag = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.q
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.ag) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ai = load ptr, ptr %2, align 8, !tbaa !54
  %.not.i42 = icmp eq ptr %i.ai, null
  br i1 %.not.i42, label %bb.n, label %._crit_edge.i.i54

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %bb.n
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !21  ; 3 uses
  %.not.i45 = icmp eq ptr %i.ak, null
  br i1 %.not.i45, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.al = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !12
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !30
  %i.ar = or i32 %i.aq, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, i32 noundef %i.ar)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 unwind label %bb.s

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #15
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.ak, i64 noundef %i.as)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48: ; preds = %bb.o, %bb.p
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.s ; 0 uses

bb.q:                                             ; preds = %.noexc.i, %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.r:                                             ; preds = %_ZN4LIEF2PE12ParserConfig12default_confEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.q
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.ax) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.q
  %.pn = phi { ptr, i32 } [ %i.av, %bb.q ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.aw, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZNSt10unique_ptrIN4LIEF2PE6BinaryESt14default_deleteIS2_EED2Ev.exit97

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48, %bb.p, %bb.o, %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

._crit_edge.i.i54:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ba, ptr %5, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ba, ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 5, ptr %i.bb, align 8, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 21
  store i8 0, ptr %i.bc, align 1, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 144, i1 false)
  invoke void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %4)
          to label %.noexc59 unwind label %bb.ad

.noexc59:                                         ; preds = %._crit_edge.i.i54
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !34
  store i8 0, ptr %i.be, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN4LIEF2PE7SectionE, i64 16), ptr %4, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 136
  store ptr null, ptr %i.bi, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.bh, i8 0, i64 68, i1 false)
  %i.bj = load ptr, ptr %5, align 8, !tbaa !16    ; 5 uses
  %i.bk = icmp eq ptr %i.bj, %i.ba
  br i1 %i.bk, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.noexc59
  %i.bl = load i64, ptr %i.bb, align 8, !tbaa !34 ; 5 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  switch i64 %i.bl, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !33
  store i8 %i.bn, ptr %i.be, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t
  store i64 %i.bl, ptr %i.bf, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !33
  br label %bb.x

bb.w:                                             ; preds = %.noexc59
  store ptr %i.bj, ptr %i.bd, align 8, !tbaa !16
  %i.bp = load <2 x i64>, ptr %i.bb, align 8, !tbaa !33
  store <2 x i64> %i.bp, ptr %i.bf, align 8, !tbaa !33
  store ptr %i.ba, ptr %5, align 8, !tbaa !16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bq = phi ptr [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.ba, %bb.w ]
  store i64 0, ptr %i.bb, align 8, !tbaa !34
  store i8 0, ptr %i.bq, align 1, !tbaa !33
  %i.br = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ba
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.br) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !64
  %i.bv = or i32 %i.bu, 1073741888
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bw = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #18
          to label %bb.z unwind label %bb.y       ; 3 uses

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i4.i, label %.body, label %.body.sink.split

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  store ptr %i.bw, ptr %6, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !65
  store <4 x i8> <i8 76, i8 73, i8 69, i8 70>, ptr %i.bw, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !66
  invoke void @_ZN4LIEF2PE7Section7contentERKSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.aa unwind label %10

bb.aa:                                            ; preds = %bb.z
  %i.cc = load ptr, ptr %2, align 8, !tbaa !54
  %i.cd = invoke noundef ptr @_ZN4LIEF2PE6Binary11add_sectionERKNS0_7SectionE(ptr noundef nonnull align 8 dereferenceable(736) %i.cc, ptr noundef nonnull align 8 dereferenceable(144) %4)
          to label %bb.ab unwind label %10        ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load ptr, ptr %2, align 8, !tbaa !54
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 304 ; 4 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !70 ; 3 uses
  %i.ch = and i32 %i.cg, 64
  %.not102 = icmp eq i32 %i.ch, 0
  br i1 %.not102, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ci = or disjoint i32 %i.cg, 64
  store i32 %i.ci, ptr %i.cf, align 8, !tbaa !70
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 28)
          to label %._crit_edge unwind label %bb.ae ; 0 uses

._crit_edge:                                      ; preds = %bb.ac
  %.pre = load i32, ptr %i.cf, align 8, !tbaa !70
  br label %bb.af

bb.ad:                                            ; preds = %._crit_edge.i.i54
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ba
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.cl) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

10:                                               ; preds = %bb.aa, %bb.z
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ae:                                            ; preds = %bb.ag, %bb.ac
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.af:                                            ; preds = %._crit_edge, %bb.ab
  %i.co = phi i32 [ %.pre, %._crit_edge ], [ %i.cg, %bb.ab ] ; 2 uses
  %i.cp = and i32 %i.co, 256
  %.not103 = icmp eq i32 %i.cp, 0
  br i1 %.not103, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cq = or disjoint i32 %i.co, 256
  store i32 %i.cq, ptr %i.cf, align 8, !tbaa !70
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 24)
          to label %bb.ah unwind label %bb.ae     ; 0 uses

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store i8 0, ptr %7, align 8, !tbaa !73
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 0, ptr %i.cs, align 1, !tbaa !74
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %i.ct, i8 1, i64 7, i1 false)
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cv, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 5, ptr %i.cw, align 8, !tbaa !34
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 37
  store i8 0, ptr %i.cx, align 1, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cz, ptr noundef nonnull align 1 dereferenceable(6) @.str.9, i64 6, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 6, ptr %i.da, align 8, !tbaa !34
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 70
  store i8 0, ptr %i.db, align 2, !tbaa !33
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !31
  store i32 1936487470, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 4, ptr %i.de, align 8, !tbaa !34
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 100
  store i8 0, ptr %i.df, align 4, !tbaa !33
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dh, ptr noundef nonnull align 1 dereferenceable(6) @.str.11, i64 6, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i64 6, ptr %i.di, align 8, !tbaa !34
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 134
  store i8 0, ptr %i.dj, align 2, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 2 uses
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dl, ptr noundef nonnull align 1 dereferenceable(6) @.str.12, i64 6, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 152
  store i64 6, ptr %i.dm, align 8, !tbaa !34
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 166
  store i8 0, ptr %i.dn, align 2, !tbaa !33
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dp, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i64 6, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 184
  store i64 6, ptr %i.dq, align 8, !tbaa !34
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 198
  store i8 0, ptr %i.dr, align 2, !tbaa !33
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ds, i8 0, i64 33, i1 false)
  %i.dt = load ptr, ptr %2, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !21 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.dw, ptr %9, align 8, !tbaa !31
  %i.dx = icmp eq ptr %i.dv, null
  br i1 %i.dx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #16
          to label %.noexc72 unwind label %bb.at

.noexc72:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dv) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.dy, ptr %i.a, align 8, !tbaa !32
  %i.dz = icmp ugt i64 %i.dy, 15
  br i1 %i.dz, label %.noexc.i71, label %._crit_edge.i.i70

.noexc.i71:                                       ; preds = %bb.aj
  %i.ea = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc73 unwind label %bb.at  ; 2 uses

.noexc73:                                         ; preds = %.noexc.i71
  store ptr %i.ea, ptr %9, align 8, !tbaa !16
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.eb, ptr %i.dw, align 8, !tbaa !33
  br label %._crit_edge.i.i70

._crit_edge.i.i70:                                ; preds = %.noexc73, %bb.aj
  %i.ec = phi ptr [ %i.ea, %.noexc73 ], [ %i.dw, %bb.aj ] ; 2 uses
  switch i64 %i.dy, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i70
  %i.ed = load i8, ptr %i.dv, align 1, !tbaa !33
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !33
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i70
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr nonnull align 1 %i.dv, i64 %i.dy, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i.i70
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !34
  %i.eg = load ptr, ptr %9, align 8, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ee
  store i8 0, ptr %i.eh, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  invoke void @_ZN4LIEF2PE6Binary5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7Builder8config_tE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.111") align 8 %8, ptr noundef nonnull align 8 dereferenceable(736) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(241) %7)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.ei = load ptr, ptr %8, align 8, !tbaa !76    ; 3 uses
  %.not.i75 = icmp eq ptr %i.ei, null
  br i1 %.not.i75, label %_ZNSt10unique_ptrIN4LIEF2PE7BuilderESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF2PE7BuilderEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF2PE7BuilderEEclEPS2_.exit.i: ; preds = %bb.an
  call void @_ZN4LIEF2PE7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %i.ei) #15
  call void @_ZdlPv(ptr noundef nonnull %i.ei) #17
  br label %_ZNSt10unique_ptrIN4LIEF2PE7BuilderESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE7BuilderESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.an, %_ZNKSt14default_deleteIN4LIEF2PE7BuilderEEclEPS2_.exit.i
  %i.ej = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dw
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt10unique_ptrIN4LIEF2PE7BuilderESt14default_deleteIS2_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ej) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt10unique_ptrIN4LIEF2PE7BuilderESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.7, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 unwind label %bb.av ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.em = load ptr, ptr %i.du, align 8, !tbaa !21 ; 3 uses
  %.not.i81 = icmp eq ptr %i.em, null
  br i1 %.not.i81, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.en = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.eo = getelementptr i8, ptr %i.en, i64 -24
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load i32, ptr %i.er, align 8, !tbaa !30
  %i.et = or i32 %i.es, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.eq, i32 noundef %i.et)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84 unwind label %bb.av

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.eu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.em) #15
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.em, i64 noundef %i.eu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84 unwind label %bb.av ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84: ; preds = %bb.ao, %bb.ap
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 unwind label %bb.av ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  call void @_ZN4LIEF2PE7Builder8config_tD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ex = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86
  call void @_ZdlPv(ptr noundef nonnull %i.ex) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN4LIEF2PE7SectionE, i64 16), ptr %4, align 8, !tbaa !12
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.ez) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.ar, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.fa = load ptr, ptr %i.bh, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.fa) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2.i

_ZNSt6vectorIhSaIhEED2Ev.exit2.i:                 ; preds = %bb.as, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN4LIEF7SectionE, i64 16), ptr %4, align 8, !tbaa !12
  %i.fb = load ptr, ptr %i.bd, align 8, !tbaa !16 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.be
  br i1 %i.fc, label %_ZN4LIEF2PE7SectionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i
  call void @_ZdlPv(ptr noundef %i.fb) #17
  br label %_ZN4LIEF2PE7SectionD2Ev.exit

_ZN4LIEF2PE7SectionD2Ev.exit:                     ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(144) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50

bb.at:                                            ; preds = %.noexc.i71, %bb.ai
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.au:                                            ; preds = %bb.am
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.dw
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.au
  call void @_ZdlPv(ptr noundef %i.ff) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.at
  %.pn28 = phi { ptr, i32 } [ %i.fd, %bb.at ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.fe, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.aw

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84, %bb.ap, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.pn30 = phi { ptr, i32 } [ %i.fh, %bb.av ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ]
  call void @_ZN4LIEF2PE7Builder8config_tD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ae, %bb.aw, %10
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %11, %10 ], [ %.pn30, %bb.aw ], [ %i.cn, %bb.ae ] ; 2 uses
  %i.fi = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i91, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ax, %bb.y
  %.sink = phi ptr [ %i.by, %bb.y ], [ %i.fi, %bb.ax ]
  %.pn30.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.bx, %bb.y ], [ %.pn30.pn.pn.pn, %bb.ax ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #17
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ax, %bb.y
  %.pn30.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.y ], [ %.pn30.pn.pn.pn, %bb.ax ], [ %.pn30.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZN4LIEF2PE7SectionD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %.body
  %.pn30.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn.pn, %.body ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.ck, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.ay

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48, %_ZN4LIEF2PE7SectionD2Ev.exit
  %.0 = phi i32 [ 0, %_ZN4LIEF2PE7SectionD2Ev.exit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 ]
  %i.fj = load ptr, ptr %2, align 8, !tbaa !54    ; 3 uses
  %.not.i94 = icmp eq ptr %i.fj, null
  br i1 %.not.i94, label %_ZNSt10unique_ptrIN4LIEF2PE6BinaryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF2PE6BinaryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF2PE6BinaryEEclEPS2_.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(736) %i.fj) #15, !inline_history !20
  br label %_ZNSt10unique_ptrIN4LIEF2PE6BinaryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE6BinaryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50, %_ZNKSt14default_deleteIN4LIEF2PE6BinaryEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.az

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.s
  %.pn37 = phi { ptr, i32 } [ %i.az, %bb.s ], [ %.pn30.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ] ; 2 uses
  %i.fn = load ptr, ptr %2, align 8, !tbaa !54    ; 3 uses
  %.not.i95 = icmp eq ptr %i.fn, null
  br i1 %.not.i95, label %_ZNSt10unique_ptrIN4LIEF2PE6BinaryESt14default_deleteIS2_EED2Ev.exit97, label %_ZNKSt14default_deleteIN4LIEF2PE6BinaryEEclEPS2_.exit.i96

_ZNKSt14default_deleteIN4LIEF2PE6BinaryEEclEPS2_.exit.i96: ; preds = %bb.ay
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(736) %i.fn) #15, !inline_history !20
  br label %_ZNSt10unique_ptrIN4LIEF2PE6BinaryESt14default_deleteIS2_EED2Ev.exit97

_ZNSt10unique_ptrIN4LIEF2PE6BinaryESt14default_deleteIS2_EED2Ev.exit97: ; preds = %_ZNKSt14default_deleteIN4LIEF2PE6BinaryEEclEPS2_.exit.i96, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn37.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn37, %bb.ay ], [ %.pn37, %_ZNKSt14default_deleteIN4LIEF2PE6BinaryEEclEPS2_.exit.i96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn37.pn

bb.az:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF2PE6BinaryESt14default_deleteIS2_EED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.1 = phi i32 [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %.0, %_ZNSt10unique_ptrIN4LIEF2PE6BinaryESt14default_deleteIS2_EED2Ev.exit ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4LIEF2PE6Parser5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_12ParserConfigE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4LIEF2PE7Section7contentERKSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare noundef ptr @_ZN4LIEF2PE6Binary11add_sectionERKNS0_7SectionE(ptr noundef nonnull align 8 dereferenceable(736), ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #2

declare void @_ZN4LIEF2PE6Binary5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7Builder8config_tE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.111") align 8, ptr noundef nonnull align 8 dereferenceable(736), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(241)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4LIEF2PE7Builder8config_tD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #19
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.h) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  tail call void @_ZdlPv(ptr noundef %i.p) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  tail call void @_ZdlPv(ptr noundef %i.t) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  tail call void @_ZdlPv(ptr noundef %i.x) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  tail call void @_ZdlPv(ptr noundef %i.ab) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4LIEF2PE7SectionD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN4LIEF2PE7SectionE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2

_ZNSt6vectorIhSaIhEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN4LIEF7SectionE, i64 16), ptr %0, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4LIEF7SectionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2
  tail call void @_ZdlPv(ptr noundef %i.f) #17
end_hunk_0
