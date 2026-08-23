Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/instantiate_cpp_exprgrammar?download=true
inline.NumInlined: 4215
inline.NumDeleted: 2338
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE6appendEPKcm:bb.a
  %i.as = add i64 %i.aq, 24                       ; 2 uses
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %.noexc.i.i.i.i13, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i9, !prof !884

.noexc.i.i.i.i13:                                 ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i9: ; preds = %bb.f
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #28 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aq ; 2 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.an, i64 %i.aq, i1 false)
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i10

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i10: ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i9, %bb.e
  %.sroa.0.0.i.i.i11 = phi ptr [ %i.au, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i9 ], [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %bb.e ] ; 2 uses
  store ptr %.sroa.0.0.i.i.i11, ptr %0, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i11, i64 16
  store i8 1, ptr %i.ay, align 1, !tbaa !19
  %.pre.i.i12 = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit14

_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit14: ; preds = %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i10
  %i.az = phi ptr [ %i.ag, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit ], [ %.pre.i.i12, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i10 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.y
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit14, %bb.a
  %i.bc = phi ptr [ %i.az, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit14 ], [ %.pre, %bb.a ]
  %.0 = phi ptr [ %i.bb, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit14 ], [ %1, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !19  ; 2 uses
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIPKcEEvT_SB_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = add i8 %i.be, -1
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !19
  %i.bh = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !36 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 3 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.bn = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bn, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = add i64 %i.bm, 24                       ; 2 uses
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %.noexc.i.i.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i, !prof !884

.noexc.i.i.i:                                     ; preds = %bb.i
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i: ; preds = %bb.i
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #28 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bm ; 2 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !36
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull align 8 %i.bj, i64 %i.bm, i1 false)
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i: ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i, %bb.h
  %.sroa.0.0.i.i = phi ptr [ %i.bq, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i ], [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %bb.h ] ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %0, align 8, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  store i8 1, ptr %i.bu, align 1, !tbaa !19
  br label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIPKcEEvT_SB_.exit

_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIPKcEEvT_SB_.exit: ; preds = %bb.g, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.0, i64 %2
  tail call void @_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE6appendIPKcEEvT_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.0, ptr noundef %i.bv)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE14IsAliasedRangeIPKcEEbT_SF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = add i64 %i.d, -1
  %i.g = icmp eq i64 %i.f, %i.e
  %.not = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %i.g
  br i1 %or.cond, label %.thread.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.c, align 8, !tbaa !19    ; 2 uses
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i8 %i.h, -1
  store i8 %i.j, ptr %i.c, align 8, !tbaa !19
  %i.k = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq ptr %i.l, %i.m
  br i1 %i.q, label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add i64 %i.p, 24                         ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.noexc.i.i.i.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i, !prof !884

.noexc.i.i.i.i:                                   ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #28 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.m, i64 %i.p, i1 false)
  br label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit

_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit: ; preds = %bb.c, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.t, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i ], [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %bb.c ] ; 2 uses
  store ptr %.sroa.0.0.i.i.i, ptr %0, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16
  store i8 1, ptr %i.x, align 1, !tbaa !19
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !33 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !19 ; 2 uses
  %i.y = icmp eq i8 %.pre, 1
  br i1 %i.y, label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit16, label %bb.e

bb.e:                                             ; preds = %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %i.aa = add i8 %.pre, -1
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !19
  %i.ab = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ah, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = add i64 %i.ag, 24                       ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %.noexc.i.i.i.i15, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i11, !prof !884

.noexc.i.i.i.i15:                                 ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i11: ; preds = %bb.f
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #28 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 2 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.ad, i64 %i.ag, i1 false)
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i12

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i12: ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i11, %bb.e
  %.sroa.0.0.i.i.i13 = phi ptr [ %i.ak, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i11 ], [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %bb.e ] ; 2 uses
  store ptr %.sroa.0.0.i.i.i13, ptr %0, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i13, i64 16
  store i8 1, ptr %i.ao, align 1, !tbaa !19
  %.pre.i.i14 = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit16

_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit16: ; preds = %bb.b, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i12
  %.pre.i.i.pn = phi ptr [ %.pre.i.i, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit ], [ %.pre.i.i, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i12 ], [ %i.a, %bb.b ]
  %i.ap = phi ptr [ %.pre.i.i, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit ], [ %.pre.i.i14, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i12 ], [ %i.a, %bb.b ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i.i.pn, i64 17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 17
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = xor i64 %i.av, -1
  %i.ax = icmp ule ptr %i.aq, %1
  %i.ay = getelementptr i8, ptr %i.ar, i64 %i.aw
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.au
  %i.ba = icmp ule ptr %1, %i.az
  %or.cond19 = select i1 %i.ax, i1 %i.ba, i1 false
  br label %.thread.a

.thread.a:                                        ; preds = %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit16, %bb.a
  %.1 = phi i1 [ %or.cond19, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit16 ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE7reserveEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = xor i64 %i.f, -1
  %i.h = add i64 %i.g, %i.e
  %i.i = icmp ugt i64 %i.h, %1
  br i1 %i.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE7reserveEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.d, align 8, !tbaa !19    ; 2 uses
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %_ZNK5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE10MakeUniqueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add i8 %i.j, -1
  store i8 %i.l, ptr %i.d, align 8, !tbaa !19
  %i.m = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq ptr %i.n, %i.o
  br i1 %i.s, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = add i64 %i.r, 24                         ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.noexc.i.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i, !prof !884

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i: ; preds = %bb.d
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i: ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.v, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i ], [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %bb.c ] ; 2 uses
  store ptr %.sroa.0.0.i, ptr %0, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  store i8 1, ptr %i.z, align 1, !tbaa !19
  %.pre = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre2 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !38 ; 2 uses
  %.pre3 = ptrtoint ptr %.pre2 to i64
  br label %_ZNK5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE10MakeUniqueEv.exit

_ZNK5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE10MakeUniqueEv.exit: ; preds = %bb.b, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i
  %.pre-phi = phi i64 [ %i.e, %bb.b ], [ %.pre3, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i ]
  %i.aa = phi ptr [ %i.c, %bb.b ], [ %.pre2, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i ]
  %i.ab = phi ptr [ %i.a, %bb.b ], [ %.pre, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i ] ; 3 uses
  %i.ac = add i64 %1, 1                           ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = sub i64 %.pre-phi, %i.ae                ; 2 uses
  %.not.i = icmp ugt i64 %i.ac, %i.af
  br i1 %.not.i, label %bb.e, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE7reserveEm.exit

bb.e:                                             ; preds = %_ZNK5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE10MakeUniqueEv.exit
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.ae                    ; 2 uses
  %i.aj = add i64 %1, 25                          ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i, !prof !884

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.f
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i: ; preds = %bb.e
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #28
          to label %bb.g unwind label %bb.i       ; 4 uses

bb.g:                                             ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai
  store ptr %i.an, ptr %i.al, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ac
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.ad, i64 %i.ai, i1 false)
  store ptr %i.al, ptr %0, align 8, !tbaa !885
  %.not.i.i = icmp eq ptr %i.aa, %i.ad
  br i1 %.not.i.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE7reserveEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = add i64 %i.af, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aq) #29
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE7reserveEm.exit

bb.i:                                             ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i, %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, i64 8), align 8, !tbaa !38 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.as, getelementptr inbounds nuw (i8, ptr @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, i64 16)
  br i1 %.not.i6.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEED2Ev.exit8.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = add i64 %i.at, add (i64 sub (i64 0, i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, i64 16) to i64)), i64 24)
  tail call void @_ZdlPvm(ptr noundef nonnull @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, i64 noundef %i.au) #29
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEED2Ev.exit8.i

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEED2Ev.exit8.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.ar

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE7reserveEm.exit: ; preds = %bb.h, %bb.g, %_ZNK5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE10MakeUniqueEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE6appendIPKcEEvT_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = add i64 %i.i, %i.c                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38   ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h                       ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.j
  br i1 %i.o, label %bb.b, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.p = add i64 %i.j, 24                         ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i, !prof !884

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i: ; preds = %bb.b
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #28
          to label %bb.d unwind label %bb.f       ; 4 uses

bb.d:                                             ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.i ; 2 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.f, i64 %i.i, i1 false)
  store ptr %i.r, ptr %0, align 8, !tbaa !885
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i64 %i.n, 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.w) #29
  %.pre = load ptr, ptr %0, align 8, !tbaa !33
  %.pre8 = load ptr, ptr %.pre, align 8, !tbaa !36
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE7reserveEm.exit

bb.f:                                             ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, i64 8), align 8, !tbaa !38 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.y, getelementptr inbounds nuw (i8, ptr @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, i64 16)
  br i1 %.not.i6.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEED2Ev.exit8.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = add i64 %i.z, add (i64 sub (i64 0, i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, i64 16) to i64)), i64 24)
  tail call void @_ZdlPvm(ptr noundef nonnull @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, i64 noundef %i.aa) #29
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEED2Ev.exit8.i

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEED2Ev.exit8.i: ; preds = %bb.g, %bb.f
end_hunk_0
