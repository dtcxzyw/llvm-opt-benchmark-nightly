Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_protocol-78e79be79537878f.libsignal_protocol.3431899de14c0db4-cgu.02?download=true
inline.NumInlined: 381
inline.NumDeleted: 154
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB15_:bb.a

bb.j:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

.body5.i:                                         ; preds = %bb.k, %bb.h, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.k, %bb.k ], [ %i.h, %bb.h ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #18
          to label %.body8.i unwind label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body5.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit7.i: ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !13, !alias.scope !430, !noundef !4
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_.exit.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit7.i
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEBL_.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.body8.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEBL_.exit.i.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_.exit.i unwind label %bb.o

.body8.i:                                         ; preds = %bb.o, %bb.m, %.body5.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body5.i ], [ %i.r, %bb.o ], [ %i.o, %bb.m ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #18
          to label %common.resume.i unwind label %bb.r

bb.o:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEBL_.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEBL_.exit.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit7.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBJ_.exit unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume.i:                                  ; preds = %bb.p, %.body8.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.t, %bb.p ], [ %.pn2.i, %.body8.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.r:                                             ; preds = %.body8.i, %.body5.i, %.body.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_.exit.i
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEEB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEBL_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEBL_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain8ChainKeyEBL_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs454tfXuUxcf_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !435
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !435 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !435 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.d, align 8, !alias.scope !435, !noundef !4 ; 4 uses
  switch i64 %.val3.i, label %bb.b [
    i64 0, label %_RNvXs1_NtCs454tfXuUxcf_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit
    i64 -1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %.val1.i, -1                     ; 2 uses
  %i.f = icmp eq i64 %.val1.i, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %.val3.i, 1
  %i.h = mul nuw i64 %i.g, %.val.i                ; 2 uses
  %i.i = add i64 %i.h, %i.e                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.h
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %.val3.i, -18
  br i1 %i.m, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #17, !noalias !436
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = add nuw i64 %.val3.i, 17
  %i.o = add i64 %i.n, %i.l                       ; 3 uses
  %i.p = icmp uge i64 %i.o, %i.l
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp slt i64 %i.e, 0
  br i1 %i.q, label %bb.g, label %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17, !noalias !436
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17, !noalias !436
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17, !noalias !435
  unreachable

_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i: ; preds = %bb.e
  %i.r = sub nuw i64 -9223372036854775808, %.val1.i
  %i.s = icmp ule i64 %i.o, %i.r
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #21, !noalias !435
  br label %_RNvXs1_NtCs454tfXuUxcf_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit

_RNvXs1_NtCs454tfXuUxcf_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB7_5alloc5inner6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.a, %_RINvMsa_NtCs454tfXuUxcf_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtB8_5alloc5inner6GlobalECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs454tfXuUxcf_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !440
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !440
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !440, !nonnull !4, !align !10, !noundef !4 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !440, !noundef !4 ; 3 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.f, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.f = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 5 uses
  br i1 %.not.i.i, label %.preheader.split.us.preheader.i.i, label %.preheader.split.i.i

.preheader.split.us.preheader.i.i:                ; preds = %.preheader.i.i
  %.pre13.i.i = load ptr, ptr %.val2.i, align 8, !noalias !440
  br label %.preheader.split.us.i.i

.preheader.split.us.i.i:                          ; preds = %bb.e, %.preheader.split.us.preheader.i.i
  %1 = phi ptr [ %3, %bb.e ], [ %.pre13.i.i, %.preheader.split.us.preheader.i.i ] ; 2 uses
  %.sroa.04.04.us.i.i = phi i64 [ %2, %bb.e ], [ 0, %.preheader.split.us.preheader.i.i ] ; 4 uses
  %2 = add nuw i64 %.sroa.04.04.us.i.i, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.04.us.i.i ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !noalias !440, !noundef !4
  %i.i = icmp eq i8 %i.h, -128
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.preheader.split.us.i.i
  %i.j = add i64 %.sroa.04.04.us.i.i, -16
  %i.k = load i64, ptr %i.c, align 8, !noalias !440, !noundef !4
  %i.l = and i64 %i.k, %i.j                       ; 2 uses
  %i.m = icmp ugt i64 %i.l, -17
  br i1 %i.m, label %.split.us.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 -1, ptr %i.g, align 1, !noalias !440
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !440, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.l
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !440
  %i.q = load i64, ptr %i.f, align 8, !noalias !440, !noundef !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.split6.us.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %.val2.i, align 8, !noalias !440
  %i.s = add i64 %i.q, -1
  store i64 %i.s, ptr %i.f, align 8, !noalias !440
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.split.us.i.i
  %3 = phi ptr [ %.pre.i.i, %bb.d ], [ %1, %.preheader.split.us.i.i ]
  %exitcond12.not.i.i = icmp eq i64 %.sroa.04.04.us.i.i, %i.d
  br i1 %exitcond12.not.i.i, label %.split8.us.i.i, label %.preheader.split.us.i.i

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #17, !noalias !440
  unreachable

.split8.us.i.i:                                   ; preds = %bb.q, %bb.e
  %i.t = load i64, ptr %i.c, align 8, !noalias !440, !noundef !4 ; 4 uses
  %i.u = icmp ult i64 %i.t, 8
  br i1 %i.u, label %bb.j, label %bb.g

.preheader.split.i.i:                             ; preds = %.preheader.i.i, %bb.q
  %.sroa.04.04.i.i = phi i64 [ %i.v, %bb.q ], [ 0, %.preheader.i.i ] ; 4 uses
  %i.v = add nuw i64 %.sroa.04.04.i.i, 1          ; 2 uses
  %i.w = load ptr, ptr %.val2.i, align 8, !noalias !440, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.04.04.i.i ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !noalias !440, !noundef !4
  %i.z = icmp eq i8 %i.y, -128
  br i1 %i.z, label %bb.l, label %bb.q

bb.g:                                             ; preds = %.split8.us.i.i
  %i.aa = icmp eq i64 %i.t, -1
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17, !noalias !440
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = add nuw i64 %i.t, 1
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = mul nuw i64 %i.ac, 7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.split8.us.i.i
  %.sroa.01.0.i.i = phi i64 [ %i.t, %.split8.us.i.i ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ae = load i64, ptr %i.f, align 8, !noalias !440, !noundef !4 ; 2 uses
  %i.af = icmp ult i64 %.sroa.01.0.i.i, %i.ae
  br i1 %i.af, label %bb.k, label %_RNvXs1_NtCs454tfXuUxcf_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17, !noalias !440
  unreachable

bb.l:                                             ; preds = %.preheader.split.i.i
  %i.ag = add i64 %.sroa.04.04.i.i, -16
  %i.ah = load i64, ptr %i.c, align 8, !noalias !440, !noundef !4
  %i.ai = and i64 %i.ah, %i.ag                    ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, -17
  br i1 %i.aj, label %.split.us.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 -1, ptr %i.x, align 1, !noalias !440
  %i.ak = load ptr, ptr %.val2.i, align 8, !noalias !440, !nonnull !4, !noundef !4
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.ai
  %i.am = getelementptr i8, ptr %i.al, i64 16
  store i8 -1, ptr %i.am, align 1, !noalias !440
  %i.an = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.v, i64 %.val1.i) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %bb.o, label %bb.n

.split.us.i.i:                                    ; preds = %bb.l, %bb.b
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17, !noalias !440
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %.val2.i, align 8, !noalias !440, !nonnull !4, !noundef !4
  %i.aq = extractvalue { i64, i1 } %i.an, 0
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.as), !noalias !440, !inline_history !439
  %i.at = load i64, ptr %i.f, align 8, !noalias !440, !noundef !4 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.split6.us.i.i, label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #17, !noalias !440
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.av = add i64 %i.at, -1
  store i64 %i.av, ptr %i.f, align 8, !noalias !440
  br label %bb.q

.split6.us.i.i:                                   ; preds = %bb.n, %bb.c
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #17, !noalias !440
  unreachable

bb.q:                                             ; preds = %bb.p, %.preheader.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.04.i.i, %i.d
  br i1 %exitcond.not.i.i, label %.split8.us.i.i, label %.preheader.split.i.i

_RNvXs1_NtCs454tfXuUxcf_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.j
  %i.aw = sub nuw i64 %.sroa.01.0.i.i, %i.ae
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  store i64 %i.aw, ptr %i.ax, align 8, !noalias !440
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecIBC_hEEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecIBv_hEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB1m_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5ChainEEB1m_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyEEB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyEEB1o_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage17session_structure5chain10MessageKeyEEB1o_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !443 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !443 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !443, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit, label %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !443
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #21, !noalias !443
  br label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit

_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.a, %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !447
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !447
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !447, !nonnull !4, !align !10, !noundef !4 ; 10 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !447, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %.pre7.i.i = load ptr, ptr %.val2.i, align 8, !noalias !447
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.c, %.lr.ph.split.us.preheader.i.i
  %1 = phi ptr [ %3, %bb.c ], [ %.pre7.i.i, %.lr.ph.split.us.preheader.i.i ] ; 2 uses
  %.sroa.0.03.us.i.i = phi i64 [ %2, %bb.c ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %2 = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noalias !447, !noundef !4
  %i.h = icmp eq i8 %i.g, -128
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.i = add i64 %.sroa.0.03.us.i.i, -16
  %i.j = load i64, ptr %i.c, align 8, !noalias !447, !noundef !4
  %i.k = and i64 %i.j, %i.i
  store i8 -1, ptr %i.f, align 1, !noalias !447
  %i.l = load ptr, ptr %.val2.i, align 8, !noalias !447, !nonnull !4, !noundef !4
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 16
  store i8 -1, ptr %i.n, align 1, !noalias !447
  %i.o = load i64, ptr %i.e, align 8, !noalias !447, !noundef !4
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.e, align 8, !noalias !447
  %.pre.i.i = load ptr, ptr %.val2.i, align 8, !noalias !447
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %3 = phi ptr [ %.pre.i.i, %bb.b ], [ %1, %.lr.ph.split.us.i.i ]
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.0.03.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.q = add nuw i64 %.sroa.0.03.i.i, 1
  %i.r = load ptr, ptr %.val2.i, align 8, !noalias !447, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.03.i.i ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !noalias !447, !noundef !4
  %i.u = icmp eq i8 %i.t, -128
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.v = add i64 %.sroa.0.03.i.i, -16
  %i.w = load i64, ptr %i.c, align 8, !noalias !447, !noundef !4
  %i.x = and i64 %i.w, %i.v
  store i8 -1, ptr %i.s, align 1, !noalias !447
  %i.y = load ptr, ptr %.val2.i, align 8, !noalias !447, !nonnull !4, !noundef !4
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store i8 -1, ptr %i.aa, align 1, !noalias !447
  %i.ab = load ptr, ptr %.val2.i, align 8, !noalias !447, !nonnull !4, !noundef !4
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ac), !noalias !447, !inline_history !446
  %i.ad = load i64, ptr %i.e, align 8, !noalias !447, !noundef !4
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.e, align 8, !noalias !447
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit, label %.lr.ph.split.i.i

_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.e, %bb.c, %bb.a
  %i.af = load i64, ptr %i.c, align 8, !noalias !447, !noundef !4 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 8
  %i.ah = add i64 %i.af, 1
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = mul nuw i64 %i.ai, 7
  %.sroa.04.0.i.i = select i1 %i.ag, i64 %i.af, i64 %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !noalias !447, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.an = sub i64 %.sroa.04.0.i.i, %i.al
  store i64 %i.an, ptr %i.am, align 8, !noalias !447
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys15SenderKeyRecordEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs_NtNtCs6i54tJFfzR_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateEEB1B_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateEEB1i_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateEEB1i_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc11collections9vec_deque8VecDequeNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateEEB1B_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCs4tP8yUXWbFU_18libsignal_protocol11sender_keys14SenderKeyStateENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5proto7storage27SignedPreKeyRecordStructureEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %.body3 unwind label %bb.l

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body3 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit5 unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

.body3:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #18
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body3

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit5: ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit7 unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit5
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body3, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.j ], [ %.pn, %.body3 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit7: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit5
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.l:                                             ; preds = %.body3, %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session13SessionRecordEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !13, !alias.scope !458, !noundef !4
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4tP8yUXWbFU_18libsignal_protocol5state7session12SessionStateEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.a)
          to label %.body.i.i.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs4tP8yUXWbFU_18libsignal_protocol(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs4tP8yUXWbFU_18libsignal_protocol.exit.i.i.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable
end_hunk_0
