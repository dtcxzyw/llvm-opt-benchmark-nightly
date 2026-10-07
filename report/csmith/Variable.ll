Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Variable?download=true
inline.NumInlined: 1390
inline.NumDeleted: 503
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK8Variable14get_collectiveEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i56: ; preds = %bb.s
  %reass.sub = sub i64 %i.bk, %.022106
  %i.cf = add i64 %reass.sub, -2
  store ptr %i.ax, ptr %2, align 8, !tbaa !31, !alias.scope !217
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cd ; 2 uses
  %i.ch = sub nuw i64 %i.ba, %i.cd
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 %i.ch) ; 8 uses
  %i.ci = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ci, label %bb.t, label %._crit_edge.i.i.i57

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i56
  %i.cj = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.cj, label %.noexc10.i.i51.invoke, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = add nuw i64 %spec.select.i.i.i, 1       ; 2 uses
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %.noexc11.i.i50.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i58, !prof !93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i58: ; preds = %bb.u
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #24
          to label %.noexc64 unwind label %.loopexit ; 2 uses

.noexc64:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i58
  store ptr %i.cm, ptr %2, align 8, !tbaa !41, !alias.scope !217
  store i64 %spec.select.i.i.i, ptr %i.ax, align 8, !tbaa !35, !alias.scope !217
  br label %._crit_edge.i.i.i57

._crit_edge.i.i.i57:                              ; preds = %.noexc64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i56
  %i.cn = phi ptr [ %i.cm, %.noexc64 ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i56 ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit65
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i57
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !35
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit65

bb.w:                                             ; preds = %._crit_edge.i.i.i57
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr align 1 %i.cg, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit65: ; preds = %._crit_edge.i.i.i57, %bb.v, %bb.w
  store i64 %spec.select.i.i.i, ptr %i.ay, align 8, !tbaa !34, !alias.scope !217
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %spec.select.i.i.i
  store i8 0, ptr %i.cp, align 1, !tbaa !35
  br label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit55
  %.1.i.i3476 = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit65 ], [ -1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit55 ] ; 2 uses
  %i.cq = invoke noundef i32 @_ZN11StringUtils7str2intERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.023105, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !91
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !48 ; 2 uses
  %i.cw = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ax
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.cy = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not27 = icmp eq i64 %.1.i.i3476, -1
  br i1 %.not27, label %._crit_edge, label %bb.l, !llvm.loop !214

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i58
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

.loopexit.split-lp:                               ; preds = %.noexc11.i.i50.invoke, %.noexc10.i.i51.invoke, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.z:                                             ; preds = %bb.x
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.ax
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.z
  %i.dd = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.z, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  %.pn = phi { ptr, i32 } [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.da, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.df = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.y
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.dh = load i64, ptr %i.y, align 8, !tbaa !35
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn

._crit_edge:                                      ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %.023.lcssa = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ %i.q, %bb.k ], [ %i.q, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i32 ]
  %i.dj = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.y
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %._crit_edge
  %i.dl = load i64, ptr %i.y, align 8, !tbaa !35
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK8Variable14is_array_fieldEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %.critedge
  %.1 = phi ptr [ %0, %.critedge ], [ %.023.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %0, %_ZNK8Variable14is_array_fieldEv.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK8Variable13get_named_varEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #3 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !218

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %.0, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(200) %.0)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK8Variable9get_arrayERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.a
  %.tr.i = phi ptr [ %0, %bb.a ], [ %i.b, %tailrecurse.i ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr.i, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK8Variable14is_array_fieldEv.exit, label %tailrecurse.i

_ZNK8Variable14is_array_fieldEv.exit:             ; preds = %tailrecurse.i
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.d = load i8, ptr %i.c, align 8, !tbaa !97, !range !98, !noundef !99
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.preheader, label %bb.p

.preheader:                                       ; preds = %_ZNK8Variable14is_array_fieldEv.exit, %bb.b
  %.pn = phi ptr [ %.09, %bb.b ], [ %0, %_ZNK8Variable14is_array_fieldEv.exit ]
  %.09.in = getelementptr inbounds nuw i8, ptr %.pn, i64 88
  %.09 = load ptr, ptr %.09.in, align 8, !tbaa !89 ; 4 uses
  %.not = icmp eq ptr %.09, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.09, i64 96
  %i.g = load i8, ptr %i.f, align 8, !tbaa !97, !range !98, !noundef !99
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.critedge, label %.preheader, !llvm.loop !219

.critedge:                                        ; preds = %.preheader, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34   ; 8 uses
  %.not16 = icmp eq i64 %i.k, 0
  br i1 %.not16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !41
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %3, %bb.c
  %.1.i.i.in = phi i64 [ %i.k, %bb.c ], [ %.1.i.i, %3 ]
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.1.i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !35
  %memchr.char0cmp.not.a = icmp eq i8 %i.n, 93
  br i1 %memchr.char0cmp.not.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, label %3

3:                                                ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not17.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %3, %.critedge
  %4 = phi i64 [ 0, %.critedge ], [ 0, %3 ], [ %.1.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 3 uses
  %.not.i.i10 = icmp ult i64 %4, %i.k
  br i1 %.not.i.i10, label %.lr.ph.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit

.lr.ph.i.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.p = sub nuw i64 %i.k, %4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %4
  %i.s = ptrtoint ptr %i.q to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12:   ; preds = %bb.e, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %i.aa, %bb.e ]
  %.02740.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.y, %bb.e ]
  %i.t = tail call ptr @memchr(ptr noundef %.02740.i.i, i32 noundef 46, i64 noundef %.041.i.i) #25 ; 4 uses
  %.not34.i.i = icmp eq ptr %i.t, null
  br i1 %.not34.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12
  %lhsc = load i8, ptr %i.t, align 1
  %i.u = icmp eq i8 %lhsc, 46
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = sub i64 %i.v, %i.w
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.s, %i.z                      ; 2 uses
  %.not33.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not33.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12, !llvm.loop !6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, %bb.d
  %.1.i.i11 = phi i64 [ %i.x, %bb.d ], [ -1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit ], [ -1, %bb.e ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i12 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.ab = icmp ugt i64 %.1.i.i11, %i.k
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i64 noundef %.1.i.i11, i64 noundef %i.k) #26, !noalias !222
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !31, !alias.scope !222
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !41, !noalias !222
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.1.i.i11 ; 2 uses
  %i.af = sub nuw i64 %i.k, %.1.i.i11             ; 8 uses
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ah = icmp slt i64 %i.af, 0
  br i1 %i.ah, label %.noexc10.i.i, label %bb.h

.noexc10.i.i:                                     ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #26
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw i64 %i.af, 1                    ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !93

.noexc11.i.i:                                     ; preds = %bb.h
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.h
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #24 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !41, !alias.scope !222
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !35, !alias.scope !222
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.al = phi ptr [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.af, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !35
  store i8 %i.am, ptr %i.al, align 1, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %i.ae, i64 %i.af, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.af, ptr %i.an, align 8, !tbaa !34, !alias.scope !222
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af
  store i8 0, ptr %i.ao, align 1, !tbaa !35
  %i.ap = load ptr, ptr %1, align 8, !tbaa !41    ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  %i.as = load ptr, ptr %2, align 8, !tbaa !41    ; 5 uses
  %i.at = icmp eq ptr %i.as, %i.ac                ; 2 uses
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.at, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.at, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.au = load i64, ptr %i.an, align 8, !tbaa !34 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  switch i64 %i.au, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !35
  store i8 %i.aw, ptr %i.ap, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.as, i64 %i.au, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.ax = load i64, ptr %i.an, align 8, !tbaa !34 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !34
  %i.az = load ptr, ptr %1, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !35
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.as, ptr %1, align 8, !tbaa !41
  %i.bc = load <2 x i64>, ptr %i.an, align 8, !tbaa !35
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !35
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !35
  store ptr %i.as, ptr %1, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load <2 x i64>, ptr %i.an, align 8, !tbaa !35
  store <2 x i64> %i.bf, ptr %i.be, align 8, !tbaa !35
  %.not.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i13, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ap, ptr %2, align 8, !tbaa !41
  store i64 %i.bd, ptr %i.ac, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ac, ptr %2, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bg = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ap, %bb.n ], [ %i.ac, %bb.o ]
  store i64 0, ptr %i.an, align 8, !tbaa !34
  store i8 0, ptr %i.bg, align 1, !tbaa !35
  %i.bh = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ac
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bj = load i64, ptr %i.ac, align 8, !tbaa !35
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.p

bb.p:                                             ; preds = %_ZNK8Variable14is_array_fieldEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi ptr [ %.09, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %_ZNK8Variable14is_array_fieldEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8Variable9OutputDefERSoi(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @_Z10output_tabRSoi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2)
  %i.a = tail call noundef zeroext i1 @_ZN9CGOptions20force_globals_staticEv()
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.20, i64 noundef 7) ; 0 uses
end_hunk_0
