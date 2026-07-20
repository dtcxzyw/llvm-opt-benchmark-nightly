inline.NumInlined: 1765
inline.NumDeleted: 766
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp11DXFImporter13ParsePolyLineERNS_3DXF10LineReaderERNS1_8FileDataE:bb.a
_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.am, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.ff, ptr %i.bl, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd
  store ptr %i.fh, ptr %i.bn, align 8
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.et
  store ptr %i.fi, ptr %i.bm, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

bb.an:                                            ; preds = %bb.n
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit: ; preds = %bb.n, %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit61, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %_ZNK6Assimp3DXF10LineReader16ValueAsSignedIntEv.exit87, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZNK6Assimp3DXF10LineReader16ValueAsSignedIntEv.exit75, %bb.r, %_ZNK6Assimp3DXF10LineReader16ValueAsSignedIntEv.exit, %bb.an
  %i.fj = phi i32 [ %i.br, %bb.n ], [ %i.br, %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit61 ], [ %.0.i.i85, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %.0.i.i85, %_ZNK6Assimp3DXF10LineReader16ValueAsSignedIntEv.exit87 ], [ %i.br, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.br, %_ZNK6Assimp3DXF10LineReader16ValueAsSignedIntEv.exit75 ], [ %i.br, %bb.r ], [ %i.br, %_ZNK6Assimp3DXF10LineReader16ValueAsSignedIntEv.exit ], [ %i.br, %bb.an ]
  %i.fk = call noundef nonnull align 8 dereferenceable(108) ptr @_ZN6Assimp3DXF10LineReaderppEv(ptr noundef nonnull align 8 dereferenceable(108) %1) ; 0 uses
  br label %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit63.backedge

_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit63.backedge: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit, %bb.p, %bb.o
  %i.fl = phi i32 [ %i.fj, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit ], [ %i.br, %bb.p ], [ %i.br, %bb.o ] ; 2 uses
  %i.fm = load i32, ptr %i.bg, align 8
  %i.fn = icmp sgt i32 %i.fm, 1
  br i1 %i.fn, label %.critedge, label %bb.n, !llvm.loop !54

.critedge:                                        ; preds = %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit, %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit63.backedge, %bb.p
  %i.fo = phi i32 [ %i.br, %bb.p ], [ %i.fl, %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit63.backedge ], [ %i.br, %_ZNK6Assimp3DXF10LineReader2IsEiPKc.exit ] ; 3 uses
  %.pre = load i32, ptr %i.e, align 4             ; 2 uses
  %.not50 = icmp eq i32 %.pre, 0
  br i1 %.not50, label %.critedge.thread, label %bb.ao

bb.ao:                                            ; preds = %.critedge
  %i.fp = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = load ptr, ptr %i.be, align 8
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = sdiv exact i64 %i.fu, 12
  %i.fw = zext i32 %.pre to i64
  %.not51 = icmp eq i64 %i.fv, %i.fw
  br i1 %.not51, label %.critedge.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fx = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.fy = load ptr, ptr %i.fp, align 8
  %i.fz = load ptr, ptr %i.be, align 8
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = sdiv exact i64 %i.gc, 12
  store i64 %i.gd, ptr %i.f, align 8
  call void @_ZN6Assimp6Logger4warnIJRA43_KcmRA12_S2_RjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fx, ptr noundef nonnull align 1 dereferenceable(43) @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(12) @.str.47, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %bb.ao, %.critedge
  %i.ge = phi i32 [ %i.fo, %.critedge ], [ %i.fo, %bb.ap ], [ %i.fo, %bb.ao ], [ 0, %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.be, i64 96 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8            ; 2 uses
  %i.gh = and i32 %i.gg, 64
  %.not52 = icmp eq i32 %i.gh, 0
  br i1 %.not52, label %bb.bc, label %bb.aq

bb.aq:                                            ; preds = %.critedge.thread
  %i.gi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = load ptr, ptr %i.be, align 8
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = sdiv exact i64 %i.gn, 12
  %i.gp = icmp ult i64 %i.go, 3
  br i1 %i.gp, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gq = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.gr = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = load ptr, ptr %i.gq, align 8
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = icmp ult i64 %i.gw, 9
  br i1 %i.gx, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gy = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.gy, ptr noundef nonnull @.str.48)
  %i.gz = load ptr, ptr %i.h, align 8
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -88 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 -16
  store ptr %i.hc, ptr %i.ha, align 8
  %i.hd = getelementptr inbounds i8, ptr %i.hb, i64 -8
  %i.he = load ptr, ptr %i.hd, align 8            ; 8 uses
  %.not.i.i.i89 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 4 uses
  %i.hg = load atomic i64, ptr %i.hf acquire, align 8 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, 4294967297
  %i.hi = trunc i64 %i.hg to i32                  ; 2 uses
  br i1 %i.hh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.hf, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  store i32 0, ptr %i.hj, align 4
  %i.hk = load ptr, ptr %i.he, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #26, !inline_history !55
  %i.hn = load ptr, ptr %i.he, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #26, !inline_history !55
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit

bb.av:                                            ; preds = %bb.at
  %i.hq = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i90 = icmp eq i8 %i.hq, 0
  br i1 %.not.i.i.i.i90, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hr = add nsw i32 %i.hi, -1
  store i32 %i.hr, ptr %i.hf, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.hs = atomicrmw volatile add ptr %i.hf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i = phi i32 [ %i.hi, %bb.aw ], [ %i.hs, %bb.ax ]
  %i.ht = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ht, label %bb.ay, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit, !prof !6

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.he) #26
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit

bb.az:                                            ; preds = %bb.ar
  %.not57 = icmp eq i32 %i.ge, 0
  br i1 %.not57, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hu = getelementptr inbounds nuw i8, ptr %i.be, i64 72 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load ptr, ptr %i.hu, align 8
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 2
  %i.ic = zext i32 %i.ge to i64
  %.not58 = icmp eq i64 %i.ib, %i.ic
  br i1 %.not58, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.id = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.ie = load ptr, ptr %i.hv, align 8
  %i.if = load ptr, ptr %i.hu, align 8
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = ashr exact i64 %i.ii, 2
  store i64 %i.ij, ptr %i.g, align 8
  call void @_ZN6Assimp6Logger4warnIJRA41_KcmRA12_S2_RjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr noundef nonnull align 1 dereferenceable(41) @.str.49, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(12) @.str.47, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit

bb.bc:                                            ; preds = %.critedge.thread
  %i.ik = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 10 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 16 uses
  %i.im = load ptr, ptr %i.il, align 8            ; 3 uses
  %i.in = load ptr, ptr %i.ik, align 8            ; 3 uses
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64               ; 2 uses
  %i.iq = sub i64 %i.io, %i.ip
  %.not53 = icmp eq ptr %i.im, %i.in
  br i1 %.not53, label %bb.bd, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit

bb.bd:                                            ; preds = %bb.bc
  %i.ir = getelementptr inbounds nuw i8, ptr %i.be, i64 72 ; 7 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 11 uses
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = load ptr, ptr %i.ir, align 8            ; 2 uses
  %.not54 = icmp eq ptr %i.it, %i.iu
  br i1 %.not54, label %bb.be, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit

bb.be:                                            ; preds = %bb.bd
  %i.iv = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = load ptr, ptr %i.be, align 8
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = sdiv exact i64 %i.ja, 12
  %4 = and i32 %i.gg, 1
  %i.jc = zext nneg i32 %4 to i64
  %i.jd = add nsw i64 %i.jb, %i.jc                ; 5 uses
  %i.je = icmp ugt i64 %i.jd, 2305843009213693951
  br i1 %i.je, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.79) #28
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.jf = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 10 uses
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = sub i64 %i.jh, %i.ip                    ; 2 uses
  %i.jj = ashr exact i64 %i.ji, 2
  %i.jk = icmp ult i64 %i.jj, %i.jd
  br i1 %i.jk, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i92, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit95

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i92: ; preds = %bb.bg
  %i.jl = shl nuw nsw i64 %i.jd, 2
  %i.jm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #27 ; 3 uses
  %.not.i8.i93 = icmp eq ptr %i.im, null
  br i1 %.not.i8.i93, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i94, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i92
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.ji) #30
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i94

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i94: ; preds = %bb.bh, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i92
  store ptr %i.jm, ptr %i.ik, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.iq
  store ptr %i.jn, ptr %i.il, align 8
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jd
  store ptr %i.jo, ptr %i.jf, align 8
  %.pre168 = load ptr, ptr %i.ir, align 8
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit95

_ZNSt6vectorIjSaIjEE7reserveEm.exit95:            ; preds = %bb.bg, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i94
  %i.jp = phi ptr [ %i.iu, %bb.bg ], [ %.pre168, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i94 ] ; 4 uses
  %i.jq = lshr i64 %i.jd, 1                       ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.be, i64 88 ; 6 uses
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.jv = sub i64 %i.jt, %i.ju                    ; 2 uses
  %i.jw = ashr exact i64 %i.jv, 2
  %i.jx = icmp ult i64 %i.jw, %i.jq
  br i1 %i.jx, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i96, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit100

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i96: ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit95
  %i.jy = load ptr, ptr %i.is, align 8
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = sub i64 %i.jz, %i.ju                    ; 3 uses
  %i.kb = shl nuw nsw i64 %i.jq, 2
  %i.kc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kb) #27 ; 4 uses
  %i.kd = icmp sgt i64 %i.ka, 0
  br i1 %i.kd, label %bb.bi, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i97

bb.bi:                                            ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i96
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kc, ptr align 4 %i.jp, i64 %i.ka, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i97

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i97: ; preds = %bb.bi, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i96
  %.not.i8.i98 = icmp eq ptr %i.jp, null
  br i1 %.not.i8.i98, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i99, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i97
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.jv) #30
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i99

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i99: ; preds = %bb.bj, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i97
  store ptr %i.kc, ptr %i.ir, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.ka
  store ptr %i.ke, ptr %i.is, align 8
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.jq
  store ptr %i.kf, ptr %i.jr, align 8
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit100

_ZNSt6vectorIjSaIjEE7reserveEm.exit100:           ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit95, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i99
  %i.kg = load ptr, ptr %i.iv, align 8
  %i.kh = load ptr, ptr %i.be, align 8
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = sub i64 %i.ki, %i.kj
  %i.kl = sdiv exact i64 %i.kk, 12                ; 2 uses
  %.not163 = icmp ult i64 %i.kl, 2
  br i1 %.not163, label %._crit_edge, label %.lr.ph162

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit118, %_ZNSt6vectorIjSaIjEE7reserveEm.exit100
  %.lcssa = phi i64 [ %i.kl, %_ZNSt6vectorIjSaIjEE7reserveEm.exit100 ], [ %i.ne, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit118 ]
  %i.km = load i32, ptr %i.gf, align 8
  %5 = and i32 %i.km, 1
  %.not56 = icmp eq i32 %5, 0
  br i1 %.not56, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE8pop_backEv.exit, label %bb.bz

.lr.ph162:                                        ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit100, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit118
  %.0161 = phi i32 [ %i.mx, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit118 ], [ 0, %_ZNSt6vectorIjSaIjEE7reserveEm.exit100 ] ; 2 uses
  %i.kn = shl i32 %.0161, 1                       ; 3 uses
  %i.ko = load ptr, ptr %i.il, align 8            ; 3 uses
  %i.kp = load ptr, ptr %i.jf, align 8
  %.not.i.i101 = icmp eq ptr %i.ko, %i.kp
  br i1 %.not.i.i101, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph162
  store i32 %i.kn, ptr %i.ko, align 4
  %i.kq = load ptr, ptr %i.il, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4 ; 2 uses
  store ptr %i.kr, ptr %i.il, align 8
  %.pre169 = load ptr, ptr %i.jf, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.bl:                                            ; preds = %.lr.ph162
  %i.ks = load ptr, ptr %i.ik, align 8            ; 4 uses
  %i.kt = ptrtoint ptr %i.ko to i64
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = sub i64 %i.kt, %i.ku                    ; 6 uses
  %i.kw = icmp eq i64 %i.kv, 9223372036854775804
  br i1 %i.kw, label %bb.bm, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.bm:                                            ; preds = %bb.bl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bl
  %i.kx = ashr exact i64 %i.kv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kx, i64 1)
  %i.ky = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kx ; 2 uses
  %i.kz = icmp ult i64 %i.ky, %i.kx
  %i.la = call i64 @llvm.umin.i64(i64 %i.ky, i64 2305843009213693951)
  %i.lb = select i1 %i.kz, i64 2305843009213693951, i64 %i.la ; 3 uses
  %.not.i.i.i.i102 = icmp ne i64 %i.lb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i102)
  %i.lc = shl nuw nsw i64 %i.lb, 2
  %i.ld = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lc) #27 ; 4 uses
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 %i.kv ; 2 uses
  store i32 %i.kn, ptr %i.le, align 4
  %i.lf = icmp sgt i64 %i.kv, 0
  br i1 %i.lf, label %bb.bn, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.bn:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ld, ptr align 4 %i.ks, i64 %i.kv, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bn, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kv) #30
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.bo, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ld, ptr %i.ik, align 8
  store ptr %i.lg, ptr %i.il, align 8
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.lb ; 2 uses
  store ptr %i.lh, ptr %i.jf, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.bk, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.li = phi ptr [ %.pre169, %bb.bk ], [ %i.lh, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.lj = phi ptr [ %i.kr, %bb.bk ], [ %i.lg, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 2 uses
  %i.lk = or disjoint i32 %i.kn, 1                ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.lj, %i.li
  br i1 %.not.i.i103, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 %i.lk, ptr %i.lj, align 4
  %i.ll = load ptr, ptr %i.il, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  store ptr %i.lm, ptr %i.il, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit110

bb.bq:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ln = load ptr, ptr %i.ik, align 8            ; 4 uses
  %i.lo = ptrtoint ptr %i.li to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp                    ; 6 uses
  %i.lr = icmp eq i64 %i.lq, 9223372036854775804
  br i1 %i.lr, label %bb.br, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i104

bb.br:                                            ; preds = %bb.bq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i104: ; preds = %bb.bq
  %i.ls = ashr exact i64 %i.lq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i105 = call i64 @llvm.umax.i64(i64 %i.ls, i64 1)
  %i.lt = add nsw i64 %.sroa.speculated.i.i.i.i105, %i.ls ; 2 uses
  %i.lu = icmp ult i64 %i.lt, %i.ls
  %i.lv = call i64 @llvm.umin.i64(i64 %i.lt, i64 2305843009213693951)
  %i.lw = select i1 %i.lu, i64 2305843009213693951, i64 %i.lv ; 3 uses
  %.not.i.i.i.i106 = icmp ne i64 %i.lw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i106)
  %i.lx = shl nuw nsw i64 %i.lw, 2
  %i.ly = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lx) #27 ; 4 uses
  %i.lz = getelementptr inbounds i8, ptr %i.ly, i64 %i.lq ; 2 uses
  store i32 %i.lk, ptr %i.lz, align 4
  %i.ma = icmp sgt i64 %i.lq, 0
  br i1 %i.ma, label %bb.bs, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i107

bb.bs:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i104
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ly, ptr align 4 %i.ln, i64 %i.lq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i107

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i107: ; preds = %bb.bs, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i104
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %.not.i17.i.i.i108 = icmp eq ptr %i.ln, null
  br i1 %.not.i17.i.i.i108, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i109, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i107
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef %i.lq) #30
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i109

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i109: ; preds = %bb.bt, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i107
  store ptr %i.ly, ptr %i.ik, align 8
  store ptr %i.mb, ptr %i.il, align 8
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.lw
  store ptr %i.mc, ptr %i.jf, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit110

_ZNSt6vectorIjSaIjEE9push_backEOj.exit110:        ; preds = %bb.bp, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i109
  %i.md = load ptr, ptr %i.is, align 8            ; 3 uses
  %i.me = load ptr, ptr %i.jr, align 8
  %.not.i.i111 = icmp eq ptr %i.md, %i.me
  br i1 %.not.i.i111, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit110
  store i32 2, ptr %i.md, align 4
  %i.mf = load ptr, ptr %i.is, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  store ptr %i.mg, ptr %i.is, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit118

bb.bv:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit110
  %i.mh = load ptr, ptr %i.ir, align 8            ; 4 uses
  %i.mi = ptrtoint ptr %i.md to i64
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = sub i64 %i.mi, %i.mj                    ; 6 uses
  %i.ml = icmp eq i64 %i.mk, 9223372036854775804
  br i1 %i.ml, label %bb.bw, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i112

bb.bw:                                            ; preds = %bb.bv
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i112: ; preds = %bb.bv
  %i.mm = ashr exact i64 %i.mk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i113 = call i64 @llvm.umax.i64(i64 %i.mm, i64 1)
  %i.mn = add nsw i64 %.sroa.speculated.i.i.i.i113, %i.mm ; 2 uses
  %i.mo = icmp ult i64 %i.mn, %i.mm
  %i.mp = call i64 @llvm.umin.i64(i64 %i.mn, i64 2305843009213693951)
  %i.mq = select i1 %i.mo, i64 2305843009213693951, i64 %i.mp ; 3 uses
  %.not.i.i.i.i114 = icmp ne i64 %i.mq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i114)
  %i.mr = shl nuw nsw i64 %i.mq, 2
  %i.ms = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mr) #27 ; 4 uses
  %i.mt = getelementptr inbounds i8, ptr %i.ms, i64 %i.mk ; 2 uses
  store i32 2, ptr %i.mt, align 4
  %i.mu = icmp sgt i64 %i.mk, 0
  br i1 %i.mu, label %bb.bx, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i115

bb.bx:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i112
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ms, ptr align 4 %i.mh, i64 %i.mk, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i115

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i115: ; preds = %bb.bx, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i112
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %.not.i17.i.i.i116 = icmp eq ptr %i.mh, null
  br i1 %.not.i17.i.i.i116, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i117, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i115
  call void @_ZdlPvm(ptr noundef nonnull %i.mh, i64 noundef %i.mk) #30
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i117

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i117: ; preds = %bb.by, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i115
  store ptr %i.ms, ptr %i.ir, align 8
  store ptr %i.mv, ptr %i.is, align 8
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.mq
  store ptr %i.mw, ptr %i.jr, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit118

_ZNSt6vectorIjSaIjEE9push_backEOj.exit118:        ; preds = %bb.bu, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i117
  %i.mx = add i32 %.0161, 1                       ; 2 uses
  %i.my = zext i32 %i.mx to i64
  %i.mz = load ptr, ptr %i.iv, align 8
  %i.na = load ptr, ptr %i.be, align 8
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = sub i64 %i.nb, %i.nc
  %i.ne = sdiv exact i64 %i.nd, 12                ; 2 uses
  %i.nf = lshr i64 %i.ne, 1
  %i.ng = icmp samesign ugt i64 %i.nf, %i.my
  br i1 %i.ng, label %.lr.ph162, label %._crit_edge, !llvm.loop !56
end_hunk_0
