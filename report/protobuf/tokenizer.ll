inline.NumInlined: 657
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf2io9TokenizerC2EPNS1_19ZeroCopyInputStreamEPNS1_14ErrorCollectorE:bb.a
_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit:  ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.c
  br i1 %i.bf, label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !14
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #25
  br label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit8

_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit8: ; preds = %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  resume { ptr, i32 } %lpad.phi
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io9Tokenizer7RefreshEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !37, !range !38, !noundef !39
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.e, align 8, !tbaa !40
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = icmp slt i32 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = sub nsw i32 %i.k, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = sub i64 4611686018427387903, %i.p
  %i.r = icmp ult i64 %i.q, %i.n
  br i1 %i.r, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = sext i32 %i.i to i64
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.v, i64 noundef %i.n) ; 0 uses
  store i32 0, ptr %i.h, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %i.y, align 4, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aa)
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aa, align 8, !tbaa !41
  store i8 1, ptr %i.b, align 8, !tbaa !37
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !41
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.k, !llvm.loop !48

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  store ptr %i.ai, ptr %i.x, align 8, !tbaa !42
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sink = phi i8 [ %i.aj, %bb.k ], [ 0, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %.sink, ptr %i.ak, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf2io9TokenizerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(192) dereferenceable(192) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.h = sub nsw i32 %i.b, %i.d
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef %i.h)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit

_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit:  ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2: ; preds = %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !14
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #25
  br label %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit4

_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit4: ; preds = %_ZN6google8protobuf2io9Tokenizer5TokenD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2
  ret void

bb.d:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #22
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6google8protobuf2io9Tokenizer17report_whitespaceEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.b = load i8, ptr %i.a, align 2, !tbaa !51, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf2io9Tokenizer21set_report_whitespaceEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((190, 191)) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 190
  store i8 %i.a, ptr %i.b, align 2, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 191 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !52, !range !38, !noundef !39
  %2 = icmp ne i8 %i.d, 0
  %3 = and i1 %1, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.c, align 1, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6google8protobuf2io9Tokenizer15report_newlinesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.b = load i8, ptr %i.a, align 1, !tbaa !52, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf2io9Tokenizer19set_report_newlinesEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((191, 192)) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 191
  store i8 %i.a, ptr %i.b, align 1, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !51, !range !38, !noundef !39
  %i.e = or i8 %i.d, %i.a
  store i8 %i.e, ptr %i.c, align 2, !tbaa !51
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !40
  switch i8 %i.c, label %bb.d [
    i8 10, label %bb.b
    i8 9, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.g, align 8, !tbaa !26
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = srem i32 %i.i, 8
  %reass.sub = add i32 %i.i, 8
  %i.k = sub i32 %reass.sub, %i.j
  store i32 %i.k, ptr %i.h, align 8, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44
  %i.q = add nsw i32 %i.p, 1                      ; 3 uses
  store i32 %i.q, ptr %i.o, align 4, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !41   ; 3 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  store i8 %i.y, ptr %i.b, align 8, !tbaa !40
  br label %_ZN6google8protobuf2io9Tokenizer7RefreshEv.exit

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !37, !range !38, !noundef !39
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.b, align 8, !tbaa !40
  br label %_ZN6google8protobuf2io9Tokenizer7RefreshEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !28 ; 3 uses
  %i.ag = icmp slt i32 %i.af, %i.s
  br i1 %i.ag, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ah = sub nsw i32 %i.s, %i.af
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.ai
  br i1 %i.am, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42
  %i.ap = sext i32 %i.af to i64
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  %i.ar = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef %i.aq, i64 noundef %i.ai) ; 0 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.as, align 8, !tbaa !42
  store i32 0, ptr %i.o, align 4, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.a, ptr noundef nonnull %i.r), !inline_history !47
  br i1 %i.ay, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.r, align 8, !tbaa !41
  store i8 1, ptr %i.z, align 8, !tbaa !37
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.az = load i32, ptr %i.r, align 8, !tbaa !41
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.n, label %bb.q, !llvm.loop !48

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  store ptr %i.bb, ptr %i.as, align 8, !tbaa !42
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sink.i = phi i8 [ %i.bc, %bb.q ], [ 0, %bb.o ]
  store i8 %.sink.i, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6google8protobuf2io9Tokenizer7RefreshEv.exit

_ZN6google8protobuf2io9Tokenizer7RefreshEv.exit:  ; preds = %bb.r, %bb.h, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io9Tokenizer13ConsumeStringEc(ptr noundef nonnull align 8 dereferenceable(192) %0, i8 noundef signext %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
end_hunk_0
