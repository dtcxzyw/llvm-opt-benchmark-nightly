Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/c_converter?download=true
inline.NumInlined: 663
inline.NumDeleted: 233
begin_hunk_0_@_Z22getstringfield_defaultP9lua_StateiPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.b, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z19getintfield_defaultP9lua_StateiPKci(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %i.a = tail call noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %_Z11getintfieldIiEbP9lua_StateiPKcRT_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @lua_tointeger(ptr noundef %0, i32 noundef -1)
  %i.c = trunc i64 %i.b to i32
  br label %_Z11getintfieldIiEbP9lua_StateiPKcRT_.exit

_Z11getintfieldIiEbP9lua_StateiPKcRT_.exit:       ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %3, %bb.a ]
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2)
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_Z21getfloatfield_defaultP9lua_StateiPKcf(ptr noundef %0, i32 noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #3 {
bb.a:
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %i.a = tail call noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %_Z13getfloatfieldP9lua_StateiPKcRf.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call nsz double @lua_tonumber(ptr noundef %0, i32 noundef -1)
  %i.c = fptrunc nsz double %i.b to float
  br label %_Z13getfloatfieldP9lua_StateiPKcRf.exit

_Z13getfloatfieldP9lua_StateiPKcRf.exit:          ; preds = %bb.a, %bb.b
  %.0 = phi nsz float [ %i.c, %bb.b ], [ %3, %bb.a ]
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2)
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z20getboolfield_defaultP9lua_StateiPKcb(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 {
bb.a:
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %i.a = tail call noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 1, ptr noundef %2)
  br i1 %i.a, label %bb.b, label %_Z12getboolfieldP9lua_StateiPKcRb.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @lua_toboolean(ptr noundef %0, i32 noundef -1)
  %i.c = icmp ne i32 %i.b, 0
  br label %_Z12getboolfieldP9lua_StateiPKcRb.exit

_Z12getboolfieldP9lua_StateiPKcRb.exit:           ; preds = %bb.a, %bb.b
  %.0.in = phi i1 [ %i.c, %bb.b ], [ %3, %bb.a ]
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2)
  ret i1 %.0.in
}

; Function Attrs: mustprogress uwtable
define dso_local i48 @_Z21getv3s16field_defaultP9lua_StateiPKcN4core8vector3dIsEE(ptr noundef %0, i32 noundef %1, ptr noundef %2, i48 %3) local_unnamed_addr #3 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i48 %3 to i16  ; 2 uses
  %.sroa.3.0.extract.shift = lshr i48 %3, 16
  %.sroa.3.0.extract.trunc = trunc i48 %.sroa.3.0.extract.shift to i16 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i48 %3, 32
  %.sroa.4.0.extract.trunc = trunc nuw i48 %.sroa.4.0.extract.shift to i16 ; 2 uses
  tail call void @lua_getfield(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %i.a = tail call i32 @lua_type(ptr noundef %0, i32 noundef -1)
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %_ZL13getv3intfieldIN4core8vector3dIsEEEbP9lua_StateiPKcRT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.29)
  %i.c = tail call noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.29)
  br i1 %i.c, label %bb.c, label %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @lua_tointeger(ptr noundef %0, i32 noundef -1)
  %i.e = trunc i64 %i.d to i16
  br label %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit.i

_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit.i:     ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i16 [ %i.e, %bb.c ], [ %.sroa.0.0.extract.trunc, %bb.b ]
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2)
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.30)
  %i.f = tail call noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.30)
  br i1 %i.f, label %bb.d, label %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit14.i

bb.d:                                             ; preds = %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit.i
  %i.g = tail call i64 @lua_tointeger(ptr noundef %0, i32 noundef -1)
  %i.h = trunc i64 %i.g to i16
  br label %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit14.i

_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit14.i:   ; preds = %bb.d, %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit.i
  %.sroa.3.0 = phi i16 [ %i.h, %bb.d ], [ %.sroa.3.0.extract.trunc, %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit.i ]
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2)
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.31)
  %i.i = tail call noundef zeroext i1 @_Z18check_field_or_nilP9lua_StateiiPKc(ptr noundef %0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.31)
  br i1 %i.i, label %bb.e, label %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit15.i

bb.e:                                             ; preds = %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit14.i
  %i.j = tail call i64 @lua_tointeger(ptr noundef %0, i32 noundef -1)
  %i.k = trunc i64 %i.j to i16
  br label %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit15.i

_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit15.i:   ; preds = %bb.e, %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit14.i
  %.sroa.4.0 = phi i16 [ %i.k, %bb.e ], [ %.sroa.4.0.extract.trunc, %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit14.i ]
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2)
  br label %_ZL13getv3intfieldIN4core8vector3dIsEEEbP9lua_StateiPKcRT_.exit

_ZL13getv3intfieldIN4core8vector3dIsEEEbP9lua_StateiPKcRT_.exit: ; preds = %bb.a, %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit15.i
  %.sroa.4.1 = phi i16 [ %.sroa.4.0, %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit15.i ], [ %.sroa.4.0.extract.trunc, %bb.a ]
  %.sroa.3.1 = phi i16 [ %.sroa.3.0, %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit15.i ], [ %.sroa.3.0.extract.trunc, %bb.a ]
  %.sroa.0.1 = phi i16 [ %.sroa.0.0, %_Z11getintfieldIsEbP9lua_StateiPKcRT_.exit15.i ], [ %.sroa.0.0.extract.trunc, %bb.a ]
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2)
  %.sroa.4.0.insert.ext = zext i16 %.sroa.4.1 to i48
  %.sroa.4.0.insert.shift = shl nuw i48 %.sroa.4.0.insert.ext, 32
  %.sroa.3.0.insert.ext = zext i16 %.sroa.3.1 to i48
  %.sroa.3.0.insert.shift = shl nuw nsw i48 %.sroa.3.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.1 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14setstringfieldP9lua_StateiPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef %i.a, i64 noundef %i.c)
  %.lobit = ashr i32 %1, 31
  %spec.select = add nsw i32 %.lobit, %1
  tail call void @lua_setfield(ptr noundef %0, i32 noundef %spec.select, ptr noundef %2)
  ret void
}

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z11setintfieldP9lua_StateiPKci(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.a)
  %.lobit = ashr i32 %1, 31
  %spec.select = add nsw i32 %.lobit, %1
  tail call void @lua_setfield(ptr noundef %0, i32 noundef %spec.select, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13setfloatfieldP9lua_StateiPKcf(ptr noundef %0, i32 noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = fpext nsz float %3 to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.a)
  %.lobit = ashr i32 %1, 31
  %spec.select = add nsw i32 %.lobit, %1
  tail call void @lua_setfield(ptr noundef %0, i32 noundef %spec.select, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12setboolfieldP9lua_StateiPKcb(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i1 %3 to i32
  tail call void @lua_pushboolean(ptr noundef %0, i32 noundef %i.a)
  %.lobit = ashr i32 %1, 31
  %spec.select = add nsw i32 %.lobit, %1
  tail call void @lua_setfield(ptr noundef %0, i32 noundef %spec.select, ptr noundef %2)
  ret void
}

declare void @lua_pushboolean(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @_Z23write_array_slice_floatP9lua_StateiPfN4core8vector3dItEES4_S4_(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i48 %3, i48 %4, i48 %5) local_unnamed_addr #3 {
bb.a:
  %.sroa.037.0.extract.trunc = trunc i48 %3 to i32 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i48 %3, 16
  %.sroa.6.0.extract.trunc = trunc nuw i48 %.sroa.6.0.extract.shift to i32 ; 3 uses
  %.sroa.10.0.extract.shift = lshr i48 %3, 32
  %.sroa.10.0.extract.trunc = trunc nuw nsw i48 %.sroa.10.0.extract.shift to i32 ; 2 uses
  %6 = trunc i48 %4 to i32
  %7 = lshr i32 %6, 16
  %.sroa.13.0.extract.shift = lshr i48 %4, 32     ; 2 uses
  %.sroa.13.0.extract.trunc = trunc nuw nsw i48 %.sroa.13.0.extract.shift to i32
  %8 = trunc i48 %5 to i32                        ; 2 uses
  %9 = lshr i32 %8, 16
  %.sroa.521.0.extract.shift = lshr i48 %5, 32
  %.sroa.521.0.extract.trunc = trunc nuw nsw i48 %.sroa.521.0.extract.shift to i32
  %i.a = and i48 %4, 65535
  %.not = icmp eq i48 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.023.0.extract.trunc = trunc i48 %4 to i32
  %i.b = add i32 %.sroa.023.0.extract.trunc, 65535
  %i.c = and i32 %i.b, 65535                      ; 2 uses
  %i.d = and i32 %8, 65535
  %i.e = add nuw nsw i32 %i.d, %i.c
  %i.f = and i32 %.sroa.037.0.extract.trunc, 65535
  %i.g = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.052 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %.sroa.037.0.extract.trunc, %bb.a ], [ %i.g, %bb.b ]
  %i.h = and i48 %4, 4294901760
  %.not47 = icmp eq i48 %i.h, 0
  br i1 %.not47, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw nsw i32 %7, 65535
  %i.j = and i32 %i.i, 65535                      ; 2 uses
  %i.k = add nuw nsw i32 %9, %i.j
  %i.l = and i32 %.sroa.6.0.extract.trunc, 65535
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.053 = phi i32 [ 0, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.5.0 = phi i32 [ %.sroa.6.0.extract.trunc, %bb.c ], [ %i.m, %bb.d ]
  %.not48 = icmp eq i48 %.sroa.13.0.extract.shift, 0
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw nsw i32 %.sroa.13.0.extract.trunc, 65535
  %i.o = and i32 %i.n, 65535                      ; 2 uses
  %i.p = add nuw nsw i32 %i.o, %.sroa.521.0.extract.trunc
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %.sroa.10.0.extract.trunc)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.8.0 = phi i32 [ 0, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %.sroa.7.0 = phi i32 [ %.sroa.10.0.extract.trunc, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %i.r = and i32 %.sroa.037.0.extract.trunc, 65535
  %i.s = and i32 %.sroa.6.0.extract.trunc, 65535
  %.not4963 = icmp eq i32 %.sroa.8.0, %.sroa.7.0
  br i1 %.not4963, label %._crit_edge66, label %.preheader54.lr.ph

.preheader54.lr.ph:                               ; preds = %bb.g
  %i.t = and i32 %.sroa.5.0, 65535                ; 2 uses
  %.not5058 = icmp eq i32 %.sroa.5.053, %i.t
  %i.u = and i32 %.sroa.0.0, 65535                ; 2 uses
  %.not5155 = icmp eq i32 %.sroa.0.052, %i.u
  %or.cond = select i1 %.not5058, i1 true, i1 %.not5155
  br i1 %or.cond, label %._crit_edge66, label %.preheader54

.preheader54:                                     ; preds = %.preheader54.lr.ph, %._crit_edge61.split
  %.04565 = phi i32 [ %i.x, %._crit_edge61.split ], [ %.sroa.8.0, %.preheader54.lr.ph ] ; 2 uses
  %.04664 = phi i32 [ %i.ae, %._crit_edge61.split ], [ 1, %.preheader54.lr.ph ]
  %i.v = mul i32 %.04565, %i.s
  br label %.preheader

._crit_edge66.loopexit76:                         ; preds = %._crit_edge61.split
  %i.w = zext i32 %.256 to i64
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %.preheader54.lr.ph, %._crit_edge66.loopexit76, %bb.g
  %.046.lcssa = phi i64 [ 0, %bb.g ], [ 0, %.preheader54.lr.ph ], [ %i.w, %._crit_edge66.loopexit76 ]
  ret i64 %.046.lcssa

.preheader:                                       ; preds = %.preheader54, %._crit_edge
  %.04460 = phi i32 [ %.sroa.5.053, %.preheader54 ], [ %i.y, %._crit_edge ] ; 2 uses
  %.159 = phi i32 [ %.04664, %.preheader54 ], [ %i.ae, %._crit_edge ]
  %reass.add = add i32 %.04460, %i.v
  %reass.mul = mul i32 %reass.add, %i.r
  br label %bb.h

._crit_edge61.split:                              ; preds = %._crit_edge
  %i.x = add i32 %.04565, 1                       ; 2 uses
  %.not49 = icmp eq i32 %i.x, %.sroa.7.0
  br i1 %.not49, label %._crit_edge66.loopexit76, label %.preheader54, !llvm.loop !186

._crit_edge:                                      ; preds = %bb.h
  %i.y = add i32 %.04460, 1                       ; 2 uses
  %.not50 = icmp eq i32 %i.y, %i.t
  br i1 %.not50, label %._crit_edge61.split, label %.preheader, !llvm.loop !187

bb.h:                                             ; preds = %.preheader, %bb.h
  %.057 = phi i32 [ %.sroa.0.052, %.preheader ], [ %i.af, %bb.h ] ; 2 uses
  %.256 = phi i32 [ %.159, %.preheader ], [ %i.ae, %bb.h ] ; 3 uses
  %i.z = add i32 %.057, %reass.mul
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !26
  %i.ad = fpext nsz float %i.ac to double
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.ad)
  tail call void @lua_rawseti(ptr noundef %0, i32 noundef %1, i32 noundef %.256)
  %i.ae = add i32 %.256, 1                        ; 3 uses
  %i.af = add i32 %.057, 1                        ; 2 uses
  %.not51 = icmp eq i32 %i.af, %i.u
  br i1 %.not51, label %._crit_edge, label %bb.h, !llvm.loop !188
}

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_insert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8LuaErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24, !inline_history !51
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #8, !inline_history !51
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13BaseException4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  ret ptr %i.b
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #8 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24, !inline_history !51
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #8, !inline_history !51
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !191  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !199    ; 5 uses
end_hunk_0
