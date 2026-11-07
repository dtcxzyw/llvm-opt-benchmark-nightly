Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Simplify?download=true
inline.NumInlined: 2307
inline.NumDeleted: 943
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4Luau14TypeSimplifier31intersectWithSimpleDiscriminantEPKNS_4TypeES3_RNS_12DenseHashSetIS3_NS_16DenseHashPointerESt8equal_toIS3_EEE:bb.a

bb.cl:                                            ; preds = %bb.ck
  %i.of = load ptr, ptr %0, align 8, !tbaa !123
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 152
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !41
  br label %_ZN4Luau16IntersectionTypeD2Ev.exit

bb.cm:                                            ; preds = %bb.ck
  %i.oi = invoke noundef i64 @_ZNK4Luau7TypeIds4sizeEv(ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.cn unwind label %bb.cu

bb.cn:                                            ; preds = %bb.cm
  %i.oj = icmp eq i64 %i.oi, 1
  br i1 %i.oj, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.ok = invoke ptr @_ZN4Luau7TypeIds5beginEv(ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.cp unwind label %bb.cu

bb.cp:                                            ; preds = %bb.co
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !41
  br label %_ZN4Luau16IntersectionTypeD2Ev.exit

bb.cq:                                            ; preds = %bb.cn
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !143
  invoke void @_ZN4Luau7TypeIds4takeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.cr unwind label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.oo = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_16IntersectionTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %i.on, ptr noundef nonnull align 8 %13)
          to label %bb.cs unwind label %bb.cv     ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %i.op = load ptr, ptr %13, align 8, !tbaa !40   ; 3 uses
  %.not.i.i.i.i268 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i.i268, label %_ZN4Luau16IntersectionTypeD2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.oq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !157
  %i.os = ptrtoint ptr %i.or to i64
  %i.ot = ptrtoint ptr %i.op to i64
  %i.ou = sub i64 %i.os, %i.ot
  call void @_ZdlPvm(ptr noundef nonnull %i.op, i64 noundef %i.ou) #23
  br label %_ZN4Luau16IntersectionTypeD2Ev.exit

bb.cu:                                            ; preds = %bb.co, %bb.cj, %bb.cm, %bb.cq
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau16IntersectionTypeD2Ev.exit272

bb.cv:                                            ; preds = %bb.cr
  %i.ow = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ox = load ptr, ptr %13, align 8, !tbaa !40   ; 3 uses
  %.not.i.i.i.i270 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i.i.i270, label %_ZN4Luau16IntersectionTypeD2Ev.exit272, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.oy = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !157
  %i.pa = ptrtoint ptr %i.oz to i64
  %i.pb = ptrtoint ptr %i.ox to i64
  %i.pc = sub i64 %i.pa, %i.pb
  call void @_ZdlPvm(ptr noundef nonnull %i.ox, i64 noundef %i.pc) #23
  br label %_ZN4Luau16IntersectionTypeD2Ev.exit272

_ZN4Luau16IntersectionTypeD2Ev.exit:              ; preds = %bb.ct, %bb.cs, %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit267, %bb.cp, %bb.cl
  %.sroa.0367.10 = phi ptr [ %i.oh, %bb.cl ], [ %i.ol, %bb.cp ], [ %.sroa.0367.9, %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit267 ], [ %i.oo, %bb.cs ], [ %i.oo, %bb.ct ]
  %.sroa.23.10 = phi i8 [ 1, %bb.cl ], [ 1, %bb.cp ], [ %.sroa.23.9, %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev.exit267 ], [ 1, %bb.cs ], [ 1, %bb.ct ]
  %i.pd = load ptr, ptr %i.ia, align 8, !tbaa !40 ; 3 uses
  %.not.i.i.i.i273 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i.i273, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i274, label %bb.cx

bb.cx:                                            ; preds = %_ZN4Luau16IntersectionTypeD2Ev.exit
  %i.pe = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !157
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = ptrtoint ptr %i.pd to i64
  %i.pi = sub i64 %i.pg, %i.ph
  call void @_ZdlPvm(ptr noundef nonnull %i.pd, i64 noundef %i.pi) #23
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i274

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i274: ; preds = %bb.cx, %_ZN4Luau16IntersectionTypeD2Ev.exit
  %i.pj = load ptr, ptr %8, align 8, !tbaa !155   ; 2 uses
  %.not.i.i.i275 = icmp eq ptr %i.pj, null
  br i1 %.not.i.i.i275, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i274
  call void @_ZdlPv(ptr noundef nonnull %i.pj) #22
  br label %bb.cz

_ZN4Luau16IntersectionTypeD2Ev.exit272:           ; preds = %bb.cu, %bb.cv, %bb.cw, %bb.ci
  %.pn154.pn.pn.pn = phi { ptr, i32 } [ %.pn154.pn.pn, %bb.ci ], [ %i.ow, %bb.cv ], [ %i.ow, %bb.cw ], [ %i.ov, %bb.cu ]
  call void @_ZN4Luau7TypeIdsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.eu

bb.cz:                                            ; preds = %bb.cy, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.g
  %.not.i.i278 = icmp eq ptr %i.w, null
  br i1 %.not.i.i278, label %.thread439, label %bb.da

bb.da:                                            ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit
  %i.pk = load i32, ptr %i.w, align 8, !tbaa !17
  %i.pl = icmp eq i32 %i.pk, 9
  br i1 %i.pl, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit279, label %.thread439

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit279: ; preds = %bb.da
  %i.pm = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !65 ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 32 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !77 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.pq, null
  br i1 %.not10.i.i.i, label %.critedge170, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit279
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 40
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !81 ; 4 uses
  %i.pu = load ptr, ptr %i.po, align 8            ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.pq, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.pr, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.pv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !81 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.pt, i64 %i.pw) ; 2 uses
  %i.px = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.px, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.db
  %i.py = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !82
  %i.qa = tail call i32 @memcmp(ptr noundef %i.pz, ptr noundef %i.pu, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.qa, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.db
  %i.qb = sub i64 %i.pw, %i.pt
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.qb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.qa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.qc = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.qc, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 10 uses
  %.1.in.v.i.i.i = select i1 %i.qc, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i280 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i280, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.db, !llvm.loop !0

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.qd = icmp eq ptr %.19.i.i.i, %i.pr
  br i1 %i.qd, label %.critedge170, label %bb.dc

bb.dc:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.qe = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !81 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.qf, i64 %i.pt) ; 2 uses
  %i.qg = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.qg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.dc
  %i.qh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !82
  %i.qj = tail call i32 @memcmp(ptr noundef %i.pu, ptr noundef %i.qi, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.qj, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.dc
  %i.qk = sub i64 %i.pt, %i.qf
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.qk, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.qj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ql = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ql, label %.critedge170, label %bb.dd

bb.dd:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.qm = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.qn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pn, i64 64
  call void @_ZNK4Luau14TypeSimplifier17intersectPropertyERKNS_8PropertyES3_RNS_12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS7_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.112") align 8 %14, ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.qn, ptr noundef nonnull align 8 dereferenceable(176) %i.qo, ptr noundef nonnull align 8 dereferenceable(40) %3)
  %i.qp = getelementptr inbounds nuw i8, ptr %14, i64 176 ; 3 uses
  %i.qq = load i8, ptr %i.qp, align 8, !tbaa !207, !range !54, !noundef !55
  %i.qr = trunc nuw i8 %i.qq to i1
  br i1 %i.qr, label %bb.de, label %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit

bb.de:                                            ; preds = %bb.dd
  %i.qs = getelementptr inbounds nuw i8, ptr %14, i64 144 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %14, i64 152 ; 2 uses
  %i.qu = load i8, ptr %i.qt, align 8, !tbaa !85, !range !54, !noundef !55
  %i.qv = trunc nuw i8 %i.qu to i1
  br i1 %i.qv, label %bb.df, label %.critedge

bb.df:                                            ; preds = %bb.de
  %.sroa.023.0.copyload = load ptr, ptr %i.qs, align 8
  %i.qw = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %.sroa.023.0.copyload)
          to label %bb.dg unwind label %bb.dl     ; 2 uses

bb.dg:                                            ; preds = %bb.df
  %.not.i.i.i.not.i284 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i.not.i284, label %.critedge, label %_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit

_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit: ; preds = %bb.dg
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !17
  %i.qy = icmp eq i32 %i.qx, 17
  br i1 %i.qy, label %bb.dh, label %.critedge

bb.dh:                                            ; preds = %_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit
  %i.qz = load ptr, ptr %0, align 8, !tbaa !123
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 160
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !41
  br label %bb.ds

.critedge:                                        ; preds = %bb.dg, %bb.de, %_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit
  %i.rc = getelementptr inbounds nuw i8, ptr %14, i64 160 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %14, i64 168 ; 2 uses
  %i.re = load i8, ptr %i.rd, align 8, !tbaa !85, !range !54, !noundef !55
  %i.rf = trunc nuw i8 %i.re to i1
  br i1 %i.rf, label %bb.di, label %.critedge14

bb.di:                                            ; preds = %.critedge
  %.sroa.021.0.copyload = load ptr, ptr %i.rc, align 8
  %i.rg = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %.sroa.021.0.copyload)
          to label %bb.dj unwind label %bb.dl     ; 2 uses

bb.dj:                                            ; preds = %bb.di
  %.not.i.i.i.not.i293 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i.not.i293, label %.critedge14, label %_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit294

_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit294: ; preds = %bb.dj
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !17
  %i.ri = icmp eq i32 %i.rh, 17
  br i1 %i.ri, label %bb.dk, label %.critedge14

bb.dk:                                            ; preds = %_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit294
  %i.rj = load ptr, ptr %0, align 8, !tbaa !123
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 160
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !41
  br label %bb.ds

bb.dl:                                            ; preds = %bb.df, %bb.di
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.critedge14:                                      ; preds = %bb.dj, %.critedge, %_ZN4Luau2isIJNS_9NeverTypeEESt8optionalIPKNS_4TypeEEEEbOT0_.exit294
  %i.rn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 208
  %i.ro = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 216
  %i.rp = load i8, ptr %i.ro, align 8, !tbaa !85, !range !54, !noundef !55 ; 2 uses
  %i.rq = trunc nuw i8 %i.rp to i1
  %i.rr = load i8, ptr %i.qt, align 8, !tbaa !85, !range !54, !noundef !55
  %i.rs = icmp eq i8 %i.rp, %i.rr                 ; 2 uses
  %brmerge.not.i = and i1 %i.rs, %i.rq
  %i.rt = load ptr, ptr %i.rn, align 8
  %i.ru = load ptr, ptr %i.qs, align 8
  %i.rv = icmp eq ptr %i.rt, %i.ru
  %i.rw = select i1 %brmerge.not.i, i1 %i.rv, i1 %i.rs
  br i1 %i.rw, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.critedge14
  %i.rx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 224
  %i.ry = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 232
  %i.rz = load i8, ptr %i.ry, align 8, !tbaa !85, !range !54, !noundef !55 ; 2 uses
  %i.sa = trunc nuw i8 %i.rz to i1
  %i.sb = load i8, ptr %i.rd, align 8, !tbaa !85, !range !54, !noundef !55
  %i.sc = icmp eq i8 %i.rz, %i.sb                 ; 2 uses
  %brmerge.not.i295 = and i1 %i.sc, %i.sa
  %i.sd = load ptr, ptr %i.rx, align 8
  %i.se = load ptr, ptr %i.rc, align 8
  %i.sf = icmp eq ptr %i.sd, %i.se
  %i.sg = select i1 %brmerge.not.i295, i1 %i.sf, i1 %i.sc
  br i1 %i.sg, label %bb.ds, label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.critedge14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.sh = load i64, ptr %0, align 8, !tbaa !163
  store i64 %i.sh, ptr %15, align 8, !tbaa !163
  %i.si = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.sj = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.sj, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %15, i64 56
  store ptr %i.sk, ptr %i.si, align 8, !tbaa !214
  %i.sl = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 1, ptr %i.sl, align 8, !tbaa !215
  %i.sm = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.sn = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.sn, align 8, !tbaa !269
  %i.so = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.sp = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.sq = getelementptr inbounds nuw i8, ptr %15, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.so, i8 0, i64 56, i1 false)
  store ptr %i.sq, ptr %i.sp, align 8, !tbaa !217
  %i.sr = getelementptr inbounds nuw i8, ptr %15, i64 72
  store i64 1, ptr %i.sr, align 8, !tbaa !218
  %i.ss = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.st = getelementptr inbounds nuw i8, ptr %15, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ss, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.st, align 8, !tbaa !269
  %i.su = getelementptr inbounds nuw i8, ptr %15, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.su, i8 0, i64 16, i1 false)
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !143
  %i.sx = invoke noundef ptr @_ZN4Luau12shallowCloneEPKNS_4TypeERNS_9TypeArenaERNS_10CloneStateEb(ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(184) %i.sw, ptr noundef nonnull align 8 dereferenceable(120) %15, i1 noundef zeroext true)
          to label %bb.do unwind label %bb.dr     ; 2 uses

bb.do:                                            ; preds = %bb.dn
  %i.sy = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.sx)
          to label %.noexc297 unwind label %bb.dr ; 3 uses

.noexc297:                                        ; preds = %bb.do
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sy) ]
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.ta = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.sz, ptr noundef nonnull align 8 dereferenceable(32) %i.qm)
          to label %bb.dp unwind label %bb.dr

bb.dp:                                            ; preds = %.noexc297
  %i.tb = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZN4Luau8PropertyaSERKS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.ta, ptr noundef nonnull align 8 dereferenceable(176) %14)
          to label %bb.dq unwind label %bb.dr     ; 0 uses

bb.dq:                                            ; preds = %bb.dp
  %i.tc = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !190
  %i.te = getelementptr inbounds nuw i8, ptr %i.sy, i64 104
  store ptr %i.td, ptr %i.te, align 8, !tbaa !190
  call void @_ZN4Luau10CloneStateD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.ds

bb.dr:                                            ; preds = %bb.do, %bb.dn, %bb.dp, %.noexc297
  %i.tf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau10CloneStateD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.du

bb.ds:                                            ; preds = %bb.dm, %bb.dq, %bb.dk, %bb.dh
  %.sroa.0367.12.ph = phi ptr [ %i.v, %bb.dm ], [ %i.sx, %bb.dq ], [ %i.rl, %bb.dk ], [ %i.rb, %bb.dh ] ; 2 uses
  %i.tg = load i8, ptr %i.qp, align 8, !tbaa !207
  %i.th = trunc nuw i8 %i.tg to i1
  br i1 %i.th, label %bb.dt, label %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit

bb.dt:                                            ; preds = %bb.ds
  call void @_ZNSt22_Optional_payload_baseIN4Luau8PropertyEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(184) %14) #22
  br label %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit: ; preds = %bb.dd, %bb.ds, %bb.dt
  %.sroa.23.12437 = phi i8 [ 1, %bb.dt ], [ 1, %bb.ds ], [ 0, %bb.dd ]
  %.sroa.0367.12436 = phi ptr [ %.sroa.0367.12.ph, %bb.dt ], [ %.sroa.0367.12.ph, %bb.ds ], [ undef, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

bb.du:                                            ; preds = %bb.dr, %bb.dl
  %.pn145.pn = phi { ptr, i32 } [ %i.tf, %bb.dr ], [ %i.rm, %bb.dl ]
  %i.ti = load i8, ptr %i.qp, align 8, !tbaa !207, !range !54, !noundef !55
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.dv, label %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit298

bb.dv:                                            ; preds = %bb.du
  call void @_ZNSt22_Optional_payload_baseIN4Luau8PropertyEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(184) %14) #22
  br label %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit298

_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit298: ; preds = %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.eu

.critedge170:                                     ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit279, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.tk = load i64, ptr %0, align 8, !tbaa !163
  store i64 %i.tk, ptr %16, align 8, !tbaa !163
  %i.tl = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 0, ptr %i.tm, align 8
  %i.tn = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  store ptr %i.tn, ptr %i.tl, align 8, !tbaa !214
  %i.to = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store i64 1, ptr %i.to, align 8, !tbaa !215
  %i.tp = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %16, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tp, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.tq, align 8, !tbaa !269
  %i.tr = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ts = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.tr, i8 0, i64 56, i1 false)
  store ptr %i.tt, ptr %i.ts, align 8, !tbaa !217
  %i.tu = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 3 uses
  store i64 1, ptr %i.tu, align 8, !tbaa !218
  %i.tv = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %16, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.tw, align 8, !tbaa !269
  %i.tx = getelementptr inbounds nuw i8, ptr %16, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tx, i8 0, i64 16, i1 false)
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !143
  %i.ua = invoke noundef ptr @_ZN4Luau12shallowCloneEPKNS_4TypeERNS_9TypeArenaERNS_10CloneStateEb(ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(184) %i.tz, ptr noundef nonnull align 8 dereferenceable(120) %16, i1 noundef zeroext true)
          to label %bb.dw unwind label %bb.ea     ; 2 uses

bb.dw:                                            ; preds = %.critedge170
  %i.ub = invoke noundef ptr @_ZN4Luau9asMutableEPKNS_4TypeE(ptr noundef %i.ua)
          to label %.noexc300 unwind label %bb.ea ; 3 uses

.noexc300:                                        ; preds = %bb.dw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ub) ]
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.pn, i64 64
  %i.ue = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRSB_RKS7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.uc, ptr noundef nonnull align 8 dereferenceable(32) %i.po, ptr noundef nonnull align 8 dereferenceable(176) %i.ud)
          to label %bb.dx unwind label %bb.ea     ; 0 uses

bb.dx:                                            ; preds = %.noexc300
  %i.uf = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !190
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ub, i64 104
  store ptr %i.ug, ptr %i.uh, align 8, !tbaa !190
  %i.ui = load ptr, ptr %i.tv, align 8, !tbaa !219 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ui, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.dx, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.uj, %.lr.ph.i.i.i.i.i ], [ %i.ui, %bb.dx ] ; 2 uses
  %i.uj = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !220 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #23
  %.not.i.i.i.i.i302 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i.i.i302, label %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.dx
  %i.uk = load ptr, ptr %i.ts, align 8, !tbaa !217
  %i.ul = load i64, ptr %i.tu, align 8, !tbaa !218
  %i.um = shl i64 %i.ul, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.uk, i8 0, i64 %i.um, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tv, i8 0, i64 16, i1 false)
  %i.un = load ptr, ptr %i.ts, align 8, !tbaa !217 ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.tt
  br i1 %i.uo, label %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.up = load i64, ptr %i.tu, align 8, !tbaa !218
  %i.uq = shl i64 %i.up, 3
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.uq) #23
  br label %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i

_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i: ; preds = %bb.dy, %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.ur = load ptr, ptr %i.tp, align 8, !tbaa !221 ; 2 uses
  %.not5.i.i.i.i1.i = icmp eq ptr %i.ur, null
  br i1 %.not5.i.i.i.i1.i, label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i2.i

.lr.ph.i.i.i.i2.i:                                ; preds = %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i, %.lr.ph.i.i.i.i2.i
  %.06.i.i.i.i3.i = phi ptr [ %i.us, %.lr.ph.i.i.i.i2.i ], [ %i.ur, %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i ] ; 2 uses
  %i.us = load ptr, ptr %.06.i.i.i.i3.i, align 8, !tbaa !220 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3.i, i64 noundef 24) #23
  %.not.i.i.i.i4.i = icmp eq ptr %i.us, null
  br i1 %.not.i.i.i.i4.i, label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i2.i, !llvm.loop !5

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i2.i, %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit.i
  %i.ut = load ptr, ptr %i.tl, align 8, !tbaa !214
  %i.uu = load i64, ptr %i.to, align 8, !tbaa !215
  %i.uv = shl i64 %i.uu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ut, i8 0, i64 %i.uv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tp, i8 0, i64 16, i1 false)
  %i.uw = load ptr, ptr %i.tl, align 8, !tbaa !214 ; 2 uses
  %i.ux = icmp eq ptr %i.uw, %i.tn
  br i1 %i.ux, label %_ZN4Luau10CloneStateD2Ev.exit, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.uy = load i64, ptr %i.to, align 8, !tbaa !215
  %i.uz = shl i64 %i.uy, 3
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.uz) #23
  br label %_ZN4Luau10CloneStateD2Ev.exit

_ZN4Luau10CloneStateD2Ev.exit:                    ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

bb.ea:                                            ; preds = %bb.dw, %.critedge170, %.noexc300
  %i.va = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau10CloneStateD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.eu

.thread439:                                       ; preds = %bb.g, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit, %bb.da, %.loopexit464
  %i.vb = tail call noundef zeroext i1 @_ZN4Luau25isApproximatelyTruthyTypeEPKNS_4TypeE(ptr noundef %i.w)
  br i1 %i.vb, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %.thread439
  %i.vc = tail call { ptr, i8 } @_ZNK4Luau14TypeSimplifier24basicIntersectWithTruthyEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %i.v) ; 2 uses
  %i.vd = extractvalue { ptr, i8 } %i.vc, 0
  %i.ve = extractvalue { ptr, i8 } %i.vc, 1
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

bb.ec:                                            ; preds = %.thread439
  %i.vf = tail call noundef zeroext i1 @_ZN4Luau25isApproximatelyTruthyTypeEPKNS_4TypeE(ptr noundef %i.v)
  br i1 %i.vf, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.vg = tail call { ptr, i8 } @_ZNK4Luau14TypeSimplifier24basicIntersectWithTruthyEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %i.w) ; 2 uses
  %i.vh = extractvalue { ptr, i8 } %i.vg, 0
  %i.vi = extractvalue { ptr, i8 } %i.vg, 1
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

bb.ee:                                            ; preds = %bb.ec
  %i.vj = tail call noundef zeroext i1 @_ZN4Luau24isApproximatelyFalsyTypeEPKNS_4TypeE(ptr noundef %i.w)
  br i1 %i.vj, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.vk = tail call { ptr, i8 } @_ZNK4Luau14TypeSimplifier23basicIntersectWithFalsyEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %i.v) ; 2 uses
  %i.vl = extractvalue { ptr, i8 } %i.vk, 0
  %i.vm = extractvalue { ptr, i8 } %i.vk, 1
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

bb.eg:                                            ; preds = %bb.ee
  %i.vn = tail call noundef zeroext i1 @_ZN4Luau24isApproximatelyFalsyTypeEPKNS_4TypeE(ptr noundef %i.v)
  br i1 %i.vn, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.vo = tail call { ptr, i8 } @_ZNK4Luau14TypeSimplifier23basicIntersectWithFalsyEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %i.w) ; 2 uses
  %i.vp = extractvalue { ptr, i8 } %i.vo, 0
  %i.vq = extractvalue { ptr, i8 } %i.vo, 1
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

bb.ei:                                            ; preds = %bb.eg
  br i1 %.not.i.i173, label %_ZN4Luau2isIJNS_9Unifiable5ErrorIPKNS_4TypeEEEERS5_EEbOT0_.exit.thread, label %_ZN4Luau2isIJNS_7AnyTypeEERPKNS_4TypeEEEbOT0_.exit

_ZN4Luau2isIJNS_7AnyTypeEERPKNS_4TypeEEEbOT0_.exit: ; preds = %bb.ei
  %i.vr = load i32, ptr %i.v, align 8, !tbaa !17
  switch i32 %i.vr, label %_ZN4Luau2isIJNS_9Unifiable5ErrorIPKNS_4TypeEEEERS5_EEbOT0_.exit.thread [
    i32 12, label %bb.ej
    i32 1, label %bb.eq
  ]

bb.ej:                                            ; preds = %_ZN4Luau2isIJNS_7AnyTypeEERPKNS_4TypeEEEbOT0_.exit
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.vu = load ptr, ptr %0, align 8, !tbaa !123
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 168
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !184
  store ptr %i.vw, ptr %i.a, align 8, !tbaa !41
  %i.vx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.vx, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZNSt6vectorIPKN4Luau4TypeESaIS3_EEC2ESt16initializer_listIS3_ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr nonnull %i.a, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ek unwind label %bb.en

bb.ek:                                            ; preds = %bb.ej
  %i.vy = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_9UnionTypeEEEPKNS_4TypeET_(ptr noundef nonnull align 8 dereferenceable(184) %i.vt, ptr noundef nonnull align 8 %17)
          to label %bb.el unwind label %bb.eo

bb.el:                                            ; preds = %bb.ek
  %i.vz = load ptr, ptr %17, align 8, !tbaa !40   ; 3 uses
  %.not.i.i.i.i307 = icmp eq ptr %i.vz, null
  br i1 %.not.i.i.i.i307, label %_ZN4Luau9UnionTypeD2Ev.exit309, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.wa = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !157
  %i.wc = ptrtoint ptr %i.wb to i64
  %i.wd = ptrtoint ptr %i.vz to i64
  %i.we = sub i64 %i.wc, %i.wd
  call void @_ZdlPvm(ptr noundef nonnull %i.vz, i64 noundef %i.we) #23
  br label %_ZN4Luau9UnionTypeD2Ev.exit309

_ZN4Luau9UnionTypeD2Ev.exit309:                   ; preds = %bb.el, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

bb.en:                                            ; preds = %bb.ej
  %i.wf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau9UnionTypeD2Ev.exit312

bb.eo:                                            ; preds = %bb.ek
  %i.wg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wh = load ptr, ptr %17, align 8, !tbaa !40   ; 3 uses
  %.not.i.i.i.i310 = icmp eq ptr %i.wh, null
  br i1 %.not.i.i.i.i310, label %_ZN4Luau9UnionTypeD2Ev.exit312, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.wi = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !157
  %i.wk = ptrtoint ptr %i.wj to i64
  %i.wl = ptrtoint ptr %i.wh to i64
  %i.wm = sub i64 %i.wk, %i.wl
  call void @_ZdlPvm(ptr noundef nonnull %i.wh, i64 noundef %i.wm) #23
  br label %_ZN4Luau9UnionTypeD2Ev.exit312

_ZN4Luau9UnionTypeD2Ev.exit312:                   ; preds = %bb.ep, %bb.eo, %bb.en
  %.pn152 = phi { ptr, i32 } [ %i.wf, %bb.en ], [ %i.wg, %bb.eo ], [ %i.wg, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.eu

bb.eq:                                            ; preds = %_ZN4Luau2isIJNS_7AnyTypeEERPKNS_4TypeEEEbOT0_.exit
  %i.wn = load ptr, ptr %0, align 8, !tbaa !123
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 168
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !41
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

_ZN4Luau2isIJNS_9Unifiable5ErrorIPKNS_4TypeEEEERS5_EEbOT0_.exit.thread: ; preds = %_ZN4Luau2isIJNS_7AnyTypeEERPKNS_4TypeEEEbOT0_.exit, %bb.ei
  %.not.i.i315 = icmp eq ptr %i.w, null
  br i1 %.not.i.i315, label %bb.et, label %bb.er

bb.er:                                            ; preds = %_ZN4Luau2isIJNS_9Unifiable5ErrorIPKNS_4TypeEEEERS5_EEbOT0_.exit.thread
  %i.wq = load i32, ptr %i.w, align 8, !tbaa !17
  %i.wr = icmp eq i32 %i.wq, 18
  br i1 %i.wr, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.ws = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !21
  %i.wu = tail call { ptr, i8 } @_ZNK4Luau14TypeSimplifier11subtractOneEPKNS_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %i.v, ptr noundef %i.wt) ; 2 uses
  %i.wv = extractvalue { ptr, i8 } %i.wu, 0
  %i.ww = extractvalue { ptr, i8 } %i.wu, 1
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

bb.et:                                            ; preds = %bb.er, %_ZN4Luau2isIJNS_9Unifiable5ErrorIPKNS_4TypeEEEERS5_EEbOT0_.exit.thread
  %i.wx = tail call { ptr, i8 } @_ZNK4Luau14TypeSimplifier12intersectOneEPKNS_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %i.v, ptr noundef %i.w) ; 2 uses
  %i.wy = extractvalue { ptr, i8 } %i.wx, 0
  %i.wz = extractvalue { ptr, i8 } %i.wx, 1
  br label %_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

_ZNK4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit: ; preds = %bb.d, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.es, %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit, %_ZN4Luau10CloneStateD2Ev.exit, %bb.cz, %bb.aw, %bb.et, %bb.eq, %_ZN4Luau9UnionTypeD2Ev.exit309, %bb.eh, %bb.ef, %bb.ed, %bb.eb
  %.sroa.0367.17 = phi ptr [ %.sroa.0367.1, %bb.aw ], [ %.sroa.0367.12436, %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit ], [ %i.vd, %bb.eb ], [ %i.vh, %bb.ed ], [ %i.vl, %bb.ef ], [ %i.vp, %bb.eh ], [ %i.vy, %_ZN4Luau9UnionTypeD2Ev.exit309 ], [ %i.wp, %bb.eq ], [ %i.wy, %bb.et ], [ %i.wv, %bb.es ], [ undef, %bb.g ], [ %.sroa.0367.10, %bb.cz ], [ %i.ua, %_ZN4Luau10CloneStateD2Ev.exit ], [ undef, %bb.g ], [ undef, %bb.g ], [ undef, %bb.g ], [ undef, %bb.g ], [ undef, %bb.d ]
  %.sroa.23.17 = phi i8 [ %.sroa.23.1, %bb.aw ], [ %.sroa.23.12437, %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit ], [ %i.ve, %bb.eb ], [ %i.vi, %bb.ed ], [ %i.vm, %bb.ef ], [ %i.vq, %bb.eh ], [ 1, %_ZN4Luau9UnionTypeD2Ev.exit309 ], [ 1, %bb.eq ], [ %i.wz, %bb.et ], [ %i.ww, %bb.es ], [ 0, %bb.g ], [ %.sroa.23.10, %bb.cz ], [ 1, %_ZN4Luau10CloneStateD2Ev.exit ], [ 0, %bb.g ], [ 0, %bb.g ], [ 0, %bb.g ], [ 0, %bb.g ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0367.17, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.23.17, 1
  ret { ptr, i8 } %.fca.1.insert

bb.eu:                                            ; preds = %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit298, %bb.ea, %_ZN4Luau9UnionTypeD2Ev.exit312, %_ZN4Luau16IntersectionTypeD2Ev.exit272, %_ZN4Luau9UnionTypeD2Ev.exit190
  %.pn159.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn159.pn.pn.pn, %_ZN4Luau9UnionTypeD2Ev.exit190 ], [ %.pn154.pn.pn.pn, %_ZN4Luau16IntersectionTypeD2Ev.exit272 ], [ %.pn152, %_ZN4Luau9UnionTypeD2Ev.exit312 ], [ %i.va, %bb.ea ], [ %.pn145.pn, %_ZNSt14_Optional_baseIN4Luau8PropertyELb0ELb0EED2Ev.exit298 ]
  resume { ptr, i32 } %.pn159.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK4Luau7TypeIds5emptyEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN4Luau7TypeIds4takeEv(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare noundef ptr @_ZN4Luau12shallowCloneEPKNS_4TypeERNS_9TypeArenaERNS_10CloneStateEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(120), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau10CloneStateD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !219  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !220 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #23
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !217
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !218
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !217  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !218
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit

_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKN4Luau11TypePackVarESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !221  ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit, %.lr.ph.i.i.i.i2
  %.06.i.i.i.i3 = phi ptr [ %i.q, %.lr.ph.i.i.i.i2 ], [ %i.p, %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit ] ; 2 uses
  %i.q = load ptr, ptr %.06.i.i.i.i3, align 8, !tbaa !220 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3, i64 noundef 24) #23
  %.not.i.i.i.i4 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !5

_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i2, %_ZNSt13unordered_mapIPKN4Luau11TypePackVarES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !214
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !215
  %i.u = shl i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.u, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !214  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.y = load i64, ptr %i.s, align 8, !tbaa !215
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #23
  br label %_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit

_ZNSt13unordered_mapIPKN4Luau4TypeES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKN4Luau4TypeESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRSB_RKS7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(176) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !81   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !81   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !3

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !81   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i21 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRS7_RKS9_EEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i21, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(176) %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.019.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i8 } @_ZNK4Luau14TypeSimplifier31intersectWithSimpleDiscriminantEPKNS_4TypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Luau::DenseHashSet.66", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.a = invoke { ptr, i8 } @_ZNK4Luau14TypeSimplifier31intersectWithSimpleDiscriminantEPKNS_4TypeES3_RNS_12DenseHashSetIS3_NS_16DenseHashPointerESt8equal_toIS3_EEE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !183    ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.b) #22
  br label %_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashSetIPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret { ptr, i8 } %i.a
end_hunk_0
