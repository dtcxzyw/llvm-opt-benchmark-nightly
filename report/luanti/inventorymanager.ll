Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/inventorymanager?download=true
inline.NumInlined: 1578
inline.NumDeleted: 528
begin_hunk_0_@_ZN11IMoveAction5applyEP16InventoryManagerP18ServerActiveObjectP8IGameDef:bb.a
  %i.yr = load ptr, ptr %i.yj, align 8, !tbaa !57 ; 5 uses
  %.not.i431 = icmp eq ptr %i.yr, null
  br i1 %.not.i431, label %_ZN11StreamProxylsIjEERS_OT_.exit435, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !33
  %i.yt = getelementptr i8, ptr %i.ys, i64 -24
  %i.yu = load i64, ptr %i.yt, align 8
  %i.yv = getelementptr inbounds i8, ptr %i.yr, i64 %i.yu
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 32
  %i.yx = load i32, ptr %i.yw, align 8, !tbaa !64
  %i.yy = icmp eq i32 %i.yx, 0
  br i1 %i.yy, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.yr)
          to label %.noexc433 unwind label %bb.ft

.noexc433:                                        ; preds = %bb.fi
  %.pre.i432 = load ptr, ptr %i.yj, align 8, !tbaa !57
  br label %bb.fj

bb.fj:                                            ; preds = %.noexc433, %bb.fh
  %i.yz = phi ptr [ %.pre.i432, %.noexc433 ], [ %i.yr, %bb.fh ]
  %i.za = and i64 %i.yq, 4294967295
  %i.zb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.yz, i64 noundef %i.za)
          to label %_ZN11StreamProxylsIjEERS_OT_.exit435 unwind label %bb.ft ; 0 uses

_ZN11StreamProxylsIjEERS_OT_.exit435:             ; preds = %bb.fg, %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr @.str.12, ptr %i.ac, align 8, !tbaa !56
  %i.zc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.yj, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.fk unwind label %bb.ft

bb.fk:                                            ; preds = %_ZN11StreamProxylsIjEERS_OT_.exit435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr @.str.36, ptr %i.ab, align 8, !tbaa !56
  %i.zd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.zc, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.fl unwind label %bb.ft     ; 3 uses

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !57 ; 5 uses
  %.not.i440 = icmp eq ptr %i.ze, null
  br i1 %.not.i440, label %_ZN11StreamProxylsIRsEERS_OT_.exit444, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !33
  %i.zg = getelementptr i8, ptr %i.zf, i64 -24
  %i.zh = load i64, ptr %i.zg, align 8
  %i.zi = getelementptr inbounds i8, ptr %i.ze, i64 %i.zh
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 32
  %i.zk = load i32, ptr %i.zj, align 8, !tbaa !64
  %i.zl = icmp eq i32 %i.zk, 0
  br i1 %i.zl, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ze)
          to label %.noexc442 unwind label %bb.ft

.noexc442:                                        ; preds = %bb.fn
  %.pre.i441 = load ptr, ptr %i.zd, align 8, !tbaa !57
  br label %bb.fo

bb.fo:                                            ; preds = %.noexc442, %bb.fm
  %i.zm = phi ptr [ %.pre.i441, %.noexc442 ], [ %i.ze, %bb.fm ]
  %i.zn = load i16, ptr %i.xq, align 8, !tbaa !79
  %i.zo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.zm, i16 noundef signext %i.zn)
          to label %_ZN11StreamProxylsIRsEERS_OT_.exit444 unwind label %bb.ft ; 0 uses

_ZN11StreamProxylsIRsEERS_OT_.exit444:            ; preds = %bb.fl, %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @.str.12, ptr %i.aa, align 8, !tbaa !56
  %i.zp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.zd, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.fp unwind label %bb.ft     ; 2 uses

bb.fp:                                            ; preds = %_ZN11StreamProxylsIRsEERS_OT_.exit444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !57 ; 5 uses
  %.not.i447 = icmp eq ptr %i.zq, null
  br i1 %.not.i447, label %_ZN11StreamProxylsEPFRSoS0_E.exit423.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !33
  %i.zs = getelementptr i8, ptr %i.zr, i64 -24
  %i.zt = load i64, ptr %i.zs, align 8
  %i.zu = getelementptr inbounds i8, ptr %i.zq, i64 %i.zt
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 32
  %i.zw = load i32, ptr %i.zv, align 8, !tbaa !64
  %i.zx = icmp eq i32 %i.zw, 0
  br i1 %i.zx, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.zq)
          to label %.noexc449 unwind label %bb.ft

.noexc449:                                        ; preds = %bb.fr
  %.pre.i448 = load ptr, ptr %i.zp, align 8, !tbaa !57
  br label %bb.fs

bb.fs:                                            ; preds = %.noexc449, %bb.fq
  %i.zy = phi ptr [ %.pre.i448, %.noexc449 ], [ %i.zq, %bb.fq ]
  %i.zz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.zy)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit423.thread unwind label %bb.ft, !inline_history !2 ; 0 uses

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %_ZN11StreamProxylsIRsEERS_OT_.exit444, %bb.fo, %bb.fn, %bb.fk, %_ZN11StreamProxylsIjEERS_OT_.exit435, %bb.fj, %bb.fi
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %.thread775

bb.fu:                                            ; preds = %bb.fc
  %i.aab = icmp eq ptr %.sink.i, %.sink.i191
  %i.aac = icmp eq i16 %i.ut, %i.xr
  %or.cond803 = and i1 %i.aab, %i.aac
  br i1 %or.cond803, label %_ZN11StreamProxylsEPFRSoS0_E.exit423.thread, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aad = load i32, ptr %i.bq, align 8, !tbaa !197
  %i.aae = icmp eq i32 %i.aad, 2
  br i1 %i.aae, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.aaf = invoke noundef zeroext i1 @_ZNK17InventoryLocationeqERKS_(ptr noundef nonnull align 8 dereferenceable(46) %i.bq, ptr noundef nonnull align 8 dereferenceable(46) %i.ca)
          to label %._crit_edge unwind label %bb.fz

._crit_edge:                                      ; preds = %bb.fw
  %.pre = load i16, ptr %i.us, align 8, !tbaa !70
  br label %bb.fx

bb.fx:                                            ; preds = %._crit_edge, %bb.fv
  %i.aag = phi i16 [ %i.ut, %bb.fv ], [ %.pre, %._crit_edge ]
  %i.aah = phi i1 [ false, %bb.fv ], [ %i.aaf, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.aai = sext i16 %i.aag to i64
  %i.aaj = and i64 %i.aai, 4294967295
  %i.aak = load ptr, ptr %.sink.i, align 8, !tbaa !222
  %i.aal = getelementptr inbounds nuw [296 x i8], ptr %i.aak, i64 %i.aaj
  invoke void @_ZN9ItemStackC2ERKS_(ptr noundef nonnull align 8 dereferenceable(296) %10, ptr noundef nonnull align 8 dereferenceable(296) %i.aal)
          to label %bb.fy unwind label %bb.ga

bb.fy:                                            ; preds = %bb.fx
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.aan = load i16, ptr %i.aam, align 2, !tbaa !75 ; 3 uses
  %.not114 = icmp ne i16 %i.aan, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %.pre841.a = load i16, ptr %.phi.trans.insert, align 8, !tbaa !238 ; 2 uses
  %i.aao = icmp ult i16 %i.aan, %.pre841.a
  %or.cond969 = select i1 %.not114, i1 %i.aao, i1 false
  br i1 %or.cond969, label %.thread.a, label %._crit_edge840

.thread.a:                                        ; preds = %bb.fy
  store i16 %i.aan, ptr %.phi.trans.insert, align 8, !tbaa !238
  %i.aap = getelementptr inbounds nuw i8, ptr %10, i64 32
  br label %bb.gb

bb.fz:                                            ; preds = %bb.fw
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  br label %.thread775

bb.ga:                                            ; preds = %bb.fx
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %bb.oi

._crit_edge840:                                   ; preds = %bb.fy
  %i.aas = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.aat = icmp eq i16 %.pre841.a, 0
  br i1 %i.aat, label %bb.oa, label %bb.gb

bb.gb:                                            ; preds = %.thread.a, %._crit_edge840
  %i.aau = phi ptr [ %i.aap, %.thread.a ], [ %i.aas, %._crit_edge840 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZN9ItemStackC2Ev(ptr noundef nonnull align 8 dereferenceable(296) %11)
          to label %bb.gc unwind label %bb.gf

bb.gc:                                            ; preds = %bb.gb
  %i.aav = load i16, ptr %i.xq, align 8, !tbaa !71
  %i.aaw = sext i16 %i.aav to i32
  %i.aax = invoke noundef zeroext i1 @_ZNK13InventoryList8itemFitsEjRK9ItemStackPS0_(ptr noundef nonnull align 8 dereferenceable(80) %.sink.i191, i32 noundef %i.aaw, ptr noundef nonnull align 8 dereferenceable(296) %10, ptr noundef nonnull %11)
          to label %bb.gd unwind label %bb.gg

bb.gd:                                            ; preds = %bb.gc
  %.pre842.a = load i16, ptr %i.aau, align 8, !tbaa !238 ; 4 uses
  %.phi.trans.insert844 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.pre845 = load i16, ptr %.phi.trans.insert844, align 8, !tbaa !238 ; 2 uses
  %i.aay = icmp ne i16 %.pre845, %.pre842.a
  %or.cond971.not = select i1 %i.aax, i1 true, i1 %i.aay
  br i1 %or.cond971.not, label %._crit_edge843, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 181
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !77, !range !219, !noundef !54
  %i.abb = trunc nuw i8 %i.aba to i1
  %i.abc = xor i1 %i.abb, true
  br label %._crit_edge843

._crit_edge843:                                   ; preds = %bb.gd, %bb.ge
  %i.abd = phi i16 [ %.pre845, %bb.gd ], [ %.pre842.a, %bb.ge ] ; 2 uses
  %i.abe = phi i1 [ false, %bb.gd ], [ %i.abc, %bb.ge ] ; 5 uses
  %i.abf = zext i16 %.pre842.a to i32
  %i.abg = zext i16 %i.abd to i32
  %i.abh = sub nsw i32 %i.abf, %i.abg             ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 14 uses
  store i32 %i.abh, ptr %i.abi, align 8, !tbaa !78
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 181 ; 4 uses
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !77, !range !219, !noundef !54
  %i.abl = trunc nuw i8 %i.abk to i1
  %i.abm = icmp eq i16 %.pre842.a, %i.abd
  %or.cond173 = select i1 %i.abl, i1 %i.abm, i1 false
  br i1 %or.cond173, label %bb.nz, label %bb.gh

bb.gf:                                            ; preds = %bb.gb
  %i.abn = landingpad { ptr, i32 }
          cleanup
  br label %bb.oh

bb.gg:                                            ; preds = %bb.gt, %bb.gs, %bb.gm, %bb.gk, %bb.gi, %bb.gc
  %i.abo = landingpad { ptr, i32 }
          cleanup
  br label %bb.og

bb.gh:                                            ; preds = %._crit_edge843
  br i1 %i.abe, label %bb.gi, label %bb.gk

bb.gi:                                            ; preds = %bb.gh
  %i.abp = load i16, ptr %i.us, align 8, !tbaa !70
  %i.abq = sext i16 %i.abp to i64
  %i.abr = and i64 %i.abq, 4294967295
  %i.abs = load ptr, ptr %.sink.i, align 8, !tbaa !222
  %i.abt = getelementptr inbounds nuw [296 x i8], ptr %i.abs, i64 %i.abr
  %i.abu = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZN9ItemStackaSERKS_(ptr noundef nonnull align 8 dereferenceable(296) %10, ptr noundef nonnull align 8 dereferenceable(296) %i.abt)
          to label %bb.gj unwind label %bb.gg     ; 0 uses

bb.gj:                                            ; preds = %bb.gi
  %i.abv = load i16, ptr %i.aau, align 8, !tbaa !238
  %i.abw = zext i16 %i.abv to i32                 ; 2 uses
  store i32 %i.abw, ptr %i.abi, align 8, !tbaa !78
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gh
  %i.abx = phi i32 [ %i.abw, %bb.gj ], [ %i.abh, %bb.gh ]
  %i.aby = trunc i32 %i.abx to i16
  store i16 %i.aby, ptr %i.aau, align 8, !tbaa !238
  %i.abz = invoke noundef zeroext i1 @_ZNK17InventoryLocationeqERKS_(ptr noundef nonnull align 8 dereferenceable(46) %i.bq, ptr noundef nonnull align 8 dereferenceable(46) %i.ca)
          to label %bb.gl unwind label %bb.gg

bb.gl:                                            ; preds = %bb.gk
  br i1 %i.abz, label %bb.gm, label %bb.gs

bb.gm:                                            ; preds = %bb.gl
  %i.aca = load i16, ptr %i.aau, align 8, !tbaa !238
  %i.acb = zext i16 %i.aca to i32
  %i.acc = invoke noundef i32 @_ZNK11IMoveAction9allowMoveEiP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.acb, ptr noundef %2)
          to label %bb.gn unwind label %bb.gg     ; 4 uses

bb.gn:                                            ; preds = %bb.gm
  %i.acd = icmp eq i32 %i.acc, -1
  %i.ace = load i16, ptr %i.aau, align 8
  %i.acf = zext i16 %i.ace to i32
  %i.acg = icmp sge i32 %i.acc, %i.acf
  %i.ach = select i1 %i.acd, i1 true, i1 %i.acg
  %i.aci = select i1 %i.abe, i1 %i.ach, i1 false
  br i1 %i.aci, label %bb.go, label %bb.gr

bb.go:                                            ; preds = %bb.gn
  %i.acj = load i16, ptr %i.xq, align 8, !tbaa !71
  %i.ack = sext i16 %i.acj to i64
  %i.acl = and i64 %i.ack, 4294967295
  %i.acm = load ptr, ptr %.sink.i191, align 8, !tbaa !222
  %i.acn = getelementptr inbounds nuw [296 x i8], ptr %i.acm, i64 %i.acl
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 32
  %i.acp = load i16, ptr %i.aco, align 8, !tbaa !238
  %i.acq = zext i16 %i.acp to i32                 ; 2 uses
  call void @_ZN11IMoveAction14swapDirectionsEv(ptr noundef nonnull align 8 dereferenceable(188) %0)
  %i.acr = invoke noundef i32 @_ZNK11IMoveAction9allowMoveEiP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.acq, ptr noundef %2)
          to label %bb.gp unwind label %bb.gq     ; 3 uses

bb.gp:                                            ; preds = %bb.go
  %i.acs = icmp eq i32 %i.acr, -1
  %i.act = icmp sge i32 %i.acr, %i.acq
  %i.acu = select i1 %i.acs, i1 true, i1 %i.act
  %i.acv = zext i1 %i.acu to i8
  call void @_ZN11IMoveAction14swapDirectionsEv(ptr noundef nonnull align 8 dereferenceable(188) %0)
  br label %bb.gr

bb.gq:                                            ; preds = %bb.go
  %i.acw = landingpad { ptr, i32 }
          cleanup
  br label %bb.og

bb.gr:                                            ; preds = %bb.gn, %bb.gp
  %.0 = phi i32 [ %i.acr, %bb.gp ], [ %i.acc, %bb.gn ]
  %.052 = phi i8 [ %i.acv, %bb.gp ], [ 0, %bb.gn ] ; 2 uses
  %i.acx = zext i1 %i.abe to i8                   ; 2 uses
  %.not121 = icmp eq i8 %.052, %i.acx
  br i1 %.not121, label %.critedge813, label %.thread747

bb.gs:                                            ; preds = %bb.gl
  %i.acy = invoke noundef i32 @_ZNK11IMoveAction8allowPutERK9ItemStackP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(296) %10, ptr noundef %2)
          to label %bb.gt unwind label %bb.gg     ; 3 uses

bb.gt:                                            ; preds = %bb.gs
  %i.acz = invoke noundef i32 @_ZNK11IMoveAction9allowTakeERK9ItemStackP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(296) %10, ptr noundef %2)
          to label %bb.gu unwind label %bb.gg     ; 3 uses

bb.gu:                                            ; preds = %bb.gt
  br i1 %i.abe, label %bb.gv, label %.thr_comm744

bb.gv:                                            ; preds = %bb.gu
  %i.ada = icmp ne i32 %i.acz, -1
  %i.adb = load i16, ptr %i.aau, align 8
  %i.adc = zext i16 %i.adb to i32                 ; 2 uses
  %.not115 = icmp slt i32 %i.acz, %i.adc
  %or.cond175 = select i1 %i.ada, i1 %.not115, i1 false
  br i1 %or.cond175, label %.thr_comm744, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.add = icmp eq i32 %i.acy, -1
  %i.ade = icmp sge i32 %i.acy, %i.adc
  %i.adf = select i1 %i.add, i1 true, i1 %i.ade
  br i1 %i.adf, label %bb.gx, label %.thr_comm744

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.adg = load i16, ptr %i.xq, align 8, !tbaa !71
  %i.adh = sext i16 %i.adg to i64
  %i.adi = and i64 %i.adh, 4294967295
  %i.adj = load ptr, ptr %.sink.i191, align 8, !tbaa !222
  %i.adk = getelementptr inbounds nuw [296 x i8], ptr %i.adj, i64 %i.adi
  invoke void @_ZN9ItemStackC2ERKS_(ptr noundef nonnull align 8 dereferenceable(296) %12, ptr noundef nonnull align 8 dereferenceable(296) %i.adk)
          to label %bb.gy unwind label %bb.ha

bb.gy:                                            ; preds = %bb.gx
  call void @_ZN11IMoveAction14swapDirectionsEv(ptr noundef nonnull align 8 dereferenceable(188) %0)
  %i.adl = invoke noundef i32 @_ZNK11IMoveAction8allowPutERK9ItemStackP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(296) %12, ptr noundef %2)
          to label %bb.gz unwind label %bb.hb     ; 2 uses

bb.gz:                                            ; preds = %bb.gy
  %i.adm = invoke noundef i32 @_ZNK11IMoveAction9allowTakeERK9ItemStackP18ServerActiveObject(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(296) %12, ptr noundef %2)
          to label %39 unwind label %bb.hc        ; 2 uses

39:                                               ; preds = %bb.gz
  %40 = icmp eq i32 %i.adl, -1
  %41 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %42 = load i16, ptr %41, align 8
  %43 = zext i16 %42 to i32                       ; 2 uses
  %.not119 = icmp sge i32 %i.adl, %43
  %or.cond178.not = select i1 %40, i1 true, i1 %.not119
  %44 = icmp eq i32 %i.adm, -1
  %45 = icmp sge i32 %i.adm, %43
  %46 = select i1 %44, i1 true, i1 %45
  %narrow = select i1 %or.cond178.not, i1 %46, i1 false
  %47 = zext i1 %narrow to i8
  call void @_ZN11IMoveAction14swapDirectionsEv(ptr noundef nonnull align 8 dereferenceable(188) %0)
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.thr_comm744

bb.ha:                                            ; preds = %bb.gx
  %i.adn = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.hb:                                            ; preds = %bb.gy
  %i.ado = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.hc:                                            ; preds = %bb.gz
  %i.adp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.pn116 = phi { ptr, i32 } [ %i.adp, %bb.hc ], [ %i.ado, %bb.hb ]
  call void @_ZN9ItemStackD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %12) #24
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.ha
  %.pn116.pn = phi { ptr, i32 } [ %.pn116, %bb.hd ], [ %i.adn, %bb.ha ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.og

.thr_comm744:                                     ; preds = %bb.gu, %bb.gv, %39, %bb.gw
  %.1 = phi i8 [ %47, %39 ], [ 0, %bb.gw ], [ 0, %bb.gv ], [ 0, %bb.gu ] ; 3 uses
  %48 = zext i1 %i.abe to i8
  %i.adq = icmp eq i8 %.1, %48
  br i1 %i.adq, label %.critedge813, label %.thread747

.thread747:                                       ; preds = %bb.gr, %.thr_comm744
  %.2.ph = phi i8 [ %.052, %bb.gr ], [ %.1, %.thr_comm744 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #24
  %i.adr = load i32, ptr %i.abi, align 8, !tbaa !78 ; 2 uses
  store i32 %i.adr, ptr %i.bo, align 4, !tbaa !240
  br label %bb.hf

.critedge813:                                     ; preds = %.thr_comm744, %bb.gr
  %.0687 = phi i32 [ %i.acc, %bb.gr ], [ %i.acz, %.thr_comm744 ] ; 2 uses
  %.1686 = phi i32 [ %.0, %bb.gr ], [ %i.acy, %.thr_comm744 ] ; 2 uses
  %.2 = phi i8 [ %i.acx, %bb.gr ], [ %.1, %.thr_comm744 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #24
  %i.ads = load i32, ptr %i.abi, align 8, !tbaa !78 ; 3 uses
  store i32 %i.ads, ptr %i.bo, align 4, !tbaa !240
  %.not122 = icmp eq i32 %.0687, -1
  br i1 %.not122, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %.thread747, %.critedge813
  %i.adt = phi i32 [ %i.adr, %.thread747 ], [ %i.ads, %.critedge813 ]
  %.2755 = phi i8 [ %.2.ph, %.thread747 ], [ %.2, %.critedge813 ]
  %.1686753 = phi i32 [ 0, %.thread747 ], [ %.1686, %.critedge813 ]
  %.0687752 = phi i32 [ 0, %.thread747 ], [ %.0687, %.critedge813 ]
  %.sroa.speculated634 = call i32 @llvm.smin.i32(i32 %i.adt, i32 %.0687752) ; 2 uses
  store i32 %.sroa.speculated634, ptr %i.abi, align 8, !tbaa !78
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %.critedge813
  %i.adu = phi i32 [ %.sroa.speculated634, %bb.hf ], [ %i.ads, %.critedge813 ] ; 2 uses
  %.not122758 = phi i1 [ false, %bb.hf ], [ true, %.critedge813 ] ; 2 uses
  %.2756 = phi i8 [ %.2755, %bb.hf ], [ %.2, %.critedge813 ]
  %.1686754 = phi i32 [ %.1686753, %bb.hf ], [ %.1686, %.critedge813 ] ; 2 uses
  %.not123 = icmp eq i32 %.1686754, -1            ; 3 uses
  br i1 %.not123, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.adu, i32 %.1686754) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.abi, align 8, !tbaa !78
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %.pr = phi i32 [ %.sroa.speculated, %bb.hh ], [ %i.adu, %bb.hg ] ; 2 uses
  %i.adv = load i16, ptr %i.us, align 8, !tbaa !70
  %i.adw = sext i16 %i.adv to i64
  %i.adx = and i64 %i.adw, 4294967295             ; 2 uses
  %i.ady = load ptr, ptr %.sink.i, align 8, !tbaa !222
  %i.adz = getelementptr inbounds nuw [296 x i8], ptr %i.ady, i64 %i.adx
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 32
  %i.aeb = load i16, ptr %i.aea, align 8, !tbaa !238
  %i.aec = zext i16 %i.aeb to i32                 ; 3 uses
  %i.aed = icmp ugt i32 %.pr, %i.aec
  br i1 %i.aed, label %bb.hj, label %thread-pre-split

bb.hj:                                            ; preds = %bb.hi
  store i32 %i.aec, ptr %i.abi, align 8, !tbaa !78
  br label %thread-pre-split

bb.hk:                                            ; preds = %bb.ht, %bb.hr, %.noexc456, %_ZTW10infostream.exit454, %bb.hs
  %i.aee = landingpad { ptr, i32 }
          cleanup
  br label %bb.of

thread-pre-split:                                 ; preds = %bb.hi, %bb.hj
  %i.aef = phi i32 [ %i.aec, %bb.hj ], [ %.pr, %bb.hi ]
  %i.aeg = icmp eq i32 %i.aef, 0
  br i1 %i.aeg, label %bb.hl, label %bb.iu

bb.hl:                                            ; preds = %thread-pre-split
  %i.aeh = load i32, ptr %i.bq, align 8, !tbaa !197
  %i.aei = icmp eq i32 %i.aeh, 2
  br i1 %i.aei, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.aej = getelementptr inbounds nuw i8, ptr %.sink.i, i64 72
  store i8 1, ptr %i.aej, align 8, !tbaa !241
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.aek = load i32, ptr %i.ca, align 8, !tbaa !198
  %i.ael = icmp eq i32 %i.aek, 2
  br i1 %i.ael, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.aem = getelementptr inbounds nuw i8, ptr %.sink.i191, i64 72
  store i8 1, ptr %i.aem, align 8, !tbaa !241
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.not.i453 = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i453, label %_ZTW10infostream.exit454, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit454

_ZTW10infostream.exit454:                         ; preds = %bb.hp, %bb.hq
  %i.aen = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !53, !nonnull !54, !align !55 ; 2 uses
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !33
  %i.aeq = load ptr, ptr %i.aep, align 8
  %i.aer = invoke noundef zeroext i1 %i.aeq(ptr noundef nonnull align 8 dereferenceable(8) %i.aeo)
          to label %.noexc456 unwind label %bb.hk, !inline_history !353

.noexc456:                                        ; preds = %_ZTW10infostream.exit454
  %.v.i455 = select i1 %i.aer, i64 976, i64 984
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aen, i64 %.v.i455 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr @.str.37, ptr %i.z, align 8, !tbaa !56
  %i.aet = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aes, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.hr unwind label %bb.hk     ; 0 uses

bb.hr:                                            ; preds = %.noexc456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr @.str.38, ptr %i.y, align 8, !tbaa !56
  %i.aeu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aes, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.hs unwind label %bb.hk

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.aev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRiEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aeu, ptr noundef nonnull align 4 dereferenceable(4) %i.bo)
          to label %bb.ht unwind label %bb.hk

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr @.str.27, ptr %i.x, align 8, !tbaa !56
  %i.aew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aev, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.hu unwind label %bb.hk

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNK17InventoryLocation4dumpB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(46) %i.bq)
          to label %bb.hv unwind label %bb.ip

bb.hv:                                            ; preds = %bb.hu
  %i.aex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aew, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.hw unwind label %bb.iq

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr @.str.12, ptr %i.w, align 8, !tbaa !56
  %i.aey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aex, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.hx unwind label %bb.iq

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @.str.28, ptr %i.v, align 8, !tbaa !56
  %i.aez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aey, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.hy unwind label %bb.iq

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.afa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aez, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
          to label %bb.hz unwind label %bb.iq

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @.str.12, ptr %i.u, align 8, !tbaa !56
  %i.afb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afa, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.ia unwind label %bb.iq

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @.str.29, ptr %i.t, align 8, !tbaa !56
  %i.afc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afb, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.ib unwind label %bb.iq

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.afd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRsEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afc, ptr noundef nonnull align 2 dereferenceable(2) %i.us)
          to label %bb.ic unwind label %bb.iq

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @.str.30, ptr %i.s, align 8, !tbaa !56
  %i.afe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afd, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.id unwind label %bb.iq

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNK17InventoryLocation4dumpB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(46) %i.ca)
          to label %bb.ie unwind label %bb.ir

bb.ie:                                            ; preds = %bb.id
  %i.aff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afe, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.if unwind label %bb.is

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr @.str.12, ptr %i.r, align 8, !tbaa !56
  %i.afg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aff, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.ig unwind label %bb.is

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr @.str.28, ptr %i.q, align 8, !tbaa !56
  %i.afh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.ih unwind label %bb.is

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.afi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.afh, ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
          to label %bb.ii unwind label %bb.is

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @.str.12, ptr %i.p, align 8, !tbaa !56
end_hunk_0
