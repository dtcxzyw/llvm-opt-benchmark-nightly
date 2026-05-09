inline.NumInlined: 16097
inline.NumDeleted: 33
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AamendPropAccessErrorMsgWithPropName0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29:bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %.val704, i64 %i.s
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 144
  store i32 65487, ptr %i.fg, align 1
  %i.fh = icmp eq i64 %i.ag, 4294967285           ; 2 uses
  %5 = select i1 %i.fh, i32 4, i32 9
  %6 = select i1 %i.fh, i32 43548, i32 54623
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.x
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AamendPropAccessErrorMsgWithPropName0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29:bb.a
  %i.gj = getelementptr inbounds nuw i8, ptr %.val697, i64 %i.s
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 144
  store i32 %i.gi, ptr %i.gk, align 1
  %i.gl = icmp eq i64 %i.ag, 4294967285           ; 2 uses
  %7 = select i1 %i.gl, i32 4, i32 9
  %8 = select i1 %i.gl, i32 43548, i32 54623
  %i.gm = add i32 %i.fu, 5
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread
  %9 = phi i32 [ %6, %.thread ], [ %8, %bb.y ]
  %10 = phi i32 [ %5, %.thread ], [ %7, %bb.y ]
  %.0781 = phi i32 [ 3, %.thread ], [ %i.gc, %bb.y ]
  %.not653779 = phi i1 [ false, %.thread ], [ true, %bb.y ] ; 2 uses
  %.0634778 = phi i32 [ 0, %.thread ], [ %.0.copyload.i765, %bb.y ]
  %.0635777 = phi i32 [ 65487, %.thread ], [ %i.gi, %bb.y ]
  %i.gn = phi i32 [ 5, %.thread ], [ %i.gm, %bb.y ]
  %.val689 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.go = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.s
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 216
  store i32 %10, ptr %i.gp, align 1
  %.val688 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gq = getelementptr inbounds nuw i8, ptr %.val688, i64 %i.s
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 208
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AamendPropAccessErrorMsgWithPropName0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29:bb.a
  %.val687 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gs = getelementptr inbounds nuw i8, ptr %.val687, i64 %i.s
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 200
  store i32 %9, ptr %i.gt, align 1
  %.val686 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gu = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.s
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 188
end_hunk_2
