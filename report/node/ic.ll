begin_hunk_0
  store i32 %.sroa.016.0.copyload, ptr %4, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.218.0.copyload, ptr %i.y, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i29 = load ptr, ptr %6, align 8
  switch i8 %i.u, label %_ZNK2v88internal2IC8is_keyedEv.exit.i.i32 [
    i8 10, label %_ZNK2v88internal2IC10IsGlobalICEv.exit.thread.i.i36
    i8 1, label %_ZNK2v88internal2IC10IsGlobalICEv.exit.thread.i.i36
    i8 8, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i.i31
    i8 9, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i.i31
    i8 3, label %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i.i31
  ]

_ZNK2v88internal2IC10IsGlobalICEv.exit.thread.i.i36: ; preds = %.thread, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i.i30, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i.i30
end_hunk_0
begin_hunk_1
  call void @_ZN2v88internal13FeedbackNexus20ConfigureHandlerModeERKNS0_23MaybeObjectDirectHandleE(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %4) #23
  br label %_ZN2v88internal2IC19UpdateMonomorphicICERKNS0_23MaybeObjectDirectHandleENS0_12DirectHandleINS0_4NameEEE.exit37

_ZNK2v88internal2IC8is_keyedEv.exit.thread.i.i31: ; preds = %_ZNK2v88internal2IC10IsGlobalICEv.exit.i.i30, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i.i30, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i.i30
  br label %_ZNK2v88internal2IC8is_keyedEv.exit.i.i32

_ZNK2v88internal2IC8is_keyedEv.exit.i.i32:        ; preds = %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i.i31, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i.i30
  %.sroa.06.0.i.i33 = phi ptr [ %1, %_ZNK2v88internal2IC8is_keyedEv.exit.thread.i.i31 ], [ null, %_ZNK2v88internal2IC10IsGlobalICEv.exit.i.i30 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN2v88internal13FeedbackNexus20ConfigureMonomorphicENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEERKNS0_23MaybeObjectDirectHandleE(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr %.sroa.06.0.i.i33, ptr %.sroa.0.0.copyload.i.i29, ptr noundef nonnull align 8 dereferenceable(16) %4) #23
  br label %_ZN2v88internal2IC19UpdateMonomorphicICERKNS0_23MaybeObjectDirectHandleENS0_12DirectHandleINS0_4NameEEE.exit37

_ZN2v88internal2IC19UpdateMonomorphicICERKNS0_23MaybeObjectDirectHandleENS0_12DirectHandleINS0_4NameEEE.exit37: ; preds = %_ZNK2v88internal2IC10IsGlobalICEv.exit.thread.i.i36, %_ZNK2v88internal2IC8is_keyedEv.exit.i.i32
end_hunk_1
