Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_message_backup-4250b6b8caaf551e.libsignal_message_backup.eef80394ae7480fa-cgu.04?download=true
inline.NumInlined: 1083
inline.NumDeleted: 471
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1C_9recipient17FullRecipientDataEEEEB1E_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1g_9recipient17FullRecipientDataEEEB1i_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %.0.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1g_9recipient17FullRecipientDataEEEB1i_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 104, i64 noundef 8) #14
  resume { ptr, i32 } %i.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1g_9recipient17FullRecipientDataEEEB1i_.exit: ; preds = %bb.c
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 104, i64 noundef 8) #14
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEEB1B_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %.0.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 288, i64 noundef 8) #14
  resume { ptr, i32 } %i.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit: ; preds = %bb.c
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 288, i64 noundef 8) #14
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtB14_6method5StoreEEEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !4, !noundef !5
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtBI_6method5StoreEEBK_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtBI_6method5StoreEEBK_.exit: ; preds = %bb.g, %bb.f, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %.val.i = load i8, ptr %0, align 8, !range !4, !alias.scope !37, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !37 ; 4 uses
  %i.e = icmp eq i8 %.val.i, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %.val1.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i unwind label %.body.i, !noalias !37

.body.i:                                          ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 288, i64 noundef 8) #14, !noalias !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.h = load i8, ptr %i.g, align 8, !range !4, !alias.scope !39, !noundef !5
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style11BubbleColorINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i: ; preds = %bb.c
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 288, i64 noundef 8) #14, !noalias !37
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i

bb.d:                                             ; preds = %.body.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !42, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !42
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style11BubbleColorINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style15CustomChatColorE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style11BubbleColorINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i unwind label %bb.h

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.n = load i8, ptr %i.m, align 8, !range !4, !alias.scope !44, !noundef !5
  %i.o = icmp eq i8 %i.n, 1
  br i1 %i.o, label %bb.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtBI_6method5StoreEEBK_.exit

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !47, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !47
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtBI_6method5StoreEEBK_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style15CustomChatColorE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #15
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtBI_6method5StoreEEBK_.exit

bb.h:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style11BubbleColorINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i: ; preds = %bb.e, %bb.d, %.body.i
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_.exit: ; preds = %bb.l, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i, %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5.i.i = load ptr, ptr %i.e, align 8, !alias.scope !54, !align !7, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsh1373Z0TDxr_8protobuf13message_field12MessageFieldNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4TextEEB1C_(ptr %.val5.i.i)
          to label %bb.e unwind label %bb.d, !noalias !54

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i.i = load ptr, ptr %i.g, align 8, !alias.scope !54, !align !7, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsh1373Z0TDxr_8protobuf13message_field12MessageFieldNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11FilePointerEEB1C_(ptr %.val4.i.i) #17
          to label %bb.f unwind label %bb.k, !noalias !54

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i = load ptr, ptr %i.h, align 8, !alias.scope !54, !align !7, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsh1373Z0TDxr_8protobuf13message_field12MessageFieldNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11FilePointerEEB1C_(ptr %.val3.i.i)
          to label %bb.h unwind label %bb.g, !noalias !54

bb.f:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.f, %bb.d ]
  %.val2.i.i = load ptr, ptr %i.d, align 8, !alias.scope !54, !align !7, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup(ptr %.val2.i.i) #17
          to label %common.resume.i.i unwind label %bb.k, !noalias !54

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !54, !align !7, !noundef !5 ; 4 uses
  %i.j = icmp eq ptr %.val.i.i, null
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i unwind label %bb.j, !noalias !54

common.resume.i.i:                                ; preds = %bb.j, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.k, %bb.j ], [ %.pn.i.i, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #14, !noalias !54
  br label %common.resume.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i: ; preds = %bb.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #14, !noalias !54
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_.exit

bb.k:                                             ; preds = %bb.f, %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !54
  unreachable

bb.l:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item18DirectionalDetailsEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item18DirectionalDetailsEBJ_.exit, label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item18DirectionalDetailsEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item27DirectionlessMessageDetailsEBJ_.exit.sink.split.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10SendStatusEEB1d_.exit.i.i, %bb.f, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  switch i64 %i.a, label %bb.c [
    i64 0, label %bb.f
    i64 1, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !65, !align !7, !noundef !5 ; 4 uses
  %i.d = icmp eq ptr %.val.i, null
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item18DirectionalDetailsEBJ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item27DirectionlessMessageDetailsEBJ_.exit.sink.split.i unwind label %bb.e, !noalias !65

common.resume.sink.split.i:                       ; preds = %bb.q, %bb.h, %bb.e
  %.val.i.sink.i = phi ptr [ %.val.i.i, %bb.q ], [ %.val1.i, %bb.h ], [ %.val.i, %bb.e ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.h, %bb.h ], [ %i.e, %bb.e ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.sink.i, i64 noundef 32, i64 noundef 8) #14
  br label %common.resume.i

common.resume.i:                                  ; preds = %.body.i.i, %common.resume.sink.split.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !65, !align !7, !noundef !5 ; 4 uses
  %i.g = icmp eq ptr %.val1.i, null
  br i1 %i.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item18DirectionalDetailsEBJ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item27DirectionlessMessageDetailsEBJ_.exit.sink.split.i unwind label %bb.h, !noalias !65

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

bb.i:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !69, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !69, !noundef !5 ; 4 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10SendStatusENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit.i.i.i, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.o = icmp eq i64 %i.q, %i.m
  br i1 %i.o, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10SendStatusENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i.i.i.i2 = phi i64 [ %i.q, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %.sroa.0.0.i.i.i.i.i2
  %i.q = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i2, 1 ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10SendStatusEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(64) %i.p)
          to label %bb.j unwind label %bb.l, !noalias !69

bb.k:                                             ; preds = %.lr.ph4
  %i.r = add i64 %.sroa.0.1.i.i.i.i.i3, 1         ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.m
  br i1 %i.s, label %.body.i.i.i, label %.lr.ph4

bb.l:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.q, %i.m
  br i1 %i.u, label %.body.i.i.i, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.l, %bb.k
  %.sroa.0.1.i.i.i.i.i3 = phi i64 [ %i.r, %bb.k ], [ %i.q, %bb.l ] ; 2 uses
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %.sroa.0.1.i.i.i.i.i3
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10SendStatusEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(64) %i.v) #17
          to label %bb.k unwind label %bb.m, !noalias !69

bb.m:                                             ; preds = %.lr.ph4
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment18TransactionDetailsEEB15_:bb.a
  %.sroa.0.0.i.i.i2.i.i.i.i.i11 = phi i64 [ %i.z, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i1.i.i.i.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.sroa.0.0.i.i.i2.i.i.i.i.i11
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i.i2.i.i.i.i.i11, 1 ; 4 uses
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i1.i.i.i.i.i unwind label %bb.i, !noalias !260

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i.i.i3.i.i.i.i.i: ; preds = %.lr.ph13
  %i.aa = add i64 %.sroa.0.1.i.i.i4.i.i.i.i.i12, 1 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.v
  br i1 %i.ab, label %.body.i5.i.i.i.i.i, label %.lr.ph13

bb.i:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = icmp eq i64 %i.z, %i.v
  br i1 %i.ad, label %.body.i5.i.i.i.i.i, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i.i.i3.i.i.i.i.i
  %.sroa.0.1.i.i.i4.i.i.i.i.i12 = phi i64 [ %i.aa, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i.i.i3.i.i.i.i.i ], [ %i.z, %bb.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.sroa.0.1.i.i.i4.i.i.i.i.i12
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i.i.i3.i.i.i.i.i unwind label %bb.j, !noalias !260

bb.j:                                             ; preds = %.lr.ph13
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !260
  unreachable

.body.i5.i.i.i.i.i:                               ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i.i.i3.i.i.i.i.i, %bb.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %.body.i5.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment14IdentificationEBJ_.exit.i.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i1.i.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i.i.i, %bb.h, %bb.d
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment14IdentificationEEB15_.exit.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment14IdentificationEBJ_.exit.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.l, %.body.i5.i.i.i.i.i, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.p, %.body.i.i.i.i.i.i ], [ %i.ac, %.body.i5.i.i.i.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !9, !alias.scope !261, !noundef !5
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.body.i.i.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.r

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment14IdentificationEEB15_.exit.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment14IdentificationEBJ_.exit.i.i.i.i, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 48 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !range !9, !alias.scope !262, !noundef !5
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit4.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment14IdentificationEEB15_.exit.i.i.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit4.i.i.i unwind label %bb.p

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.p, %bb.m, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ar, %bb.p ], [ %eh.lpad-body.i.i.i, %bb.m ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !9, !alias.scope !263, !noundef !5
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %bb.t, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.t unwind label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit4.i.i.i: ; preds = %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment14IdentificationEEB15_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !range !9, !alias.scope !264, !noundef !5
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment11TransactionEEB1h_.exit.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit4.i.i.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment11TransactionEEB1h_.exit.i unwind label %bb.s

bb.r:                                             ; preds = %bb.o, %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aw, %bb.s ], [ %.pn.i.i.i, %bb.o ], [ %.pn.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #14
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment11TransactionEEB1h_.exit.i: ; preds = %bb.q, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit4.i.i.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment18TransactionDetailsEBJ_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecIBC_hEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !267, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !267, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecIBv_hEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecIBv_hEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i unwind label %bb.b, !noalias !267

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i.i unwind label %bb.c, !noalias !267

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !267
  unreachable

.body:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.d

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecIBv_hEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtB1c_9recipient17FullRecipientDataEEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !288, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !288, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBJ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.09.i.i
  %i.g = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !293, !noalias !288, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !294
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i unwind label %bb.c, !noalias !288

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBJ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.110.i.i
  %i.o = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !299, !noalias !288, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !300
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i unwind label %bb.e, !noalias !288

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !288
  unreachable

.body:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i, %bb.c
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtB1j_9recipient17FullRecipientDataEEEB1l_.exit unwind label %bb.f

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBJ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtB1j_9recipient17FullRecipientDataEEEB1l_.exit: ; preds = %.body
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !303, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !303, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [320 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(320) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !304

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [320 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(320) %i.m) #17
          to label %bb.c unwind label %bb.e, !inline_history !304

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !inline_history !304
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1j_6method5StoreEEEB1l_.exit unwind label %bb.f

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1j_6method5StoreEEEB1l_.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtB1c_6method5StoreEEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !307, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !307, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.g)
          to label %bb.b unwind label %bb.d, !noalias !307

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.m) #17
          to label %bb.c unwind label %bb.e, !noalias !307

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !307
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtB1j_6method5StoreEEEB1l_.exit unwind label %bb.f

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtB1j_6method5StoreEEEB1l_.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll10PollOptionNtNtB1e_9recipient17FullRecipientDataEEEB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll10PollOptionNtNtBL_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBN_.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll10PollOptionNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll10PollOptionNtNtBL_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBN_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll10PollOptionNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i
  %.sroa.0.0.i.i14 = phi i64 [ %i.f, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll10PollOptionNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.0.i.i14 ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i14, 1      ; 4 uses
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListINtNtNtBI_4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #17
          to label %.body.i.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListINtNtNtBI_4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll10PollOptionNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

end_hunk_1
begin_hunk_2_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11LinkPreviewEEB1d_:bb.a
_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11LinkPreviewEEB1k_.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17MessageAttachmentEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !313, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !313, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17MessageAttachmentEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g)
          to label %bb.b unwind label %bb.d, !noalias !313

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17MessageAttachmentEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #17
          to label %bb.c unwind label %bb.e, !noalias !313

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !313
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17MessageAttachmentEEB1k_.exit unwind label %bb.f

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17MessageAttachmentEEB1k_.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEEB1k_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEEB1k_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEEB1k_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEEB1k_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit.i.i
  %.sroa.0.0.i.i2 = phi i64 [ %i.f, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [312 x i8], ptr %.val, i64 %.sroa.0.0.i.i2
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i2, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit.i.i unwind label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit7.i.i: ; preds = %.lr.ph4
  %i.g = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit7.i.i
  %.sroa.0.1.i.i3 = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [312 x i8], ptr %.val, i64 %.sroa.0.1.i.i3
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph4
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

.body:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1k_.exit unwind label %bb.d

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1k_.exit: ; preds = %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !330, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !330, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.09.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !334, !noalias !330, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !335
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i unwind label %bb.c, !noalias !330

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit8.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.110.i.i ; 2 uses
  %i.n = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !339, !noalias !330, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !340
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit8.i.i unwind label %bb.e, !noalias !330

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.n, %i.d
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !330
  unreachable

.body:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit8.i.i, %bb.c
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB1k_.exit unwind label %bb.f

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB1k_.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !343, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !343, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [216 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressEBJ_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.g)
          to label %bb.b unwind label %bb.d, !noalias !343

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [216 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressEBJ_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.m) #17
          to label %bb.c unwind label %bb.e, !noalias !343

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !343
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressEEB1m_.exit unwind label %bb.f

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressEEB1m_.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !346, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !346, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g)
          to label %bb.b unwind label %bb.d, !noalias !346

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.m) #17
          to label %bb.c unwind label %bb.e, !noalias !346

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !346
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailEEB1m_.exit unwind label %bb.f

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailEEB1m_.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5PhoneEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !349, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !349, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5PhoneENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5PhoneENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5PhoneEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g)
          to label %bb.b unwind label %bb.d, !noalias !349

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5PhoneEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.m) #17
          to label %bb.c unwind label %bb.e, !noalias !349
end_hunk_2
begin_hunk_3_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link11LinkPreviewEEB1f_:bb.a
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link11LinkPreviewEEB1m_.exit: ; preds = %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentEEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i2 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [360 x i8], ptr %.val, i64 %.sroa.0.0.i.i2
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i2, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentEBJ_(ptr noalias nofree noundef align 8 dereferenceable(360) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph4
  %i.g = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i3 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [360 x i8], ptr %.val, i64 %.sroa.0.1.i.i3
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentEBJ_(ptr noalias nofree noundef align 8 dereferenceable(360) %i.k) #17
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph4
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentEEB1m_.exit unwind label %bb.f

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.b, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentEEB1m_.exit: ; preds = %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEEB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEEB1o_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEEB1o_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEEB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !361, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !361, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBL_.exit.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBL_.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBL_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.b, !noalias !361

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i.i unwind label %bb.c, !noalias !361

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBL_.exit.i.i unwind label %bb.e, !noalias !361

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !361
  unreachable

bb.d:                                             ; preds = %.lr.ph15
  %i.m = add i64 %.sroa.0.1.i.i14, 1              ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %.body, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.d
  br i1 %i.p, label %.body, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.d
  %.sroa.0.1.i.i14 = phi i64 [ %i.m, %bb.d ], [ %i.h, %.body.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.1.i.i14
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBL_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.q) #17
          to label %bb.d unwind label %bb.f, !noalias !361

bb.f:                                             ; preds = %.lr.ph15
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !361
  unreachable

.body:                                            ; preds = %bb.d, %.body.i.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEEB1o_.exit unwind label %bb.g

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBL_.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.g:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEEB1o_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1c_9recipient17FullRecipientDataEEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !382, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !382, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBJ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.09.i.i
  %i.g = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !387, !noalias !382, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !388
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i unwind label %bb.c, !noalias !382

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBJ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.110.i.i
  %i.o = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !393, !noalias !382, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !394
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i unwind label %bb.e, !noalias !382

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !382
  unreachable

.body:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i, %bb.c
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1j_9recipient17FullRecipientDataEEEB1l_.exit unwind label %bb.f

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBJ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1j_9recipient17FullRecipientDataEEEB1l_.exit: ; preds = %.body
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1c_9recipient20MinimalRecipientDataEEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBJ_9recipient20MinimalRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient20MinimalRecipientDataEEBI_.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient20MinimalRecipientDataEEBI_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !10, !alias.scope !401, !noundef !5 ; 3 uses
  %i.h = icmp slt i64 %i.g, -9223372036854775803
  %i.i = add i64 %i.g, -9223372036854775807
  %i.j = select i1 %i.h, i64 %i.i, i64 0
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient20MinimalRecipientDataEEBI_.exit.i.i
    i64 2, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient20MinimalRecipientDataEEBI_.exit.i.i
    i64 3, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient20MinimalRecipientDataEEBI_.exit.i.i
    i64 4, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient20MinimalRecipientDataEEBI_.exit.i.i
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.sink.split.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = icmp eq i64 %i.g, -1
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient20MinimalRecipientDataEEBI_.exit.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.sink.split.i.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.sink.split.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sink.i.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.f, %bb.c ]
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sink.i.i.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient20MinimalRecipientDataEEBI_.exit.i.i unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient20MinimalRecipientDataEEBI_.exit.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.sink.split.i.i.i.i, %bb.c, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.m = icmp eq i64 %i.e, %.val1
  br i1 %i.m, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBJ_9recipient20MinimalRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph
  %i.n = add i64 %.sroa.0.1.i.i6, 1               ; 2 uses
  %i.o = icmp eq i64 %i.n, %.val1
  br i1 %i.o, label %.body, label %.lr.ph

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.sink.split.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.e, %.val1
  br i1 %i.q, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i6 = phi i64 [ %i.n, %bb.d ], [ %i.e, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.0.1.i.i6
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient20MinimalRecipientDataEEBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.r) #17
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBQ_9recipient20MinimalRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1j_9recipient20MinimalRecipientDataEEEB1l_.exit unwind label %bb.g

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBJ_9recipient20MinimalRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient20MinimalRecipientDataEEBI_.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBQ_9recipient20MinimalRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.g:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1j_9recipient20MinimalRecipientDataEEEB1l_.exit: ; preds = %.body
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1f_(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %.0.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit unwind label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit: ; preds = %bb.a
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 312, i64 noundef 8) #14
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 312, i64 noundef 8) #14
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker14MessageStickerEEB1f_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 288 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !406, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %.0.val) #17
          to label %bb.f unwind label %bb.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %bb.b, %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %.0.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker14MessageStickerEBH_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker14MessageStickerEBH_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 368, i64 noundef 8) #14
  ret void

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 368, i64 noundef 8) #14
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsh1373Z0TDxr_8protobuf13message_field12MessageFieldNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11FilePointerEEB1C_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11FilePointerEEEB1B_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %.0.val, align 8, !range !9, !alias.scope !427, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %.0.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsh1373Z0TDxr_8protobuf13message_field12MessageFieldNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item10PinDetailsEEB1E_:bb.a
  %i.c = icmp eq ptr %.val.i.i, null
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item10PinDetailsEEB1h_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #14
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #14
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item10PinDetailsEEB1h_.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item10PinDetailsEEB1h_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i, %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item10PinDetailsEEEB1D_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item10PinDetailsEEEB1D_.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9chat_item10PinDetailsEEB1h_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtBE_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1K_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2O_15CustomChatColorINtNtB4_7convert7TryFromNtNtNtNtNtB2U_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB4_6result6ResultNtB4m_10InfallibleNtB2O_14ChatStyleErrorEEEB2U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoItermENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1q_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2u_15CustomChatColorINtNtB4_7convert7TryFromNtNtNtNtNtB2A_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EEB2A_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterfENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterfEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterfEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1q_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2u_15CustomChatColorINtNtB4_7convert7TryFromNtNtNtNtNtB2A_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EEB2A_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterfENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup11chat_folder10ChatFolderNtNtBG_9recipient17FullRecipientDataEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit6, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit unwind label %bb.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit4 unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit: ; preds = %bb.d, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit5 unwind label %bb.g

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit4: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit6 unwind label %bb.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit5: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit, %bb.f
  %.pn2 = phi { ptr, i32 } [ %i.j, %bb.f ], [ %.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit4
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit5

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit6: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.b

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit5, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit, %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit5
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup20notification_profile19NotificationProfileNtNtBG_9recipient17FullRecipientDataEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !9, !alias.scope !511, !noundef !5
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !9, !alias.scope !512, !noundef !5
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit5, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit5 unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.b, %bb.c, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup20notification_profile9DayOfWeekENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_20notification_profile9DayOfWeekEEBK_.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit5: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup20notification_profile9DayOfWeekENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_20notification_profile9DayOfWeekEEBK_.exit8 unwind label %bb.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_20notification_profile9DayOfWeekEEBK_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit, %bb.f
  %.pn2 = phi { ptr, i32 } [ %i.l, %bb.f ], [ %.pn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit5
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_20notification_profile9DayOfWeekEEBK_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_20notification_profile9DayOfWeekEEBK_.exit8: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  ret void

bb.g:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_20notification_profile9DayOfWeekEEBK_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit, %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_9recipient17FullRecipientDataEEBK_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListNtNtBI_20notification_profile9DayOfWeekEEBK_.exit
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !526, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !526
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15ChatItemMessageNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(144) %0) #17
          to label %bb.d unwind label %bb.j

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit: ; preds = %bb.a, %bb.b
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15ChatItemMessageNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(144) %0)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #17
          to label %.body unwind label %bb.j

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !528, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !528, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBH_6method5StoreEEBJ_(ptr noalias nofree noundef nonnull align 8 %i.i, i64 noundef %i.k)
          to label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i unwind label %bb.g, !noalias !527, !inline_history !529

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_.exit unwind label %bb.i, !inline_history !11

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.h, !inline_history !11

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !inline_history !11
  unreachable

.body:                                            ; preds = %bb.i, %bb.g, %bb.d
  %.pn2 = phi { ptr, i32 } [ %.pn, %bb.d ], [ %i.o, %bb.i ], [ %i.l, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9DirectionNtNtBG_9recipient17FullRecipientDataEEBI_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.n) #17
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_.exit: ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9DirectionNtNtBG_9recipient17FullRecipientDataEEBI_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.p)
  ret void

bb.j:                                             ; preds = %.body, %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15ChatItemMessageNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !654, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.aa
    i64 2, label %bb.bf
    i64 3, label %bb.bn
    i64 4, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit
    i64 5, label %bb.bw
    i64 6, label %bb.cv
    i64 7, label %bb.df
    i64 8, label %bb.di
    i64 9, label %bb.dl
    i64 10, label %bb.dw
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !659, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !659
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #15
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !9, !alias.scope !660, !noundef !5
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEEB15_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEBJ_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEBJ_.exit.i.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEEB15_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEBJ_.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.i, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val8.i = load ptr, ptr %i.n, align 8, !alias.scope !661, !align !7, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1C_9recipient17FullRecipientDataEEEEB1E_(ptr %.val8.i) #17
          to label %.body11.i unwind label %bb.z

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEEB15_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEBJ_.exit.i.i, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val.i = load ptr, ptr %i.o, align 8, !alias.scope !661, !align !7, !noundef !5 ; 4 uses
  %i.p = icmp eq ptr %.val.i, null
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1C_9recipient17FullRecipientDataEEEEB1E_.exit.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEEB15_.exit.i
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %.val.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1g_9recipient17FullRecipientDataEEEB1i_.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 104, i64 noundef 8) #14
  br label %.body11.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1g_9recipient17FullRecipientDataEEEB1i_.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 104, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1C_9recipient17FullRecipientDataEEEEB1E_.exit.i

.body11.i:                                        ; preds = %bb.j, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.q, %bb.j ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e) #17
          to label %.body14.i unwind label %bb.z

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1C_9recipient17FullRecipientDataEEEEB1E_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1g_9recipient17FullRecipientDataEEEB1i_.exit.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEEB15_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.r, align 8, !alias.scope !663, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.s, align 8, !alias.scope !663, !noundef !5 ; 4 uses
  %i.t = icmp eq i64 %.val1.i.i, 0
  br i1 %i.t, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit.i.i, label %.lr.ph77

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit.i.i.i.i: ; preds = %.lr.ph77
  %i.u = icmp eq i64 %i.w, %.val1.i.i
  br i1 %i.u, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit.i.i, label %.lr.ph77

.lr.ph77:                                         ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1C_9recipient17FullRecipientDataEEEEB1E_.exit.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i76 = phi i64 [ %i.w, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit.i.i.i.i ], [ 0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1C_9recipient17FullRecipientDataEEEEB1E_.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [312 x i8], ptr %.val.i.i, i64 %.sroa.0.0.i.i.i.i76
  %i.w = add nuw nsw i64 %.sroa.0.0.i.i.i.i76, 1  ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.v)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit.i.i.i.i unwind label %bb.k, !noalias !662

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit7.i.i.i.i: ; preds = %.lr.ph79
  %i.x = add i64 %.sroa.0.1.i.i.i.i78, 1          ; 2 uses
  %i.y = icmp eq i64 %i.x, %.val1.i.i
  br i1 %i.y, label %.body.i.i, label %.lr.ph79

bb.k:                                             ; preds = %.lr.ph77
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = icmp eq i64 %i.w, %.val1.i.i
  br i1 %i.aa, label %.body.i.i, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.k, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i78 = phi i64 [ %i.x, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit7.i.i.i.i ], [ %i.w, %bb.k ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [312 x i8], ptr %.val.i.i, i64 %.sroa.0.1.i.i.i.i78
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %i.ab)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit7.i.i.i.i unwind label %bb.l, !noalias !662

bb.l:                                             ; preds = %.lr.ph79
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !662
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit7.i.i.i.i, %bb.k
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e)
          to label %.body14.i unwind label %bb.m

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEBH_.exit.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB1C_9recipient17FullRecipientDataEEEEB1E_.exit.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1d_.exit.i unwind label %bb.n

bb.m:                                             ; preds = %.body.i.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

.body14.i:                                        ; preds = %bb.n, %.body.i.i, %.body11.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body11.i ], [ %i.af, %bb.n ], [ %i.z, %.body.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae) #17
          to label %bb.o unwind label %bb.z

bb.n:                                             ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1d_.exit.i: ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag)
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %bb.p, %.body14.i
  %.pn4.i = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %.pn2.i, %.body14.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link11LinkPreviewEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #17
          to label %.body22.i unwind label %bb.z

bb.p:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1d_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1d_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i16.i = load ptr, ptr %i.ak, align 8, !alias.scope !665, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i17.i = load i64, ptr %i.al, align 8, !alias.scope !665, !noundef !5 ; 4 uses
  %i.am = icmp eq i64 %.val1.i17.i, 0
  br i1 %i.am, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link11LinkPreviewENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit.i.i, label %.lr.ph81

bb.r:                                             ; preds = %.lr.ph81
  %i.an = icmp eq i64 %i.ap, %.val1.i17.i
  br i1 %i.an, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link11LinkPreviewENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit.i.i, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.q, %bb.r
  %.sroa.0.0.i.i.i18.i80 = phi i64 [ %i.ap, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [376 x i8], ptr %.val.i16.i, i64 %.sroa.0.0.i.i.i18.i80
  %i.ap = add nuw nsw i64 %.sroa.0.0.i.i.i18.i80, 1 ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link11LinkPreviewEBJ_(ptr noalias nofree noundef align 8 dereferenceable(376) %i.ao)
          to label %bb.r unwind label %bb.t, !noalias !664

bb.s:                                             ; preds = %.lr.ph83
  %i.aq = add i64 %.sroa.0.1.i.i.i19.i82, 1       ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %.val1.i17.i
  br i1 %i.ar, label %.body.i20.i, label %.lr.ph83

bb.t:                                             ; preds = %.lr.ph81
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = icmp eq i64 %i.ap, %.val1.i17.i
  br i1 %i.at, label %.body.i20.i, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.t, %bb.s
  %.sroa.0.1.i.i.i19.i82 = phi i64 [ %i.aq, %bb.s ], [ %i.ap, %bb.t ] ; 2 uses
  %i.au = getelementptr inbounds nuw [376 x i8], ptr %.val.i16.i, i64 %.sroa.0.1.i.i.i19.i82
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link11LinkPreviewEBJ_(ptr noalias nofree noundef align 8 dereferenceable(376) %i.au) #17
          to label %bb.s unwind label %bb.u, !noalias !664

bb.u:                                             ; preds = %.lr.ph83
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !664
end_hunk_4
begin_hunk_5_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15ChatItemMessageNtNtBG_6method5StoreEEBI_:bb.a
  %i.dx = load i64, ptr %i.dw, align 8, !range !9, !alias.scope !683, !noalias !666, !noundef !5
  %i.dy = icmp eq i64 %i.dx, -1
  br i1 %i.dy, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment14SignalNicknameEEB15_.exit33.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB13_.exit30.i.i.i
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment14SignalNicknameEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.dw)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment14SignalNicknameEEB15_.exit33.i.i.i unwind label %bb.bb, !noalias !666

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment14SignalNicknameEEB15_.exit.i.i.i: ; preds = %bb.bb, %bb.ay, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB13_.exit.i.i.i
  %.pn10.i.i.i = phi { ptr, i32 } [ %i.ea, %bb.bb ], [ %.pn8.i.i.i, %bb.ay ], [ %.pn8.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB13_.exit.i.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i1, i64 384
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %.body.i2 unwind label %bb.bc, !noalias !666

bb.bb:                                            ; preds = %bb.ba
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment14SignalNicknameEEB15_.exit.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment14SignalNicknameEEB15_.exit33.i.i.i: ; preds = %bb.ba, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB13_.exit30.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i1, i64 384
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eb)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15contact_message14ContactMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit unwind label %bb.bd, !noalias !666

bb.bc:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment14SignalNicknameEEB15_.exit.i.i.i, %bb.ay, %bb.av, %.body23.i.i.i, %.body17.i.i.i, %.body.i.i.i, %bb.ac
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !666
  unreachable

bb.bd:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment14SignalNicknameEEB15_.exit33.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body.i2

.body.i2:                                         ; preds = %bb.bd, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment14SignalNicknameEEB15_.exit.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ed, %bb.bd ], [ %.pn10.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment14SignalNicknameEEB15_.exit.i.i.i ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef 656, i64 noundef 8) #14, !noalias !666
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd) #17
          to label %common.resume unwind label %bb.be

bb.be:                                            ; preds = %.body.i2
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15contact_message14ContactMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment14SignalNicknameEEB15_.exit33.i.i.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1, i64 noundef 656, i64 noundef 8) #14, !noalias !666
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bd)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.bf:                                            ; preds = %bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !range !9, !alias.scope !684, !noundef !5
  %i.ei = icmp eq i64 %i.eh, -1
  br i1 %i.ei, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB14_9recipient17FullRecipientDataEEEB16_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.eg)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB14_9recipient17FullRecipientDataEEEB16_.exit.i unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ef) #17
          to label %bb.bi unwind label %bb.bm

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB14_9recipient17FullRecipientDataEEEB16_.exit.i: ; preds = %bb.bg, %bb.bf
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ef)
          to label %bb.bk unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %.pn.i3 = phi { ptr, i32 } [ %i.el, %bb.bj ], [ %i.ej, %bb.bh ]
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val2.i = load ptr, ptr %i.ek, align 8, !alias.scope !685, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1f_(ptr %.val2.i) #17
          to label %common.resume unwind label %bb.bm

bb.bj:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB14_9recipient17FullRecipientDataEEEB16_.exit.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bk:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtB14_9recipient17FullRecipientDataEEEB16_.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val.i6 = load ptr, ptr %i.em, align 8, !alias.scope !685, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %.val.i6)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13voice_message12VoiceMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.en = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i6, i64 noundef 312, i64 noundef 8) #14
  br label %common.resume

bb.bm:                                            ; preds = %bb.bi, %bb.bh
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13voice_message12VoiceMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit: ; preds = %bb.bk
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i6, i64 noundef 312, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.bn:                                            ; preds = %bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ep)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.er, align 8, !alias.scope !686, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker14MessageStickerEEB1f_(ptr nonnull %.val1.i) #17
          to label %common.resume unwind label %bb.bv

bb.bp:                                            ; preds = %bb.bn
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i9 = load ptr, ptr %i.es, align 8, !alias.scope !686, !nonnull !5, !noundef !5 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i9, i64 288 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !range !9, !alias.scope !687, !noundef !5
  %i.ev = icmp eq i64 %i.eu, -1
  br i1 %i.ev, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %.val.i9) #17
          to label %bb.bu unwind label %bb.bs

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.bq, %bb.bp
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %.val.i9)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15sticker_message14StickerMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.bt:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.br
  %eh.lpad-body.i.i10 = phi { ptr, i32 } [ %i.ey, %bb.bt ], [ %i.ew, %bb.br ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i9, i64 noundef 368, i64 noundef 8) #14
  br label %common.resume

bb.bv:                                            ; preds = %bb.bo
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15sticker_message14StickerMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i9, i64 noundef 368, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i, %bb.cs, %.sink.split.i.i, %bb.cr, %bb.cp, %bb.co, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB13_.exit.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEEB1f_.exit.i, %bb.by, %bb.bx, %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link11LinkPreviewEEB1f_.exit.i, %bb.c, %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll4PollNtNtBI_9recipient17FullRecipientDataEEBK_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat11story_reply23DirectStoryReplyMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17view_once_message15ViewOnceMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10gift_badge9GiftBadgeEEB1h_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment19PaymentNotificationEBJ_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15sticker_message14StickerMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13voice_message12VoiceMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15contact_message14ContactMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit, %bb.a
  ret void

bb.bw:                                            ; preds = %bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.fb = load i64, ptr %i.fa, align 8, !range !689, !alias.scope !688, !noundef !5 ; 3 uses
  %i.fc = icmp ne i64 %i.fb, 9
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = add nsw i64 %i.fb, -2
  %i.fe = icmp samesign ugt i64 %i.fb, 1
  %i.ff = select i1 %i.fe, i64 %i.fd, i64 7
  switch i64 %i.ff, label %bb.bx [
    i64 0, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit
    i64 1, label %bb.bz
    i64 2, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit
    i64 3, label %bb.ch
    i64 4, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit
    i64 5, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit
    i64 6, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit
    i64 7, label %bb.ci
    i64 8, label %bb.cr
    i64 9, label %bb.cs
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !694, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !694
  %i.fi = icmp eq i64 %2, 1
  br i1 %i.fi, label %bb.by, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.by:                                            ; preds = %bb.bx
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fg) #15
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.bz:                                            ; preds = %bb.bw
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i13 = load ptr, ptr %i.fk, align 8, !alias.scope !696, !nonnull !5, !noundef !5 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i14 = load i64, ptr %i.fl, align 8, !alias.scope !696, !noundef !5 ; 4 uses
  %i.fm = icmp eq i64 %.val1.i.i14, 0
  br i1 %i.fm, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEEB1f_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bz, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEBJ_.exit.i.i.i.i
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.fo, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEBJ_.exit.i.i.i.i ], [ 0, %bb.bz ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i13, i64 %.sroa.0.09.i.i.i.i ; 4 uses
  %i.fo = add nuw nsw i64 %.sroa.0.09.i.i.i.i, 1  ; 4 uses
  %i.fp = load i8, ptr %i.fn, align 8, !range !12, !alias.scope !697, !noalias !696, !noundef !5
  switch i8 %i.fp, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEBJ_.exit.i.i.i.i [
    i8 2, label %bb.ca
    i8 4, label %bb.cb
    i8 20, label %bb.cc
  ]

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 24 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !range !9, !alias.scope !698, !noalias !696, !noundef !5
  %i.fs = icmp eq i64 %i.fr, -1
  br i1 %i.fs, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEBJ_.exit.i.i.i.i, label %.invoke.i.i.i.i

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 24 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !range !9, !alias.scope !699, !noalias !696, !noundef !5
  %i.fv = icmp eq i64 %i.fu, -1
  br i1 %i.fv, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEBJ_.exit.i.i.i.i, label %.invoke.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %bb.cb, %bb.ca
  %i.fw = phi ptr [ %i.fq, %bb.ca ], [ %i.ft, %bb.cb ]
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fw)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEBJ_.exit.i.i.i.i unwind label %bb.ce, !noalias !696

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group7InviteeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fx)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEBJ_.exit.i.i.i.i unwind label %bb.ce, !noalias !696

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEBJ_.exit.i.i.i.i: ; preds = %bb.cc, %.invoke.i.i.i.i, %bb.cb, %bb.ca, %.lr.ph.i.i.i.i
  %i.fy = icmp eq i64 %i.fo, %.val1.i.i14
  br i1 %i.fy, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEEB1f_.exit.i, label %.lr.ph.i.i.i.i

bb.cd:                                            ; preds = %.lr.ph
  %i.fz = add i64 %.sroa.0.1.i.i.i.i1563, 1       ; 2 uses
  %i.ga = icmp eq i64 %i.fz, %.val1.i.i14
  br i1 %i.ga, label %.body.i.i16, label %.lr.ph

bb.ce:                                            ; preds = %bb.cc, %.invoke.i.i.i.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  %i.gc = icmp eq i64 %i.fo, %.val1.i.i14
  br i1 %i.gc, label %.body.i.i16, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ce, %bb.cd
  %.sroa.0.1.i.i.i.i1563 = phi i64 [ %i.fz, %bb.cd ], [ %i.fo, %bb.ce ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i13, i64 %.sroa.0.1.i.i.i.i1563
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEBJ_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.gd) #17
          to label %bb.cd unwind label %bb.cf, !noalias !696

bb.cf:                                            ; preds = %.lr.ph
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !696
  unreachable

.body.i.i16:                                      ; preds = %bb.cd, %bb.ce
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj)
          to label %common.resume unwind label %bb.cg

bb.cg:                                            ; preds = %.body.i.i16
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEEB1f_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateEBJ_.exit.i.i.i.i, %bb.bz
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.ch:                                            ; preds = %bb.bw
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i unwind label %bb.ct

bb.ci:                                            ; preds = %bb.bw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !702, !noundef !5 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB13_.exit.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %3 = atomicrmw sub ptr %i.gi, i64 1 release, align 8, !noalias !703
  %i.gk = icmp eq i64 %3, 1
  br i1 %i.gk, label %bb.ck, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB13_.exit.i.i

bb.ck:                                            ; preds = %bb.cj
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gh) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB13_.exit.i.i unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !705, !noundef !5 ; 2 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %common.resume, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %4 = atomicrmw sub ptr %i.gn, i64 1 release, align 8, !noalias !706
  %i.gp = icmp eq i64 %4, 1
  br i1 %i.gp, label %bb.cn, label %common.resume

bb.cn:                                            ; preds = %bb.cm
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gm) #15
          to label %common.resume unwind label %bb.cq

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB13_.exit.i.i: ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !708, !noundef !5 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit, label %bb.co

bb.co:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB13_.exit.i.i
  %5 = atomicrmw sub ptr %i.gr, i64 1 release, align 8, !noalias !709
  %i.gt = icmp eq i64 %5, 1
  br i1 %i.gt, label %bb.cp, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.cp:                                            ; preds = %bb.co
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gq) #15
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.cq:                                            ; preds = %bb.cn
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.cr:                                            ; preds = %bb.bw
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !range !6, !alias.scope !710, !noundef !5
  %cond.i.i = icmp eq i64 %i.gw, 0
  br i1 %cond.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.cr
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.cs:                                            ; preds = %bb.bw
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.gy)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.ct:                                            ; preds = %bb.ch
  %i.gz = landingpad { ptr, i32 }
          cleanup
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ha)
          to label %common.resume unwind label %bb.cu

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %bb.ch
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hb)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.cu:                                            ; preds = %bb.ct
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.cv:                                            ; preds = %bb.a
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !range !9, !alias.scope !711, !noundef !5
  %i.hf = icmp eq i64 %i.he, -1
  br i1 %i.hf, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.hd)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit.i unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !range !9, !alias.scope !712, !noundef !5
  %i.hj = icmp eq i64 %i.hi, -1
  br i1 %i.hj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit8.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hh)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit8.i unwind label %bb.de

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit.i: ; preds = %bb.cw, %bb.cv
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !range !9, !alias.scope !713, !noundef !5
  %i.hm = icmp eq i64 %i.hl, -1
  br i1 %i.hm, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit10.i, label %bb.cz

bb.cz:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hk)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit10.i unwind label %bb.db

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit8.i: ; preds = %bb.db, %bb.cy, %bb.cx
  %.pn.i17 = phi { ptr, i32 } [ %i.hq, %bb.db ], [ %i.hg, %bb.cy ], [ %i.hg, %bb.cx ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !range !9, !alias.scope !714, !noundef !5
  %i.hp = icmp eq i64 %i.ho, -1
  br i1 %i.hp, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i, label %bb.da

bb.da:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit8.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hn)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i unwind label %bb.de

bb.db:                                            ; preds = %bb.cz
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit8.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit10.i: ; preds = %bb.cz, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit.i
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !range !9, !alias.scope !715, !noundef !5
  %i.ht = icmp eq i64 %i.hs, -1
  br i1 %i.ht, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment19PaymentNotificationEBJ_.exit, label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit10.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment19PaymentNotificationEBJ_.exit unwind label %bb.dd

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %bb.dd, %bb.da, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit8.i
  %.pn2.i18 = phi { ptr, i32 } [ %i.hw, %bb.dd ], [ %.pn.i17, %bb.da ], [ %.pn.i17, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit8.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val5.i = load i8, ptr %i.hu, align 8, !range !4, !alias.scope !716, !noundef !5
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val6.i = load ptr, ptr %i.hv, align 8, !alias.scope !716
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment18TransactionDetailsEEB15_(i8 %.val5.i, ptr %.val6.i) #17
          to label %common.resume unwind label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i

bb.de:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit.i, %bb.da, %bb.cy
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment19PaymentNotificationEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment9MobAmountEEB15_.exit10.i, %bb.dc
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i19 = load i8, ptr %i.hy, align 8, !range !4, !alias.scope !716, !noundef !5
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val4.i = load ptr, ptr %i.hz, align 8, !alias.scope !716
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment18TransactionDetailsEEB15_(i8 %.val.i19, ptr %.val4.i)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.df:                                            ; preds = %bb.a
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ia, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.ib = load i64, ptr %.val, align 8, !range !9, !alias.scope !717, !noundef !5
  %.not.i.i = icmp eq i64 %i.ib, -1
  br i1 %.not.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10gift_badge9GiftBadgeEEB1h_.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(864) %.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10gift_badge9GiftBadgeEEB1h_.exit unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ic = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 864, i64 noundef 8) #14
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10gift_badge9GiftBadgeEEB1h_.exit: ; preds = %bb.df, %bb.dg
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 864, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.di:                                            ; preds = %bb.a
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i20 = load ptr, ptr %i.ie, align 8, !alias.scope !718, !align !7, !noundef !5 ; 4 uses
  %i.if = icmp eq ptr %.val.i20, null
  br i1 %i.if, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17view_once_message15ViewOnceMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %.val.i20)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1f_.exit.i.i unwind label %.body.i21, !noalias !718

.body.i21:                                        ; preds = %bb.dj
  %i.ig = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i20, i64 noundef 312, i64 noundef 8) #14, !noalias !718
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.id) #17
          to label %common.resume unwind label %bb.dk

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1f_.exit.i.i: ; preds = %bb.dj
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i20, i64 noundef 312, i64 noundef 8) #14, !noalias !718
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17view_once_message15ViewOnceMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.dk:                                            ; preds = %.body.i21
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17view_once_message15ViewOnceMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit: ; preds = %bb.di, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentEEB1f_.exit.i.i
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.id)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.dl:                                            ; preds = %bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !range !9, !alias.scope !719, !noundef !5
  %.not.i.i22 = icmp eq i64 %i.ik, -1
  br i1 %.not.i.i22, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ij)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i28 unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.il = landingpad { ptr, i32 }
          cleanup
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %.body.i.i23 unwind label %bb.do

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i28: ; preds = %bb.dm
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.in)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEBJ_.exit.i.i29 unwind label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.dp:                                            ; preds = %bb.dl
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ip)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat11story_reply23DirectStoryReplyMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit unwind label %bb.du

bb.dq:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i28
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i23

.body.i.i23:                                      ; preds = %bb.dq, %bb.dn
  %eh.lpad-body.i.i24 = phi { ptr, i32 } [ %i.iq, %bb.dq ], [ %i.il, %bb.dn ]
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i25 = load ptr, ptr %i.ir, align 8, !alias.scope !719, !align !7, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEEB1B_(ptr %.val1.i.i25) #17
          to label %.body.i26 unwind label %bb.dt

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEBJ_.exit.i.i29: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i28
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i.i30 = load ptr, ptr %i.is, align 8, !alias.scope !719, !align !7, !noundef !5 ; 4 uses
  %i.it = icmp eq ptr %.val.i.i30, null
  br i1 %i.it, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat11story_reply23DirectStoryReplyMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit, label %bb.dr

bb.dr:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEBJ_.exit.i.i29
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %.val.i.i30)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.iu = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i30, i64 noundef 288, i64 noundef 8) #14
  br label %.body.i26

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i: ; preds = %bb.dr
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i30, i64 noundef 288, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat11story_reply23DirectStoryReplyMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.dt:                                            ; preds = %.body.i.i23
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.du:                                            ; preds = %bb.dp
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i26

.body.i26:                                        ; preds = %bb.du, %bb.ds, %.body.i.i23
  %eh.lpad-body.i27 = phi { ptr, i32 } [ %i.iw, %bb.du ], [ %i.iu, %bb.ds ], [ %eh.lpad-body.i.i24, %.body.i.i23 ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ii) #17
          to label %common.resume unwind label %bb.dv

bb.dv:                                            ; preds = %.body.i26
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat11story_reply23DirectStoryReplyMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit: ; preds = %bb.dp, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEBJ_.exit.i.i29, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ii)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit

bb.dw:                                            ; preds = %bb.a
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.iy)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i32 unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.iz = landingpad { ptr, i32 }
          cleanup
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll10PollOptionNtNtB1e_9recipient17FullRecipientDataEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ja) #17
          to label %bb.dy unwind label %bb.ea

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i32: ; preds = %bb.dw
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll10PollOptionNtNtB1e_9recipient17FullRecipientDataEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.jb)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll4PollNtNtBI_9recipient17FullRecipientDataEEBK_.exit unwind label %bb.dz

bb.dy:                                            ; preds = %bb.dz, %bb.dx
  %.pn.i31 = phi { ptr, i32 } [ %i.jd, %bb.dz ], [ %i.iz, %bb.dx ]
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.jc) #17
          to label %common.resume unwind label %bb.ea

bb.dz:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i32
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.ea:                                            ; preds = %bb.dy, %bb.dx
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll4PollNtNtBI_9recipient17FullRecipientDataEEBK_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i32
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.jf)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted19AdminDeletedMessageNtNtBI_9recipient17FullRecipientDataEEBK_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !733, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !733
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #17
          to label %.body unwind label %bb.j

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !735, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !735, !noundef !5 ; 4 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = icmp eq i64 %i.l, %i.h
  br i1 %i.j, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit, %bb.d
  %.sroa.0.0.i.i3 = phi i64 [ %i.l, %bb.d ], [ 0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [320 x i8], ptr %i.f, i64 %.sroa.0.0.i.i3
  %i.l = add i64 %.sroa.0.0.i.i3, 1               ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(320) %i.k) #18
          to label %bb.d unwind label %bb.f, !noalias !734, !inline_history !13

bb.e:                                             ; preds = %.lr.ph5
  %i.m = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %.body.i, label %.lr.ph5

bb.f:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.l, %i.h
  br i1 %i.p, label %.body.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i4 = phi i64 [ %i.m, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [320 x i8], ptr %i.f, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(320) %i.q) #19
          to label %bb.e unwind label %bb.g, !noalias !734, !inline_history !13

bb.g:                                             ; preds = %.lr.ph5
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !734, !inline_history !13
  unreachable

.body.i:                                          ; preds = %bb.e, %bb.f
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.h, !inline_history !11

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %bb.d, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_.exit unwind label %bb.i, !inline_history !11

bb.h:                                             ; preds = %.body.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !inline_history !11
  unreachable

.body:                                            ; preds = %bb.i, %.body.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.u, %bb.i ], [ %i.o, %.body.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtB14_6method5StoreEEEB16_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t) #17
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_.exit: ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtB14_6method5StoreEEEB16_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.v)
  ret void

bb.j:                                             ; preds = %.body, %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9DirectionNtNtBG_9recipient17FullRecipientDataEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !760, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !760, !noundef !5 ; 4 uses
  %i.f = icmp eq i64 %.val1.i.i, 0
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListINtNtBI_4chat12OutgoingSendNtNtBI_9recipient17FullRecipientDataEEEBK_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i.i.i
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.sroa.0.09.i.i.i.i
  %i.h = add nuw nsw i64 %.sroa.0.09.i.i.i.i, 1   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !765, !noalias !760, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !766
  %i.k = icmp eq i64 %1, 1
  br i1 %i.k, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i.i.i unwind label %bb.d, !noalias !760

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.l = icmp eq i64 %i.h, %.val1.i.i
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListINtNtBI_4chat12OutgoingSendNtNtBI_9recipient17FullRecipientDataEEEBK_.exit, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.h, %.val1.i.i
  br i1 %i.n, label %.body.i.i, label %.lr.ph12.i.i.i.i

.lr.ph12.i.i.i.i:                                 ; preds = %bb.d, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i.i.i
  %.sroa.0.110.i.i.i.i = phi i64 [ %i.p, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i, i64 %.sroa.0.110.i.i.i.i
  %i.p = add i64 %.sroa.0.110.i.i.i.i, 1          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !771, !noalias !760, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !772
  %i.s = icmp eq i64 %2, 1
  br i1 %i.s, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i.i.i

bb.e:                                             ; preds = %.lr.ph12.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i.i.i unwind label %bb.f, !noalias !760

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i.i.i: ; preds = %bb.e, %.lr.ph12.i.i.i.i
  %i.t = icmp eq i64 %i.p, %.val1.i.i
  br i1 %i.t, label %.body.i.i, label %.lr.ph12.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !760
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i.i.i.i, %bb.d
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtB1j_9recipient17FullRecipientDataEEEB1l_.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %.body.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtB1j_9recipient17FullRecipientDataEEEB1l_.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %i.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListINtNtBI_4chat12OutgoingSendNtNtBI_9recipient17FullRecipientDataEEEBK_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i.i.i.i, %bb.b
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListINtNtBI_4chat12OutgoingSendNtNtBI_9recipient17FullRecipientDataEEEBK_.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1Q_9recipient17FullRecipientDataENCNvXs_NtB1Q_9serializeNtB3F_6BackupINtNtB4_7convert4FromINtB1Q_15CompletedBackupNtNtB1Q_6method5StoreEE4from0EEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !791, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterINtB1g_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB2e_9recipient17FullRecipientDataEEEEEB2g_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1a_9recipient17FullRecipientDataEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterINtB1g_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB2e_9recipient17FullRecipientDataEEEEEB2g_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !792, !noundef !5
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB10_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit.i.i.i unwind label %bb.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterINtB1g_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB2e_9recipient17FullRecipientDataEEEEEB2g_.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !793, !noundef !5
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit4.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterINtB1g_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB2e_9recipient17FullRecipientDataEEEEEB2g_.exit.i.i.i
  invoke void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB10_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit4.i.i.i unwind label %bb.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit.i.i.i: ; preds = %bb.g, %bb.d, %bb.c
  %.pn.i.i.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !794, !noundef !5
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit6.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit.i.i.i
  invoke void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB10_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit6.i.i.i unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit4.i.i.i: ; preds = %bb.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterINtB1g_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB2e_9recipient17FullRecipientDataEEEEEB2g_.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !795, !noundef !5
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1i_9recipient17FullRecipientDataEEB1k_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit4.i.i.i
  tail call void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB10_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1i_9recipient17FullRecipientDataEEB1k_.exit

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit6.i.i.i: ; preds = %bb.f, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit.i.i.i
  resume { ptr, i32 } %.pn.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1i_9recipient17FullRecipientDataEEB1k_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1P_9recipient17FullRecipientDataEEEEB1R_.exit4.i.i.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1Q_4chat8ChatDataNtNtB1Q_6method5StoreEENCNvXs_NtB1Q_9serializeNtB3H_6BackupINtNtB4_7convert4FromINtB1Q_15CompletedBackupB3d_EE4froms_0EEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !814, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterINtB1g_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB2e_4chat8ChatDataNtNtB2e_6method5StoreEEEEEEB2g_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1a_4chat8ChatDataNtNtB1a_6method5StoreEEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterINtB1g_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB2e_4chat8ChatDataNtNtB2e_6method5StoreEEEEEEB2g_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !815, !noundef !5
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB10_4chat8ChatDataNtNtB10_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit.i.i.i unwind label %bb.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterINtB1g_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB2e_4chat8ChatDataNtNtB2e_6method5StoreEEEEEEB2g_.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !816, !noundef !5
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit4.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterINtB1g_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB2e_4chat8ChatDataNtNtB2e_6method5StoreEEEEEEB2g_.exit.i.i.i
  invoke void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB10_4chat8ChatDataNtNtB10_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit4.i.i.i unwind label %bb.g

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit.i.i.i: ; preds = %bb.g, %bb.d, %bb.c
  %.pn.i.i.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !817, !noundef !5
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit6.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit.i.i.i
  invoke void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB10_4chat8ChatDataNtNtB10_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit6.i.i.i unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit4.i.i.i: ; preds = %bb.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterINtB1g_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB2e_4chat8ChatDataNtNtB2e_6method5StoreEEEEEEB2g_.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !818, !noundef !5
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1i_4chat8ChatDataNtNtB1i_6method5StoreEEEB1k_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit4.i.i.i
  tail call void @_RNvXse_NtNtCs6i54tJFfzR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB10_4chat8ChatDataNtNtB10_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1i_4chat8ChatDataNtNtB1i_6method5StoreEEEB1k_.exit

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit6.i.i.i: ; preds = %bb.f, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit.i.i.i
  resume { ptr, i32 } %.pn.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1i_4chat8ChatDataNtNtB1i_6method5StoreEEEB1k_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1P_4chat8ChatDataNtNtB1P_6method5StoreEEEEEB1R_.exit4.i.i.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll10PollOptionNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListINtNtNtBI_4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.d unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListINtNtNtBI_4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote5QuoteNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !832, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !832
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #17
          to label %.body unwind label %bb.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !833, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !833, !noundef !5 ; 4 uses
  %i.g = icmp eq i64 %.val1.i, 0
  br i1 %i.g, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %.val1.i
  br i1 %i.h, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit, %bb.d
  %.sroa.0.0.i.i.i3 = phi i64 [ %i.j, %bb.d ], [ 0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw [360 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i3
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i3, 1     ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentEBJ_(ptr noalias nofree noundef align 8 dereferenceable(360) %i.i)
          to label %bb.d unwind label %bb.f, !noalias !833

bb.e:                                             ; preds = %.lr.ph5
  %i.k = add i64 %.sroa.0.1.i.i.i4, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %.val1.i
  br i1 %i.l, label %.body.i, label %.lr.ph5

bb.f:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %.val1.i
  br i1 %i.n, label %.body.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i4 = phi i64 [ %i.k, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw [360 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i4
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentEBJ_(ptr noalias nofree noundef align 8 dereferenceable(360) %i.o) #17
          to label %bb.e unwind label %bb.g, !noalias !833

bb.g:                                             ; preds = %.lr.ph5
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !833
  unreachable

.body.i:                                          ; preds = %bb.e, %bb.f
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.h

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit.i: ; preds = %bb.d, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentEEB1f_.exit unwind label %bb.i

bb.h:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

.body:                                            ; preds = %bb.i, %.body.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.s, %bb.i ], [ %i.m, %.body.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEEB15_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.r) #17
          to label %common.resume unwind label %bb.m

bb.i:                                             ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentEEB1f_.exit: ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !9, !alias.scope !834, !noundef !5
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEEB15_.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentEEB1f_.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEBJ_.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.k ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEBJ_.exit.i: ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEEB15_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEEB15_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentEEB1f_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text11MessageTextEBJ_.exit.i
  ret void

bb.m:                                             ; preds = %.body, %bb.c
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions11ReactionSetNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !857, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.b, align 8, !alias.scope !857, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %.val1.i.i, 0
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListINtNtNtBI_4chat9reactions8ReactionNtNtBI_9recipient17FullRecipientDataEEEBK_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i, i64 %.sroa.0.010.i.i.i.i ; 3 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1  ; 4 uses
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i unwind label %bb.b, !noalias !857

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !861, !noalias !857, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !862
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %bb.c, label %.body.i.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #15
          to label %.body.i.i.i.i unwind label %bb.e, !noalias !857

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !866, !noalias !857, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !867
  %i.l = icmp eq i64 %2, 1
  br i1 %i.l, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i.i.i

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i.i.i unwind label %bb.g, !noalias !857

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !857
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i.i.i: ; preds = %bb.d, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i
  %i.n = icmp eq i64 %i.e, %.val1.i.i
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListINtNtNtBI_4chat9reactions8ReactionNtNtBI_9recipient17FullRecipientDataEEEBK_.exit, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.0.1.i.i.i.i21, 1          ; 2 uses
  %i.p = icmp eq i64 %i.o, %.val1.i.i
  br i1 %i.p, label %.body.i.i, label %.lr.ph

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.g, %bb.c, %bb.b
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.f, %bb.c ], [ %i.f, %bb.b ]
  %i.r = icmp eq i64 %i.e, %.val1.i.i
  br i1 %i.r, label %.body.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i.i, %bb.f
  %.sroa.0.1.i.i.i.i21 = phi i64 [ %i.o, %bb.f ], [ %i.e, %.body.i.i.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i, i64 %.sroa.0.1.i.i.i.i21
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.s) #17
          to label %bb.f unwind label %bb.h, !noalias !857

bb.h:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !857
  unreachable

.body.i.i:                                        ; preds = %bb.f, %.body.i.i.i.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtBS_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtB1l_9recipient17FullRecipientDataEEEB1n_.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %.body.i.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtB1l_9recipient17FullRecipientDataEEEB1n_.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListINtNtNtBI_4chat9reactions8ReactionNtNtBI_9recipient17FullRecipientDataEEEBK_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i.i.i, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtBS_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtBI_9recipient17FullRecipientDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !883, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !883
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !887, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !887
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit1

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #15
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit1

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit1: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9serialize14unordered_list13UnorderedListINtNtNtBI_4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !908, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !908, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtB1e_9recipient17FullRecipientDataEEEB1g_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i.i
  %.sroa.0.09.i.i.i = phi i64 [ %i.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.09.i.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i.i, 1     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !913, !noalias !908, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !914
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i.i unwind label %bb.c, !noalias !908

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.h = icmp eq i64 %i.e, %.val1.i
  br i1 %i.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtB1e_9recipient17FullRecipientDataEEEB1g_.exit, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.e, %.val1.i
  br i1 %i.j, label %.body.i, label %.lr.ph12.i.i.i

.lr.ph12.i.i.i:                                   ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEBK_.exit8.i.i.i
  %.sroa.0.110.i.i.i = phi i64 [ %i.l, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEBK_.exit8.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.110.i.i.i ; 2 uses
  %i.l = add i64 %.sroa.0.110.i.i.i, 1            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !919, !noalias !908, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !920
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEBK_.exit8.i.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEBK_.exit8.i.i.i unwind label %bb.e, !noalias !908

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEBK_.exit8.i.i.i: ; preds = %bb.d, %.lr.ph12.i.i.i
  %i.o = icmp eq i64 %i.l, %.val1.i
  br i1 %i.o, label %.body.i, label %.lr.ph12.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !908
  unreachable

.body.i:                                          ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEBK_.exit8.i.i.i, %bb.c
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBS_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtB1l_9recipient17FullRecipientDataEEEB1n_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtB1l_9recipient17FullRecipientDataEEEB1n_.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtB1e_9recipient17FullRecipientDataEEEB1g_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBI_9recipient17FullRecipientDataEEBK_.exit.i.i.i, %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBS_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #14
  resume { ptr, i32 } %i.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCskw1zp9IbpTW_24libsignal_message_backup7unknown8PathPartEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !5
  %switch3 = icmp slt i64 %i.a, -9223372036854775806
  br i1 %switch3, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a, %bb.b
  %.sink2 = phi i64 [ 24, %bb.b ], [ 8, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit1 unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit1: ; preds = %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10SendStatusEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val2 = load i64, ptr %0, align 8, !range !921, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.a, align 8            ; 4 uses
  %i.b = icmp eq i64 %.val2, -1
  %i.c = icmp eq ptr %.val3, null
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11send_status14DeliveryStatusEEB15_.exit, label %.invoke.invoke.i.i

.invoke.invoke.i.i:                               ; preds = %bb.a
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val3)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11send_status6FailedEBJ_.exit.sink.split.i.i unwind label %common.resume.i.i

common.resume.i.i:                                ; preds = %.invoke.invoke.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 32, i64 noundef 8) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1 = load ptr, ptr %i.e, align 8, !align !7, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup(ptr %.val1) #17
          to label %common.resume unwind label %bb.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11send_status6FailedEBJ_.exit.sink.split.i.i: ; preds = %.invoke.invoke.i.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 32, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11send_status14DeliveryStatusEEB15_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11send_status14DeliveryStatusEEB15_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11send_status6FailedEBJ_.exit.sink.split.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.f, align 8, !align !7, !noundef !5 ; 4 uses
  %i.g = icmp eq ptr %.val, null
  br i1 %i.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11send_status14DeliveryStatusEEB15_.exit
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i unwind label %bb.c

common.resume:                                    ; preds = %common.resume.i.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.d, %common.resume.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #14
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11send_status14DeliveryStatusEEB15_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  ret void

bb.d:                                             ; preds = %common.resume.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11LinkPreviewEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !9, !alias.scope !930, !noundef !5
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.n

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !9, !alias.scope !931, !noundef !5
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit10, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit10 unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.b, %bb.c, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val8 = load ptr, ptr %i.i, align 8, !align !7, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsh1373Z0TDxr_8protobuf13message_field12MessageFieldNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11FilePointerEEB1C_(ptr %.val8) #17
          to label %bb.f unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup.exit10: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val7 = load ptr, ptr %i.k, align 8, !align !7, !noundef !5
end_hunk_5
begin_hunk_6_@_RNvXNtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtB15_6method5StoreEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtB15_5frame6ChatIdB10_ENCNvXs_NtB15_9serializeNtB4V_6BackupINtNtB36_7convert4FromINtB15_15CompletedBackupB26_EE4froms_0EE9from_iterB17_:bb.a
          cleanup
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !9, !noundef !5
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1Q_4chat8ChatDataNtNtB1Q_6method5StoreEENCNvXs_NtB1Q_9serializeNtB3H_6BackupINtNtB4_7convert4FromINtB1Q_15CompletedBackupB3d_EE4froms_0EEB1S_(ptr noalias nofree noundef align 8 dereferenceable(96) %1)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBV_6method5StoreEEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBV_5frame6ChatIdBQ_ENCNvXs_NtBV_9serializeNtB4z_6BackupINtNtB2M_7convert4FromINtBV_15CompletedBackupB1W_EE4froms_0EE11spec_extendBX_.exit, %bb.d
  ret void

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.e) #17
          to label %bb.u unwind label %bb.s

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 128)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.g
  %i.m = load i64, ptr %i.c, align 8, !range !18, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !19, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #20
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = icmp ugt i64 %i.p, 3
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  store i64 %i.p, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBI_6method5StoreEE7reserveBK_.exit.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1302
  invoke fastcc void @_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB5_3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1D_4chat8ChatDataNtNtB1D_6method5StoreEENCNvXs_NtB1D_9serializeNtB3u_6BackupINtNtBb_7convert4FromINtB1D_15CompletedBackupB30_EE4froms_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.o, %bb.l
  %.pn.i.i = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.u, %bb.l ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1Q_4chat8ChatDataNtNtB1Q_6method5StoreEENCNvXs_NtB1Q_9serializeNtB3H_6BackupINtNtB4_7convert4FromINtB1Q_15CompletedBackupB3d_EE4froms_0EEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d) #17
          to label %.body unwind label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.v = load i64, ptr %i.b, align 8, !range !9, !noalias !1302, !noundef !5
  %.not.i.i = icmp eq i64 %i.v, -1
  br i1 %.not.i.i, label %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBK_6method5StoreEE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBK_5frame6ChatIdBF_ENCNvXs_NtBK_9serializeNtB4l_6BackupINtNtB2y_7convert4FromINtBK_15CompletedBackupB1L_EE4froms_0EEBM_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false), !noalias !1302
  %i.w = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1303, !noundef !5 ; 5 uses
  %i.x = icmp ult i64 %i.w, 72057594037927936
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.g, align 8, !range !16, !alias.scope !1303, !noundef !5
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.p, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBI_6method5StoreEE7reserveBK_.exit.i.i

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBI_6method5StoreEE7reserveBK_.exit.i.i: ; preds = %bb.p, %bb.n
  %i.aa = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1303, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ab, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  %i.ac = add nuw nsw i64 %i.w, 1
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1302
  br label %bb.j

bb.o:                                             ; preds = %bb.p
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.a) #17
          to label %bb.k unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.w, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 128)
          to label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBI_6method5StoreEE7reserveBK_.exit.i.i unwind label %bb.o

bb.q:                                             ; preds = %bb.o, %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBK_6method5StoreEE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBK_5frame6ChatIdBF_ENCNvXs_NtBK_9serializeNtB4l_6BackupINtNtB2y_7convert4FromINtBK_15CompletedBackupB1L_EE4froms_0EEBM_.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1302
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1Q_4chat8ChatDataNtNtB1Q_6method5StoreEENCNvXs_NtB1Q_9serializeNtB3H_6BackupINtNtB4_7convert4FromINtB1Q_15CompletedBackupB3d_EE4froms_0EEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBV_6method5StoreEEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBV_5frame6ChatIdBQ_ENCNvXs_NtBV_9serializeNtB4z_6BackupINtNtB2M_7convert4FromINtBV_15CompletedBackupB1W_EE4froms_0EE11spec_extendBX_.exit unwind label %bb.r

bb.r:                                             ; preds = %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBK_6method5StoreEE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBK_5frame6ChatIdBF_ENCNvXs_NtBK_9serializeNtB4l_6BackupINtNtB2y_7convert4FromINtBK_15CompletedBackupB1L_EE4froms_0EEBM_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.r ], [ %.pn.i.i, %bb.k ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtB1c_6method5StoreEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #17
          to label %bb.t unwind label %bb.s

_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBV_6method5StoreEEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBV_5frame6ChatIdBQ_ENCNvXs_NtBV_9serializeNtB4z_6BackupINtNtB2M_7convert4FromINtBV_15CompletedBackupB1W_EE4froms_0EE11spec_extendBX_.exit: ; preds = %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBK_6method5StoreEE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBK_5frame6ChatIdBF_ENCNvXs_NtBK_9serializeNtB4l_6BackupINtNtB2y_7convert4FromINtBK_15CompletedBackupB1L_EE4froms_0EEBM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e

bb.s:                                             ; preds = %bb.u, %.body, %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.t:                                             ; preds = %.body, %bb.u
  %.pn8 = phi { ptr, i32 } [ %.pn.ph, %bb.u ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn8

bb.u:                                             ; preds = %bb.f, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.l, %bb.f ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1Q_4chat8ChatDataNtNtB1Q_6method5StoreEENCNvXs_NtB1Q_9serializeNtB3H_6BackupINtNtB4_7convert4FromINtB1Q_15CompletedBackupB3d_EE4froms_0EEB1S_(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #17
          to label %bb.t unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEINtB2_18SpecFromIterNestedB10_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtB14_5frame11RecipientIdB10_ENCNvXs_NtB14_9serializeNtB4T_6BackupINtNtB2Y_7convert4FromINtB14_15CompletedBackupNtNtB14_6method5StoreEE4from0EE9from_iterB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke fastcc noundef ptr @_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB5_3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1D_9recipient17FullRecipientDataENCNvXs_NtB1D_9serializeNtB3s_6BackupINtNtBb_7convert4FromINtB1D_15CompletedBackupNtNtB1D_6method5StoreEE4from0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_(ptr noalias nofree noundef align 8 dereferenceable(96) %1)
          to label %bb.c unwind label %bb.b       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1Q_9recipient17FullRecipientDataENCNvXs_NtB1Q_9serializeNtB3F_6BackupINtNtB4_7convert4FromINtB1Q_15CompletedBackupNtNtB1Q_6method5StoreEE4from0EEB1S_(ptr noalias nofree noundef align 8 dereferenceable(96) %1)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBU_5frame11RecipientIdBQ_ENCNvXs_NtBU_9serializeNtB4y_6BackupINtNtB2F_7convert4FromINtBU_15CompletedBackupNtNtBU_6method5StoreEE4from0EE11spec_extendBW_.exit, %bb.d
  ret void

bb.f:                                             ; preds = %bb.i, %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %2 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !1322
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #15
          to label %bb.v unwind label %bb.t

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %bb.h
  %i.l = load i64, ptr %i.b, align 8, !range !18, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !19, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.m, label %bb.i, label %bb.j, !prof !17

bb.i:                                             ; preds = %.noexc6
  %i.q = load i64, ptr %i.p, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #20
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc6
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = icmp ugt i64 %i.o, 3
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.r, align 8
  store i64 %i.o, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataE7reserveBJ_.exit.i.i, %bb.j
  %i.t = invoke fastcc noundef ptr @_RNvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB5_3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1D_9recipient17FullRecipientDataENCNvXs_NtB1D_9serializeNtB3s_6BackupINtNtBb_7convert4FromINtB1D_15CompletedBackupNtNtB1D_6method5StoreEE4from0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %bb.m unwind label %bb.l       ; 4 uses

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i: ; preds = %bb.p, %bb.o, %bb.l
  %.pn.i.i = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1Q_9recipient17FullRecipientDataENCNvXs_NtB1Q_9serializeNtB3F_6BackupINtNtB4_7convert4FromINtB1Q_15CompletedBackupNtNtB1Q_6method5StoreEE4from0EEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c) #17
          to label %.body unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBJ_5frame11RecipientIdBF_ENCNvXs_NtBJ_9serializeNtB4k_6BackupINtNtB2r_7convert4FromINtBJ_15CompletedBackupNtNtBJ_6method5StoreEE4from0EEBL_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1325
  store ptr %i.t, ptr %i.a, align 8, !noalias !1325
  %i.v = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1326, !noundef !5 ; 5 uses
  %i.w = icmp ult i64 %i.v, 1152921504606846976
  call void @llvm.assume(i1 %i.w)
  %i.x = load i64, ptr %i.e, align 8, !range !16, !alias.scope !1326, !noundef !5
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.q, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataE7reserveBJ_.exit.i.i

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataE7reserveBJ_.exit.i.i: ; preds = %bb.q, %bb.n
  %i.z = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1326, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.v
  store ptr %i.t, ptr %i.aa, align 8
  %i.ab = add nuw nsw i64 %i.v, 1
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1325
  br label %bb.k

bb.o:                                             ; preds = %bb.q
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %3 = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !1327
  %i.ad = icmp eq i64 %3, 1
  br i1 %i.ad, label %bb.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i unwind label %bb.r

bb.q:                                             ; preds = %bb.n
  invoke void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.v, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataE7reserveBJ_.exit.i.i unwind label %bb.o

bb.r:                                             ; preds = %bb.p, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBJ_5frame11RecipientIdBF_ENCNvXs_NtBJ_9serializeNtB4k_6BackupINtNtB2r_7convert4FromINtBJ_15CompletedBackupNtNtBJ_6method5StoreEE4from0EEBL_.exit.i: ; preds = %bb.m
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1Q_9recipient17FullRecipientDataENCNvXs_NtB1Q_9serializeNtB3F_6BackupINtNtB4_7convert4FromINtB1Q_15CompletedBackupNtNtB1Q_6method5StoreEE4from0EEB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBU_5frame11RecipientIdBQ_ENCNvXs_NtBU_9serializeNtB4y_6BackupINtNtB2F_7convert4FromINtBU_15CompletedBackupNtNtBU_6method5StoreEE4from0EE11spec_extendBW_.exit unwind label %bb.s

bb.s:                                             ; preds = %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBJ_5frame11RecipientIdBF_ENCNvXs_NtBJ_9serializeNtB4k_6BackupINtNtB2r_7convert4FromINtBJ_15CompletedBackupNtNtBJ_6method5StoreEE4from0EEBL_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.s ], [ %.pn.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #17
          to label %bb.u unwind label %bb.t

_RNvXNtNtCs6i54tJFfzR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEINtB2_10SpecExtendBQ_INtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBU_5frame11RecipientIdBQ_ENCNvXs_NtBU_9serializeNtB4y_6BackupINtNtB2F_7convert4FromINtBU_15CompletedBackupNtNtBU_6method5StoreEE4from0EE11spec_extendBW_.exit: ; preds = %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataE16extend_desugaredINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtBJ_5frame11RecipientIdBF_ENCNvXs_NtBJ_9serializeNtB4k_6BackupINtNtB2r_7convert4FromINtBJ_15CompletedBackupNtNtBJ_6method5StoreEE4from0EEBL_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.t:                                             ; preds = %bb.g, %bb.v, %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.u:                                             ; preds = %.body, %bb.v
  %.pn11 = phi { ptr, i32 } [ %.pn.ph, %bb.v ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn11

bb.v:                                             ; preds = %bb.b, %bb.g, %bb.f
  %.pn.ph = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.j, %bb.g ], [ %i.j, %bb.f ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs4QtOW2E4L1_6intmap4iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1Q_9recipient17FullRecipientDataENCNvXs_NtB1Q_9serializeNtB3F_6BackupINtNtB4_7convert4FromINtB1Q_15CompletedBackupNtNtB1Q_6method5StoreEE4from0EEB1S_(ptr noalias nofree noundef align 8 dereferenceable(96) %1) #17
          to label %bb.u unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6i54tJFfzR_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtB13_11StickerPackNtNtB15_6method5StoreEEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map8IntoIterB11_B27_EE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [49 x i8], align 1                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [49 x i8], align 1                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXsE_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBV_11StickerPackNtNtBX_6method5StoreEEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull sret([49 x i8]) align 1 captures(none) dereferenceable(49) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RNvXsF_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtB16_11StickerPackNtNtB18_6method5StoreEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextB1a_.exit unwind label %bb.o

_RNvXsF_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtB16_11StickerPackNtNtB18_6method5StoreEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextB1a_.exit: ; preds = %bb.a
  %i.f = load i8, ptr %i.d, align 1, !range !20, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_RNvXsF_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtB16_11StickerPackNtNtB18_6method5StoreEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextB1a_.exit
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @_RNvXsC_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBV_11StickerPackNtNtBX_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.m, %bb.b
  ret void

bb.d:                                             ; preds = %_RNvXsF_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtB16_11StickerPackNtNtB18_6method5StoreEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextB1a_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.k, align 8, !noundef !5
  %i.l = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %.sroa.0.0.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.l, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 48)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  %i.m = load i64, ptr %i.b, align 8, !range !18, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !19, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #20
          to label %.noexc4 unwind label %bb.o

.noexc4:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = icmp ule i64 %.sroa.0.0.i, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.s, ptr noundef nonnull align 1 dereferenceable(48) %i.j, i64 48, i1 false)
  store i64 %i.p, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1338
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBG_11StickerPackNtNtBI_6method5StoreEEE7reserveBK_.exit.i.i, %bb.f
  invoke void @_RNvXsE_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBV_11StickerPackNtNtBX_6method5StoreEEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextBZ_(ptr noalias nofree noundef nonnull sret([49 x i8]) align 1 captures(none) dereferenceable(49) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RNvXsF_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtB16_11StickerPackNtNtB18_6method5StoreEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextB1a_.exit.i.i unwind label %bb.i

_RNvXsF_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtB16_11StickerPackNtNtB18_6method5StoreEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextB1a_.exit.i.i: ; preds = %bb.g
  %i.w = load i8, ptr %i.a, align 1, !range !20, !noalias !1339, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBI_11StickerPackNtNtBK_6method5StoreEEE16extend_desugaredINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map8IntoIterBG_B1M_EEBM_.exit.i

bb.h:                                             ; preds = %_RNvXsF_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtB16_11StickerPackNtNtB18_6method5StoreEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextB1a_.exit.i.i
  %i.y = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1340, !noundef !5 ; 5 uses
  %i.z = icmp ult i64 %i.y, 192153584101141163
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i64, ptr %i.e, align 8, !range !16, !alias.scope !1340, !noundef !5
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.j, label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBG_11StickerPackNtNtBI_6method5StoreEEE7reserveBK_.exit.i.i

_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBG_11StickerPackNtNtBI_6method5StoreEEE7reserveBK_.exit.i.i: ; preds = %bb.j, %bb.h
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1340, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.ad, ptr noundef nonnull align 1 dereferenceable(48) %i.u, i64 48, i1 false)
  %i.ae = add nuw nsw i64 %i.y, 1
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1340
  br label %bb.g

bb.i:                                             ; preds = %bb.j, %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBV_11StickerPackNtNtBX_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.body unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %.val.i.i = load i64, ptr %i.v, align 8, !alias.scope !1341, !noundef !5
  %i.ag = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.y, i64 noundef range(i64 1, 0) %i.ag, i64 noundef 1, i64 noundef 48)
          to label %_RNvMs_NtCs6i54tJFfzR_5alloc3vecINtB4_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBG_11StickerPackNtNtBI_6method5StoreEEE7reserveBK_.exit.i.i unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBI_11StickerPackNtNtBK_6method5StoreEEE16extend_desugaredINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map8IntoIterBG_B1M_EEBM_.exit.i: ; preds = %_RNvXsF_NtNtNtCs9k3SxhrAWiO_3std11collections4hash3mapINtB5_8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtB16_11StickerPackNtNtB18_6method5StoreEENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextB1a_.exit.i.i
  invoke void @_RNvXsC_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_11RawIntoIterTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBV_11StickerPackNtNtBX_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBI_11StickerPackNtNtBK_6method5StoreEEE16extend_desugaredINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map8IntoIterBG_B1M_EEBM_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.af, %bb.i ]
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBO_11StickerPackNtNtBQ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtB1z_11StickerPackNtNtB1B_6method5StoreEEEB1D_.exit unwind label %bb.n

bb.m:                                             ; preds = %_RINvMsj_NtCs6i54tJFfzR_5alloc3vecINtB6_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker6PackIdINtBI_11StickerPackNtNtBK_6method5StoreEEE16extend_desugaredINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map8IntoIterBG_B1M_EEBM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c

bb.n:                                             ; preds = %bb.o, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
end_hunk_6
begin_hunk_7_@_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCskw1zp9IbpTW_24libsignal_message_backup:bb.a
bb.c:                                             ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskw1zp9IbpTW_24libsignal_message_backup.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !1580
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !1580
  br label %_RINvXs_NvMNtCs6i54tJFfzR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvXs_NvMNtCs6i54tJFfzR_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskw1zp9IbpTW_24libsignal_message_backup.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecIBv_TNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBN_9recipient17FullRecipientDataEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1d_9recipient17FullRecipientDataEEEB1f_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1d_9recipient17FullRecipientDataEEEB1f_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1c_9recipient17FullRecipientDataEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1c_9recipient17FullRecipientDataEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #17
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1d_9recipient17FullRecipientDataEEEB1f_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecIBv_TNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBN_9recipient20MinimalRecipientDataEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1d_9recipient20MinimalRecipientDataEEEB1f_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1d_9recipient20MinimalRecipientDataEEEB1f_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1c_9recipient20MinimalRecipientDataEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1c_9recipient20MinimalRecipientDataEEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #17
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtB1d_9recipient20MinimalRecipientDataEEEB1f_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecIBv_TNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBN_4chat8ChatDataNtNtBN_6method12ValidateOnlyEEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1d_4chat8ChatDataNtNtB1d_6method12ValidateOnlyEEEEB1f_.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1d_4chat8ChatDataNtNtB1d_6method12ValidateOnlyEEEEB1f_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBQ_4chat8ChatDataNtNtBQ_6method12ValidateOnlyEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit.i unwind label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBQ_4chat8ChatDataNtNtBQ_6method12ValidateOnlyEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit7.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit7.i._crit_edge: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1d_4chat8ChatDataNtNtB1d_6method12ValidateOnlyEEEEB1f_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method12ValidateOnlyEEEEB1e_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecIBv_TNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBN_4chat8ChatDataNtNtBN_6method5StoreEEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1d_4chat8ChatDataNtNtB1d_6method5StoreEEEEB1f_.exit, label %.lr.ph248

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit.i: ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBJ_4chat8ChatDataNtNtBJ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1d_4chat8ChatDataNtNtB1d_6method5StoreEEEEB1f_.exit, label %.lr.ph248

.lr.ph248:                                        ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit.i
  %.sroa.0.0.i247 = phi i64 [ %i.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i247 ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i247, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1622, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1622, !noundef !5 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBJ_4chat8ChatDataNtNtBJ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph248, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_.exit.i
  %.sroa.0.0.i.i.i63.i = phi i64 [ %i.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_.exit.i ], [ 0, %.lr.ph248 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [136 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i63.i ; 12 uses
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i.i63.i, 1  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1623)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1624), !noalias !1625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626), !noalias !1625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1627), !noalias !1625
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1628, !noalias !1625, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1629
  %i.s = icmp eq i64 %1, 1
  br i1 %i.s, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire, !noalias !1625
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i unwind label %bb.c, !noalias !1625

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.p) #17
          to label %.body.i9.i unwind label %bb.q, !noalias !1625

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i: ; preds = %bb.b, %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1630), !noalias !1625
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1631, !noalias !1625, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1631, !noalias !1625, !noundef !5 ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i.i.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.z = icmp eq i64 %i.ab, %i.x
  br i1 %i.z, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i, %bb.d
  %.sroa.0.0.i.i.i7.i246 = phi i64 [ %i.ab, %bb.d ], [ 0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [320 x i8], ptr %i.v, i64 %.sroa.0.0.i.i.i7.i246
  %i.ab = add i64 %.sroa.0.0.i.i.i7.i246, 1       ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(320) %i.aa) #18
          to label %bb.d unwind label %bb.f, !noalias !1632, !inline_history !13

bb.e:                                             ; preds = %.lr.ph250
  %i.ac = add i64 %.sroa.0.1.i.i.i8.i249, 1       ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.x
  br i1 %i.ad, label %.body.i.i.i, label %.lr.ph250

bb.f:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = icmp eq i64 %i.ab, %i.x
  br i1 %i.af, label %.body.i.i.i, label %.lr.ph250

.lr.ph250:                                        ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i8.i249 = phi i64 [ %i.ac, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [320 x i8], ptr %i.v, i64 %.sroa.0.1.i.i.i8.i249
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(320) %i.ag) #19
          to label %bb.e unwind label %bb.g, !noalias !1632, !inline_history !13

bb.g:                                             ; preds = %.lr.ph250
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !1632, !inline_history !13
  unreachable

.body.i.i.i:                                      ; preds = %bb.e, %bb.f
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.p)
          to label %.body.i9.i unwind label %bb.h, !noalias !1625, !inline_history !11

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i.i.i: ; preds = %bb.d, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.p)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_.exit.i.i unwind label %bb.i, !noalias !1625, !inline_history !11

bb.h:                                             ; preds = %.body.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !1625, !inline_history !11
  unreachable

.body.i9.i:                                       ; preds = %bb.i, %.body.i.i.i, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.t, %bb.c ], [ %i.ak, %bb.i ], [ %i.ae, %.body.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9ChatStyleNtNtB14_6method5StoreEEEB16_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.aj) #17
          to label %.body10.i unwind label %bb.q, !noalias !1625

bb.i:                                             ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i9.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_.exit.i.i: ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.am = load i8, ptr %i.al, align 8, !range !4, !alias.scope !1633, !noundef !5
  %i.an = icmp eq i8 %i.am, 2
  br i1 %i.an, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_.exit.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  %.val.i.i.i = load i8, ptr %i.ao, align 8, !range !4, !alias.scope !1635, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %.val1.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !1635 ; 4 uses
  %i.aq = icmp eq i8 %.val.i.i.i, 1
  br i1 %i.aq, label %bb.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %.val1.i.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i.i.i unwind label %.body.i.i12.i, !noalias !1635

.body.i.i12.i:                                    ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef 288, i64 noundef 8) #14, !noalias !1635
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  %i.at = load i8, ptr %i.as, align 8, !range !4, !alias.scope !1637, !noundef !5
  %i.au = icmp eq i8 %i.at, 1
  br i1 %i.au, label %bb.l, label %.body10.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i.i.i: ; preds = %bb.k
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef 288, i64 noundef 8) #14, !noalias !1635
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i.i.i

bb.l:                                             ; preds = %.body.i.i12.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !1640, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !1640
  %i.ax = icmp eq i64 %2, 1
  br i1 %i.ax, label %bb.m, label %.body10.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style15CustomChatColorE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #15
          to label %.body10.i unwind label %bb.p

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file11FilePointerEEB1f_.exit.i.i.i.i.i, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  %i.az = load i8, ptr %i.ay, align 8, !range !4, !alias.scope !1642, !noundef !5
  %i.ba = icmp eq i8 %i.az, 1
  br i1 %i.ba, label %bb.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_.exit.i

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !1645, !nonnull !5, !noundef !5
  %3 = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !1645
  %i.bd = icmp eq i64 %3, 1
  br i1 %i.bd, label %bb.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_.exit.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style15CustomChatColorE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_.exit.i unwind label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.q:                                             ; preds = %.body.i9.i, %bb.c
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !1625
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_.exit.i: ; preds = %bb.o, %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style9WallpaperNtNtB14_6method5StoreEEEB16_.exit.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtB1c_6method5StoreEEEB1e_.exit.i.i
  %i.bg = icmp eq i64 %i.o, %i.l
  br i1 %i.bg, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBJ_4chat8ChatDataNtNtBJ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i.i, label %.lr.ph.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i.i.i.i: ; preds = %.lr.ph252
  %i.bh = add i64 %.sroa.0.1.i.i.i.i251, 1        ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.l
  br i1 %i.bi, label %.body.i.i, label %.lr.ph252

bb.r:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i

.body10.i:                                        ; preds = %bb.r, %bb.m, %bb.l, %.body.i.i12.i, %.body.i9.i
  %eh.lpad-body11.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i9.i ], [ %i.bj, %bb.r ], [ %i.ar, %bb.m ], [ %i.ar, %bb.l ], [ %i.ar, %.body.i.i12.i ]
  %i.bk = icmp eq i64 %i.o, %i.l
  br i1 %i.bk, label %.body.i.i, label %.lr.ph252

.lr.ph252:                                        ; preds = %.body10.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i251 = phi i64 [ %i.bh, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i.i.i.i ], [ %i.o, %.body10.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [136 x i8], ptr %i.j, i64 %.sroa.0.1.i.i.i.i251
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.bm)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i.i.i.i unwind label %bb.s, !noalias !1625

bb.s:                                             ; preds = %.lr.ph252
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !1625
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i.i.i.i, %.body10.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBQ_4chat8ChatDataNtNtBQ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.t

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBJ_4chat8ChatDataNtNtBJ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_.exit.i, %.lr.ph248
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBQ_4chat8ChatDataNtNtBQ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit.i unwind label %bb.u

bb.t:                                             ; preds = %.body.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit: ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBJ_4chat8ChatDataNtNtBJ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i
  %i.bp = icmp eq i64 %i.bt, %i.d
  br i1 %i.bp, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit._crit_edge, label %.lr.ph256

bb.u:                                             ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBJ_4chat8ChatDataNtNtBJ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.u, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bq, %bb.u ], [ %eh.lpad-body11.i, %.body.i.i ]
  %i.br = icmp eq i64 %i.h, %i.d
  br i1 %i.br, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit._crit_edge, label %.lr.ph256

.lr.ph256:                                        ; preds = %.body.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit
  %.sroa.0.1.i255 = phi i64 [ %i.bt, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit ], [ %i.h, %.body.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i255 ; 4 uses
  %i.bt = add i64 %.sroa.0.1.i255, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1647)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !1648, !nonnull !5, !noundef !5 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !1648, !noundef !5 ; 4 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBJ_4chat8ChatDataNtNtBJ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph254

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit.i.i.i: ; preds = %.lr.ph254
  %i.bz = icmp eq i64 %i.cb, %i.bx
  br i1 %i.bz, label %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBJ_4chat8ChatDataNtNtBJ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph256, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit.i.i.i
  %.sroa.0.0.i.i.i253 = phi i64 [ %i.cb, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit.i.i.i ], [ 0, %.lr.ph256 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [136 x i8], ptr %i.bv, i64 %.sroa.0.0.i.i.i253
  %i.cb = add nuw nsw i64 %.sroa.0.0.i.i.i253, 1  ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.cc)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit.i.i.i unwind label %bb.v, !noalias !1648

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i.i.i: ; preds = %.lr.ph258
  %i.cd = add i64 %.sroa.0.1.i.i.i257, 1          ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.bx
  br i1 %i.ce, label %.body.i1, label %.lr.ph258

bb.v:                                             ; preds = %.lr.ph254
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.cg = icmp eq i64 %i.cb, %i.bx
  br i1 %i.cg, label %.body.i1, label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.v, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i.i.i
  %.sroa.0.1.i.i.i257 = phi i64 [ %i.cd, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i.i.i ], [ %i.cb, %bb.v ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [136 x i8], ptr %i.bv, i64 %.sroa.0.1.i.i.i257
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ci)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i.i.i unwind label %bb.w, !noalias !1648

bb.w:                                             ; preds = %.lr.ph258
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !1648
  unreachable

.body.i1:                                         ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i.i.i, %bb.v
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBQ_4chat8ChatDataNtNtBQ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %.body unwind label %bb.x

_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBJ_4chat8ChatDataNtNtBJ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit.i.i.i, %.lr.ph256
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBQ_4chat8ChatDataNtNtBQ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit unwind label %bb.y

bb.x:                                             ; preds = %.body.i1
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit._crit_edge: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.y:                                             ; preds = %_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBJ_4chat8ChatDataNtNtBJ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_.exit.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.body.i1, %bb.y
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1d_4chat8ChatDataNtNtB1d_6method5StoreEEEEB1f_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtB1c_4chat8ChatDataNtNtB1c_6method5StoreEEEEB1e_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecIBv_hEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i unwind label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i._crit_edge: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtCsh1373Z0TDxr_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup20notification_profile9DayOfWeekEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropB1K_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup11chat_folder10ChatFolderNtNtBJ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup11chat_folder10ChatFolderNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup11chat_folder10ChatFolderNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup11chat_folder10ChatFolderNtNtBG_9recipient17FullRecipientDataEEBI_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup11chat_folder10ChatFolderNtNtBG_9recipient17FullRecipientDataEEBI_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.m) #17
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup11chat_folder10ChatFolderNtNtBH_9recipient17FullRecipientDataEEBJ_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup20notification_profile19NotificationProfileNtNtBJ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup20notification_profile19NotificationProfileNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup20notification_profile19NotificationProfileNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup20notification_profile19NotificationProfileNtNtBG_9recipient17FullRecipientDataEEBI_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup20notification_profile19NotificationProfileNtNtBG_9recipient17FullRecipientDataEEBI_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.m) #17
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup20notification_profile19NotificationProfileNtNtBH_9recipient17FullRecipientDataEEBJ_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBJ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.09.i
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1671, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !1672
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.110.i
  %i.o = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1677, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1678
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i, %bb.c
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBH_9recipient17FullRecipientDataEEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBH_6method5StoreEEBJ_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBH_6method5StoreEEBJ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [320 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(320) %i.g) #18
          to label %bb.b unwind label %bb.d, !inline_history !1679

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [320 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(320) %i.m) #19
          to label %bb.c unwind label %bb.e, !inline_history !1679

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !inline_history !1679
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBH_6method5StoreEEBJ_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBJ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBH_6method5StoreEEBJ_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBH_6method5StoreEEBJ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.m) #17
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBH_6method5StoreEEBJ_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i unwind label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit7.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit7.i._crit_edge: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6ScalarENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCskw1zp9IbpTW_24libsignal_message_backup7unknown8PathPartENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtCskw1zp9IbpTW_24libsignal_message_backup7unknown8PathPartEBG_.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCskw1zp9IbpTW_24libsignal_message_backup7unknown8PathPartEBF_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtCskw1zp9IbpTW_24libsignal_message_backup7unknown8PathPartEBG_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCskw1zp9IbpTW_24libsignal_message_backup7unknown8PathPartEBF_.exit.i
  %.sroa.0.0.i13 = phi i64 [ %i.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCskw1zp9IbpTW_24libsignal_message_backup7unknown8PathPartEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ChatItemENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEBI_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEBH_.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEBH_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 3 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1693, !align !7, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup(ptr %.val1.i.i) #17
          to label %.body.i unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i: ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1693, !align !7, !noundef !5 ; 4 uses
  %i.k = icmp eq ptr %.val.i.i, null
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEBH_.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #14
  br label %.body.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEBH_.exit.i

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEBH_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEBI_.exit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.0.1.i26, 1                ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.l, %bb.d ]
  %i.q = icmp eq i64 %i.g, %i.d
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.f
  %.sroa.0.1.i26 = phi i64 [ %i.o, %bb.f ], [ %i.g, %.body.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i26
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.r) #17
          to label %bb.f unwind label %bb.g

._crit_edge:                                      ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.g:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEBI_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionEBH_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBI_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBH_.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBH_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !15, !alias.scope !1700, !noundef !5
  %switch.i.i.i = icmp ugt i64 %i.h, -3
  br i1 %switch.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10body_range15AssociatedValueEEB15_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10body_range15AssociatedValueEEB15_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val1.i.i = load ptr, ptr %i.j, align 8, !alias.scope !1701, !align !7, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup(ptr %.val1.i.i) #17
          to label %.body.i unwind label %bb.f

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10body_range15AssociatedValueEEB15_.exit.i.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1701, !align !7, !noundef !5 ; 4 uses
  %i.l = icmp eq ptr %.val.i.i, null
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBH_.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10body_range15AssociatedValueEEB15_.exit.i.i
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #14
  br label %.body.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i: ; preds = %bb.d
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 32, i64 noundef 8) #14
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBH_.exit.i

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBH_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10body_range15AssociatedValueEEB15_.exit.i.i
  %i.o = icmp eq i64 %i.g, %i.d
  br i1 %i.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBI_.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = add i64 %.sroa.0.1.i26, 1                ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.d
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.m, %bb.e ]
  %i.r = icmp eq i64 %i.g, %i.d
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i26 = phi i64 [ %i.p, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i26
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.s) #17
          to label %bb.g unwind label %bb.h

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.h:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBI_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeEBH_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBI_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1719, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !1720
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBI_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.n = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !1724, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !1725
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit8.i unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.q = icmp eq i64 %i.n, %i.d
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit8.i, %bb.c
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBI_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataEBH_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style15CustomChatColorENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style15CustomChatColorEBK_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style15CustomChatColorEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style15CustomChatColorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style15CustomChatColorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.m) #17
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10chat_style15CustomChatColorEBK_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressEBK_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [216 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressEBJ_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [216 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressEBJ_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.m) #17
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressEBK_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailEBK_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.m) #17
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailEBK_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5PhoneENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5PhoneEBK_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5PhoneEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5PhoneEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
end_hunk_8
begin_hunk_9_@_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style19BubbleGradientColorENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group7InviteeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEBM_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEBL_.exit.i
  %.sroa.0.08.i = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEBL_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.08.i
  %i.g = add nuw nsw i64 %.sroa.0.08.i, 1         ; 4 uses
  %.val7.i = load ptr, ptr %i.f, align 8, !alias.scope !1738, !align !7, !noundef !5 ; 4 uses
  %i.h = icmp eq ptr %.val7.i, null
  br i1 %i.h, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEBL_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val7.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i unwind label %.body.i, !noalias !1738

.body.i:                                          ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef 32, i64 noundef 8) #14, !noalias !1738
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef 32, i64 noundef 8) #14, !noalias !1738
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEBL_.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEBL_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map7HashMapmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1i_4hash6random13DefaultHasherEEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEBM_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph
  %i.l = add i64 %.sroa.0.1.i10, 1                ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.d
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.c
  %.sroa.0.1.i10 = phi i64 [ %i.l, %bb.c ], [ %i.g, %.body.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i10
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !1738, !align !7, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEBL_(ptr %.val.i) #17
          to label %bb.c unwind label %bb.d, !noalias !1738

._crit_edge:                                      ; preds = %bb.c, %.body.i
  resume { ptr, i32 } %i.i

bb.d:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16, !noalias !1738
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEBM_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteEBL_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBM_.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBL_.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBL_.exit.i
  %.sroa.0.0.i13 = phi i64 [ %i.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBL_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i13 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i13, 1        ; 4 uses
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBL_.exit.i unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.d:                                             ; preds = %.lr.ph15
  %i.m = add i64 %.sroa.0.1.i14, 1                ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %._crit_edge, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i14 = phi i64 [ %i.m, %bb.d ], [ %i.h, %.body.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBL_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.q) #17
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.f:                                             ; preds = %.lr.ph15
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBM_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberEBL_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members17GroupMemberBannedENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members28GroupMemberPendingProfileKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members31GroupMemberPendingAdminApprovalENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBJ_5frame11RecipientIdEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBJ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.09.i
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1761, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !1762
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.110.i
  %i.o = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1767, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1768
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i, %bb.c
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBH_9recipient17FullRecipientDataEEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8PinOrderNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBJ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.09.i
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1791, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !1792
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBH_9recipient17FullRecipientDataEEBJ_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.110.i
  %i.o = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1797, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1798
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBI_11DestinationNtBI_17FullRecipientDataEEE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit8.i, %bb.c
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBH_9recipient17FullRecipientDataEEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtNtBG_9recipient17FullRecipientDataEEBI_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBJ_4chat8ChatDataNtNtBJ_6method5StoreEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBH_4chat8ChatDataNtNtBH_6method5StoreEEEBJ_.exit, label %.lr.ph

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBH_4chat8ChatDataNtNtBH_6method5StoreEEEBJ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [136 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit.i unwind label %bb.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i: ; preds = %.lr.ph3
  %i.j = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.h, %i.d
  br i1 %i.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.j, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [136 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBG_6method5StoreEEBI_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.o)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i._crit_edge: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit7.i, %bb.b
  resume { ptr, i32 } %i.l

bb.c:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBH_4chat8ChatDataNtNtBH_6method5StoreEEEBJ_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame6ChatIdINtNtBG_4chat8ChatDataNtNtBG_6method5StoreEEEBI_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtB7_4sync3ArcNtBH_15CustomChatColorEEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBF_15CustomChatColorEEEBL_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.09.i
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1816, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !1817
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style15CustomChatColorE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i unwind label %bb.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBF_15CustomChatColorEEEBL_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.110.i
  %i.o = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1821, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1822
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style15CustomChatColorE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #15
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit8.i unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit8.i, %bb.c
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueSTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBF_15CustomChatColorEEEBL_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIdINtNtCs6i54tJFfzR_5alloc4sync3ArcNtBE_15CustomChatColorEEEBK_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style13CustomColorIduEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecfENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecmENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsq_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCskw1zp9IbpTW_24libsignal_message_backup7unknown8PathPartENtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCsgxBkk5gSRhY_4core3fmtSNtNtCskw1zp9IbpTW_24libsignal_message_backup7unknown8PathPartNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1u_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2y_15CustomChatColorINtNtB6_7convert7TryFromNtNtNtNtNtB2E_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB6_6result6ResultNtB46_10InfallibleNtB2y_14ChatStyleErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2E_(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoItermEIB1u_fEENCNvXs7_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_styleNtB2y_15CustomChatColorINtNtB6_7convert7TryFromNtNtNtNtNtB2E_5proto6backup10chat_style17custom_chat_color5ColorE8try_from0EINtNtB6_6result6ResultNtB46_10InfallibleNtB2y_14ChatStyleErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2E_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeENCNCNvXs_NtNtNtB26_6backup4chat4textNtB3h_11MessageTextINtNtB6_7convert7TryFromNtB22_4TextE8try_from00EINtNtB6_6result6ResultNtB44_10InfallibleNtB3h_9TextErrorEENtNtNtB4_6traits8iterator8Iterator4nextB26_(ptr dead_on_unwind noalias nofree noundef writable sret([28 x i8]) align 4 captures(none) dereferenceable(28), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeENCNCNvXs_NtNtNtB26_6backup4chat4textNtB3h_11MessageTextINtNtB6_7convert7TryFromNtB22_4TextE8try_from00EINtNtB6_6result6ResultNtB44_10InfallibleNtB3h_9TextErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB26_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeENvYB20_INtNtB6_7convert7TryIntoNtNtNtNtB28_6backup4chat5group7InviteeE8try_intoEINtNtB6_6result6ResultNtB3P_10InfallibleNtB4c_12InviteeErrorEENtNtNtB4_6traits8iterator8Iterator4nextB28_(ptr dead_on_unwind noalias nofree noundef writable sret([51 x i8]) align 1 captures(none) dereferenceable(51), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgxBkk5gSRhY_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs6i54tJFfzR_5alloc3vec9into_iter8IntoIterNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeENvYB20_INtNtB6_7convert7TryIntoNtNtNtNtB28_6backup4chat5group7InviteeE8try_intoEINtNtB6_6result6ResultNtB3P_10InfallibleNtB4c_12InviteeErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB28_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9AdHocCallNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12ChatItemDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat12OutgoingSendNtNtBQ_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat8ChatDataNtNtBQ_6method5StoreEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll10PollOptionNtNtBS_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll8PollVoteNtNtBS_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions8ReactionNtNtBS_9recipient17FullRecipientDataEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup10SendStatusENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup11LinkPreviewENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ChatItemENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup8ReactionENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup9BodyRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup20notification_profile9DayOfWeekENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file17MessageAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment13PostalAddressENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5EmailENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18contact_attachment5PhoneENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6UpdateENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup31group_invitation_revoked_update7InviteeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll10PollOptionENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style19BubbleGradientColorENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link11LinkPreviewENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextRangeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group15GroupChatUpdateENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group7InviteeENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote16QuotedAttachmentENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup4poll11poll_option8PollVoteENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0
end_hunk_9
