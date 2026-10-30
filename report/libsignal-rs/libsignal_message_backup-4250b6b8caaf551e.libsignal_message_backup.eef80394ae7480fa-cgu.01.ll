Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_message_backup-4250b6b8caaf551e.libsignal_message_backup.eef80394ae7480fa-cgu.01?download=true
inline.NumInlined: 1025
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20payment_notification19transaction_details11TransactionEBL_:bb.a
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef 32, i64 noundef 8) #16
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20payment_notification19transaction_details27MobileCoinTxoIdentificationEEB1j_.exit.i.i

bb.m:                                             ; preds = %.body4.i.i.i.i, %.body.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

.body:                                            ; preds = %bb.l, %.body4.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.body4.i.i.i.i ], [ %i.n, %bb.l ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef 64, i64 noundef 8) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #14
          to label %.body6 unwind label %bb.x

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20payment_notification19transaction_details27MobileCoinTxoIdentificationEEB1j_.exit.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecIBC_hEEECskw1zp9IbpTW_24libsignal_message_backup.exit6.i.i.i.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef 64, i64 noundef 8) #16
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsh1373Z0TDxr_8protobuf13message_field12MessageFieldNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20payment_notification19transaction_details27MobileCoinTxoIdentificationEEB1G_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsh1373Z0TDxr_8protobuf13message_field12MessageFieldNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20payment_notification19transaction_details27MobileCoinTxoIdentificationEEB1G_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20payment_notification19transaction_details27MobileCoinTxoIdentificationEEB1j_.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !range !8, !alias.scope !1261, !noundef !4
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsh1373Z0TDxr_8protobuf13message_field12MessageFieldNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20payment_notification19transaction_details27MobileCoinTxoIdentificationEEB1G_.exit
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body6 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.q

.body6:                                           ; preds = %bb.q, %bb.o, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body ], [ %i.w, %bb.q ], [ %i.t, %bb.o ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #14
          to label %.body10 unwind label %bb.x

bb.q:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body6

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsh1373Z0TDxr_8protobuf13message_field12MessageFieldNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20payment_notification19transaction_details27MobileCoinTxoIdentificationEEB1G_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !range !8, !alias.scope !1262, !noundef !4
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit13, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i9 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body10 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i9: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit13 unwind label %bb.u

.body10:                                          ; preds = %bb.u, %bb.s, %.body6
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body6 ], [ %i.ad, %bb.u ], [ %i.aa, %bb.s ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val4 = load ptr, ptr %i.ac, align 8, !align !5, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup(ptr %.val4) #14
          to label %common.resume unwind label %bb.x

bb.u:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i9
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body10

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit13: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val = load ptr, ptr %i.ae, align 8, !align !5, !noundef !4 ; 4 uses
  %i.af = icmp eq ptr %.val, null
  br i1 %i.af, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit13
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.w

common.resume:                                    ; preds = %.body10, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.w ], [ %.pn2, %.body10 ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.v
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #16
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.v
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #16
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit13, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  ret void

bb.x:                                             ; preds = %.body10, %.body6, %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #15
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20payment_notification19transaction_details17FailedTransactionEBL_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #16
  resume { ptr, i32 } %i.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #16
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEBL_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #16
  resume { ptr, i32 } %i.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #16
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream17read_raw_varint64(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = sub nuw i64 %i.f, %i.d                   ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  %.not.i = icmp eq i64 %i.f, %i.d
  br i1 %.not.i, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not9.i = icmp eq i64 %i.g, 1
  br i1 %.not9.i, label %bb.aa, label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !1269, !noundef !4 ; 4 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.x, label %bb.b

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  br label %bb.aa

bb.e:                                             ; preds = %bb.t
  %i.k = load i8, ptr %i.bn, align 1, !alias.scope !1271, !noundef !4 ; 2 uses
  %i.l = icmp ugt i8 %i.k, 1
  br i1 %i.l, label %bb.y, label %bb.u

bb.f:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.m = icmp samesign eq i64 %i.g, 2
  br i1 %i.m, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = and i8 %i.bz, 127
  %i.o = zext nneg i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 7
  %1 = and i8 %i.i, 127
  %2 = zext nneg i8 %1 to i64
  %3 = or disjoint i64 %i.p, %2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.s = load i8, ptr %i.q, align 1, !alias.scope !1271, !noundef !4 ; 2 uses
  %i.t = and i8 %i.s, 127
  %i.u = zext nneg i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 14
  %i.w = or disjoint i64 %i.v, %3                 ; 2 uses
  %i.x = icmp sgt i8 %i.s, -1
  br i1 %i.x, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp samesign eq i64 %i.g, 3
  br i1 %i.y, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.aa = load i8, ptr %i.r, align 1, !alias.scope !1271, !noundef !4 ; 2 uses
  %i.ab = and i8 %i.aa, 127
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 21
  %i.ae = or disjoint i64 %i.ad, %i.w             ; 2 uses
  %i.af = icmp sgt i8 %i.aa, -1
  br i1 %i.af, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp samesign eq i64 %i.g, 4
  br i1 %i.ag, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.ai = load i8, ptr %i.z, align 1, !alias.scope !1271, !noundef !4 ; 2 uses
  %i.aj = and i8 %i.ai, 127
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 28
  %i.am = or disjoint i64 %i.al, %i.ae            ; 2 uses
  %i.an = icmp sgt i8 %i.ai, -1
  br i1 %i.an, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp samesign eq i64 %i.g, 5
  br i1 %i.ao, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.aq = load i8, ptr %i.ah, align 1, !alias.scope !1271, !noundef !4 ; 2 uses
  %i.ar = and i8 %i.aq, 127
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 35
  %i.au = or disjoint i64 %i.at, %i.am            ; 2 uses
  %i.av = icmp sgt i8 %i.aq, -1
  br i1 %i.av, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp samesign eq i64 %i.g, 6
  br i1 %i.aw, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 7
  %i.ay = load i8, ptr %i.ap, align 1, !alias.scope !1271, !noundef !4 ; 2 uses
  %i.az = and i8 %i.ay, 127
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 42
  %i.bc = or i64 %i.bb, %i.au                     ; 2 uses
  %i.bd = icmp sgt i8 %i.ay, -1
  br i1 %i.bd, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = icmp samesign eq i64 %i.g, 7
  br i1 %i.be, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bg = load i8, ptr %i.ax, align 1, !alias.scope !1271, !noundef !4 ; 2 uses
  %i.bh = and i8 %i.bg, 127
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 49
  %i.bk = or i64 %i.bj, %i.bc                     ; 2 uses
  %i.bl = icmp sgt i8 %i.bg, -1
  br i1 %i.bl, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = icmp samesign eq i64 %i.g, 8
  br i1 %i.bm, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.bo = load i8, ptr %i.bf, align 1, !alias.scope !1271, !noundef !4 ; 2 uses
  %i.bp = and i8 %i.bo, 127
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 56
  %i.bs = or i64 %i.br, %i.bk                     ; 2 uses
  %i.bt = icmp sgt i8 %i.bo, -1
  br i1 %i.bt, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = icmp samesign eq i64 %i.g, 9
  br i1 %i.bu, label %bb.aa, label %bb.e

bb.u:                                             ; preds = %bb.e
  %i.bv = zext nneg i8 %i.k to i64
  %i.bw = shl nuw i64 %i.bv, 63
  %i.bx = or i64 %i.bw, %i.bs
  br label %bb.z

bb.v:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !1269, !noundef !4 ; 3 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %bb.w, label %bb.f

bb.w:                                             ; preds = %bb.v
  %4 = and i8 %i.i, 127
  %5 = zext nneg i8 %4 to i64
  %i.cb = zext nneg i8 %i.bz to i64
  %i.cc = shl nuw nsw i64 %i.cb, 7
  %i.cd = or disjoint i64 %i.cc, %5
  br label %bb.z

bb.x:                                             ; preds = %bb.c
  %i.ce = zext nneg i8 %i.i to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1272
  store i8 3, ptr %i.a, align 8, !noalias !1272
  %i.cf = call noundef nonnull align 8 ptr @_RNvXs_NtCsh1373Z0TDxr_8protobuf5errorNtB4_5ErrorINtNtCsgxBkk5gSRhY_4core7convert4FromNtB4_9WireErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1272
  %i.cg = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.cf, 1
  br label %bb.af

bb.z:                                             ; preds = %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %bb.x, %bb.w, %bb.u
  %.sroa.17.0.ph.ph = phi i64 [ %i.bx, %bb.u ], [ %i.ce, %bb.x ], [ %i.cd, %bb.w ], [ %i.bs, %bb.s ], [ %i.bk, %bb.q ], [ %i.am, %bb.k ], [ %i.ae, %bb.i ], [ %i.w, %bb.g ], [ %i.bc, %bb.o ], [ %i.au, %bb.m ]
  %.sroa.10.0.ph.ph = phi i64 [ 10, %bb.u ], [ 1, %bb.x ], [ 2, %bb.w ], [ 9, %bb.s ], [ 8, %bb.q ], [ 5, %bb.k ], [ 4, %bb.i ], [ 3, %bb.g ], [ 7, %bb.o ], [ 6, %bb.m ] ; 2 uses
  %i.ch = inttoptr i64 %.sroa.17.0.ph.ph to ptr
  %.not = icmp ugt i64 %.sroa.10.0.ph.ph, %i.g
  br i1 %.not, label %bb.ab, label %bb.ac, !prof !1273

bb.aa:                                            ; preds = %bb.f, %bb.h, %bb.j, %bb.b, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.d
  %i.ci = tail call { i64, ptr } @_RNvMNtCsh1373Z0TDxr_8protobuf18coded_input_streamNtB2_16CodedInputStream22read_raw_varint64_slow(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0)
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #17
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.cj = add i64 %i.d, %.sroa.10.0.ph.ph         ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.d
  br i1 %i.ck, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.cj, ptr %i.c, align 8
  %i.cl = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ch, 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.ad, %bb.y
  %.merged = phi { i64, ptr } [ %i.cg, %bb.y ], [ %i.cl, %bb.ad ], [ %i.ci, %bb.aa ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10ChatFolderNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10SendStatusNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11AccountDataNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11FilePointerNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11LinkPreviewNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11StickerPackNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup12ReleaseNotesNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup14ContactMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup14IndividualCallNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup14StickerMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup15GroupNameUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup15StandardMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup15ViewOnceMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup16DistributionListNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup16PinMessageUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup16SimpleChatUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17ChatUpdateMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17GroupAvatarUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17MessageAttachmentNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18GenericGroupUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup19AdminDeletedMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup19GroupCreationUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup19NotificationProfileNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup19PaymentNotificationNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup19PollTerminateUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20DistributionListItemNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20RemoteDeletedMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup21GroupChangeChatUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup21GroupMemberLeftUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup21ThreadMergeChatUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22GroupAdminStatusUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22GroupDescriptionUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22GroupJoinRequestUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22GroupMemberAddedUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22GroupV2MigrationUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup23DirectStoryReplyMessageNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup23GroupMemberJoinedUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup23ProfileChangeChatUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24GroupMemberRemovedUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24LearnedProfileChatUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24SelfInvitedToGroupUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup25ExpirationTimerChatUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup25GroupUnknownInviteeUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26GroupExpirationTimerUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26GroupInviteLinkResetUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26GroupTerminateChangeUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup27SessionSwitchoverChatUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup28GroupInvitationRevokedUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup28GroupInviteLinkEnabledUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup29GroupInvitationAcceptedUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup29GroupInvitationDeclinedUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup29GroupInviteLinkDisabledUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup29GroupMemberJoinedByLinkUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup30GroupJoinRequestApprovalUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup30GroupJoinRequestCanceledUpdateNtNtCsh1373Z0TDxr_8protobuf7message7Message17check_initializedB8_(ptr noundef nonnull align 8) unnamed_addr #0

end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!1073 = distinct !{!1073, !1072, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup5QuoteEBH_: argument 0"}
!1074 = !{!1073}
!1075 = distinct !{!1075, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup19chat_update_message6UpdateEEB15_"}
!1076 = distinct !{!1076, !1075, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup19chat_update_message6UpdateEEB15_: argument 0"}
!1077 = distinct !{!1077, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup19chat_update_message6UpdateEBJ_"}
!1078 = distinct !{!1078, !1077, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup19chat_update_message6UpdateEBJ_: argument 0"}
!1079 = !{!1076}
!1080 = !{i64 -1, i64 13}
!1081 = !{!1078}
!1082 = !{!1078, !1076}
!1083 = distinct !{!1083, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1084 = distinct !{!1084, !1083, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1085 = !{!1084}
!1086 = distinct !{!1086, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1087 = distinct !{!1087, !1086, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1088 = !{!1087}
!1089 = distinct !{!1089, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1090 = distinct !{!1090, !1089, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1091 = !{!1090}
!1092 = distinct !{!1092, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1093 = distinct !{!1093, !1092, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1094 = !{!1093}
!1095 = distinct !{!1095, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup"}
!1096 = distinct !{!1096, !1095, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1097 = !{!1096}
!1098 = distinct !{!1098, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup"}
!1099 = distinct !{!1099, !1098, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1100 = distinct !{!1100, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup"}
!1101 = distinct !{!1101, !1100, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1102 = distinct !{!1102, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup"}
!1103 = distinct !{!1103, !1102, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1104 = !{!1099}
!1105 = !{!1101}
!1106 = !{!1103}
!1107 = distinct !{!1107, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22distribution_list_item4ItemEEB15_"}
!1108 = distinct !{!1108, !1107, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22distribution_list_item4ItemEEB15_: argument 0"}
!1109 = distinct !{!1109, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22distribution_list_item4ItemEEB15_"}
!1110 = distinct !{!1110, !1109, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22distribution_list_item4ItemEEB15_: argument 0"}
!1111 = !{!1108}
!1112 = !{!1110}
!1113 = distinct !{!1113, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1114 = distinct !{!1114, !1113, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1115 = !{!1114}
!1116 = distinct !{!1116, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1117 = distinct !{!1117, !1116, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1118 = distinct !{!1118, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup"}
!1119 = distinct !{!1119, !1118, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1120 = !{!1117}
!1121 = !{!1119}
!1122 = distinct !{!1122, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1123 = distinct !{!1123, !1122, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1124 = distinct !{!1124, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1125 = distinct !{!1125, !1124, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1126 = !{!1123}
!1127 = !{!1125}
!1128 = distinct !{!1128, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_"}
!1129 = distinct !{!1129, !1128, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_: argument 0"}
!1130 = !{!1129}
!1131 = distinct !{!1131, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1132 = distinct !{!1132, !1131, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1133 = !{!1132}
!1134 = distinct !{!1134, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup27learned_profile_chat_update12PreviousNameEEB15_"}
!1135 = distinct !{!1135, !1134, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup27learned_profile_chat_update12PreviousNameEEB15_: argument 0"}
!1136 = !{!1135}
!1137 = distinct !{!1137, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1138 = distinct !{!1138, !1137, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1139 = !{!1138}
!1140 = distinct !{!1140, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1141 = distinct !{!1141, !1140, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1142 = !{!1141}
!1143 = distinct !{!1143, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1144 = distinct !{!1144, !1143, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1145 = !{!1144}
!1146 = distinct !{!1146, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1147 = distinct !{!1147, !1146, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1148 = !{!1147}
!1149 = distinct !{!1149, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1150 = distinct !{!1150, !1149, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1151 = !{!1150}
!1152 = distinct !{!1152, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1153 = distinct !{!1153, !1152, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1154 = !{!1153}
!1155 = distinct !{!1155, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1156 = distinct !{!1156, !1155, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1157 = !{!1156}
!1158 = distinct !{!1158, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1159 = distinct !{!1159, !1158, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1160 = !{!1159}
!1161 = distinct !{!1161, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1162 = distinct !{!1162, !1161, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1163 = distinct !{!1163, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1164 = distinct !{!1164, !1163, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1165 = !{!1162}
!1166 = !{!1164}
!1167 = distinct !{!1167, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1168 = distinct !{!1168, !1167, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1169 = !{!1168}
!1170 = distinct !{!1170, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1171 = distinct !{!1171, !1170, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1172 = !{!1171}
!1173 = distinct !{!1173, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1174 = distinct !{!1174, !1173, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1175 = !{!1174}
!1176 = distinct !{!1176, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1177 = distinct !{!1177, !1176, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1178 = !{!1177}
!1179 = distinct !{!1179, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1180 = distinct !{!1180, !1179, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1181 = !{!1180}
!1182 = distinct !{!1182, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1183 = distinct !{!1183, !1182, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1184 = !{!1183}
!1185 = distinct !{!1185, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1186 = distinct !{!1186, !1185, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1187 = !{!1186}
!1188 = distinct !{!1188, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1189 = distinct !{!1189, !1188, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1190 = !{!1189}
!1191 = distinct !{!1191, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1192 = distinct !{!1192, !1191, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1193 = distinct !{!1193, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1194 = distinct !{!1194, !1193, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1195 = distinct !{!1195, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup"}
!1196 = distinct !{!1196, !1195, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1197 = distinct !{!1197, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1198 = distinct !{!1198, !1197, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1199 = distinct !{!1199, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup"}
!1200 = distinct !{!1200, !1199, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1201 = distinct !{!1201, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup"}
!1202 = distinct !{!1202, !1201, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1203 = distinct !{!1203, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1204 = distinct !{!1204, !1203, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1205 = distinct !{!1205, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1206 = distinct !{!1206, !1205, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1207 = !{!1192}
!1208 = !{!1194}
!1209 = !{!1196}
!1210 = !{!1198}
!1211 = !{!1200}
!1212 = !{!1202}
!1213 = !{!1204}
!1214 = !{!1206}
!1215 = distinct !{!1215, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1216 = distinct !{!1216, !1215, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1217 = !{!1216}
!1218 = distinct !{!1218, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10body_range15AssociatedValueEEB15_"}
!1219 = distinct !{!1219, !1218, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10body_range15AssociatedValueEEB15_: argument 0"}
!1220 = !{!1219}
!1221 = distinct !{!1221, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9recipient11DestinationEEB15_"}
!1222 = distinct !{!1222, !1221, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9recipient11DestinationEEB15_: argument 0"}
!1223 = distinct !{!1223, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9recipient11DestinationEBJ_"}
!1224 = distinct !{!1224, !1223, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9recipient11DestinationEBJ_: argument 0"}
!1225 = !{!1222}
!1226 = !{!1224}
!1227 = !{!1224, !1222}
!1228 = distinct !{!1228, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style17custom_chat_color5ColorEEB17_"}
!1229 = distinct !{!1229, !1228, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style17custom_chat_color5ColorEEB17_: argument 0"}
!1230 = !{!1229}
!1231 = distinct !{!1231, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_"}
!1232 = distinct !{!1232, !1231, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_: argument 0"}
!1233 = distinct !{!1233, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_"}
!1234 = distinct !{!1234, !1233, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_: argument 0"}
!1235 = !{!1232}
!1236 = !{i64 -1, i64 -9223372036854775772}
!1237 = !{!1234}
!1238 = !{!1234, !1232}
!1239 = distinct !{!1239, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1240 = distinct !{!1240, !1239, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1241 = distinct !{!1241, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1242 = distinct !{!1242, !1241, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1243 = distinct !{!1243, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1244 = distinct !{!1244, !1243, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1245 = !{!1240}
!1246 = !{!1242}
!1247 = !{!1244}
!1248 = distinct !{!1248, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup"}
!1249 = distinct !{!1249, !1248, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1250 = distinct !{!1250, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup"}
!1251 = distinct !{!1251, !1250, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1252 = !{!1249}
!1253 = !{!1251}
!1254 = distinct !{!1254, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20payment_notification19transaction_details27MobileCoinTxoIdentificationEBL_"}
!1255 = distinct !{!1255, !1254, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20payment_notification19transaction_details27MobileCoinTxoIdentificationEBL_: argument 0"}
!1256 = distinct !{!1256, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1257 = distinct !{!1257, !1256, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1258 = distinct !{!1258, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup"}
!1259 = distinct !{!1259, !1258, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1260 = !{!1255}
!1261 = !{!1257}
!1262 = !{!1259}
!1263 = distinct !{!1263, i1 true, !"_RINvNtNtCsh1373Z0TDxr_8protobuf6varint6decode18decode_varint_implyECskw1zp9IbpTW_24libsignal_message_backup"}
!1264 = distinct !{!1264, !1263, !"_RINvNtNtCsh1373Z0TDxr_8protobuf6varint6decode18decode_varint_implyECskw1zp9IbpTW_24libsignal_message_backup: argument 1"}
!1265 = distinct !{!1265, i1 true, !"_RINvNtNtCsh1373Z0TDxr_8protobuf6varint6decode18decode_varint_fullyECskw1zp9IbpTW_24libsignal_message_backup"}
!1266 = distinct !{!1266, !1265, !"_RINvNtNtCsh1373Z0TDxr_8protobuf6varint6decode18decode_varint_fullyECskw1zp9IbpTW_24libsignal_message_backup: argument 1"}
!1267 = distinct !{!1267, !1263, !"_RINvNtNtCsh1373Z0TDxr_8protobuf6varint6decode18decode_varint_implyECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1268 = distinct !{!1268, !1265, !"_RINvNtNtCsh1373Z0TDxr_8protobuf6varint6decode18decode_varint_fullyECskw1zp9IbpTW_24libsignal_message_backup: argument 0"}
!1269 = !{!1264}
!1270 = !{!1266}
!1271 = !{!1266, !1264}
!1272 = !{!1268, !1266, !1267, !1264}
!1273 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
end_hunk_1
