Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/generic_printer?download=true
inline.NumInlined: 215
inline.NumDeleted: 93
begin_hunk_0_@_ZN4absl12lts_2026052624internal_generic_printer14PrintPreciseFPERSoe:bb.a
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7, !noalias !58
  %i.m = load ptr, ptr %5, align 8, !tbaa !14, !alias.scope !54 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %4, align 8, !tbaa !14, !noalias !54 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  br i1 %i.r, label %bb.d, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.c
  br i1 %i.r, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15, !noalias !54 ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  switch i64 %i.t, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.p, align 1, !tbaa !16
  store i8 %i.v, ptr %i.m, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.w = load i64, ptr %i.s, align 8, !tbaa !15, !noalias !54 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !15, !alias.scope !54
  %i.y = load ptr, ptr %5, align 8, !tbaa !14, !alias.scope !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !16
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !14, !noalias !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.p, ptr %5, align 8, !tbaa !14, !alias.scope !54
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !16, !noalias !54
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !16, !alias.scope !54
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !16, !alias.scope !54
  store ptr %i.p, ptr %5, align 8, !tbaa !14, !alias.scope !54
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !16, !noalias !54
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !16, !alias.scope !54
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.m, ptr %4, align 8, !tbaa !14, !noalias !54
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !16, !noalias !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.q, ptr %4, align 8, !tbaa !14, !noalias !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.ah = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.m, %bb.g ], [ %i.q, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !15, !noalias !54
  store i8 0, ptr %i.ah, align 1, !tbaa !16
  %i.aj = load ptr, ptr %4, align 8, !tbaa !14, !noalias !54 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !16, !noalias !54
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7, !noalias !54
  br label %"_ZN4absl12lts_2026052624internal_generic_printer10TryShortenIeZNS1_14PrintPreciseFPERSoeE3$_0EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_.exit"

bb.i:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7, !noalias !54
  %i.ap = load ptr, ptr %5, align 8, !tbaa !14, !alias.scope !54 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %bb.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !16, !alias.scope !54
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #8
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %common.resume.op = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i ], [ %i.ao, %bb.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN4absl12lts_2026052624internal_generic_printer10TryShortenIeZNS1_14PrintPreciseFPERSoeE3$_0EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_.exit": ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.au = load ptr, ptr %5, align 8, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !15
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.au, i64 noundef %i.aw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %"_ZN4absl12lts_2026052624internal_generic_printer10TryShortenIeZNS1_14PrintPreciseFPERSoeE3$_0EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_.exit"
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.az = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !16
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret ptr %i.ax

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %"_ZN4absl12lts_2026052624internal_generic_printer10TryShortenIeZNS1_14PrintPreciseFPERSoeE3$_0EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_.exit"
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.j
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052624internal_generic_printer9PrintCharERSoc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = add i8 %1, -32
  %i.g = icmp ult i8 %i.f, 95
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %1, 39                        ; 2 uses
  %i.i = select i1 %i.h, ptr @.str.5, ptr @.str.6
  %i.j = select i1 %i.h, i64 2, i64 1
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.i, i64 noundef %i.j) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %1, ptr %i.e, align 1, !tbaa !16
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.r, %bb.c ], [ %0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pre.i = zext nneg i8 %1 to i32                ; 2 uses
  %.pre21.i = lshr i32 %.pre.i, 4
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 3) ; 0 uses
  %i.u = sext i8 %1 to i32                        ; 3 uses
  %i.v = lshr i32 %i.u, 4
  %i.w = and i32 %i.v, 15                         ; 3 uses
  %i.x = icmp samesign ult i32 %i.w, 10
  %2 = select i1 %i.x, i32 48, i32 87
  %3 = add nuw nsw i32 %2, %i.w
  %4 = trunc nuw nsw i32 %3 to i8                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %4, ptr %i.d, align 1, !tbaa !16
  %i.y = load ptr, ptr %0, align 8, !tbaa !20
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !29
  %.not.i9.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i

bb.g:                                             ; preds = %bb.e
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %4) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i: ; preds = %bb.g, %bb.f
  %.0.i10.i = phi ptr [ %i.ae, %bb.f ], [ %0, %bb.g ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ag = and i32 %i.u, 15                        ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, 10
  %5 = select i1 %i.ah, i32 48, i32 87
  %6 = add nuw nsw i32 %5, %i.ag
  %7 = trunc nuw nsw i32 %6 to i8                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %7, ptr %i.c, align 1, !tbaa !16
  %i.ai = load ptr, ptr %.0.i10.i, align 8, !tbaa !20
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %.0.i10.i, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !29
  %.not.i12.i = icmp eq i64 %i.an, 0
  br i1 %.not.i12.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i10.i, ptr noundef nonnull %i.c, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i10.i, i8 noundef signext %7) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i: ; preds = %bb.i, %bb.h
  %.0.i13.i = phi ptr [ %i.ao, %bb.h ], [ %.0.i10.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %.pre-phi24.i = phi i32 [ %i.w, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i ], [ %.pre21.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ] ; 2 uses
  %.pre-phi.i = phi i32 [ %i.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i ], [ %.pre.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ] ; 2 uses
  %i.aq = phi ptr [ %.0.i13.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i ], [ %.0.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ] ; 6 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.8, i64 noundef 5) ; 0 uses
  %i.as = icmp samesign ult i32 %.pre-phi24.i, 10
  %8 = select i1 %i.as, i32 48, i32 87
  %9 = add nuw nsw i32 %8, %.pre-phi24.i
  %10 = trunc nuw nsw i32 %9 to i8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %10, ptr %i.b, align 1, !tbaa !16
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !20
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !29
  %.not.i15.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i15.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17.i

bb.l:                                             ; preds = %bb.j
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i8 noundef signext %10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17.i: ; preds = %bb.l, %bb.k
  %.0.i16.i = phi ptr [ %i.az, %bb.k ], [ %i.aq, %bb.l ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bb = and i32 %.pre-phi.i, 15                 ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, 10
  %11 = select i1 %i.bc, i32 48, i32 87
  %12 = add nuw nsw i32 %11, %i.bb
  %13 = trunc nuw nsw i32 %12 to i8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %13, ptr %i.a, align 1, !tbaa !16
  %i.bd = load ptr, ptr %.0.i16.i, align 8, !tbaa !20
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %.0.i16.i, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !29
  %.not.i18.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i18.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17.i
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i16.i, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZN4absl12lts_2026052624internal_generic_printerL13PrintCharImplIcEERSoS3_T_.exit

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17.i
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i16.i, i8 noundef signext %13) ; 0 uses
  br label %_ZN4absl12lts_2026052624internal_generic_printerL13PrintCharImplIcEERSoS3_T_.exit

_ZN4absl12lts_2026052624internal_generic_printerL13PrintCharImplIcEERSoS3_T_.exit: ; preds = %bb.m, %bb.n
  %.0.i19.i = phi ptr [ %i.bj, %bb.m ], [ %.0.i16.i, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i19.i, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i19.i, i32 noundef %.pre-phi.i) ; 2 uses
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  ret ptr %i.bm
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052624internal_generic_printer9PrintCharERSoa(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = add i8 %1, -32
  %i.g = icmp ult i8 %i.f, 95
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %1, 39                        ; 2 uses
  %i.i = select i1 %i.h, ptr @.str.5, ptr @.str.6
  %i.j = select i1 %i.h, i64 2, i64 1
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.i, i64 noundef %i.j) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %1, ptr %i.e, align 1, !tbaa !16
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_a.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_a.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_a.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.r, %bb.c ], [ %0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pre.i = zext nneg i8 %1 to i32                ; 2 uses
  %.pre18.i = lshr i32 %.pre.i, 4
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 3) ; 0 uses
  %i.u = sext i8 %1 to i32                        ; 3 uses
  %i.v = lshr i32 %i.u, 4
  %i.w = and i32 %i.v, 15                         ; 3 uses
  %i.x = icmp samesign ult i32 %i.w, 10
  %2 = select i1 %i.x, i32 48, i32 87
  %3 = add nuw nsw i32 %2, %i.w
  %4 = trunc nuw nsw i32 %3 to i8                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %4, ptr %i.d, align 1, !tbaa !16
  %i.y = load ptr, ptr %0, align 8, !tbaa !20
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !29
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %4) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.ae, %bb.f ], [ %0, %bb.g ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ag = and i32 %i.u, 15                        ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, 10
  %5 = select i1 %i.ah, i32 48, i32 87
  %6 = add nuw nsw i32 %5, %i.ag
  %7 = trunc nuw nsw i32 %6 to i8                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %7, ptr %i.c, align 1, !tbaa !16
  %i.ai = load ptr, ptr %.0.i.i, align 8, !tbaa !20
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !29
  %.not.i9.i = icmp eq i64 %i.an, 0
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef nonnull %i.c, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, i8 noundef signext %7) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i: ; preds = %bb.i, %bb.h
  %.0.i10.i = phi ptr [ %i.ao, %bb.h ], [ %.0.i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_a.exit.i
  %.pre-phi21.i = phi i32 [ %i.w, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i ], [ %.pre18.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_a.exit.i ] ; 2 uses
  %.pre-phi.i = phi i32 [ %i.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i ], [ %.pre.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_a.exit.i ] ; 2 uses
  %i.aq = phi ptr [ %.0.i10.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i ], [ %.0.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_a.exit.i ] ; 6 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.8, i64 noundef 5) ; 0 uses
  %i.as = icmp samesign ult i32 %.pre-phi21.i, 10
  %8 = select i1 %i.as, i32 48, i32 87
  %9 = add nuw nsw i32 %8, %.pre-phi21.i
  %10 = trunc nuw nsw i32 %9 to i8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %10, ptr %i.b, align 1, !tbaa !16
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !20
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !29
  %.not.i12.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i12.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i

bb.l:                                             ; preds = %bb.j
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i8 noundef signext %10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i: ; preds = %bb.l, %bb.k
  %.0.i13.i = phi ptr [ %i.az, %bb.k ], [ %i.aq, %bb.l ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bb = and i32 %.pre-phi.i, 15                 ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, 10
  %11 = select i1 %i.bc, i32 48, i32 87
  %12 = add nuw nsw i32 %11, %i.bb
  %13 = trunc nuw nsw i32 %12 to i8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %13, ptr %i.a, align 1, !tbaa !16
  %i.bd = load ptr, ptr %.0.i13.i, align 8, !tbaa !20
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %.0.i13.i, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !29
  %.not.i15.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i15.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i13.i, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZN4absl12lts_2026052624internal_generic_printerL13PrintCharImplIaEERSoS3_T_.exit

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i13.i, i8 noundef signext %13) ; 0 uses
  br label %_ZN4absl12lts_2026052624internal_generic_printerL13PrintCharImplIaEERSoS3_T_.exit

_ZN4absl12lts_2026052624internal_generic_printerL13PrintCharImplIaEERSoS3_T_.exit: ; preds = %bb.m, %bb.n
  %.0.i16.i = phi ptr [ %i.bj, %bb.m ], [ %.0.i13.i, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i16.i, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i16.i, i32 noundef %.pre-phi.i) ; 2 uses
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  ret ptr %i.bm
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052624internal_generic_printer9PrintCharERSoh(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = add i8 %1, -32
  %i.g = icmp ult i8 %i.f, 95
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %1, 39                        ; 2 uses
  %i.i = select i1 %i.h, ptr @.str.5, ptr @.str.6
  %i.j = select i1 %i.h, i64 2, i64 1
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.i, i64 noundef %i.j) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %1, ptr %i.e, align 1, !tbaa !16
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.r, %bb.c ], [ %0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pre.i = lshr i8 %1, 4
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 3) ; 0 uses
  %i.u = lshr i8 %1, 4                            ; 2 uses
  %i.v = icmp ult i8 %1, -96
  %i.w = select i1 %i.v, i8 48, i8 87
  %i.x = add nuw nsw i8 %i.w, %i.u                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.x, ptr %i.d, align 1, !tbaa !16
  %i.y = load ptr, ptr %0, align 8, !tbaa !20
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !29
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.x) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.ae, %bb.f ], [ %0, %bb.g ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ag = and i8 %1, 15                           ; 2 uses
  %i.ah = icmp samesign ult i8 %i.ag, 10
  %i.ai = select i1 %i.ah, i8 48, i8 87
  %i.aj = add nuw nsw i8 %i.ai, %i.ag             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.aj, ptr %i.c, align 1, !tbaa !16
  %i.ak = load ptr, ptr %.0.i.i, align 8, !tbaa !20
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !29
  %.not.i9.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr noundef nonnull %i.c, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, i8 noundef signext %i.aj) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i: ; preds = %bb.i, %bb.h
  %.0.i10.i = phi ptr [ %i.aq, %bb.h ], [ %.0.i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h.exit.i
  %.pre-phi.i = phi i8 [ %i.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i ], [ %.pre.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h.exit.i ]
  %i.as = phi ptr [ %.0.i10.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit11.i ], [ %.0.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h.exit.i ] ; 6 uses
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.8, i64 noundef 5) ; 0 uses
  %i.au = zext i8 %1 to i32                       ; 2 uses
  %i.av = icmp ult i8 %1, -96
  %i.aw = select i1 %i.av, i8 48, i8 87
  %i.ax = add nuw nsw i8 %.pre-phi.i, %i.aw       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ax, ptr %i.b, align 1, !tbaa !16
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !20
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.as, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !29
  %.not.i12.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i12.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i

bb.l:                                             ; preds = %bb.j
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i8 noundef signext %i.ax) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i: ; preds = %bb.l, %bb.k
  %.0.i13.i = phi ptr [ %i.be, %bb.k ], [ %i.as, %bb.l ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bg = and i32 %i.au, 15                       ; 2 uses
  %i.bh = icmp samesign ult i32 %i.bg, 10
  %2 = select i1 %i.bh, i32 48, i32 87
  %3 = add nuw nsw i32 %2, %i.bg
  %4 = trunc nuw nsw i32 %3 to i8                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %4, ptr %i.a, align 1, !tbaa !16
  %i.bi = load ptr, ptr %.0.i13.i, align 8, !tbaa !20
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %.0.i13.i, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !29
  %.not.i15.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i15.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i13.i, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZN4absl12lts_2026052624internal_generic_printerL13PrintCharImplIhEERSoS3_T_.exit

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14.i
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i13.i, i8 noundef signext %4) ; 0 uses
  br label %_ZN4absl12lts_2026052624internal_generic_printerL13PrintCharImplIhEERSoS3_T_.exit

_ZN4absl12lts_2026052624internal_generic_printerL13PrintCharImplIhEERSoS3_T_.exit: ; preds = %bb.m, %bb.n
  %.0.i16.i = phi ptr [ %i.bo, %bb.m ], [ %.0.i13.i, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i16.i, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i16.i, i32 noundef %i.au) ; 2 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  ret ptr %i.br
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052624internal_generic_printer9PrintByteERSoSt4byte(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 2) ; 0 uses
  %i.d = lshr i8 %1, 4
  %i.e = icmp ult i8 %1, -96
  %i.f = select i1 %i.e, i8 48, i8 87
  %i.g = add nuw nsw i8 %i.f, %i.d                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.g, ptr %i.b, align 1, !tbaa !16
  %i.h = load ptr, ptr %0, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.g) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.n, %bb.b ], [ %0, %bb.c ]  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = and i8 %1, 15                            ; 2 uses
  %i.q = icmp samesign ult i8 %i.p, 10
  %i.r = select i1 %i.q, i8 48, i8 87
  %i.s = add nuw nsw i8 %i.r, %i.p                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.s, ptr %i.a, align 1, !tbaa !16
  %i.t = load ptr, ptr %.0.i, align 8, !tbaa !20
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.0.i, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29
  %.not.i4 = icmp eq i64 %i.y, 0
  br i1 %.not.i4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit6

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i8 noundef signext %i.s) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit6

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit6: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare void @_ZN4absl12lts_2026052619str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIfEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare float @strtof(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIeEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare x86_fp80 @strtold(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!13, !10, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!5, !5, i64 0}
!17 = !{!"_ZTSN4absl12lts_2026052619str_format_internal13FormatArgImplE", !5, i64 0, !9, i64 8}
!18 = !{!17, !9, i64 8}
!19 = !{!"vtable pointer", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !12, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!27 = !{!"_ZTSSt6locale", !26, i64 0}
!28 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !24, i64 48, !5, i64 64, !6, i64 192, !25, i64 200, !27, i64 208}
!29 = !{!28, !12, i64 16}
!30 = distinct !{!30, !"_ZN4absl12lts_2026052624internal_generic_printer10TryShortenIfZNS1_14PrintPreciseFPERSofE3$_0EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_"}
!31 = distinct !{!31, !30, !"_ZN4absl12lts_2026052624internal_generic_printer10TryShortenIfZNS1_14PrintPreciseFPERSofE3$_0EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_: argument 0"}
!32 = distinct !{!32, !"_ZN4absl12lts_202605269StrFormatIJifEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!33 = distinct !{!33, !32, !"_ZN4absl12lts_202605269StrFormatIJifEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!34 = distinct !{!34, !"_ZN4absl12lts_202605269StrFormatIJifEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!35 = distinct !{!35, !34, !"_ZN4absl12lts_202605269StrFormatIJifEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!36 = !{!31}
!37 = !{!33, !31}
!38 = !{!35, !31}
!39 = distinct !{!39, !"_ZN4absl12lts_2026052624internal_generic_printer10TryShortenIdZNS1_14PrintPreciseFPERSodE3$_0EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_"}
!40 = distinct !{!40, !39, !"_ZN4absl12lts_2026052624internal_generic_printer10TryShortenIdZNS1_14PrintPreciseFPERSodE3$_0EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_: argument 0"}
!41 = distinct !{!41, !"_ZN4absl12lts_202605269StrFormatIJidEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!42 = distinct !{!42, !41, !"_ZN4absl12lts_202605269StrFormatIJidEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!43 = distinct !{!43, !"_ZN4absl12lts_202605269StrFormatIJidEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!44 = distinct !{!44, !43, !"_ZN4absl12lts_202605269StrFormatIJidEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!45 = !{!40}
!46 = !{!42, !40}
!47 = !{!44, !40}
!48 = distinct !{!48, !"_ZN4absl12lts_2026052624internal_generic_printer10TryShortenIeZNS1_14PrintPreciseFPERSoeE3$_0EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_"}
!49 = distinct !{!49, !48, !"_ZN4absl12lts_2026052624internal_generic_printer10TryShortenIeZNS1_14PrintPreciseFPERSoeE3$_0EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_T0_: argument 0"}
!50 = distinct !{!50, !"_ZN4absl12lts_202605269StrFormatIJieEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!51 = distinct !{!51, !50, !"_ZN4absl12lts_202605269StrFormatIJieEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!52 = distinct !{!52, !"_ZN4absl12lts_202605269StrFormatIJieEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!53 = distinct !{!53, !52, !"_ZN4absl12lts_202605269StrFormatIJieEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!54 = !{!49}
!55 = !{!"long double", !5, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!51, !49}
!58 = !{!53, !49}
end_hunk_0
