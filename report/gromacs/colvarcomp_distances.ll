inline.NumInlined: 2391
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN6colvar4rmsd4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.rv = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.ru, ptr %i.rv, align 8, !tbaa !170
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.ru
  store i8 0, ptr %i.rw, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 10)
          to label %bb.cb unwind label %bb.cd

bb.cb:                                            ; preds = %.noexc290
  %i.rx = load ptr, ptr %22, align 8, !tbaa !168  ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.rs
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %bb.cb
  %i.rz = load i64, ptr %i.rs, align 8, !tbaa !169
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sa) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.ck

bb.cc:                                            ; preds = %.noexc.i289
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

bb.cd:                                            ; preds = %.noexc290
  %i.sc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sd = load ptr, ptr %22, align 8, !tbaa !168  ; 2 uses
  %i.se = icmp eq ptr %i.sd, %i.rs
  br i1 %i.se, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %bb.cd
  %i.sf = load i64, ptr %i.rs, align 8, !tbaa !169
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sd, i64 noundef %i.sg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295, %bb.cc
  %.pn92 = phi { ptr, i32 } [ %i.sb, %bb.cc ], [ %i.sc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ], [ %i.sc, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.cl

.noexc.i299:                                      ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  %i.sh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.sh, ptr %23, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 195, ptr %i.b, align 8, !tbaa !167
  %i.si = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc300 unwind label %bb.cg ; 3 uses

.noexc300:                                        ; preds = %.noexc.i299
  store ptr %i.si, ptr %23, align 8, !tbaa !168
  %i.sj = load i64, ptr %i.b, align 8, !tbaa !167 ; 3 uses
  store i64 %i.sj, ptr %i.sh, align 8, !tbaa !169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(195) %i.si, ptr noundef nonnull align 1 dereferenceable(195) @.str.58, i64 195, i1 false)
  %i.sk = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.sj, ptr %i.sk, align 8, !tbaa !170
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sj
  store i8 0, ptr %i.sl, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 10)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %.noexc300
  %i.sm = load ptr, ptr %23, align 8, !tbaa !168  ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.sh
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302: ; preds = %bb.ce
  %i.so = load i64, ptr %i.sh, align 8, !tbaa !169
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  %i.sq = load ptr, ptr %i.q, align 8, !tbaa !499
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 320
  %i.ss = call noundef i32 @_ZN10colvardeps6enableEibbb(ptr noundef nonnull align 8 dereferenceable(120) %i.sr, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) ; 0 uses
  %i.st = load ptr, ptr %i.q, align 8, !tbaa !499
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 320
  %i.sv = call noundef i32 @_ZN10colvardeps6enableEibbb(ptr noundef nonnull align 8 dereferenceable(120) %i.su, i32 noundef 3, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) ; 0 uses
  %i.sw = load ptr, ptr %i.q, align 8, !tbaa !499
  call void @_ZN12colvarmodule10atom_group20set_ref_pos_from_aosERKSt6vectorINS_7rvectorESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(1712) %i.sw, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
  %i.sx = load ptr, ptr %i.q, align 8, !tbaa !499
  call void @_ZN12colvarmodule10atom_group14center_ref_posEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.sx)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.sy = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.sy, ptr %24, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 126, ptr %i.a, align 8, !tbaa !167
  %i.sz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc307 unwind label %bb.ci ; 3 uses

.noexc307:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304
  store ptr %i.sz, ptr %24, align 8, !tbaa !168
  %i.ta = load i64, ptr %i.a, align 8, !tbaa !167 ; 3 uses
  store i64 %i.ta, ptr %i.sy, align 8, !tbaa !169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(126) %i.sz, ptr noundef nonnull align 1 dereferenceable(126) @.str.59, i64 126, i1 false)
  %i.tb = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.ta, ptr %i.tb, align 8, !tbaa !170
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.ta
  store i8 0, ptr %i.tc, align 1, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 10)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %.noexc307
  %i.td = load ptr, ptr %24, align 8, !tbaa !168  ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.sy
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %bb.cf
  %i.tf = load i64, ptr %i.sy, align 8, !tbaa !169
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %i.th = load ptr, ptr %i.q, align 8, !tbaa !499
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 320
  %i.tj = call noundef i32 @_ZN10colvardeps7disableEi(ptr noundef nonnull align 8 dereferenceable(120) %i.ti, i32 noundef 6) ; 0 uses
  br label %bb.ck

bb.cg:                                            ; preds = %.noexc.i299
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.ch:                                            ; preds = %.noexc300
  %i.tl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tm = load ptr, ptr %23, align 8, !tbaa !168  ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.sh
  br i1 %i.tn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %bb.ch
  %i.to = load i64, ptr %i.sh, align 8, !tbaa !169
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312, %bb.cg
  %.pn88 = phi { ptr, i32 } [ %i.tk, %bb.cg ], [ %i.tl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312 ], [ %i.tl, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.cl

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

bb.cj:                                            ; preds = %.noexc307
  %i.tr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ts = load ptr, ptr %24, align 8, !tbaa !168  ; 2 uses
  %i.tt = icmp eq ptr %i.ts, %i.sy
  br i1 %i.tt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315: ; preds = %bb.cj
  %i.tu = load i64, ptr %i.sy, align 8, !tbaa !169
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.ts, i64 noundef %i.tv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315, %bb.ci
  %.pn90 = phi { ptr, i32 } [ %i.tq, %bb.ci ], [ %i.tr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315 ], [ %i.tr, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.cl

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %i.tw = load ptr, ptr %i.q, align 8, !tbaa !499
  call void @_ZN12colvarmodule10atom_group25setup_rotation_derivativeEv(ptr noundef nonnull align 8 dereferenceable(1712) %i.tw)
  %i.tx = call noundef i32 @_ZN6colvar4rmsd16init_permutationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1656) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.ty = or i32 %i.tx, %.554
  br label %bb.cm

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %.pn92.pn = phi { ptr, i32 } [ %.pn92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317 ], [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314 ], [ %.pn83.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %.pn76.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ %.pn70.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ]
  resume { ptr, i32 } %.pn92.pn

bb.cm:                                            ; preds = %bb.ck, %bb.c
  %.0 = phi i32 [ %i.u, %bb.c ], [ %i.ty, %bb.ck ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define void @_ZN6colvar4rmsd10calc_valueEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1656) initializes((600, 608)) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 4 uses
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !499  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1144
  %i.e = load i64, ptr %i.d, align 8, !tbaa !234  ; 11 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !235
  %.idx.i = shl i64 %i.e, 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !307
  br label %bb.e

._crit_edge:                                      ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1648
  store i64 0, ptr %i.j, align 8, !tbaa !523
  br label %._crit_edge44

._crit_edge.thread:                               ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !523
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.m = load i64, ptr %i.l, align 8, !tbaa !524  ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.preheader.lr.ph.split.us, label %._crit_edge44

.preheader.lr.ph.split.us:                        ; preds = %._crit_edge.thread
  %.idx.i2262 = shl i64 %i.e, 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1176
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !235
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !307
  %1 = shl i64 %i.e, 1
  br label %.preheader.us

.preheader.us:                                    ; preds = %bb.d, %.preheader.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %1, %.preheader.lr.ph.split.us ] ; 2 uses
  %.018.lcssa47.us = phi double [ %.018.lcssa46.us, %bb.d ], [ %i.bi, %.preheader.lr.ph.split.us ] ; 2 uses
  %.01943.us = phi i64 [ %i.an, %bb.d ], [ 1, %.preheader.lr.ph.split.us ] ; 2 uses
  %.02042.us = phi i64 [ %indvars.iv, %bb.d ], [ %i.e, %.preheader.lr.ph.split.us ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %.037.us = phi i64 [ 0, %.preheader.us ], [ %i.am, %bb.b ] ; 2 uses
  %.01836.us = phi double [ 0.000000e+00, %.preheader.us ], [ %i.al, %bb.b ]
  %.135.us = phi i64 [ %.02042.us, %.preheader.us ], [ %i.y, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.037.us ; 3 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !95
  %i.u = getelementptr [8 x i8], ptr %i.s, i64 %i.e
  %i.v = load double, ptr %i.u, align 8, !tbaa !95
  %i.w = getelementptr i8, ptr %i.s, i64 %.idx.i2262
  %i.x = load double, ptr %i.w, align 8, !tbaa !95
  %i.y = add i64 %.135.us, 1
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.135.us ; 3 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !97, !noalias !525
  %i.ab = fsub double %i.t, %i.aa                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !109, !noalias !525
  %i.ae = fsub double %i.v, %i.ad                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !102, !noalias !525
  %i.ah = fsub double %i.x, %i.ag                 ; 2 uses
  %i.ai = fmul double %i.ae, %i.ae
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %i.ai)
  %i.ak = tail call noundef double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.aj)
  %i.al = fadd double %.01836.us, %i.ak           ; 4 uses
  %i.am = add nuw i64 %.037.us, 1                 ; 2 uses
  %exitcond51.not = icmp eq i64 %i.am, %i.e
  br i1 %exitcond51.not, label %._crit_edge39.us, label %bb.b, !llvm.loop !528

bb.c:                                             ; preds = %._crit_edge39.us
  store double %i.al, ptr %i.a, align 8, !tbaa !98
  store i64 %.01943.us, ptr %i.k, align 8, !tbaa !523
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge39.us
  %.018.lcssa46.us = phi double [ %i.al, %bb.c ], [ %.018.lcssa47.us, %._crit_edge39.us ] ; 2 uses
  %i.an = add nuw i64 %.01943.us, 1               ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, %i.e
  %exitcond52.not = icmp eq i64 %i.an, %i.m
  br i1 %exitcond52.not, label %._crit_edge44, label %.preheader.us, !llvm.loop !529

._crit_edge39.us:                                 ; preds = %bb.b
  %i.ao = fcmp olt double %i.al, %.018.lcssa47.us
  br i1 %i.ao, label %bb.c, label %bb.d

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.02133 = phi i64 [ 0, %.lr.ph ], [ %i.bj, %bb.e ] ; 3 uses
  %i.ap = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bi, %bb.e ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.02133 ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !95
  %i.as = getelementptr [8 x i8], ptr %i.aq, i64 %i.e
  %i.at = load double, ptr %i.as, align 8, !tbaa !95
  %i.au = getelementptr i8, ptr %i.aq, i64 %.idx.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !95
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.02133 ; 3 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !97, !noalias !530
  %i.ay = fsub double %i.ar, %i.ax                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load double, ptr %i.az, align 8, !tbaa !109, !noalias !530
  %i.bb = fsub double %i.at, %i.ba                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !102, !noalias !530
  %i.be = fsub double %i.av, %i.bd                ; 2 uses
  %i.bf = fmul double %i.bb, %i.bb
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.bf)
  %i.bh = tail call noundef double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bg)
  %i.bi = fadd double %i.ap, %i.bh                ; 4 uses
  store double %i.bi, ptr %i.a, align 8, !tbaa !98
  %i.bj = add nuw i64 %.02133, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %i.e
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.e, !llvm.loop !533

._crit_edge44:                                    ; preds = %bb.d, %._crit_edge, %._crit_edge.thread
  %i.bk = phi double [ 0.000000e+00, %._crit_edge ], [ %i.bi, %._crit_edge.thread ], [ %.018.lcssa46.us, %bb.d ]
  %i.bl = uitofp i64 %i.e to double
  %i.bm = fdiv double %i.bk, %i.bl
  %i.bn = tail call noundef double @sqrt(double noundef %i.bm) #24
  store double %i.bn, ptr %i.a, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6colvar4rmsd14calc_gradientsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1656) %0) unnamed_addr #8 align 2 {
._crit_edge20:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = load double, ptr %i.a, align 8, !tbaa !98 ; 2 uses
  %i.c = fcmp ogt double %i.b, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !499  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !234  ; 16 uses
  %i.h = uitofp i64 %i.g to double
  %i.i = fmul double %i.b, %i.h
  %i.j = fdiv double 5.000000e-01, %i.i
  %i.k = fmul double %i.j, 2.000000e+00
  %i.l = select i1 %i.c, double %i.k, double 0.000000e+00 ; 3 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.n = load i64, ptr %i.m, align 8, !tbaa !523  ; 2 uses
  %i.o = mul i64 %i.n, %i.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 1176
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !235  ; 8 uses
  %.idx.i = shl i64 %i.g, 4                       ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !307  ; 2 uses
  %i.t = getelementptr [24 x i8], ptr %i.s, i64 %i.o ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 1272
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !235  ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.w = add i64 %i.g, -1
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.w, i64 24) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.x = getelementptr i8, ptr %i.t, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %i.t
  %i.z = or i1 %i.y, %mul.overflow
  br i1 %i.z, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aa = shl i64 %i.g, 3                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.aa ; 6 uses
  %scevgep24 = getelementptr i8, ptr %i.v, i64 %.idx.i ; 9 uses
  %i.ab = mul i64 %i.g, 24                        ; 2 uses
  %scevgep25 = getelementptr i8, ptr %i.v, i64 %i.ab ; 5 uses
  %scevgep26 = getelementptr i8, ptr %i.q, i64 %.idx.i ; 6 uses
  %scevgep27 = getelementptr i8, ptr %i.q, i64 %i.ab ; 3 uses
  %scevgep28 = getelementptr i8, ptr %i.q, i64 %i.aa ; 6 uses
  %i.ac = mul i64 %i.n, 24
  %i.ad = add i64 %i.ac, 24
  %i.ae = mul i64 %i.g, %i.ad
  %scevgep29 = getelementptr i8, ptr %i.s, i64 %i.ae ; 3 uses
  %i.af = insertelement <4 x ptr> poison, ptr %i.v, i64 0
  %i.ag = shufflevector <4 x ptr> %i.af, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep25, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep27, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep26, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %scevgep28, i64 3
  %i.al = icmp ult <4 x ptr> %i.ag, %i.ak
  %i.am = insertelement <4 x ptr> poison, ptr %scevgep24, i64 0
  %i.an = insertelement <4 x ptr> %i.am, ptr %scevgep26, i64 1
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep28, i64 2
  %i.ap = insertelement <4 x ptr> %i.ao, ptr %i.q, i64 3
  %i.aq = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.ar = shufflevector <4 x ptr> %i.aq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.as = icmp ult <4 x ptr> %i.ap, %i.ar
  %i.at = and <4 x i1> %i.al, %i.as
  %bound042 = icmp ult ptr %i.v, %scevgep29
  %bound143 = icmp ult ptr %i.t, %scevgep
  %found.conflict44 = and i1 %bound042, %bound143
  %bound047 = icmp ult ptr %scevgep, %scevgep27
  %bound148 = icmp ult ptr %scevgep26, %scevgep24
  %found.conflict49 = and i1 %bound047, %bound148
  %bound051 = icmp ult ptr %scevgep, %scevgep26
  %bound152 = icmp ult ptr %scevgep28, %scevgep24
  %found.conflict53 = and i1 %bound051, %bound152
  %bound055 = icmp ult ptr %scevgep, %scevgep28
  %bound156 = icmp ult ptr %i.q, %scevgep24
  %found.conflict57 = and i1 %bound055, %bound156
  %bound059 = icmp ult ptr %scevgep, %scevgep29
  %bound160 = icmp ult ptr %i.t, %scevgep24
  %found.conflict61 = and i1 %bound059, %bound160
  %bound063 = icmp ult ptr %scevgep24, %scevgep27
  %bound164 = icmp ult ptr %scevgep26, %scevgep25
  %found.conflict65 = and i1 %bound063, %bound164
  %bound067 = icmp ult ptr %scevgep24, %scevgep26
  %bound168 = icmp ult ptr %scevgep28, %scevgep25
  %found.conflict69 = and i1 %bound067, %bound168
  %bound071 = icmp ult ptr %scevgep24, %scevgep28
  %bound172 = icmp ult ptr %i.q, %scevgep25
  %found.conflict73 = and i1 %bound071, %bound172
  %bound075 = icmp ult ptr %scevgep24, %scevgep29
  %bound176 = icmp ult ptr %i.t, %scevgep25
  %found.conflict77 = and i1 %bound075, %bound176
  %i.au = bitcast <4 x i1> %i.at to i4
  %i.av = icmp ne i4 %i.au, 0
  %op.rdx = or i1 %i.av, %found.conflict44
  %op.rdx81 = or i1 %found.conflict49, %found.conflict53
  %op.rdx82 = or i1 %found.conflict57, %found.conflict61
  %op.rdx83 = or i1 %found.conflict65, %found.conflict69
  %op.rdx84 = or i1 %found.conflict73, %found.conflict77
  %op.rdx85 = or i1 %op.rdx, %op.rdx81
  %op.rdx86 = or i1 %op.rdx82, %op.rdx83
  %op.rdx87 = or i1 %op.rdx85, %op.rdx86
  %op.rdx88 = or i1 %op.rdx87, %op.rdx84
  br i1 %op.rdx88, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -2                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 3 uses
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !95, !alias.scope !534
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.g
  %wide.load79 = load <2 x double>, ptr %i.ax, align 8, !tbaa !95, !alias.scope !537
  %i.ay = getelementptr i8, ptr %i.aw, i64 %.idx.i
  %wide.load80 = load <2 x double>, ptr %i.ay, align 8, !tbaa !95, !alias.scope !539
  %i.az = getelementptr [24 x i8], ptr %i.t, i64 %index ; 3 uses
  %i.ba = getelementptr [24 x i8], ptr %i.t, i64 %index ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %i.bc = load double, ptr %i.az, align 8, !tbaa !97, !alias.scope !541, !noalias !543
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !97, !alias.scope !541, !noalias !543
  %i.be = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1
  %i.bg = fsub <2 x double> %wide.load, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bi = getelementptr i8, ptr %i.ba, i64 32
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !109, !alias.scope !541, !noalias !543
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !109, !alias.scope !541, !noalias !543
  %i.bl = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bk, i64 1
  %i.bn = fsub <2 x double> %wide.load79, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bp = getelementptr i8, ptr %i.ba, i64 40
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !102, !alias.scope !541, !noalias !543
  %i.br = load double, ptr %i.bp, align 8, !tbaa !102, !alias.scope !541, !noalias !543
  %i.bs = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.br, i64 1
  %i.bu = fsub <2 x double> %wide.load80, %i.bt
  %i.bv = fmul <2 x double> %broadcast.splat, %i.bg
  %i.bw = fmul <2 x double> %broadcast.splat, %i.bn
  %i.bx = fmul <2 x double> %broadcast.splat, %i.bu
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index ; 3 uses
  store <2 x double> %i.bv, ptr %i.by, align 8, !tbaa !95, !alias.scope !546, !noalias !548
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %i.g
  store <2 x double> %i.bw, ptr %i.bz, align 8, !tbaa !95, !alias.scope !551, !noalias !552
  %i.ca = getelementptr i8, ptr %i.by, i64 %.idx.i
  store <2 x double> %i.bx, ptr %i.ca, align 8, !tbaa !95, !alias.scope !553, !noalias !554
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !555

middle.block:                                     ; preds = %vector.body
end_hunk_0
