Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/httplib?download=true
inline.NumInlined: 21893
inline.NumDeleted: 6596
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 105
begin_hunk_0_@"_ZZN7httplib6detail15parse_http_dateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKc":bb.a
bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !201
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !295
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !201
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8, !tbaa !201
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8, !tbaa !201
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !196  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !184
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #47
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ad = and i32 %i.q, 5
  %.not = icmp eq i32 %i.ad, 0
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8, !tbaa !201
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #23
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !201
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !201
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !297
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.al) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %.not

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.am
}

; Function Attrs: nounwind
declare i64 @timegm(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail12is_weak_etagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !183
  %i.c = icmp ugt i64 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !196    ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !184
  %i.f = icmp eq i8 %i.e, 87
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !184
  %i.i = icmp eq i8 %i.h, 47
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !184
  %i.l = icmp eq i8 %i.k, 34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.l, %bb.d ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail14is_strong_etagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !184
  %i.f = icmp eq i8 %i.e, 34
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 %i.b
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !184
  %i.j = icmp eq i8 %i.i, 34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %bb.c ]
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef range(i64 0, 5) i64 @_ZN7httplib6detail7to_utf8EiPc(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i32 %0 to i8
  %i.c = and i8 %i.b, 127
  store i8 %i.c, ptr %1, align 1, !tbaa !184
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %0, 2048
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = lshr i32 %0, 6
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = or disjoint i8 %i.f, -64
  store i8 %i.g, ptr %1, align 1, !tbaa !184
  %i.h = trunc i32 %0 to i8
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !184
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i32 %0, 55296
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = lshr i32 %0, 12
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = or disjoint i8 %i.n, -32
  store i8 %i.o, ptr %1, align 1, !tbaa !184
  %i.p = lshr i32 %0, 6
  %i.q = trunc i32 %i.p to i8
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.s, ptr %i.t, align 1, !tbaa !184
  %i.u = trunc i32 %0 to i8
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !184
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.y = icmp samesign ult i32 %0, 57344
  br i1 %i.y, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = icmp samesign ult i32 %0, 65536
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = lshr i32 %0, 12
  %i.ab = trunc nuw nsw i32 %i.aa to i8
  %i.ac = or disjoint i8 %i.ab, -32
  store i8 %i.ac, ptr %1, align 1, !tbaa !184
  %i.ad = lshr i32 %0, 6
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 63
  %i.ag = or disjoint i8 %i.af, -128
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !184
  %i.ai = trunc i32 %0 to i8
  %i.aj = and i8 %i.ai, 63
  %i.ak = or disjoint i8 %i.aj, -128
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !184
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.am = icmp samesign ult i32 %0, 1114112
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i32 %0, 6
  %2 = lshr i32 %0, 12
  %i.ao = lshr i32 %0, 18
  %i.ap = trunc i32 %0 to i8
  %3 = trunc i32 %i.an to i8
  %i.aq = trunc i32 %2 to i8
  %i.ar = trunc nuw nsw i32 %i.ao to i8
  %i.as = insertelement <4 x i8> poison, i8 %i.ar, i64 0
  %i.at = insertelement <4 x i8> %i.as, i8 %i.aq, i64 1
  %i.au = insertelement <4 x i8> %i.at, i8 %3, i64 2
  %i.av = insertelement <4 x i8> %i.au, i8 %i.ap, i64 3
  %i.aw = and <4 x i8> %i.av, <i8 -1, i8 63, i8 63, i8 63>
  %i.ax = or disjoint <4 x i8> %i.aw, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ax, ptr %1, align 1, !tbaa !184
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.g, %bb.k, %bb.i, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 0, %bb.g ], [ 3, %bb.i ], [ 4, %bb.k ], [ 0, %bb.j ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib2ws4impl13is_valid_utf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !183  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread67, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !196
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.05276 = phi i64 [ 0, %.lr.ph ], [ %.153, %bb.l ] ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 %.05276  ; 4 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !184   ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = icmp sgt i8 %i.f, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %.05276, 1
  br label %bb.l, !llvm.loop !10

bb.d:                                             ; preds = %bb.b
  %i.j = and i32 %i.g, 224
  %i.k = icmp eq i32 %i.j, 192                    ; 3 uses
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i32 %i.g, 240
  %i.m = icmp eq i32 %i.l, 224
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = and i32 %i.g, 248
  %i.o = icmp eq i32 %i.n, 240
  br i1 %i.o, label %bb.g, label %.thread67

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sink = phi i32 [ 31, %bb.d ], [ 15, %bb.e ], [ 7, %bb.f ]
  %i.p = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.f ] ; 2 uses
  %i.q = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.f ]
  %.051 = phi i64 [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ]
  %i.r = add i64 %.051, %.05276                   ; 2 uses
  %i.s = icmp ugt i64 %i.r, %i.b
  br i1 %i.s, label %.thread67, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  %i.t = and i32 %.sink, %i.g                     ; 2 uses
  %i.u = getelementptr i8, ptr %i.e, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !184
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = and i32 %i.w, 192
  %.not = icmp eq i32 %i.x, 128
  br i1 %.not, label %bb.h, label %.thread67

bb.h:                                             ; preds = %.preheader.preheader
  %i.y = shl nuw nsw i32 %i.t, 6                  ; 2 uses
  %i.z = and i32 %i.w, 63
  %i.aa = or disjoint i32 %i.z, %i.y              ; 2 uses
  br i1 %i.k, label %bb.k, label %.preheader.1

.preheader.1:                                     ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.e, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !184
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, 192
  %.not.1 = icmp eq i32 %i.ae, 128
  br i1 %.not.1, label %bb.i, label %.thread67

bb.i:                                             ; preds = %.preheader.1
  %i.af = shl nuw nsw i32 %i.aa, 6                ; 2 uses
  %i.ag = and i32 %i.ad, 63
  %i.ah = or disjoint i32 %i.ag, %i.af            ; 2 uses
  br i1 %i.p, label %bb.k, label %.preheader.2

.preheader.2:                                     ; preds = %bb.i
  %i.ai = getelementptr i8, ptr %i.e, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !184
  %.not.2 = icmp slt i8 %i.aj, -64
  br i1 %.not.2, label %bb.j, label %.thread67

bb.j:                                             ; preds = %.preheader.2
  %i.ak = shl nuw nsw i32 %i.ah, 6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.lcssa = phi i32 [ %i.y, %bb.h ], [ %i.af, %bb.i ], [ %i.ak, %bb.j ] ; 4 uses
  %.14974.lcssa93 = phi i32 [ %i.t, %bb.h ], [ %i.aa, %bb.i ], [ %i.ah, %bb.j ]
  %i.al = icmp samesign ult i32 %.lcssa, 128
  %or.cond = select i1 %i.k, i1 %i.al, i1 false
  %i.am = icmp samesign ult i32 %.lcssa, 2048
  %or.cond4 = select i1 %i.p, i1 %i.am, i1 false
  %or.cond62 = select i1 %or.cond, i1 true, i1 %or.cond4
  %i.an = icmp samesign ult i32 %.lcssa, 65536
  %or.cond6 = select i1 %i.q, i1 %i.an, i1 false
  %or.cond63 = select i1 %or.cond62, i1 true, i1 %or.cond6
  %i.ao = and i32 %.14974.lcssa93, 67108832
  %or.cond8 = icmp eq i32 %i.ao, 864
  %i.ap = icmp samesign ugt i32 %.lcssa, 1114111
  %i.aq = or i1 %or.cond8, %i.ap
  %or.cond70 = select i1 %or.cond63, i1 true, i1 %i.aq
  br i1 %or.cond70, label %.thread67, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %.153 = phi i64 [ %i.i, %bb.c ], [ %i.r, %bb.k ] ; 2 uses
  %.not83 = icmp ult i64 %.153, %i.b
  br i1 %.not83, label %bb.b, label %.thread67

.thread67:                                        ; preds = %bb.l, %bb.f, %bb.g, %bb.k, %.preheader.preheader, %.preheader.1, %.preheader.2, %bb.a
  %i.ar = phi i1 [ false, %.preheader.preheader ], [ true, %bb.a ], [ false, %.preheader.2 ], [ false, %.preheader.1 ], [ true, %bb.l ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.k ]
  ret i1 %i.ar
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail13base64_encodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !182
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i64 0, ptr %i.b, align 8, !tbaa !183
  store i8 0, ptr %i.a, align 8, !tbaa !184
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !196    ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !tbaa !183  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %.not4045 = icmp samesign eq i64 %i.f, 0
  br i1 %.not4045, label %._crit_edge51.thread, label %.lr.ph50

._crit_edge51:                                    ; preds = %._crit_edge
  %i.h = icmp samesign ugt i32 %.1.lcssa, -6
  br i1 %i.h, label %bb.g, label %._crit_edge51.thread

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.lr.ph50:                                         ; preds = %bb.b, %._crit_edge
  %.048 = phi i32 [ %.1.lcssa, %._crit_edge ], [ -6, %bb.b ] ; 2 uses
  %.01647 = phi i32 [ %i.m, %._crit_edge ], [ 0, %bb.b ]
  %.sroa.037.046 = phi ptr [ %i.aj, %._crit_edge ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = load i8, ptr %.sroa.037.046, align 1, !tbaa !184
  %i.k = shl i32 %.01647, 8
  %i.l = zext i8 %i.j to i32
  %i.m = or disjoint i32 %i.k, %i.l               ; 3 uses
  %i.n = add nsw i32 %.048, 8                     ; 2 uses
  %i.o = icmp sgt i32 %.048, -9
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph50, %bb.e
  %.144 = phi i32 [ %i.ag, %bb.e ], [ %i.n, %.lr.ph50 ] ; 3 uses
  %i.p = lshr i32 %i.m, %.144
  %i.q = and i32 %i.p, 63
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @.str.16, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !184
  %i.u = load i64, ptr %i.b, align 8, !tbaa !183  ; 4 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph
  %i.y = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  %i.z = load i64, ptr %i.a, align 8, !tbaa !184
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.aa = phi i64 [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ab = icmp ugt i64 %i.v, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.u, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !196
  br label %bb.e
end_hunk_0
