Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb10VersionSet20ReduceNumberOfLevelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_7OptionsERKNS_11FileOptionsEi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  %i.df = icmp eq i8 %i.cy, 0
  br i1 %i.df, label %bb.aj, label %bb.z

bb.z:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i8> %i.cx, ptr %0, align 8, !tbaa !157
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.da, ptr %i.dh, align 4, !tbaa !562
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.dc, ptr %i.di, align 1, !tbaa !563
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !536
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.aa:                                            ; preds = %bb.c
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ab:                                            ; preds = %bb.d
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb16MutableDBOptionsD2Ev.exit202

bb.ac:                                            ; preds = %bb.e
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN7rocksdb15MemoryAllocatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb15WriteControllerD2Ev.exit199

bb.ae:                                            ; preds = %bb.g
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #41
  br label %bb.cg

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %22, align 8, !tbaa !156  ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.bo
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.af
  %i.dr = load i64, ptr %i.bo, align 8, !tbaa !157
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  %i.dt = load ptr, ptr %21, align 8, !tbaa !156  ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.bm
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.dv = load i64, ptr %i.bm, align 8, !tbaa !157
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  call void @_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br label %bb.cf

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ah:                                            ; preds = %bb.v
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %25) #41
  br label %.thread

.thread:                                          ; preds = %bb.ag, %bb.ah
  %.pn106 = phi { ptr, i32 } [ %i.dy, %bb.ah ], [ %i.dx, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #41
  call void @_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit196

bb.ai:                                            ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE9push_backERKS1_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  br label %bb.ce

bb.aj:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1079
  %i.ec = invoke noundef ptr @_ZNK7rocksdb15ColumnFamilySet10GetDefaultEv(ptr noundef nonnull align 8 dereferenceable(593) %i.eb)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !916 ; 8 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 80 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 16, !tbaa !807
  %.fr310 = freeze i32 %i.eh                      ; 3 uses
  %.not = icmp sgt i32 %.fr310, %4
  br i1 %.not, label %.lr.ph, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ei, align 8, !tbaa !601, !alias.scope !2697
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !2697
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

.lr.ph:                                           ; preds = %bb.ak
  %i.ej = add nsw i32 %4, -1                      ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 2776
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !241
  %i.em = zext nneg i32 %i.ej to i64
  %i.en = call i32 @llvm.umax.i32(i32 %.fr310, i32 %4)
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %bb.aq
  %indvars.iv = phi i64 [ %i.em, %.lr.ph ], [ %indvars.iv.next, %bb.aq ] ; 3 uses
  %.066236 = phi i32 [ 0, %.lr.ph ], [ %.2.ph, %bb.aq ] ; 2 uses
  %.067235 = phi i32 [ -1, %.lr.ph ], [ %.269.ph, %bb.aq ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %indvars.iv ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !345
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !244
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = lshr exact i64 %i.eu, 3
  %i.ew = trunc i64 %i.ev to i32                  ; 3 uses
  %.not108 = icmp eq i32 %i.ew, 0
  br i1 %.not108, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ex = icmp slt i32 %.067235, 0
  %i.ey = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.ex, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.ez = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 255, ptr noundef nonnull @.str.96, i32 noundef %.067235, i32 noundef %.066236, i32 noundef %i.ey, i32 noundef %i.ew) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #41
  store ptr %i.a, ptr %27, align 8, !tbaa !143
  %i.fa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #46
  %i.fb = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #41
  store ptr @.str, ptr %28, align 8, !tbaa !143
  %i.fc = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 0, ptr %i.fc, align 8, !tbaa !144
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, i8 noundef zeroext 0)
          to label %.thread218 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.ce

.thread218:                                       ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.aq:                                            ; preds = %bb.an, %bb.am
  %.269.ph = phi i32 [ %i.ey, %bb.an ], [ %.067235, %bb.am ] ; 3 uses
  %.2.ph = phi i32 [ %i.ew, %bb.an ], [ %.066236, %bb.am ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.en, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.am, !llvm.loop !2663

._crit_edge:                                      ; preds = %bb.aq
  %i.fe = zext i32 %.fr310 to i64                 ; 2 uses
  %i.ff = mul nuw nsw i64 %i.fe, 24               ; 2 uses
  %i.fg = add nuw nsw i64 %i.ff, 8
  %i.fh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fg) #44
          to label %.lr.ph239 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.lr.ph239:                                        ; preds = %._crit_edge
  store i64 %i.fe, ptr %i.fh, align 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 4 uses
  %i.fj = add nsw i64 %i.ff, -24                  ; 2 uses
  %i.fk = urem i64 %i.fj, 24
  %i.fl = sub nuw nsw i64 %i.fj, %i.fk
  %i.fm = add nuw nsw i64 %i.fl, 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fi, i8 0, i64 %i.fm, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ee, i64 2776
  %wide.trip.count = zext nneg i32 %i.ej to i64
  br label %bb.ar

._crit_edge240:                                   ; preds = %bb.as
  %i.fo = icmp sgt i32 %.269.ph, 0
  br i1 %i.fo, label %bb.at, label %.loopexit222

bb.ar:                                            ; preds = %.lr.ph239, %bb.as
  %indvars.iv255 = phi i64 [ 0, %.lr.ph239 ], [ %indvars.iv.next256, %bb.as ] ; 3 uses
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !241
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.fp, i64 %indvars.iv255
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %indvars.iv255
  %i.fs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count
  br i1 %exitcond259.not, label %._crit_edge240, label %bb.ar, !llvm.loop !2664

bb.at:                                            ; preds = %._crit_edge240
  %i.ft = zext nneg i32 %i.ej to i64
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %i.ft ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ee, i64 2776
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !241
  %i.fx = zext nneg i32 %.269.ph to i64
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %i.fx
  %i.fz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %i.fy)
          to label %.preheader221 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader221:                                    ; preds = %bb.at
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !345 ; 2 uses
  %i.gc = load ptr, ptr %i.fu, align 8, !tbaa !244 ; 2 uses
  %.not243 = icmp eq ptr %i.gb, %i.gc
  br i1 %.not243, label %.loopexit222, label %.lr.ph242

.lr.ph242:                                        ; preds = %.preheader221
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ee, i64 2784 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ee, i64 2792
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph242, %.loopexit220
  %i.gf = phi ptr [ %i.gc, %.lr.ph242 ], [ %i.hg, %.loopexit220 ] ; 3 uses
  %i.gg = phi ptr [ %i.gb, %.lr.ph242 ], [ %i.hh, %.loopexit220 ] ; 2 uses
  %.0241 = phi i64 [ 0, %.lr.ph242 ], [ %i.hi, %.loopexit220 ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.0241
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !347
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !508
  %i.gl = and i64 %i.gk, 4611686018427387903      ; 5 uses
  %i.gm = load i64, ptr %i.ge, align 8, !tbaa !275 ; 2 uses
  %i.gn = urem i64 %i.gl, %i.gm                   ; 3 uses
  %i.go = load ptr, ptr %i.gd, align 16, !tbaa !274
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gn
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !633 ; 2 uses
  %.not.i.i.i.i166 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i166, label %.loopexit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !273 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !533
  %i.gu = icmp eq i64 %i.gl, %i.gt
  br i1 %i.gu, label %.loopexit220, label %.lr.ph.i.i.i.i

bb.aw:                                            ; preds = %bb.ax
  %i.gv = icmp eq i64 %i.gl, %i.gy
  br i1 %i.gv, label %.loopexit220, label %.lr.ph.i.i.i.i, !llvm.loop !40

.lr.ph.i.i.i.i:                                   ; preds = %bb.av, %bb.aw
  %.020.i.i.i.i = phi ptr [ %i.gw, %bb.aw ], [ %i.gr, %bb.av ]
  %i.gw = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !273 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !533 ; 2 uses
  %i.gz = urem i64 %i.gy, %i.gm
  %.not19.i.i.i.i = icmp eq i64 %i.gz, %i.gn
  br i1 %.not19.i.i.i.i, label %bb.aw, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !40

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.ax
  br label %.loopexit.i.i, !llvm.loop !40

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.au
  %i.ha = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #44
          to label %.noexc167 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc167:                                        ; preds = %.loopexit.i.i
  store ptr null, ptr %i.ha, align 8, !tbaa !273
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 %i.gl, ptr %i.hb, align 8, !tbaa !1075
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store i64 4294967295, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store i64 0, ptr %i.hd, align 8, !tbaa !2698
  %i.he = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.gd, i64 noundef %i.gn, i64 noundef %i.gl, ptr noundef nonnull %i.ha, i64 noundef 1)
          to label %.noexc167..loopexit220_crit_edge unwind label %_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

.noexc167..loopexit220_crit_edge:                 ; preds = %.noexc167
  %.pre262.a = load ptr, ptr %i.ga, align 8, !tbaa !345
  %.pre263 = load ptr, ptr %i.fu, align 8, !tbaa !244
  br label %.loopexit220

_ZNSt10_HashtableImSt4pairIKmN7rocksdb18VersionStorageInfo12FileLocationEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc167
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef 32) #42
  br label %bb.ce

.loopexit220:                                     ; preds = %bb.aw, %.noexc167..loopexit220_crit_edge, %bb.av
  %i.hg = phi ptr [ %.pre263, %.noexc167..loopexit220_crit_edge ], [ %i.gf, %bb.av ], [ %i.gf, %bb.aw ] ; 2 uses
  %i.hh = phi ptr [ %.pre262.a, %.noexc167..loopexit220_crit_edge ], [ %i.gg, %bb.av ], [ %i.gg, %bb.aw ] ; 2 uses
  %.pn.i.i = phi ptr [ %i.he, %.noexc167..loopexit220_crit_edge ], [ %i.gr, %bb.av ], [ %i.gw, %bb.aw ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i32 %i.ej, ptr %.1.i.i, align 8, !tbaa !269
  %.sroa.5207.0..1.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  store i64 %.0241, ptr %.sroa.5207.0..1.i.i.sroa_idx, align 8, !tbaa !533
  %i.hi = add nuw i64 %.0241, 1                   ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = ashr exact i64 %i.hl, 3
  %i.hn = icmp ult i64 %i.hi, %i.hm
  br i1 %i.hn, label %bb.au, label %.loopexit222, !llvm.loop !2665

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i.i, %bb.ar
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.at, %bb.aj, %._crit_edge, %bb.ba, %bb.x, %bb.y
  %.sroa.16260.5 = phi ptr [ %i.de, %bb.ba ], [ %i.de, %bb.at ], [ %i.de, %._crit_edge ], [ %i.de, %bb.aj ], [ null, %bb.y ], [ null, %bb.x ]
  %lpad.loopexit.split-lp245 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit222:                                     ; preds = %.loopexit220, %.preheader221, %._crit_edge240
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ee, i64 2776 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !241 ; 4 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %.loopexit222
  %i.hr = getelementptr inbounds i8, ptr %i.hp, i64 -8 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8            ; 2 uses
  %.idx = mul i64 %i.hs, 24                       ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ay
  %i.hu = getelementptr inbounds i8, ptr %i.hp, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit
  %i.hv = phi ptr [ %i.hw, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit ], [ %i.hu, %.preheader.preheader ] ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 -24 ; 3 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !244 ; 3 uses
  %.not.i.i.i170 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i170, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %.preheader
  %i.hy = getelementptr inbounds i8, ptr %i.hv, i64 -8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !245
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = sub i64 %i.ia, %i.ib
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ic) #42
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit: ; preds = %.preheader, %bb.az
  %i.id = icmp eq ptr %i.hw, %i.hp
  br i1 %i.id, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, %bb.ay
  %i.ie = add i64 %.idx, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.hr, i64 noundef %i.ie) #42
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit, %.loopexit222
  store ptr %i.fi, ptr %i.ho, align 8, !tbaa !241
  store i32 %4, ptr %i.eg, align 16, !tbaa !807
  invoke void @_ZN7rocksdb18VersionStorageInfo20ResizeCompactCursorsEi(ptr noundef nonnull align 16 dereferenceable(4288) %i.ef, i32 noundef %4)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  store i32 0, ptr %29, align 8, !tbaa !1173
  %i.if = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  store ptr %i.ig, ptr %i.if, align 8, !tbaa !518
  %i.ih = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 0, ptr %i.ih, align 8, !tbaa !519
  store i8 0, ptr %i.ig, align 8, !tbaa !157
  %i.ii = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.ij = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 2 uses
  store ptr %i.ij, ptr %i.ii, align 8, !tbaa !518
  %i.ik = getelementptr inbounds nuw i8, ptr %29, i64 48
  store i64 0, ptr %i.ik, align 8, !tbaa !519
end_hunk_0
