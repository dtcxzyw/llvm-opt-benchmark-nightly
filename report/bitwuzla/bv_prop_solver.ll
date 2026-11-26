Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/bv_prop_solver?download=true
inline.NumInlined: 1488
inline.NumDeleted: 715
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4bzla2bv12BvPropSolver7mk_nodeERKNS_4NodeE:bb.a
  %i.bb = and i64 %i.ba, -2
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !240
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %.invoke, label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.g, %bb.i, %bb.j, %bb.l, %bb.m, %bb.p, %bb.q, %bb.s
  %lpad.loopexit.split-lp1141 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.invoke:                                          ; preds = %bb.t
  %i.bg = trunc i64 %i.ba to i1
  %i.bh = xor i1 %i.bg, true
  %i.bi = xor i64 %.0185945, -1
  %i.bj = add i64 %i.ad, %i.bi
  invoke void @_ZN4bzla15BitVectorDomain7fix_bitEmb(ptr noundef nonnull align 8 dereferenceable(49) %3, i64 noundef %i.bj, i1 noundef zeroext %i.bh)
          to label %.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.sink.split:                                      ; preds = %.invoke
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !241, !nonnull !62, !align !63 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !50
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !50
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.sink.split
  %i.bn = add nuw i64 %.0185945, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.ad
  br i1 %exitcond.not, label %._crit_edge, label %bb.t, !llvm.loop !223

bb.v:                                             ; preds = %bb.r, %._crit_edge, %bb.m, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.bo = invoke { ptr, i8 } @_ZNK4bzla4Node6symbolB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.w unwind label %bb.ap

bb.w:                                             ; preds = %bb.v
  %i.bp = extractvalue { ptr, i8 } %i.bo, 1
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.br = invoke { ptr, i8 } @_ZNK4bzla4Node6symbolB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.y unwind label %bb.ap

bb.y:                                             ; preds = %bb.x
  %i.bs = extractvalue { ptr, i8 } %i.br, 0       ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.bt, ptr %4, align 8, !tbaa !49
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !52 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #21
  store i64 %i.bw, ptr %i.u, align 8, !tbaa !50
  %i.bx = icmp ugt i64 %i.bw, 15
  br i1 %i.bx, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.by = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef 0)
          to label %.noexc unwind label %bb.ap    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.by, ptr %4, align 8, !tbaa !52
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !50
  store i64 %i.bz, ptr %i.bt, align 8, !tbaa !53
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.y
  %i.ca = phi ptr [ %i.by, %.noexc ], [ %i.bt, %bb.y ] ; 2 uses
  switch i64 %i.bw, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %.thread
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.cb = load i8, ptr %i.bu, align 1, !tbaa !53
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !53
  br label %.thread

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %i.bu, i64 %i.bw, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.cc = load i64, ptr %i.u, align 8, !tbaa !50  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !54
  %i.ce = load ptr, ptr %4, align 8, !tbaa !52
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store i8 0, ptr %i.cf, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #21
  br label %.critedge

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.cg = invoke noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ac unwind label %bb.aq     ; 5 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.ch = icmp ult i64 %i.cg, 10
  br i1 %i.ch, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %bb.ai
  %.029.i.i = phi i32 [ %i.cp, %bb.ai ], [ 1, %bb.ac ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.co, %bb.ai ], [ %i.cg, %bb.ac ] ; 5 uses
  %i.ci = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ci, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.cj = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.ck = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.ck, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cl = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.cm = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.cm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cn = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.co = udiv i64 %.02328.i.i, 10000
  %i.cp = add i32 %.029.i.i, 4                    ; 2 uses
  %i.cq = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.cq, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !226

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ac
  %.022.i.i = phi i32 [ %i.cn, %bb.ah ], [ %i.cj, %bb.ad ], [ %i.cl, %bb.af ], [ 1, %bb.ac ], [ %i.cp, %bb.ai ]
  %i.cr = zext i32 %.022.i.i to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.cs, ptr %5, align 8, !tbaa !49, !alias.scope !242
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.cr, i8 noundef signext 0)
          to label %.noexc287 unwind label %bb.aq

.noexc287:                                        ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ct = load ptr, ptr %5, align 8, !tbaa !52, !alias.scope !242 ; 4 uses
  %i.cu = icmp ugt i64 %i.cg, 99
  br i1 %i.cu, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i286

.lr.ph.preheader.i.i:                             ; preds = %.noexc287
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !54, !alias.scope !242
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = add i32 %i.cx, -1
  br label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %.lr.ph.i6.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.db, %.lr.ph.i6.i ], [ %i.cg, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.dl, %.lr.ph.i6.i ], [ %i.cy, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cz = urem i64 %.020.i.i, 100
  %i.da = shl nuw nsw i64 %i.cz, 1
  %i.db = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.da ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !53, !noalias !242
  %i.df = zext i32 %.01819.i.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.df
  store i8 %i.de, ptr %i.dg, align 1, !tbaa !53
  %i.dh = load i8, ptr %i.dc, align 2, !tbaa !53, !noalias !242
  %i.di = add i32 %.01819.i.i, -1
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dj
  store i8 %i.dh, ptr %i.dk, align 1, !tbaa !53
  %i.dl = add i32 %.01819.i.i, -2
  %i.dm = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.dm, label %.lr.ph.i6.i, label %._crit_edge.i.i286, !llvm.loop !227

._crit_edge.i.i286:                               ; preds = %.lr.ph.i6.i, %.noexc287
  %.0.lcssa.i.i = phi i64 [ %i.cg, %.noexc287 ], [ %i.db, %.lr.ph.i6.i ] ; 3 uses
  %i.dn = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.dn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i286
  %i.do = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.dp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !53, !noalias !242
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !53
  %i.dt = load i8, ptr %i.dp, align 2, !tbaa !53, !noalias !242
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i286
  %i.du = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.dv = or disjoint i8 %i.du, 48
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %storemerge.i.i = phi i8 [ %i.dv, %bb.ak ], [ %i.dt, %bb.aj ]
  store i8 %storemerge.i.i, ptr %i.ct, align 1, !tbaa !53
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %.noexc288 unwind label %bb.ar ; 6 uses

.noexc288:                                        ; preds = %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.dx, ptr %4, align 8, !tbaa !49, !alias.scope !243
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !52 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.am:                                            ; preds = %.noexc288
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !54 ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  %i.ee = add nuw nsw i64 %i.ec, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dx, ptr noundef nonnull align 8 dereferenceable(1) %i.dz, i64 %i.ee, i1 false)
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc288
  store ptr %i.dy, ptr %4, align 8, !tbaa !52, !alias.scope !243
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !53
  store i64 %i.ef, ptr %i.dx, align 8, !tbaa !53, !alias.scope !243
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !54
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.am
  %i.eg = phi i64 [ %i.ec, %bb.am ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.eg, ptr %i.ei, align 8, !tbaa !54, !alias.scope !243
  store ptr %i.dz, ptr %i.dw, align 8, !tbaa !52
  store i64 0, ptr %i.eh, align 8, !tbaa !54
  store i8 0, ptr %i.dz, align 8, !tbaa !53
  %i.ej = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.cs
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %bb.an
  %i.el = load i64, ptr %i.cs, align 8, !tbaa !53
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.critedge

.critedge:                                        ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.en = invoke noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %.critedge
  switch i8 %i.en, label %bb.oe [
    i8 13, label %bb.at
    i8 14, label %bb.bk
    i8 15, label %bb.cb
    i8 17, label %bb.cs
    i8 19, label %bb.en
    i8 21, label %bb.fh
    i8 26, label %bb.fy
    i8 56, label %bb.go
    i8 41, label %bb.hf
    i8 45, label %bb.hw
    i8 42, label %bb.in
    i8 52, label %bb.je
    i8 58, label %bb.jv
    i8 61, label %bb.km
    i8 7, label %bb.ld
    i8 16, label %bb.lu
    i8 5, label %bb.lu
    i8 6, label %bb.mw
    i8 9, label %bb.no
  ]

bb.ap:                                            ; preds = %bb.v, %.noexc.i, %bb.x
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit883

bb.aq:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, %bb.ab
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

bb.ar:                                            ; preds = %bb.al
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.cs
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %bb.ar
  %i.et = load i64, ptr %i.cs, align 8, !tbaa !53
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290, %bb.aq
  %.pn191 = phi { ptr, i32 } [ %i.ep, %bb.aq ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290 ], [ %i.eq, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit883

bb.as:                                            ; preds = %bb.lu, %.critedge
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.oo

bb.at:                                            ; preds = %bb.ao
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0)
          to label %bb.au unwind label %bb.be

bb.au:                                            ; preds = %bb.at
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4bzla4NodeESt4pairIKS2_mESaIS5_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EE2atERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %i.ez)
          to label %_ZNSt13unordered_mapIN4bzla4NodeEmSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_mEEE2atERS7_.exit unwind label %bb.be

_ZNSt13unordered_mapIN4bzla4NodeEmSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_mEEE2atERS7_.exit: ; preds = %bb.au
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !50
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 1)
          to label %bb.av unwind label %bb.be

bb.av:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4NodeEmSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_mEEE2atERS7_.exit
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4bzla4NodeESt4pairIKS2_mESaIS5_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EE2atERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %_ZNSt13unordered_mapIN4bzla4NodeEmSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_mEEE2atERS7_.exit295 unwind label %bb.be

_ZNSt13unordered_mapIN4bzla4NodeEmSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_mEEE2atERS7_.exit295: ; preds = %bb.av
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !50
  %i.ff = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %bb.aw unwind label %bb.be     ; 4 uses

bb.aw:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4NodeEmSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_mEEE2atERS7_.exit295
  store ptr %i.ff, ptr %6, align 8, !tbaa !127
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !154
  store i64 %i.fb, ptr %i.ff, align 8
  %.sroa.5935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i64 %i.fe, ptr %.sroa.5935.0..sroa_idx, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.fj, ptr %8, align 8, !tbaa !49
  %i.fk = load ptr, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !54 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #21
  store i64 %i.fm, ptr %i.t, align 8, !tbaa !50
  %i.fn = icmp ugt i64 %i.fm, 15
  br i1 %i.fn, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.aw
  %i.fo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 0)
          to label %.noexc296 unwind label %bb.bf ; 2 uses

.noexc296:                                        ; preds = %.noexc.i.i.i.i.i.i.i
  store ptr %i.fo, ptr %8, align 8, !tbaa !52
  %i.fp = load i64, ptr %i.t, align 8, !tbaa !50
  store i64 %i.fp, ptr %i.fj, align 8, !tbaa !53
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc296, %bb.aw
  %i.fq = phi ptr [ %i.fo, %.noexc296 ], [ %i.fj, %bb.aw ] ; 2 uses
  switch i64 %i.fm, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %bb.az
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.fr = load i8, ptr %i.fk, align 1, !tbaa !53
  store i8 %i.fr, ptr %i.fq, align 1, !tbaa !53
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr align 1 %i.fk, i64 %i.fm, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge.i.i.i.i.i.i.i.i
  %i.fs = load i64, ptr %i.t, align 8, !tbaa !50  ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !54
  %i.fu = load ptr, ptr %8, align 8, !tbaa !52
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fs
  store i8 0, ptr %i.fv, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #21
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  store i8 1, ptr %i.fw, align 8, !tbaa !156
  %i.fx = invoke noundef i64 @_ZN4bzla2ls13LocalSearchBV7mk_nodeENS0_8NodeKindERKNS_15BitVectorDomainERKSt6vectorImSaImEESA_RKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(401) %i.ex, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %bb.ba unwind label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.fy = load i8, ptr %i.fw, align 8, !tbaa !156, !range !67, !noundef !62
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.bb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
end_hunk_0
