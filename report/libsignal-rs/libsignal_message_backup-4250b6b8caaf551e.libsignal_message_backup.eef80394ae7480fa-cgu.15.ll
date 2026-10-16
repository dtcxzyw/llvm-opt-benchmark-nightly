Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_message_backup-4250b6b8caaf551e.libsignal_message_backup.eef80394ae7480fa-cgu.15?download=true
inline.NumInlined: 334
inline.NumDeleted: 193
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtB14_6method5StoreEEEB16_:bb.a
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file7LocatorEBH_.exit.i.i.i.i.i
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i unwind label %bb.z, !noalias !63

bb.z:                                             ; preds = %bb.y
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body8.i.i.i.i.i unwind label %bb.aa, !noalias !63

bb.aa:                                            ; preds = %bb.z
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19, !noalias !63
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i: ; preds = %bb.y
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i unwind label %bb.ab, !noalias !63

.body8.i.i.i.i.i:                                 ; preds = %bb.ab, %bb.z, %.body.i.i.i.i.i
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.ao, %bb.ab ], [ %i.al, %bb.z ]
  %i.an = getelementptr inbounds nuw i8, ptr %.val1.i, i64 168
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #20
          to label %.body11.i.i.i.i.i unwind label %bb.ar, !noalias !63

bb.ab:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i.i.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file7LocatorEBH_.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1.i, i64 168 ; 4 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !5, !alias.scope !69, !noalias !63, !noundef !4
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i unwind label %bb.ad, !noalias !63

bb.ad:                                            ; preds = %bb.ac
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body11.i.i.i.i.i unwind label %bb.ae, !noalias !63

bb.ae:                                            ; preds = %bb.ad
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19, !noalias !63
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i unwind label %bb.af, !noalias !63

.body11.i.i.i.i.i:                                ; preds = %bb.af, %bb.ad, %.body8.i.i.i.i.i
  %.pn2.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %.body8.i.i.i.i.i ], [ %i.av, %bb.af ], [ %i.as, %bb.ad ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i, i64 192
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #20
          to label %.body16.i.i.i.i.i unwind label %bb.ar, !noalias !63

bb.af:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i.i.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i, i64 192 ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8, !range !5, !alias.scope !70, !noalias !63, !noundef !4
  %i.ay = icmp eq i64 %i.ax, -1
  br i1 %i.ay, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit19.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i15.i.i.i.i.i unwind label %bb.ah, !noalias !63

bb.ah:                                            ; preds = %bb.ag
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body16.i.i.i.i.i unwind label %bb.ai, !noalias !63

bb.ai:                                            ; preds = %bb.ah
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19, !noalias !63
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i15.i.i.i.i.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit19.i.i.i.i.i unwind label %bb.aj, !noalias !63

.body16.i.i.i.i.i:                                ; preds = %bb.aj, %bb.ah, %.body11.i.i.i.i.i
  %.pn4.i.i.i.i.i = phi { ptr, i32 } [ %.pn2.i.i.i.i.i, %.body11.i.i.i.i.i ], [ %i.bc, %bb.aj ], [ %i.az, %bb.ah ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i, i64 216
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #20
          to label %.body22.i.i.i.i.i unwind label %bb.ar, !noalias !63

bb.aj:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i15.i.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body16.i.i.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit19.i.i.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i15.i.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1.i, i64 216 ; 4 uses
  %i.be = load i64, ptr %i.bd, align 8, !range !5, !alias.scope !71, !noalias !63, !noundef !4
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit25.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit19.i.i.i.i.i
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i21.i.i.i.i.i unwind label %bb.al, !noalias !63

bb.al:                                            ; preds = %bb.ak
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.body22.i.i.i.i.i unwind label %bb.am, !noalias !63

bb.am:                                            ; preds = %bb.al
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19, !noalias !63
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i21.i.i.i.i.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit25.i.i.i.i.i unwind label %bb.an, !noalias !63

.body22.i.i.i.i.i:                                ; preds = %bb.an, %bb.al, %.body16.i.i.i.i.i
  %.pn6.i.i.i.i.i = phi { ptr, i32 } [ %.pn4.i.i.i.i.i, %.body16.i.i.i.i.i ], [ %i.bj, %bb.an ], [ %i.bg, %bb.al ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i, i64 240
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bi) #20
          to label %.body.i unwind label %bb.ar, !noalias !63

bb.an:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i21.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i.i.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit25.i.i.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i21.i.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit19.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1.i, i64 240 ; 4 uses
  %i.bl = load i64, ptr %i.bk, align 8, !range !5, !alias.scope !72, !noalias !63, !noundef !4
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit25.i.i.i.i.i
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i27.i.i.i.i.i unwind label %bb.ap, !noalias !63

bb.ap:                                            ; preds = %bb.ao
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %.body.i unwind label %bb.aq, !noalias !63

bb.aq:                                            ; preds = %bb.ap
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19, !noalias !63
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i27.i.i.i.i.i: ; preds = %bb.ao
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i unwind label %bb.as, !noalias !63

bb.ar:                                            ; preds = %.body22.i.i.i.i.i, %.body16.i.i.i.i.i, %.body11.i.i.i.i.i, %.body8.i.i.i.i.i, %.body.i.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19, !noalias !63
  unreachable

bb.as:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i27.i.i.i.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.as, %bb.ap, %.body22.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.bq, %bb.as ], [ %i.bn, %bb.ap ], [ %.pn6.i.i.i.i.i, %.body22.i.i.i.i.i ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 288, i64 noundef 8) #21, !noalias !63
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.bs = load i8, ptr %i.br, align 8, !range !62, !alias.scope !74, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %bb.at, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style11BubbleColorINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i27.i.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit25.i.i.i.i.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 288, i64 noundef 8) #21, !noalias !63
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i

bb.at:                                            ; preds = %.body.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !77, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !77
  %i.bw = icmp eq i64 %1, 1
  br i1 %i.bw, label %bb.au, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style11BubbleColorINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style15CustomChatColorE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style11BubbleColorINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i unwind label %bb.ax

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i, %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.by = load i8, ptr %i.bx, align 8, !range !62, !alias.scope !79, !noundef !4
  %i.bz = icmp eq i8 %i.by, 1
  br i1 %i.bz, label %bb.av, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtBI_6method5StoreEEBK_.exit

bb.av:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !82, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !82
  %i.cc = icmp eq i64 %2, 1
  br i1 %i.cc, label %bb.aw, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtBI_6method5StoreEEBK_.exit

bb.aw:                                            ; preds = %bb.av
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style15CustomChatColorE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtBI_6method5StoreEEBK_.exit

bb.ax:                                            ; preds = %bb.au
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style11BubbleColorINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i: ; preds = %bb.au, %bb.at, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup12account_data12SubscriptionEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup12account_data12SubscriptionEBH_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup12account_data12SubscriptionEBH_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup12account_data12SubscriptionEBH_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup12account_data17IapSubscriberDataEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !4
  %switch = icmp ugt i64 %i.a, -3
  br i1 %switch, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup12account_data17IapSubscriberDataEBH_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup12account_data17IapSubscriberDataEBH_.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup12account_data17IapSubscriberDataEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file18TransitTierLocatorEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file18TransitTierLocatorEBH_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file18TransitTierLocatorEBH_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file18TransitTierLocatorEBH_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup12account_data12UsernameLinkEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup12account_data12UsernameLinkEBJ_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup12account_data12UsernameLinkEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit6.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #20
          to label %.body4.i unwind label %bb.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.g

end_hunk_0
begin_hunk_1_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup12account_data20AutoDownloadSettingsEBJ_:bb.a

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #21
  resume { ptr, i32 } %i.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup12account_data23AndroidSpecificSettingsEBJ_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #21
  resume { ptr, i32 } %i.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !alias.scope !104, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #20
          to label %.body7 unwind label %bb.p

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !5, !alias.scope !105, !noundef !4
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit10, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i6 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body7 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i6: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit10 unwind label %bb.i

.body7:                                           ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.i ], [ %i.j, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #20
          to label %.body13 unwind label %bb.p

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i6
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body7

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit10: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !5, !alias.scope !106, !noundef !4
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit16, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit10
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i12 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body13 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i12: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit16 unwind label %bb.m

.body13:                                          ; preds = %bb.m, %bb.k, %.body7
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body7 ], [ %i.t, %bb.m ], [ %i.q, %bb.k ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val4 = load ptr, ptr %i.s, align 8, !align !9, !noundef !4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup(ptr %.val4) #20
          to label %common.resume unwind label %bb.p

bb.m:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i12
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit16: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit10, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.u, align 8, !align !9, !noundef !4 ; 4 uses
  %i.v = icmp eq ptr %.val, null
  br i1 %i.v, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit16
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.o

common.resume:                                    ; preds = %.body13, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.o ], [ %.pn2, %.body13 ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #21
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.n
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit16, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  ret void

bb.p:                                             ; preds = %.body13, %.body7, %.body
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !119, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !119
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.a) #20
          to label %.body.i unwind label %bb.h

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %.body.i unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.i, %bb.g ], [ %i.f, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtB14_6method5StoreEEEB16_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h) #20
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %.body.i, %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.i:                                             ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_.exit: ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtB14_6method5StoreEEEB16_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.k)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgxBkk5gSRhY_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1n_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2r_15CustomChatColorINtNtB6_7convert7TryFromNtNtNtNtNtB2x_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0ENtB2r_19BubbleGradientColorINtNtB6_6result6ResultNtB3Z_10InfallibleNtB2r_14ChatStyleErrorENCINvXso_B62_IB60_INtNtNtB2v_9serialize14unordered_list13UnorderedListB5y_EB6D_EINtNtNtB4_6traits7collect12FromIteratorIB60_B5y_B6D_EE9from_iterBQ_E0B7i_EB2x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RINvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_listINtB5_13UnorderedListNtNtNtB9_4chat10chat_style19BubbleGradientColorEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12FromIteratorB1H_E9from_iterINtNtB2A_8adapters12GenericShuntINtNtB3L_3map3MapINtNtB3L_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB4N_fEENCNvXs7_B1J_NtB1J_15CustomChatColorINtNtB2C_7convert7TryFromNtNtNtNtNtBb_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB2C_6result6ResultNtB6l_10InfallibleNtB1J_14ChatStyleErrorEEEBb_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %i.c, align 8, !range !10, !noundef !4
  %.not.not = icmp eq i64 %i.d, -1
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -1, ptr %0, align 8, !alias.scope !122
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtNtBI_4chat10chat_style19BubbleGradientColorEEBK_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style19BubbleGradientColorENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtNtBI_4chat10chat_style19BubbleGradientColorEEBK_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style19BubbleGradientColorENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style19BubbleGradientColorEEB1m_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style19BubbleGradientColorEEB1m_.exit.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtNtBI_4chat10chat_style19BubbleGradientColorEEBK_.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style19BubbleGradientColorENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgxBkk5gSRhY_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeENCNCNvXs_NtNtNtB1Z_6backup4chat4textNtB3a_11MessageTextINtNtB6_7convert7TryFromNtB1V_4TextE8try_from00ENtB3a_9TextRangeINtNtB6_6result6ResultNtB3X_10InfallibleNtB3a_9TextErrorENCINvXso_B4Z_IB4X_INtNtNtB3e_9serialize14unordered_list13UnorderedListB4G_EB5A_EINtNtNtB4_6traits7collect12FromIteratorIB4X_B4G_B5A_EE9from_iterBQ_E0B69_EB1Z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RINvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_listINtB5_13UnorderedListNtNtNtB9_4chat4text9TextRangeEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12FromIteratorB1H_E9from_iterINtNtB2i_8adapters12GenericShuntINtNtB3t_3map3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtBb_5proto6backup9BodyRangeENCNCNvXs_B1J_NtB1J_11MessageTextINtNtB2k_7convert7TryFromNtB52_4TextE8try_from00EINtNtB2k_6result6ResultNtB66_10InfallibleNtB1J_9TextErrorEEEBb_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i8, ptr %i.c, align 8, !range !11, !noundef !4
  %.not.not = icmp eq i8 %i.d, -1
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtNtBI_4chat4text9TextRangeEEBK_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  store i64 -1, ptr %0, align 8, !alias.scope !125
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtNtBI_4chat4text9TextRangeEEBK_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeEEB1m_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeEEB1m_.exit.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtNtBI_4chat4text9TextRangeEEBK_.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgxBkk5gSRhY_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeENvYB1T_INtNtB6_7convert7TryIntoNtNtNtNtB21_6backup4chat5group7InviteeE8try_intoEB43_INtNtB6_6result6ResultNtB3I_10InfallibleNtB45_12InviteeErrorENCINvXso_B4X_IB4V_INtNtNtB49_9serialize14unordered_list13UnorderedListB43_EB5y_EINtNtNtB4_6traits7collect12FromIteratorIB4V_B43_B5y_EE9from_iterBQ_E0B6b_EB21_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 9)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RINvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_listINtB5_13UnorderedListNtNtNtB9_4chat5group7InviteeEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12FromIteratorB1H_E9from_iterINtNtB2h_8adapters12GenericShuntINtNtB3s_3map3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtNtBb_5proto6backup31group_invitation_revoked_update7InviteeENvYB4Z_INtNtB2j_7convert7TryIntoB1H_E8try_intoEINtNtB2j_6result6ResultNtB6d_10InfallibleNtB1J_12InviteeErrorEEEBb_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i8, ptr %i.c, align 1, !range !12, !noundef !4 ; 2 uses
  %.not.not = icmp eq i8 %i.d, -1
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtNtBI_4chat5group7InviteeEEBK_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_RINvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2a_8adapters3map12map_try_foldBW_INtNtB2c_6result6ResultNtNtNtNtB12_6backup4chat4text9TextRangeNtB4f_9TextErrorEuINtNtNtB2c_3ops12control_flow11ControlFlowIB59_B4d_EENCNCNvXs_B4f_NtB4f_11MessageTextINtNtB2c_7convert7TryFromNtBY_4TextE8try_from00NCINvXB3g_INtB3g_12GenericShuntINtB3e_3MapBH_B5Z_EIB3R_NtB6y_10InfallibleB4Q_EEB24_8try_folduNCINvNvB24_12try_for_each4callB4d_B5O_NcNtB5O_5Break0E0B5O_E0E0B58_EB12_:bb.a
bb.t:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19, !noalias !163
  unreachable

_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.i: ; preds = %bb.q
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #21, !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.sroa.0.i.i, i64 6, i1 false)
  br label %bb.w

_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread.i: ; preds = %bb.g, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !163
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  store i32 %.sroa.62.0.i, ptr %.val, align 8, !noalias !165
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.y, align 4, !alias.scope !166
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.w
  ret void

bb.w:                                             ; preds = %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread42.i, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.i, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread.i
  %.sroa.11.0 = phi i64 [ undef, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread.i ], [ %.sroa.5.sroa.3.0.i.i, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.i ], [ %.sroa.5.sroa.3.0.i.i, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread42.i ]
  %.sroa.10.0 = phi i8 [ undef, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread.i ], [ %.sroa.5.sroa.2.0.i.i, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.i ], [ %.sroa.5.sroa.2.0.i.i, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread42.i ]
  %.sroa.79.0 = phi i8 [ undef, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread.i ], [ %.sroa.3.0.i.i, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.i ], [ %.sroa.3.0.i.i, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread42.i ]
  %.sroa.07.0 = phi i64 [ undef, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread.i ], [ %.sroa.8.0.copyload, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.i ], [ %.sroa.8.0.copyload, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread42.i ]
  %.sink.i = phi i8 [ 2, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread.i ], [ %.sroa.013.0.i.i, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.i ], [ %.sroa.013.0.i.i, %_RNCNCNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4textNtB8_11MessageTextINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBe_5proto6backup4TextE8try_from00Be_.exit.thread42.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.i)
  store i64 %.sroa.07.0, ptr %0, align 4, !alias.scope !167
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink.i, ptr %.sroa.419.0..sroa_idx, align 4, !alias.scope !167
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.79.0, ptr %.sroa.520.0..sroa_idx, align 1, !alias.scope !167
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.621.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.sroa.5.i, i64 6, i1 false)
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.10.0, ptr %.sroa.722.0..sroa_idx, align 4, !alias.scope !167
  %.sroa.823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i64 %.sroa.11.0, ptr %.sroa.823.0..sroa_idx, align 1, !alias.scope !167
  br label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2H_8adapters3map12map_try_foldBW_INtNtB2J_6result6ResultNtNtNtNtB14_6backup4chat5group7InviteeNtB4M_12InviteeErrorEuINtNtNtB2J_3ops12control_flow11ControlFlowIB5J_B4K_EENvYBW_INtNtB2J_7convert7TryIntoB4K_E8try_intoNCINvXB3N_INtB3N_12GenericShuntINtB3L_3MapBH_B6z_EIB4o_NtB6I_10InfallibleB5m_EEB2B_8try_folduNCINvNvB2B_12try_for_each4callB4K_B6o_NcNtB6o_5Break0E0B6o_E0E0B5I_EB14_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([51 x i8]) align 1 captures(none) dereferenceable(51) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [51 x i8], align 1                ; 7 uses
  %.sroa.77 = alloca [49 x i8], align 1           ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not20 = icmp eq ptr %.promoted, %i.d
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.g = phi ptr [ %.promoted, %.lr.ph ], [ %i.h, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 3 uses
  store ptr %i.h, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs6_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5groupNtB5_7InviteeINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtNtBb_5proto6backup31group_invitation_revoked_update7InviteeE8try_from(ptr noalias nofree noundef nonnull sret([51 x i8]) align 1 captures(none) dereferenceable(51) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a), !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !179
  %.sroa.0.0.copyload.i = load i8, ptr %i.b, align 1, !noalias !179 ; 3 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !noalias !179 ; 2 uses
  %i.i = icmp eq i8 %.sroa.0.0.copyload.i, 2
  br i1 %i.i, label %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeINtNtBa_6result6ResultNtNtNtNtB17_6backup4chat5group7InviteeNtB31_12InviteeErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Y_B2Z_EENvYBZ_INtNtBa_7convert7TryIntoB2Z_E8try_intoNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterBZ_EB4N_EIB2E_NtB4W_10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7x_12try_for_each4callB2Z_B4C_NcNtB4C_5Break0E0B4C_E0E0B17_.exit.thread, label %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeINtNtBa_6result6ResultNtNtNtNtB17_6backup4chat5group7InviteeNtB31_12InviteeErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Y_B2Z_EENvYBZ_INtNtBa_7convert7TryIntoB2Z_E8try_intoNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterBZ_EB4N_EIB2E_NtB4W_10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7x_12try_for_each4callB2Z_B4C_NcNtB4C_5Break0E0B4C_E0E0B17_.exit

_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeINtNtBa_6result6ResultNtNtNtNtB17_6backup4chat5group7InviteeNtB31_12InviteeErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Y_B2Z_EENvYBZ_INtNtBa_7convert7TryIntoB2Z_E8try_intoNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterBZ_EB4N_EIB2E_NtB4W_10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7x_12try_for_each4callB2Z_B4C_NcNtB4C_5Break0E0B4C_E0E0B17_.exit.thread: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  store i8 %.sroa.4.0.copyload.i, ptr %.val.le, align 1, !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeINtNtBa_6result6ResultNtNtNtNtB17_6backup4chat5group7InviteeNtB31_12InviteeErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Y_B2Z_EENvYBZ_INtNtBa_7convert7TryIntoB2Z_E8try_intoNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterBZ_EB4N_EIB2E_NtB4W_10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7x_12try_for_each4callB2Z_B4C_NcNtB4C_5Break0E0B4C_E0E0B17_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %.sroa.77, ptr noundef nonnull align 1 dereferenceable(49) %i.f, i64 49, i1 false), !noalias !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i8 %.sroa.0.0.copyload.i, -1
  br i1 %.not.i, label %bb.d, label %.loopexit

._crit_edge:                                      ; preds = %bb.d, %bb.a
  store i8 -1, ptr %0, align 1, !alias.scope !182
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.loopexit
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeINtNtBa_6result6ResultNtNtNtNtB17_6backup4chat5group7InviteeNtB31_12InviteeErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Y_B2Z_EENvYBZ_INtNtBa_7convert7TryIntoB2Z_E8try_intoNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterBZ_EB4N_EIB2E_NtB4W_10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7x_12try_for_each4callB2Z_B4C_NcNtB4C_5Break0E0B4C_E0E0B17_.exit, %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeINtNtBa_6result6ResultNtNtNtNtB17_6backup4chat5group7InviteeNtB31_12InviteeErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Y_B2Z_EENvYBZ_INtNtBa_7convert7TryIntoB2Z_E8try_intoNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterBZ_EB4N_EIB2E_NtB4W_10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7x_12try_for_each4callB2Z_B4C_NcNtB4C_5Break0E0B4C_E0E0B17_.exit.thread
  %.sroa.5.012 = phi i8 [ undef, %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeINtNtBa_6result6ResultNtNtNtNtB17_6backup4chat5group7InviteeNtB31_12InviteeErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Y_B2Z_EENvYBZ_INtNtBa_7convert7TryIntoB2Z_E8try_intoNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterBZ_EB4N_EIB2E_NtB4W_10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7x_12try_for_each4callB2Z_B4C_NcNtB4C_5Break0E0B4C_E0E0B17_.exit.thread ], [ %.sroa.4.0.copyload.i, %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeINtNtBa_6result6ResultNtNtNtNtB17_6backup4chat5group7InviteeNtB31_12InviteeErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Y_B2Z_EENvYBZ_INtNtBa_7convert7TryIntoB2Z_E8try_intoNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterBZ_EB4N_EIB2E_NtB4W_10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7x_12try_for_each4callB2Z_B4C_NcNtB4C_5Break0E0B4C_E0E0B17_.exit ]
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %.sroa.59.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(49) %.sroa.77, i64 49, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.77)
  store i8 %.sroa.0.0.copyload.i, ptr %0, align 1, !alias.scope !183
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.5.012, ptr %.sroa.4.0..sroa_idx, align 1, !alias.scope !183
  br label %bb.c

bb.d:                                             ; preds = %_RNCINvNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map12map_try_foldNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeINtNtBa_6result6ResultNtNtNtNtB17_6backup4chat5group7InviteeNtB31_12InviteeErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3Y_B2Z_EENvYBZ_INtNtBa_7convert7TryIntoB2Z_E8try_intoNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterBZ_EB4N_EIB2E_NtB4W_10InfallibleB3B_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7x_12try_for_each4callB2Z_B4C_NcNtB4C_5Break0E0B4C_E0E0B17_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.77)
  %.not = icmp eq ptr %i.h, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB6_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtB11_9recipient17FullRecipientDataEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB22_ENCINvNtNtB2L_8adapters3map12map_try_foldBW_B22_B3J_INtNtB2N_6result6ResultB3J_zENCNvXs_NtB11_9serializeNtB5N_6BackupINtNtB2N_7convert4FromINtB11_15CompletedBackupNtNtB11_6method5StoreEE4froms0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB22_E0E0B5d_EB13_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not13 = icmp eq ptr %.promoted, %i.b
  br i1 %.not13, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.4.014 = phi ptr [ %i.h, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.g, %.lr.ph ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store ptr %i.f, ptr %.sroa.4.014, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.4.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.g, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.h, %._crit_edge ], [ %2, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMs0_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtB10_9recipient17FullRecipientDataEE8as_sliceB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %.val3 to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtB10_9recipient17FullRecipientDataEE32forget_allocation_drop_remainingB12_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.j = icmp eq ptr %.val1, %.val
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.l, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i
  %i.l = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !206, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !207
  %i.o = icmp eq i64 %1, 1
  br i1 %i.o, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.p = icmp eq i64 %i.l, %i.g
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.l, %i.g
  br i1 %i.r, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.t, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i
  %i.t = add i64 %.sroa.0.110.i, 1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !212, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !213
  %i.w = icmp eq i64 %2, 1
  br i1 %i.w, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.x = icmp eq i64 %i.t, %i.g
  br i1 %i.x, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i, %bb.c
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBH_9recipient17FullRecipientDataEEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i64 8192, 524289) i64 @_RNvNtCskw1zp9IbpTW_24libsignal_message_backup7padding14flush_interval(i64 noundef %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc nuw i64 %1 to i1
  %.not = icmp ne i64 %2, 0
  %or.cond.not = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = uitofp i64 %0 to double
  %i.c = fmul nnan double %i.b, 2.000000e+00
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %0, i64 %2)
  %i.d = uitofp i64 %.sroa.0.0.i to double
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.0 = phi double [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  %i.e = fmul nnan double %.sroa.02.0, 4.096000e+03
  %i.f = fdiv double %i.e, 6.000000e+00
  %i.g = tail call double @llvm.sqrt.f64(double %i.f)
  %i.h = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.g)
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8192)
  %.sroa.0.0.i4 = tail call noundef range(i64 8192, 524289) i64 @llvm.umin.i64(i64 %i.i, i64 524288)
  ret i64 %.sroa.0.0.i4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef double @_RNvNtCskw1zp9IbpTW_24libsignal_message_backup7padding5sigma(i64 noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %0, i64 8192)
  %i.a = uitofp i64 %.sroa.0.0.i to double
  %i.b = fmul nnan double %i.a, 2.000000e+00
  %i.c = fmul nnan double %i.b, 2.500000e-01
  ret double %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCskw1zp9IbpTW_24libsignal_message_backup5frame15forward_secrecy29warn_if_close_to_magic_number(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %0, ptr %i.g, align 8
  %i.h = call noundef zeroext i1 @_RNvMNtCsgxBkk5gSRhY_4core5sliceSh11starts_withCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 7)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load atomic i64, ptr @_RNvCsdbmLU2M1sR8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.j = icmp ult i64 %i.i, 6
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ugt i64 %i.i, 1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit, %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtNtCsgxBkk5gSRhY_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 7)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.l = load i64, ptr %i.e, align 8, !range !7, !alias.scope !216, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.e, label %_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit, !prof !217

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !216
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23, !noalias !216
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !216, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !216, !noundef !4
  store ptr %i.p, ptr %i.f, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.r, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  store ptr %i.t, ptr %i.d, align 8, !captures !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup, ptr %.sroa.44.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.u, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1o_NtCsgxBkk5gSRhY_4core3fmtRhNtB6_8LowerHex3fmtCskw1zp9IbpTW_24libsignal_message_backup, ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @9, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 48, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @9, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 48, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @8, ptr %i.y, align 8
  call void @_RINvNtCsdbmLU2M1sR8_3log13___private_api3loguNtB2_12GlobalLoggerECskw1zp9IbpTW_24libsignal_message_backup(ptr noundef nonnull @7, ptr noundef nonnull %i.c, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1u_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2y_15CustomChatColorINtNtB6_7convert7TryFromNtNtNtNtNtB2E_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB6_6result6ResultNtB46_10InfallibleNtB2y_14ChatStyleErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [12 x i8], align 4                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !223
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !222, !nonnull !4, !align !9, !noundef !4
  call void @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1e_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2i_15CustomChatColorINtNtBc_7convert7TryFromNtNtNtNtNtB2o_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtB3Q_10InfallibleNtB2i_14ChatStyleErrorEEB5p_8try_folduNCINvNvB5p_12try_for_each4callNtB2i_19BubbleGradientColorINtNtNtBc_3ops12control_flow11ControlFlowB8n_ENcNtB8O_5Break0E0B8O_E0IB8P_B8O_EEB2o_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1, ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d), !noalias !224
  %i.e = load i32, ptr %i.b, align 4, !range !225, !noalias !223, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.e, 2
  br i1 %.not.i, label %_RINvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1v_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2z_15CustomChatColorINtNtB7_7convert7TryFromNtNtNtNtNtB2F_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB7_6result6ResultNtB47_10InfallibleNtB2z_14ChatStyleErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6I_12try_for_each4callNtB2z_19BubbleGradientColorINtNtNtB7_3ops12control_flow11ControlFlowB7U_ENcNtB8l_5Break0E0B8l_EB2F_.exit.thread, label %_RINvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1v_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2z_15CustomChatColorINtNtB7_7convert7TryFromNtNtNtNtNtB2F_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB7_6result6ResultNtB47_10InfallibleNtB2z_14ChatStyleErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6I_12try_for_each4callNtB2z_19BubbleGradientColorINtNtNtB7_3ops12control_flow11ControlFlowB7U_ENcNtB8l_5Break0E0B8l_EB2F_.exit

_RINvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1v_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2z_15CustomChatColorINtNtB7_7convert7TryFromNtNtNtNtNtB2F_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB7_6result6ResultNtB47_10InfallibleNtB2z_14ChatStyleErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6I_12try_for_each4callNtB2z_19BubbleGradientColorINtNtNtB7_3ops12control_flow11ControlFlowB7U_ENcNtB8l_5Break0E0B8l_EB2F_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !223
  br label %bb.c

_RINvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1v_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2z_15CustomChatColorINtNtB7_7convert7TryFromNtNtNtNtNtB2F_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB7_6result6ResultNtB47_10InfallibleNtB2z_14ChatStyleErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6I_12try_for_each4callNtB2z_19BubbleGradientColorINtNtNtB7_3ops12control_flow11ControlFlowB7U_ENcNtB8l_5Break0E0B8l_EB2F_.exit: ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !noalias !222
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !223
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1v_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2z_15CustomChatColorINtNtB7_7convert7TryFromNtNtNtNtNtB2F_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB7_6result6ResultNtB47_10InfallibleNtB2z_14ChatStyleErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6I_12try_for_each4callNtB2z_19BubbleGradientColorINtNtNtB7_3ops12control_flow11ControlFlowB7U_ENcNtB8l_5Break0E0B8l_EB2F_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0.copyload, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.6.0.copyload, ptr %i.h, align 4
  br label %bb.c

bb.c:                                             ; preds = %_RINvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1v_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2z_15CustomChatColorINtNtB7_7convert7TryFromNtNtNtNtNtB2F_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB7_6result6ResultNtB47_10InfallibleNtB2z_14ChatStyleErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6I_12try_for_each4callNtB2z_19BubbleGradientColorINtNtNtB7_3ops12control_flow11ControlFlowB7U_ENcNtB8l_5Break0E0B8l_EB2F_.exit.thread, %_RINvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1v_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2z_15CustomChatColorINtNtB7_7convert7TryFromNtNtNtNtNtB2F_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB7_6result6ResultNtB47_10InfallibleNtB2z_14ChatStyleErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6I_12try_for_each4callNtB2z_19BubbleGradientColorINtNtNtB7_3ops12control_flow11ControlFlowB7U_ENcNtB8l_5Break0E0B8l_EB2F_.exit, %bb.b
  %storemerge = phi i32 [ 1, %bb.b ], [ 0, %_RINvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1v_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2z_15CustomChatColorINtNtB7_7convert7TryFromNtNtNtNtNtB2F_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB7_6result6ResultNtB47_10InfallibleNtB2z_14ChatStyleErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6I_12try_for_each4callNtB2z_19BubbleGradientColorINtNtNtB7_3ops12control_flow11ControlFlowB7U_ENcNtB8l_5Break0E0B8l_EB2F_.exit ], [ 0, %_RINvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1v_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2z_15CustomChatColorINtNtB7_7convert7TryFromNtNtNtNtNtB2F_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB7_6result6ResultNtB47_10InfallibleNtB2z_14ChatStyleErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6I_12try_for_each4callNtB2z_19BubbleGradientColorINtNtNtB7_3ops12control_flow11ControlFlowB7U_ENcNtB8l_5Break0E0B8l_EB2F_.exit.thread ]
  store i32 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1u_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2y_15CustomChatColorINtNtB6_7convert7TryFromNtNtNtNtNtB2E_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB6_6result6ResultNtB46_10InfallibleNtB2y_14ChatStyleErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !9, !noundef !4
  %i.c = load i64, ptr %i.b, align 8, !range !10, !noundef !4
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !232, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !232, !nonnull !4, !noundef !4
  %i.f = ptrtoint ptr %.val1.i.i.i to i64
  %i.g = ptrtoint ptr %.val.i.i.i to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2
end_hunk_2
begin_hunk_3_@_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1a_9recipient17FullRecipientDataEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB1c_:bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1c_9recipient17FullRecipientDataEEEB1e_.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %.lr.ph18
  %i.s = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.h
  br i1 %i.t, label %.body, label %.lr.ph18

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.q, %bb.b ]
  %i.v = icmp eq i64 %i.p, %i.h
  br i1 %i.v, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i17 = phi i64 [ %i.s, %bb.e ], [ %i.p, %.body.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1c_9recipient17FullRecipientDataEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #20
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph18
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1d_9recipient17FullRecipientDataEEEB1f_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1c_9recipient17FullRecipientDataEEEB1e_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.y, ptr %i.ab, align 8
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB16_9recipient17FullRecipientDataEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.i:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1a_4chat8ChatDataNtNtB1a_6method5StoreEEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1d_4chat8ChatDataNtNtB1d_6method5StoreEEEEB1f_.exit, label %.lr.ph

.body:                                            ; preds = %bb.e, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB16_4chat8ChatDataNtNtB16_6method5StoreEEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.i unwind label %bb.h

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit.i: ; preds = %bb.c
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1d_4chat8ChatDataNtNtB1d_6method5StoreEEEEB1f_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.p, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i16 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBJ_4chat8ChatDataNtNtBJ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBQ_4chat8ChatDataNtNtBQ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBQ_4chat8ChatDataNtNtBQ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %.lr.ph18
  %i.s = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.h
  br i1 %i.t, label %.body, label %.lr.ph18

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.q, %bb.b ]
  %i.v = icmp eq i64 %i.p, %i.h
  br i1 %i.v, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i17 = phi i64 [ %i.s, %bb.e ], [ %i.p, %.body.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #20
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph18
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1d_4chat8ChatDataNtNtB1d_6method5StoreEEEEB1f_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.y, ptr %i.ab, align 8
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB16_4chat8ChatDataNtNtB16_6method5StoreEEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.i:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtB10_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5                   ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.09.i
  %i.o = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !319, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !320
  %i.r = icmp eq i64 %1, 1
  br i1 %i.r, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.s = icmp eq i64 %i.o, %i.h
  br i1 %i.s, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.o, %i.h
  br i1 %i.u, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.w, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.110.i
  %i.w = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !325, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !326
  %i.z = icmp eq i64 %2, 1
  br i1 %i.z, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.aa = icmp eq i64 %i.w, %i.h
  br i1 %i.aa, label %.body, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBH_9recipient17FullRecipientDataEEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4
  store i64 %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.af, align 8
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 48                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBI_.exit, label %.lr.ph

.body:                                            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i4 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.0.i4
  %i.p = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.o)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph6
  %i.q = add i64 %.sroa.0.1.i5, 1                 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.h
  br i1 %i.r, label %.body, label %.lr.ph6

bb.d:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.h
  br i1 %i.t, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i5 = phi i64 [ %i.q, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.u) #20
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph6
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBI_.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  store i64 %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.z, align 8
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 88                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeEBK_.exit, label %.lr.ph

.body:                                            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i4 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.sroa.0.0.i4
  %i.p = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeEBJ_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.o)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph6
  %i.q = add i64 %.sroa.0.1.i5, 1                 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.h
  br i1 %i.r, label %.body, label %.lr.ph6

bb.d:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.h
  br i1 %i.t, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i5 = phi i64 [ %i.q, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeEBJ_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.u) #20
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph6
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeEBK_.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  store i64 %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.z, align 8
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtB10_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i
  %i.o = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !349, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !350
  %i.r = icmp eq i64 %1, 1
  br i1 %i.r, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.s = icmp eq i64 %i.o, %i.h
  br i1 %i.s, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.o, %i.h
  br i1 %i.u, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.w, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i
  %i.w = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !355, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !356
  %i.z = icmp eq i64 %2, 1
  br i1 %i.z, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.aa = icmp eq i64 %i.w, %i.h
  br i1 %i.aa, label %.body, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBH_9recipient17FullRecipientDataEEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4
  store i64 %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.af, align 8
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB10_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i
  %i.o = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !379, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !380
  %i.r = icmp eq i64 %1, 1
  br i1 %i.r, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.s = icmp eq i64 %i.o, %i.h
  br i1 %i.s, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.o, %i.h
  br i1 %i.u, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.w, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i
  %i.w = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !385, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !386
  %i.z = icmp eq i64 %2, 1
  br i1 %i.z, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #22
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.aa = icmp eq i64 %i.w, %i.h
  br i1 %i.aa, label %.body, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBH_9recipient17FullRecipientDataEEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4
  store i64 %i.ae, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.af, align 8
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB10_4chat8ChatDataNtNtB10_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 136                 ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBH_4chat8ChatDataNtNtBH_6method5StoreEEEBJ_.exit, label %.lr.ph

.body:                                            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBQ_4chat8ChatDataNtNtBQ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBH_4chat8ChatDataNtNtBH_6method5StoreEEEBJ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i4 = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [136 x i8], ptr %.val, i64 %.sroa.0.0.i4
  %i.p = add nuw nsw i64 %.sroa.0.0.i4, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.o)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph6
  %i.q = add i64 %.sroa.0.1.i5, 1                 ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.h
  br i1 %i.r, label %.body, label %.lr.ph6

bb.d:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.h
  br i1 %i.t, label %.body, label %.lr.ph6

.lr.ph6:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i5 = phi i64 [ %i.q, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [136 x i8], ptr %.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_(ptr noalias nofree noundef align 8 dereferenceable(136) %i.u) #20
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph6
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBH_4chat8ChatDataNtNtBH_6method5StoreEEEBJ_.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  store i64 %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.z, align 8
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBQ_4chat8ChatDataNtNtBQ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterfENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4fileNtB5_22MessageAttachmentErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !21, !noundef !4 ; 3 uses
  %i.c = icmp ne i64 %i.b, 15
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.b, -14
  %i.e = icmp samesign ugt i64 %i.b, 13
  %i.f = select i1 %i.e, i64 %i.d, i64 1
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 13)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 11)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXsg_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4fileNtB5_22MessageAttachmentErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !4 ; 2 uses
end_hunk_3
