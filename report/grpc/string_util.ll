Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/string_util?download=true
inline.NumInlined: 330
inline.NumDeleted: 181
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4bssl11string_util23CollapseWhitespaceASCIIB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader
  %.025.lcssa = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader ], [ %.227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %.227.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa ], [ 1, %bb.d ], [ %.227.us.ph.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil ]
  %.023.lcssa = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader ], [ %.124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %.124.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa ], [ %.02340.us.epil.init, %bb.d ], [ %.124.us.ph.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil ]
  %.022.lcssa = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %.2.us.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge.loopexit56.unr-lcssa ], [ %.02241.us.epil.init, %bb.d ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.us.sink.split.epil ]
  %i.x = trunc nuw i8 %.025.lcssa to i1
  %i.y = xor i8 %.023.lcssa, 1
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = select i1 %i.x, i32 %i.z, i32 0
  %spec.select37 = sub i32 %.022.lcssa, %i.aa
  %i.ab = sext i32 %spec.select37 to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ab, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit33 unwind label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %.042 = phi ptr [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %2, %.lr.ph ] ; 3 uses
  %.02241 = phi i32 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ 0, %.lr.ph ] ; 5 uses
  %.02340 = phi i8 [ %.124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ 1, %.lr.ph ]
  %.02539 = phi i8 [ %.227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ 1, %.lr.ph ]
  %i.ad = load i8, ptr %.042, align 1, !tbaa !11  ; 2 uses
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.f
    i8 13, label %bb.f
    i8 12, label %bb.f
    i8 11, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split
  %i.ae = trunc nuw i8 %.02539 to i1
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %.02241, 1
  %i.ag = sext i32 %.02241 to i64
  %i.ah = load ptr, ptr %0, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 32, ptr %i.ai, align 1, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %.02241, %bb.f ], [ %i.af, %bb.g ] ; 3 uses
  %i.aj = trunc nuw i8 %.02340 to i1
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %.042, align 1, !tbaa !11
  switch i8 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit [
    i8 10, label %bb.j
    i8 13, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = add nsw i32 %.1, -1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.k:                                             ; preds = %.lr.ph.split
  %i.am = add nsw i32 %.02241, 1
  %i.an = sext i32 %.02241 to i64
  %i.ao = load ptr, ptr %0, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 %i.ad, ptr %i.ap, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.i, %bb.k, %bb.j, %bb.h
  %.227 = phi i8 [ 1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.i ], [ 0, %bb.k ] ; 2 uses
  %.124 = phi i8 [ 1, %bb.h ], [ 1, %bb.j ], [ 0, %bb.i ], [ 0, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.h ], [ %i.al, %bb.j ], [ %.1, %bb.i ], [ %i.am, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.042, i64 1 ; 2 uses
  %.not31 = icmp eq ptr %i.aq, %i.c
  br i1 %.not31, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge, label %.lr.ph.split, !llvm.loop !80

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit._crit_edge
  ret void

bb.m:                                             ; preds = %bb.l, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.ac, %bb.e ]
  %i.as = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.au = load i64, ptr %i.a, align 8, !tbaa !11
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bssl11string_util12Base64EncodeERKSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i64, ptr %0, align 8, !tbaa !81
  %i.c = call i32 @EVP_EncodedLength(ptr noundef nonnull %i.a, i64 noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt6vectorIcSaIcEED2Ev.exit13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %.noexc10

.noexc10:                                         ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.f = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 %i.d     ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !11
  %i.h = add nsw i64 %i.d, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc10
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.c, %.noexc10, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.g, %bb.c ], [ %i.g, %.noexc10 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.014.0 = phi ptr [ %i.f, %bb.c ], [ %i.f, %.noexc10 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.m = load i64, ptr %0, align 8, !tbaa !81
  %i.n = invoke i64 @EVP_EncodeBlock(ptr noundef %.sroa.014.0, ptr noundef %i.l, i64 noundef %i.m)
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  store i64 %i.n, ptr %i.a, align 8, !tbaa !21
  %.not8 = icmp ne i64 %i.n, 0                    ; 3 uses
  br i1 %.not8, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit

bb.e:                                             ; preds = %bb.g, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.014.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %.sroa.11.0 to i64
  %i.q = ptrtoint ptr %.sroa.014.0 to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.014.0, i64 noundef %i.r) #17
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.t, ptr noundef %.sroa.014.0, i64 noundef %i.n)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.g, %bb.d
  %.not.i.i.i12 = icmp eq ptr %.sroa.014.0, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIcSaIcEED2Ev.exit13, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.v = ptrtoint ptr %.sroa.11.0 to i64
  %i.w = ptrtoint ptr %.sroa.014.0 to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.014.0, i64 noundef %i.x) #17
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit13

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.o

_ZNSt6vectorIcSaIcEED2Ev.exit13:                  ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %.not8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit ], [ %.not8, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i1 %.1
}

declare i32 @EVP_EncodedLength(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @EVP_EncodeBlock(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bssl11string_util12Base64DecodeERKSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i64, ptr %0, align 8, !tbaa !81
  %i.c = call i32 @EVP_DecodedLength(ptr noundef nonnull %i.a, i64 noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt6vectorIcSaIcEED2Ev.exit13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %.noexc10

.noexc10:                                         ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.f = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 %i.d     ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !11
  %i.h = add nsw i64 %i.d, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc10
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.c, %.noexc10, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.g, %bb.c ], [ %i.g, %.noexc10 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.014.0 = phi ptr [ %i.f, %bb.c ], [ %i.f, %.noexc10 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %2 = load i64, ptr %i.a, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.m = load i64, ptr %0, align 8, !tbaa !81
  %i.n = invoke i32 @EVP_DecodeBase64(ptr noundef %.sroa.014.0, ptr noundef nonnull %i.a, i64 noundef %2, ptr noundef %i.l, i64 noundef %i.m)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %.not8 = icmp ne i32 %i.n, 0                    ; 3 uses
  br i1 %.not8, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit

bb.e:                                             ; preds = %bb.g, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.014.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %.sroa.11.0 to i64
  %i.q = ptrtoint ptr %.sroa.014.0 to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.014.0, i64 noundef %i.r) #17
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.u, ptr noundef %.sroa.014.0, i64 noundef %i.s)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.g, %bb.d
  %.not.i.i.i12 = icmp eq ptr %.sroa.014.0, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIcSaIcEED2Ev.exit13, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.w = ptrtoint ptr %.sroa.11.0 to i64
  %i.x = ptrtoint ptr %.sroa.014.0 to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.014.0, i64 noundef %i.y) #17
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit13

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.o

_ZNSt6vectorIcSaIcEED2Ev.exit13:                  ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %.not8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit ], [ %.not8, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i1 %.1
}

declare i32 @EVP_DecodedLength(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_DecodeBase64(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @OPENSSL_tolower(i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!19, !20, i64 8}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !20, i64 8, !9, i64 16}
!20 = !{!"long", !9, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!19, !16, i64 0}
!23 = distinct !{!23, !13}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!26 = distinct !{!26, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!29 = distinct !{!29, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!30 = !{!28, !25}
!31 = !{!32, !16, i64 40}
!32 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !33, i64 56}
!33 = !{!"_ZTSSt6locale", !34, i64 0}
!34 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!35 = !{!32, !16, i64 32}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !10, i64 0}
!38 = !{!39, !40, i64 24}
!39 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !40, i64 24, !41, i64 28, !41, i64 32, !42, i64 40, !43, i64 48, !9, i64 64, !8, i64 192, !44, i64 200, !33, i64 208}
!40 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!41 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!42 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!43 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !20, i64 8}
!44 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!45 = !{!40, !40, i64 0}
!46 = !{!47, !49, i64 225}
!47 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !39, i64 0, !48, i64 216, !9, i64 224, !49, i64 225, !50, i64 232, !51, i64 240, !52, i64 248, !53, i64 256}
!48 = !{!"p1 _ZTSSo", !17, i64 0}
!49 = !{!"bool", !9, i64 0}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!51 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!52 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!53 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!47, !51, i64 240}
!57 = !{!58, !9, i64 56}
!58 = !{!"_ZTSSt5ctypeIcE", !59, i64 0, !60, i64 16, !49, i64 24, !61, i64 32, !61, i64 40, !62, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!59 = !{!"_ZTSNSt6locale5facetE", !8, i64 8}
!60 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!61 = !{!"p1 int", !17, i64 0}
!62 = !{!"p1 short", !17, i64 0}
!63 = distinct !{null}
!64 = !{!47, !9, i64 224}
!65 = !{!39, !20, i64 16}
end_hunk_0
