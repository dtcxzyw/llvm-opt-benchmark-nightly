Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/zkcredential-699c949512ec3078.zkcredential.d0d03497018951d-cgu.1?download=true
inline.NumInlined: 204
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs17t5S1clqUH_12zkcredential:bb.a
_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs17t5S1clqUH_12zkcredential.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho9statement9StatementECs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationEECs17t5S1clqUH_12zkcredential.exit unwind label %bb.e

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
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit unwind label %bb.n

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationEECs17t5S1clqUH_12zkcredential.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit6 unwind label %bb.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit: ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.g, %bb.f ], [ %eh.lpad-body, %.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #21
          to label %.body7 unwind label %bb.n

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationEECs17t5S1clqUH_12zkcredential.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit6: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsfFEWD1QhNwv_6poksho9statement8EquationEECs17t5S1clqUH_12zkcredential.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit6
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body7 unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit6
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECs17t5S1clqUH_12zkcredential.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

.body7:                                           ; preds = %bb.j, %bb.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit ], [ %i.l, %bb.j ], [ %i.i, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit9 unwind label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body7

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECs17t5S1clqUH_12zkcredential.exit: ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit10 unwind label %bb.k

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit9: ; preds = %.body7, %bb.k
  %.pn4 = phi { ptr, i32 } [ %i.o, %bb.k ], [ %.pn2, %.body7 ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #21
          to label %common.resume unwind label %bb.n

bb.k:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECs17t5S1clqUH_12zkcredential.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit9

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit10: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECs17t5S1clqUH_12zkcredential.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECs17t5S1clqUH_12zkcredential.exit12 unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit10
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit9, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.l ], [ %.pn4, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit9 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtBG_6borrow3CoweEEECs17t5S1clqUH_12zkcredential.exit12: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit10
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  ret void

bb.n:                                             ; preds = %.body7, %.body, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit9, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapINtNtCs6i54tJFfzR_5alloc6borrow3CoweEhEECs17t5S1clqUH_12zkcredential.exit
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvMNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB2_3ZipINtNtNtB8_5slice4iter4IterNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarEINtNtNtB8_5array4iter8IntoIterNtNtB1n_9ristretto14RistrettoPointKj7_EE9super_nthCs17t5S1clqUH_12zkcredential(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(1168) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !62, !noalias !63, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted = load ptr, ptr %1, align 8, !alias.scope !62, !noalias !63 ; 5 uses
  %.promoted34 = ptrtoaddr ptr %.promoted to i64  ; 2 uses
  %i.d = icmp eq ptr %.promoted, %i.b
  br i1 %i.d, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !64, !noalias !65, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.promoted12 = load i64, ptr %i.e, align 8, !alias.scope !64, !noalias !65 ; 6 uses
  %i.i = shl i64 %2, 5                            ; 2 uses
  %scevgep = getelementptr i8, ptr %.promoted, i64 %i.i
  %i.j = getelementptr i8, ptr %.promoted, i64 %i.i
  %scevgep18 = getelementptr i8, ptr %i.j, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %.promoted, i64 32 ; 4 uses
  %.not.i.i.i29 = icmp eq i64 %i.g, %.promoted12
  br i1 %.not.i.i.i29, label %.sink.split, label %.lr.ph31

.lr.ph31:                                         ; preds = %.lr.ph
  %i.l = add i64 %i.c, -32
  %i.m = sub i64 %i.l, %.promoted34
  %i.n = lshr i64 %i.m, 5
  %i.o = xor i64 %.promoted12, -1
  %i.p = add i64 %i.g, %i.o
  %i.q = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.n)
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.p) ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph31
  %i.t = sub i64 %i.c, %.promoted34
  %i.u = and i64 %i.t, 31
  %ident.check.not = icmp eq i64 %i.u, 0
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.v = and i64 %i.s, 3                          ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 4, i64 %i.v
  %n.vec = sub nsw i64 %i.s, %i.x                 ; 4 uses
  %i.y = shl i64 %n.vec, 5
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = sub i64 %2, %n.vec
  %i.ab = add i64 %.promoted12, %n.vec
  %i.ac = add i64 %.promoted12, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.ad = phi i64 [ %i.ac, %vector.ph ], [ %i.af, %vector.body ] ; 2 uses
  %i.ae = add i64 %i.ad, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = add i64 %i.ad, 4
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !60

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store i64 %i.ae, ptr %i.e, align 8, !alias.scope !64, !noalias !65
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.scevcheck, %.lr.ph31
  %.ph = phi ptr [ %i.k, %vector.scevcheck ], [ %i.k, %.lr.ph31 ], [ %i.z, %scalar.ph.preheader.loopexit ]
  %.sroa.0.0830.ph = phi i64 [ %2, %vector.scevcheck ], [ %2, %.lr.ph31 ], [ %i.aa, %scalar.ph.preheader.loopexit ]
  %.ph37 = phi i64 [ %.promoted12, %vector.scevcheck ], [ %.promoted12, %.lr.ph31 ], [ %i.ab, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

bb.b:                                             ; preds = %bb.d
  %i.ah = add i64 %.sroa.0.0830, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.g, %i.al
  br i1 %.not.i.i.i, label %.sink.split.loopexit, label %scalar.ph, !llvm.loop !61

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.aj = phi ptr [ %i.ai, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.0.0830 = phi i64 [ %i.ah, %bb.b ], [ %.sroa.0.0830.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ak = phi i64 [ %i.al, %bb.b ], [ %.ph37, %scalar.ph.preheader ] ; 3 uses
  %i.al = add nuw nsw i64 %i.ak, 1                ; 4 uses
  %i.am = icmp ult i64 %i.ak, 7
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %.sroa.0.0830, 0
  br i1 %i.an, label %bb.c, label %bb.d

.sink.split.loopexit:                             ; preds = %bb.b, %bb.d
  %.lcssa.ph = phi ptr [ %i.aj, %bb.d ], [ %i.ai, %bb.b ]
  store i64 %i.al, ptr %i.e, align 8, !alias.scope !64, !noalias !65
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.loopexit, %.lr.ph
  %.lcssa = phi ptr [ %i.k, %.lr.ph ], [ %.lcssa.ph, %.sink.split.loopexit ]
  store ptr %.lcssa, ptr %1, align 8, !alias.scope !62, !noalias !63
  br label %bb.e

bb.c:                                             ; preds = %scalar.ph
  store i64 %i.al, ptr %i.e, align 8, !alias.scope !64, !noalias !65
  %i.ao = getelementptr inbounds nuw [160 x i8], ptr %i.h, i64 %i.ak
  store ptr %scevgep18, ptr %1, align 8, !alias.scope !62, !noalias !63
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %i.ao, i64 160, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %scalar.ph
  %i.ap = icmp eq ptr %i.aj, %i.b
  br i1 %i.ap, label %.sink.split.loopexit, label %bb.b

bb.e:                                             ; preds = %bb.a, %.sink.split, %bb.c
  %storemerge = phi ptr [ %scevgep, %bb.c ], [ null, %.sink.split ], [ null, %bb.a ]
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs17t5S1clqUH_12zkcredential12endorsementsNtB5_19ClientDecryptionKey20from_blinding_scalar(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMso_NtCsdRrpXuHtjOb_16curve25519_dalek6scalarNtB5_6Scalar6invert(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtCs17t5S1clqUH_12zkcredential12endorsementsINtB5_11EndorsementNtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto19CompressedRistrettoE10decompress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_19CompressedRistretto10decompress(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !68, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 160, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtCs17t5S1clqUH_12zkcredential12endorsementsNtB5_11Endorsement8compress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(160) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs9_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPoint8compress(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCs17t5S1clqUH_12zkcredential12endorsementsNtB5_17ServerRootKeyPair8from_raw(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvMsp_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPoint8mul_base(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCs17t5S1clqUH_12zkcredential12endorsementsNtB5_17ServerRootKeyPair8generate(ptr dead_on_unwind noalias nofree noundef writable sret([192 x i8]) align 8 captures(address) dereferenceable(192) %0, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 4 uses
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  %i.d = alloca [224 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXNtCsfFEWD1QhNwv_6poksho13shohmacsha256NtB2_13ShoHmacSha256NtNtB4_6shoapi6ShoApi3new(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 68)
  invoke void @_RNvXNtCsfFEWD1QhNwv_6poksho13shohmacsha256NtB2_13ShoHmacSha256NtNtB4_6shoapi6ShoApi6absorb(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 32)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.d, ptr nonnull align 1 %i.b, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.d) #23, !srcloc !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  invoke void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs17t5S1clqUH_12zkcredential.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXNtCsfFEWD1QhNwv_6poksho13shohmacsha256NtB2_13ShoHmacSha256NtNtB4_6shoapi6ShoApi7ratchet(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvYNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256NtNtCs17t5S1clqUH_12zkcredential3sho6ShoExt10get_scalarBZ_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.d)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvMsp_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPoint8mul_base(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.g, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.c, i64 32, i1 false), !alias.scope !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !94
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(224) %i.d, ptr nonnull align 1 %i.a, i64 64, i1 true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void asm sideeffect inteldialect "# ${0:q}", "r,~{memory}"(ptr nonnull align 8 dereferenceable(224) %i.d) #23, !srcloc !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @_RNvXCseNmJmsPJ47l_7zeroizeuNtB2_7Zeroize7zeroizeCs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs17t5S1clqUH_12zkcredential.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs9_NtCs17t5S1clqUH_12zkcredential12endorsementsNtB5_19ServerRootPublicKey26derive_key_from_tag_scalar(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsp_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPoint8mul_base(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %2)
  call void @_RNvXsL_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB5_14RistrettoPointNtNtNtCsgxBkk5gSRhY_4core3ops5arith3Add3add(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsa_NtCs17t5S1clqUH_12zkcredential12endorsementsNtB5_19EndorsementResponse15proof_statement(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCsfFEWD1QhNwv_6poksho9statementNtB2_9Statement3new(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.a)
  invoke void @_RNvMNtCsfFEWD1QhNwv_6poksho9statementNtB2_9Statement3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @3, i64 noundef 1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho9statement9StatementECs17t5S1clqUH_12zkcredential(ptr noalias nofree noundef align 8 dereferenceable(168) %i.a) #21
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMNtCsfFEWD1QhNwv_6poksho9statementNtB2_9Statement3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @6, i64 noundef 1)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
end_hunk_0
