inline.NumInlined: 16097
inline.NumDeleted: 33
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AcreateDynamicFunction0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x2C0x20hermes0x3A0x3Avm0x3A0x3ADynamicFunctionKind0x29:bb.a
.loopexit3151:                                    ; preds = %bb.u, %bb.o
  %.12491 = phi i32 [ 0, %bb.o ], [ %i.er, %bb.u ]
  %.12482 = phi i64 [ %i.ct, %bb.o ], [ %i.eo, %bb.u ]
  %5 = shl i32 %i.ag, 3
  %reass.sub = sub i32 %.0.copyload.i2955, %5
  %i.et = add i32 %reass.sub, -8
  %.not2581 = icmp ugt i32 %.0.copyload.i2939, %i.ag
  %i.eu = select i1 %.not2581, i32 %i.et, i32 70392
  %i.ev = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.eu) #7 ; 2 uses
end_hunk_0
