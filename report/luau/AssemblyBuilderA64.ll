Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/AssemblyBuilderA64?download=true
inline.NumInlined: 630
inline.NumDeleted: 161
begin_hunk_0_@_ZN4Luau7CodeGen3A6418AssemblyBuilderA64C2EPNS0_10LogBuilderEbj:bb.a
  %i.w = ptrtoint ptr %.pre15 to i64              ; 4 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp ult i64 %i.y, 1024
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.aa = sub nuw nsw i64 1024, %i.y
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.aa)
          to label %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge unwind label %bb.e

._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge:    ; preds = %bb.b
  %.pre16 = load ptr, ptr %i.a, align 8, !tbaa !42 ; 2 uses
  %.pre17 = ptrtoint ptr %.pre16 to i64
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %.not = icmp eq i64 %i.x, 4096
  br i1 %.not, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre15, i64 4096 ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre14, %i.ab
  br i1 %.not.i.i6, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !41
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %bb.d, %bb.c
  %.pre-phi = phi i64 [ %.pre17, %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge ], [ %i.w, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ], [ %i.w, %bb.d ], [ %i.w, %bb.c ]
  %i.ac = phi ptr [ %.pre16, %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge ], [ %.pre15, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ], [ %.pre15, %bb.d ], [ %.pre15, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !46
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %.pre-phi
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !47
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !42  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !49  ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #20
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EED2Ev.exit

_ZNSt6vectorIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.g
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.c
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EED2Ev.exit
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !15
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIjSaIjEED2Ev.exit10, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !48
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit10

_ZNSt6vectorIjSaIjEED2Ev.exit10:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %i.bg = load ptr, ptr %0, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit10
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !52
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit10, %bb.i
  resume { ptr, i32 } %i.aj
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA64D2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt6vectorIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EED2Ev.exit

_ZNSt6vectorIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EED2Ev.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !15
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIjSaIjEED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit3

_ZNSt6vectorIjSaIjEED2Ev.exit3:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %i.ab = load ptr, ptr %0, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #20
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit3, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643movENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i8 %1, 7                             ; 3 uses
  %.not = icmp eq i8 %i.a, 5
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i8 %1, -8
  %i.c = icmp eq i8 %2, -8
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %4 = load i8, ptr %3, align 8, !tbaa !38, !range !20, !noundef !21
  %5 = trunc nuw i8 %4 to i1                      ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.3, i8 %1, i8 %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = icmp eq i8 %i.a, 2
  %i.e = and i8 %2, 7
  %i.f = icmp eq i8 %i.e, 2
  %i.g = select i1 %i.d, i1 true, i1 %i.f
  %i.h = select i1 %i.g, i32 -2147483648, i32 0
  %i.i = lshr i8 %1, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = lshr i8 %2, 3
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 5
  %i.n = or disjoint i32 %i.m, %i.j
  %i.o = or disjoint i32 %i.n, %i.h
  %i.p = or disjoint i32 %i.o, 285212672
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !46
  store i32 %i.p, ptr %i.r, align 4, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

bb.f:                                             ; preds = %bb.b
  br i1 %5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.3, i8 %1, i8 %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = icmp eq i8 %i.a, 2
  %i.x = lshr i8 %1, 3
  %i.y = zext nneg i8 %i.x to i32
  %i.z = lshr i8 %2, 3
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = or disjoint i32 %i.ab, %i.y
  %i.ad = select i1 %i.w, i32 -1442839584, i32 704644064
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !46
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.ak = icmp eq ptr %i.aj, %i.ah
  br i1 %i.ak, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

bb.i:                                             ; preds = %bb.a
  %i.al = lshr i8 %2, 3
  %i.am = zext nneg i8 %i.al to i32               ; 2 uses
  %i.an = shl nuw nsw i32 %i.am, 16
  %6 = or disjoint i32 %i.an, 1319115776
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %8 = load i8, ptr %7, align 8, !tbaa !38, !range !20, !noundef !21
  %9 = trunc nuw i8 %8 to i1
  br i1 %9, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.3, i8 %1, i8 %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = and i8 %2, 7
  %i.ap = icmp eq i8 %i.ao, 2
  %i.aq = select i1 %i.ap, i32 -2147483648, i32 0
  %i.ar = lshr i8 %1, 3
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.am, 5
  %i.au = or disjoint i32 %i.at, %i.as
  %i.av = or disjoint i32 %i.au, %6
  %i.aw = or disjoint i32 %i.av, %i.aq
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !46 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !46
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !53
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.bc = icmp eq ptr %i.bb, %i.az
  br i1 %i.bc, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.e
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit: ; preds = %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j.exit.sink.split, %bb.k, %bb.h, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeR1EPKcNS1_11RegisterA64ES5_j(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, i8 %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, i8 %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %2, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = and i8 %3, 7
  %i.g = icmp eq i8 %i.f, 2
  %i.h = select i1 %i.e, i1 true, i1 %i.g
  %i.i = select i1 %i.h, i32 -2147483648, i32 0
  %i.j = lshr i8 %2, 3
  %i.k = zext nneg i8 %i.j to i32
  %i.l = lshr i8 %3, 3
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 5
  %i.o = or disjoint i32 %i.n, %i.k
  %i.p = shl i32 %4, 10
  %i.q = or disjoint i32 %i.o, %i.p
  %i.r = or i32 %i.q, %i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !46
  store i32 %i.r, ptr %i.t, align 4, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR2EPKcNS1_11RegisterA64ES5_hh(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, i8 %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, i8 %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %2, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = lshr i8 %2, 3
  %i.g = zext nneg i8 %i.f to i32
  %i.h = lshr i8 %3, 3
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 16
  %i.k = or disjoint i32 %i.j, %i.g
  %i.l = zext i8 %5 to i32
  %i.m = shl nuw nsw i32 %i.l, 21
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = zext i8 %4 to i32
  %i.p = shl nuw i32 %i.o, 24
  %i.q = select i1 %i.e, i32 -2147482656, i32 992
  %i.r = or i32 %i.q, %i.p
  %i.s = or i32 %i.r, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !46
  store i32 %i.s, ptr %i.u, align 4, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643movENS1_11RegisterA64Ei(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, -1
  %i.b = and i32 %2, 65535                        ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !38, !range !20, !noundef !21
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Eii(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.4, i8 %1, i32 noundef %i.b, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = and i8 %1, 7
  %i.g = icmp eq i8 %i.f, 2
  %i.h = select i1 %i.g, i32 -2147483648, i32 0   ; 2 uses
  %i.i = lshr i8 %1, 3
  %i.j = zext nneg i8 %i.i to i32                 ; 2 uses
  %i.k = shl nuw nsw i32 %i.b, 5
  %i.l = or disjoint i32 %i.k, %i.j
  %i.m = or disjoint i32 %i.l, %i.h
  %i.n = or disjoint i32 %i.m, 1384120320
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !46
  store i32 %i.n, ptr %i.p, align 4, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %bb.e, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA644movzENS1_11RegisterA64Eti.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA644movzENS1_11RegisterA64Eti.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA644movzENS1_11RegisterA64Eti.exit: ; preds = %bb.d, %bb.e
  %i.u = icmp samesign ugt i32 %2, 65535
  br i1 %i.u, label %bb.f, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA644movkENS1_11RegisterA64Eti.exit

bb.f:                                             ; preds = %_ZN4Luau7CodeGen3A6418AssemblyBuilderA644movzENS1_11RegisterA64Eti.exit
  %i.v = lshr i32 %2, 16                          ; 2 uses
  %i.w = load i8, ptr %i.c, align 8, !tbaa !38, !range !20, !noundef !21
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Eii(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.6, i8 %1, i32 noundef %i.v, i32 noundef 16)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = shl nuw nsw i32 %i.v, 5
  %i.z = or disjoint i32 %i.y, %i.j
  %i.aa = or disjoint i32 %i.z, %i.h
  %i.ab = or disjoint i32 %i.aa, 1923088384
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !46  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.ad, ptr %i.o, align 8, !tbaa !46
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !53
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA644movkENS1_11RegisterA64Eti.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA644movkENS1_11RegisterA64Eti.exit

bb.i:                                             ; preds = %bb.a
  %i.ag = xor i32 %i.b, 65535                     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !38, !range !20, !noundef !21
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Eii(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.5, i8 %1, i32 noundef %i.ag, i32 noundef 0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = and i8 %1, 7
  %i.al = icmp eq i8 %i.ak, 2
  %i.am = select i1 %i.al, i32 -2147483648, i32 0 ; 2 uses
  %i.an = lshr i8 %1, 3
  %i.ao = zext nneg i8 %i.an to i32               ; 2 uses
  %i.ap = shl nuw nsw i32 %i.ag, 5
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGen3A6418AssemblyBuilderA644sdivENS1_11RegisterA64ES3_S3_:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = select i1 %i.e, i32 -2147483648, i32 0
  %i.g = lshr i8 %1, 3
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i8 %2, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 5
  %i.l = or disjoint i32 %i.k, %i.h
  %i.m = lshr i8 %3, 3
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 16
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = or disjoint i32 %i.p, %i.f
  %i.r = or disjoint i32 %i.q, 448793600
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !46
  store i32 %i.r, ptr %i.t, align 4, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644udivENS1_11RegisterA64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i8 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_S5_i(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.15, i8 %1, i8 %2, i8 %3, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = select i1 %i.e, i32 -2147483648, i32 0
  %i.g = lshr i8 %1, 3
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i8 %2, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 5
  %i.l = or disjoint i32 %i.k, %i.h
  %i.m = lshr i8 %3, 3
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 16
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = or disjoint i32 %i.p, %i.f
  %i.r = or disjoint i32 %i.q, 448792576
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !46
  store i32 %i.r, ptr %i.t, align 4, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643remENS1_11RegisterA64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i8 %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644msubENS1_11RegisterA64ES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %1, i8 %3, i8 %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643negENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.16, i8 %1, i8 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = lshr i8 %1, 3
  %i.g = zext nneg i8 %i.f to i32
  %i.h = lshr i8 %2, 3
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 16
  %i.k = or disjoint i32 %i.j, %i.g
  %i.l = select i1 %i.e, i32 -889191456, i32 1258292192
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !46
  store i32 %i.m, ptr %i.o, align 4, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR2EPKcNS1_11RegisterA64ES5_hh.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR2EPKcNS1_11RegisterA64ES5_hh.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR2EPKcNS1_11RegisterA64ES5_hh.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643cmpENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i8 %1, 7
  %i.b = icmp eq i8 %i.a, 2
  %.sroa.03.0.copyload = select i1 %i.b, i8 -6, i8 -7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i8, ptr %i.c, align 8, !tbaa !38, !range !20, !noundef !21
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_S5_i(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.17, i8 %.sroa.03.0.copyload, i8 %1, i8 %2, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = and i8 %.sroa.03.0.copyload, 3
  %i.g = icmp eq i8 %i.f, 2
  %i.h = select i1 %i.g, i32 -2147483648, i32 0
  %i.i = lshr i8 %1, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 5
  %i.l = lshr i8 %2, 3
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 16
  %i.o = or disjoint i32 %i.h, %i.n
  %i.p = or disjoint i32 %i.o, %i.k
  %i.q = or disjoint i32 %i.p, 1795162143
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !46
  store i32 %i.q, ptr %i.s, align 4, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = icmp eq ptr %i.v, %i.t
  br i1 %i.w, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643cmpENS1_11RegisterA64Et(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i8 %1, 7
  %i.b = icmp eq i8 %i.a, 2
  %.sroa.02.0.copyload = select i1 %i.b, i8 -6, i8 -7 ; 2 uses
  %i.c = zext i16 %2 to i32                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i8, ptr %i.d, align 8, !tbaa !38, !range !20, !noundef !21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_i(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.17, i8 %.sroa.02.0.copyload, i8 %1, i32 noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = and i8 %.sroa.02.0.copyload, 3
  %.not.i = icmp eq i8 %i.g, 1
  %i.h = lshr i8 %1, 3
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 5
  %i.k = shl nuw nsw i32 %i.c, 10
  %i.l = or disjoint i32 %i.j, %i.k
  %3 = or disjoint i32 %i.l, 31
  %4 = select i1 %.not.i, i32 1895825408, i32 -251658240
  %i.m = or i32 %4, %3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !46
  store i32 %i.m, ptr %i.o, align 4, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeI12EPKcNS1_11RegisterA64ES5_ih.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeI12EPKcNS1_11RegisterA64ES5_ih.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeI12EPKcNS1_11RegisterA64ES5_ih.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644ccmpENS1_11RegisterA64ES3_NS1_12ConditionA64Eh(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = sext i32 %3 to i64
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.18)
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1)
  %i.d = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !19, !range !20, !noundef !21
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = icmp eq i64 %i.i, 4611686018427387903
  br i1 %i.j, label %bb.d, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14
  %i.n = icmp eq i64 %i.m, 4611686018427387903
  br i1 %i.n, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit
  %.sink = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ], [ %i.k, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %2)
  %i.q = zext i8 %4 to i32
  %i.r = sext i32 %3 to i64                       ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7CodeGen3A64L16textForConditionE, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.19, i32 noundef %i.q, ptr noundef nonnull %i.u)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.r, %bb.g ]
  %i.v = and i8 %1, 7
  %i.w = icmp eq i8 %i.v, 2
  %i.x = and i8 %4, 15
  %i.y = zext nneg i8 %i.x to i32
  %i.z = lshr i8 %1, 3
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 5
  %i.ac = or disjoint i32 %i.ab, %i.y
  %i.ad = getelementptr inbounds i8, ptr @_ZN4Luau7CodeGen3A64L16codeForConditionE, i64 %.pre-phi
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 12
  %i.ah = or disjoint i32 %i.ag, %i.ac
  %i.ai = lshr i8 %2, 3
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 16
  %i.al = select i1 %i.w, i32 -96468992, i32 2051014656
  %i.am = or disjoint i32 %i.al, %i.ak
  %i.an = or i32 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !46
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47
  %i.at = icmp eq ptr %i.as, %i.aq
  br i1 %i.at, label %bb.i, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit: ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644ccmnENS1_11RegisterA64ES3_NS1_12ConditionA64Eh(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = sext i32 %3 to i64
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.20)
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1)
  %i.d = load i8, ptr @_ZN5FFlag20LuauCodegenSharedLogE, align 8, !tbaa !19, !range !20, !noundef !21
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = icmp eq i64 %i.i, 4611686018427387903
  br i1 %i.j, label %bb.d, label %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #21
  unreachable

_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit:     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14
  %i.n = icmp eq i64 %i.m, 4611686018427387903
  br i1 %i.n, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit
  %.sink = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit ], [ %i.k, %_ZN4Luau7CodeGen10LogBuilder6appendEPKc.exit ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %2)
  %i.q = zext i8 %4 to i32
  %i.r = sext i32 %3 to i64                       ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7CodeGen3A64L16textForConditionE, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.19, i32 noundef %i.q, ptr noundef nonnull %i.u)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.r, %bb.g ]
  %i.v = and i8 %1, 7
  %i.w = icmp eq i8 %i.v, 2
  %i.x = and i8 %4, 15
  %i.y = zext nneg i8 %i.x to i32
  %i.z = lshr i8 %1, 3
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 5
  %i.ac = or disjoint i32 %i.ab, %i.y
  %i.ad = getelementptr inbounds i8, ptr @_ZN4Luau7CodeGen3A64L16codeForConditionE, i64 %.pre-phi
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 12
  %i.ah = or disjoint i32 %i.ag, %i.ac
  %i.ai = lshr i8 %2, 3
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 16
  %i.al = select i1 %i.w, i32 -1170210816, i32 977272832
  %i.am = or disjoint i32 %i.al, %i.ak
  %i.an = or i32 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !46
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47
  %i.at = icmp eq ptr %i.as, %i.aq
  br i1 %i.at, label %bb.i, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit: ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644ccmnENS1_11RegisterA64EhNS1_12ConditionA64Eh(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 noundef zeroext %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = sext i32 %3 to i64
  %.pre10 = zext i8 %2 to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.20)
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1)
  %i.d = zext i8 %2 to i32                        ; 2 uses
  %i.e = zext i8 %4 to i32
  %i.f = sext i32 %3 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7CodeGen3A64L16textForConditionE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  tail call void (ptr, ptr, ...) @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.21, i32 noundef %i.d, i32 noundef %i.e, ptr noundef nonnull %i.i)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi11 = phi i32 [ %.pre10, %._crit_edge ], [ %i.d, %bb.b ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.f, %bb.b ]
  %i.j = and i8 %1, 7
  %i.k = icmp eq i8 %i.j, 2
  %i.l = select i1 %i.k, i32 -2147483648, i32 0
  %i.m = and i8 %4, 15
  %i.n = zext nneg i8 %i.m to i32
  %i.o = lshr i8 %1, 3
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 5
  %i.r = or disjoint i32 %i.q, %i.n
  %i.s = getelementptr inbounds i8, ptr @_ZN4Luau7CodeGen3A64L16codeForConditionE, i64 %.pre-phi
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 12
  %i.w = or disjoint i32 %i.v, %i.r
  %i.x = shl nuw nsw i32 %.pre-phi11, 16
  %i.y = or disjoint i32 %i.x, %i.l
  %i.z = or i32 %i.y, %i.w
  %i.aa = or i32 %i.z, 977274880
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !46 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !46
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643cmnENS1_11RegisterA64Et(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i8 %1, 7
  %i.b = icmp eq i8 %i.a, 2
  %.sroa.02.0.copyload = select i1 %i.b, i8 -6, i8 -7 ; 2 uses
  %i.c = zext i16 %2 to i32                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i8, ptr %i.d, align 8, !tbaa !38, !range !20, !noundef !21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_i(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.22, i8 %.sroa.02.0.copyload, i8 %1, i32 noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = and i8 %.sroa.02.0.copyload, 3
  %.not.i = icmp eq i8 %i.g, 1
  %i.h = lshr i8 %1, 3
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 5
  %i.k = shl nuw nsw i32 %i.c, 10
  %i.l = or disjoint i32 %i.j, %i.k
  %3 = or disjoint i32 %i.l, 31
  %4 = select i1 %.not.i, i32 822083584, i32 -1325400064
  %i.m = or i32 %4, %3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !46
  store i32 %i.m, ptr %i.o, align 4, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeI12EPKcNS1_11RegisterA64ES5_ih.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeI12EPKcNS1_11RegisterA64ES5_ih.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeI12EPKcNS1_11RegisterA64ES5_ih.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644cselENS1_11RegisterA64ES3_S3_NS1_12ConditionA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i8 %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.23, i8 %1, i8 %2, i8 %3, i32 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = select i1 %i.e, i32 -2147483648, i32 0
  %i.g = lshr i8 %1, 3
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i8 %2, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 5
  %i.l = or disjoint i32 %i.k, %i.h
  %i.m = sext i32 %4 to i64
  %i.n = getelementptr inbounds i8, ptr @_ZN4Luau7CodeGen3A64L16codeForConditionE, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 12
  %i.r = lshr i8 %3, 3
  %i.s = zext nneg i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 16
  %i.u = or disjoint i32 %i.t, %i.f
  %i.v = or disjoint i32 %i.u, 444596224
  %i.w = or disjoint i32 %i.q, %i.l
  %i.x = or i32 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !46
  store i32 %i.x, ptr %i.z, align 4, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, i8 %3, i8 %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i32 noundef %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, i8 %3, i8 %4, i32 noundef %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %2, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = select i1 %i.e, i32 -2147483648, i32 0
  %i.g = lshr i8 %2, 3
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i8 %3, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 5
  %i.l = or disjoint i32 %i.k, %i.h
  %i.m = zext i8 %7 to i32
  %i.n = shl nuw nsw i32 %i.m, 10
  %i.o = or disjoint i32 %i.n, %i.l
  %i.p = sext i32 %5 to i64
  %i.q = getelementptr inbounds i8, ptr @_ZN4Luau7CodeGen3A64L16codeForConditionE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !15
  %i.s = zext i8 %i.r to i32
  %i.t = xor i32 %8, %i.s
  %i.u = shl i32 %i.t, 12
  %i.v = lshr i8 %4, 3
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 16
  %i.y = zext i8 %6 to i32
  %i.z = shl nuw nsw i32 %i.y, 21
  %i.aa = or disjoint i32 %i.x, %i.f
  %i.ab = or disjoint i32 %i.aa, %i.z
  %i.ac = or i32 %i.u, %i.o
  %i.ad = or i32 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !46
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644csetENS1_11RegisterA64ENS1_12ConditionA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i8 %1, 7
  %i.b = icmp eq i8 %i.a, 2                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i8, ptr %i.c, align 8, !tbaa !38, !range !20, !noundef !21
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = select i1 %i.b, i8 -6, i8 -7 ; 2 uses
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.24, i8 %1, i8 %.sroa.03.0.copyload, i8 %.sroa.03.0.copyload, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = lshr i8 %1, 3
  %i.g = zext nneg i8 %i.f to i32
  %3 = or disjoint i32 %i.g, 2016
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds i8, ptr @_ZN4Luau7CodeGen3A64L16codeForConditionE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = xor i8 %i.j, 1
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 12
  %4 = select i1 %i.b, i32 -1700855808, i32 446627840
  %5 = or disjoint i32 %i.m, %3
  %i.n = or i32 %5, %4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !46
  store i32 %i.n, ptr %i.p, align 4, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644and_ENS1_11RegisterA64ES3_S3_i(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i8 %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_S5_i(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.25, i8 %1, i8 %2, i8 %3, i32 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = select i1 %i.e, i32 -2147483648, i32 0
  %i.g = lshr i8 %1, 3
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i8 %2, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 5
  %i.l = or disjoint i32 %i.k, %i.h
  %i.m = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %i.n = shl i32 %i.m, 10
  %i.o = or disjoint i32 %i.n, %i.l
  %i.p = lshr i8 %3, 3
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 16
  %i.s = lshr i32 %4, 9
  %i.t = and i32 %i.s, 4194304
  %i.u = or disjoint i32 %i.r, %i.f
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = or i32 %i.o, %i.v
  %i.x = or i32 %i.w, 167772160
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !46
  store i32 %i.x, ptr %i.z, align 4, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643orrENS1_11RegisterA64ES3_S3_i(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i8 %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_S5_i(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.26, i8 %1, i8 %2, i8 %3, i32 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = select i1 %i.e, i32 -2147483648, i32 0
  %i.g = lshr i8 %1, 3
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i8 %2, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 5
  %i.l = or disjoint i32 %i.k, %i.h
  %i.m = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %i.n = shl i32 %i.m, 10
  %i.o = or disjoint i32 %i.n, %i.l
  %i.p = lshr i8 %3, 3
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 16
  %i.s = lshr i32 %4, 9
  %i.t = and i32 %i.s, 4194304
  %i.u = or disjoint i32 %i.r, %i.f
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = or i32 %i.o, %i.v
  %i.x = or i32 %i.w, 704643072
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !46
  store i32 %i.x, ptr %i.z, align 4, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643eorENS1_11RegisterA64ES3_S3_i(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i8 %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_S5_i(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.27, i8 %1, i8 %2, i8 %3, i32 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = select i1 %i.e, i32 -2147483648, i32 0
  %i.g = lshr i8 %1, 3
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i8 %2, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 5
  %i.l = or disjoint i32 %i.k, %i.h
  %i.m = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %i.n = shl i32 %i.m, 10
  %i.o = or disjoint i32 %i.n, %i.l
  %i.p = lshr i8 %3, 3
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 16
  %i.s = lshr i32 %4, 9
  %i.t = and i32 %i.s, 4194304
  %i.u = or disjoint i32 %i.r, %i.f
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = or i32 %i.o, %i.v
  %i.x = or i32 %i.w, 1241513984
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !46
  store i32 %i.x, ptr %i.z, align 4, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643bicENS1_11RegisterA64ES3_S3_i(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i8 %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_S5_i(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.28, i8 %1, i8 %2, i8 %3, i32 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = select i1 %i.e, i32 -2147483648, i32 0
  %i.g = lshr i8 %1, 3
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i8 %2, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 5
  %i.l = or disjoint i32 %i.k, %i.h
  %i.m = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %i.n = shl i32 %i.m, 10
  %i.o = or disjoint i32 %i.n, %i.l
  %i.p = lshr i8 %3, 3
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 16
  %i.s = lshr i32 %4, 9
  %i.t = and i32 %i.s, 4194304
  %i.u = or disjoint i32 %i.r, %i.f
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = or i32 %i.o, %i.v
  %i.x = or i32 %i.w, 169869312
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !46
  store i32 %i.x, ptr %i.z, align 4, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643tstENS1_11RegisterA64ES3_i(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i8 %1, 7
  %i.b = icmp eq i8 %i.a, 2
  %.sroa.03.0.copyload = select i1 %i.b, i8 -6, i8 -7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i8, ptr %i.c, align 8, !tbaa !38, !range !20, !noundef !21
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_S5_i(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.29, i8 %.sroa.03.0.copyload, i8 %1, i8 %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = and i8 %.sroa.03.0.copyload, 3
  %i.g = icmp eq i8 %i.f, 2
  %i.h = select i1 %i.g, i32 -2147483648, i32 0
  %i.i = lshr i8 %1, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 5
  %i.l = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %i.m = shl i32 %i.l, 10
  %i.n = lshr i8 %2, 3
  %i.o = zext nneg i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 16
  %i.q = lshr i32 %3, 9
  %i.r = and i32 %i.q, 4194304
  %op.rdx7 = or i32 %i.m, %i.p
  %op.rdx8 = or disjoint i32 %i.r, %i.h
  %op.rdx = or disjoint i32 %i.k, %op.rdx7
  %op.rdx9 = or i32 %op.rdx, %op.rdx8
  %op.rdx10 = or i32 %op.rdx9, 1778384927
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !46
  store i32 %op.rdx10, ptr %i.t, align 4, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR3EPKcNS1_11RegisterA64ES5_S5_hii.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644mvn_ENS1_11RegisterA64ES3_(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.30, i8 %1, i8 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = lshr i8 %1, 3
  %i.g = zext nneg i8 %i.f to i32
  %i.h = lshr i8 %2, 3
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 16
  %i.k = or disjoint i32 %i.j, %i.g
  %i.l = select i1 %i.e, i32 -1442839584, i32 704644064
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = or disjoint i32 %i.m, 2097152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !46
  store i32 %i.n, ptr %i.p, align 4, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR2EPKcNS1_11RegisterA64ES5_hh.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR2EPKcNS1_11RegisterA64ES5_hh.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA648placeSR2EPKcNS1_11RegisterA64ES5_hh.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644and_ENS1_11RegisterA64ES3_j(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_i(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.25, i8 %1, i8 %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %3, i1 false)
  %i.g = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 2 uses
  %i.h = add nuw nsw i32 %i.f, %i.g
  %i.i = lshr i8 %1, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = lshr i8 %2, 3
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 5
  %i.n = or disjoint i32 %i.m, %i.j
  %reass.sub.i = or disjoint i32 %i.n, 31744
  %i.o = shl nuw nsw i32 %i.h, 10
  %i.p = sub nsw i32 %reass.sub.i, %i.o
  %.neg.i = mul nuw nsw i32 %i.g, 2031616
  %i.q = and i32 %.neg.i, 2031616
  %i.r = select i1 %i.e, i32 -1845493760, i32 301989888
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = or i32 %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !46
  store i32 %i.t, ptr %i.v, align 4, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.z = icmp eq ptr %i.y, %i.w
  br i1 %i.z, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeBMEPKcNS1_11RegisterA64ES5_jh.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeBMEPKcNS1_11RegisterA64ES5_jh.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeBMEPKcNS1_11RegisterA64ES5_jh.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeBMEPKcNS1_11RegisterA64ES5_jh(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, i8 %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_i(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, i8 %3, i32 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %2, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = select i1 %i.e, i32 -2147483648, i32 0
  %i.g = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %4, i1 false)
  %i.h = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %4, i1 false) ; 2 uses
  %i.i = add nuw nsw i32 %i.g, %i.h
  %i.j = lshr i8 %2, 3
  %i.k = zext nneg i8 %i.j to i32
  %i.l = lshr i8 %3, 3
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 5
  %i.o = or disjoint i32 %i.n, %i.k
  %i.p = shl nuw nsw i32 %i.i, 10
  %reass.sub = sub nsw i32 %i.o, %i.p
  %i.q = add nsw i32 %reass.sub, 31744
  %.neg = mul nuw nsw i32 %i.h, 2031616
  %i.r = and i32 %.neg, 2031616
  %i.s = zext i8 %5 to i32
  %i.t = shl nuw nsw i32 %i.s, 23
  %i.u = or disjoint i32 %i.r, %i.f
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = or i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !46
  store i32 %i.w, ptr %i.y, align 4, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = icmp eq ptr %i.ab, %i.z
  br i1 %i.ac, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643orrENS1_11RegisterA64ES3_j(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_i(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.26, i8 %1, i8 %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %1, 7
  %i.e = icmp eq i8 %i.d, 2
  %i.f = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %3, i1 false)
  %i.g = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 2 uses
  %i.h = add nuw nsw i32 %i.f, %i.g
  %i.i = lshr i8 %1, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = lshr i8 %2, 3
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 5
  %i.n = or disjoint i32 %i.m, %i.j
  %reass.sub.i = or disjoint i32 %i.n, 31744
  %i.o = shl nuw nsw i32 %i.h, 10
  %i.p = sub nsw i32 %reass.sub.i, %i.o
  %.neg.i = mul nuw nsw i32 %i.g, 2031616
  %i.q = and i32 %.neg.i, 2031616
  %i.r = select i1 %i.e, i32 -1308622848, i32 838860800
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = or i32 %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !46
end_hunk_1
begin_hunk_2_@_ZN4Luau7CodeGen3A6418AssemblyBuilderA644fcmpENS1_11RegisterA64ES3_:bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.101, i8 %1, i8 %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = lshr i8 %1, 3
  %i.g = zext nneg i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 5
  %i.i = lshr i8 %2, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 16
  %i.l = or disjoint i32 %i.k, %i.h
  %i.m = or disjoint i32 %i.l, 509616128
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !46
  store i32 %i.m, ptr %i.o, align 4, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.101, i8 %1, i8 %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = lshr i8 %1, 3
  %i.u = zext nneg i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 5
  %i.w = lshr i8 %2, 3
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 16
  %i.z = or disjoint i32 %i.y, %i.v
  %i.aa = or disjoint i32 %i.z, 505421824
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !46 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !46
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.ag = icmp eq ptr %i.af, %i.ad
  br i1 %i.ag, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit.sink.split: ; preds = %bb.g, %bb.d
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit: ; preds = %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit.sink.split, %bb.g, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, i8 %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Eii(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, i32 noundef 0, i32 noundef 0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i8 %2, i8 %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.d = zext i8 %5 to i32
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = lshr i8 %2, 3
  %i.g = zext nneg i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 5
  %i.i = or i32 %i.h, %i.e
  %i.j = lshr i8 %3, 3
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 16
  %i.m = or disjoint i32 %i.i, %i.l
  %i.n = zext i8 %4 to i32
  %i.o = shl nuw nsw i32 %i.n, 21
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = or disjoint i32 %i.p, 8192
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !46
  store i32 %i.q, ptr %i.s, align 4, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = icmp eq ptr %i.v, %i.t
  br i1 %i.w, label %bb.f, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646commitEv.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA645fcmpzENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i8 %1, 7
  %i.b = icmp eq i8 %i.a, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i8, ptr %i.c, align 8, !tbaa !38, !range !20, !noundef !21
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Eii(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.101, i8 %1, i32 noundef 0, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = lshr i8 %1, 3
  %i.g = zext nneg i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 5
  %i.i = or disjoint i32 %i.h, 509616136
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !46
  store i32 %i.i, ptr %i.k, align 4, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64Eii(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.101, i8 %1, i32 noundef 0, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = lshr i8 %1, 3
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 5
  %i.s = or disjoint i32 %i.r, 505421832
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !46
  store i32 %i.s, ptr %i.u, align 4, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit.sink.split: ; preds = %bb.g, %bb.d
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit: ; preds = %_ZN4Luau7CodeGen3A6418AssemblyBuilderA649placeFCMPEPKcNS1_11RegisterA64ES5_hh.exit.sink.split, %bb.g, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA645fcselENS1_11RegisterA64ES3_S3_NS1_12ConditionA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, i8 %1, i8 %2, i8 %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i8 %2, 7
  %i.b = icmp eq i8 %i.a, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i8, ptr %i.c, align 8, !tbaa !38, !range !20, !noundef !21
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.102, i8 %1, i8 %2, i8 %3, i32 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = and i8 %1, 7
  %i.g = icmp eq i8 %i.f, 2
  %i.h = select i1 %i.g, i32 -2147483648, i32 0
  %i.i = lshr i8 %1, 3
  %i.j = zext nneg i8 %i.i to i32
  %i.k = lshr i8 %2, 3
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 5
  %i.n = sext i32 %4 to i64
  %i.o = getelementptr inbounds i8, ptr @_ZN4Luau7CodeGen3A64L16codeForConditionE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 12
  %i.s = lshr i8 %3, 3
  %i.t = zext nneg i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 16
  %op.rdx15 = or i32 %i.r, %i.u
  %op.rdx16 = or disjoint i32 %i.h, %i.j
  %op.rdx = or disjoint i32 %i.m, %op.rdx15
  %op.rdx17 = or disjoint i32 %op.rdx, %op.rdx16
  %op.rdx18 = or disjoint i32 %op.rdx17, 509611008
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !46
  store i32 %op.rdx18, ptr %i.w, align 4, !tbaa !53
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = icmp eq ptr %i.z, %i.x
  br i1 %i.aa, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64E(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.102, i8 %1, i8 %2, i8 %3, i32 noundef %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = and i8 %1, 7
  %i.ac = icmp eq i8 %i.ab, 2
  %i.ad = select i1 %i.ac, i32 -2147483648, i32 0
  %i.ae = lshr i8 %1, 3
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = lshr i8 %2, 3
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 5
  %i.aj = sext i32 %4 to i64
  %i.ak = getelementptr inbounds i8, ptr @_ZN4Luau7CodeGen3A64L16codeForConditionE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 12
  %i.ao = lshr i8 %3, 3
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 16
  %op.rdx20 = or i32 %i.an, %i.aq
  %op.rdx21 = or disjoint i32 %i.ad, %i.af
  %op.rdx19 = or disjoint i32 %i.ai, %op.rdx20
  %op.rdx22 = or disjoint i32 %op.rdx19, %op.rdx21
  %op.rdx23 = or disjoint i32 %op.rdx22, 505416704
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !46
  store i32 %op.rdx23, ptr %i.as, align 4, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47
  %i.aw = icmp eq ptr %i.av, %i.at
  br i1 %i.aw, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit.sink.split, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit.sink.split: ; preds = %bb.g, %bb.d
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit: ; preds = %_ZN4Luau7CodeGen3A6418AssemblyBuilderA647placeCSEPKcNS1_11RegisterA64ES5_S5_NS1_12ConditionA64Ehhi.exit.sink.split, %bb.g, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643udfEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.103)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !46
  store i32 0, ptr %i.e, align 4, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %bb.d, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646place0EPKcj.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646place0EPKcj.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646place0EPKcj.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643nopEj(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 2                           ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646place0EPKcj.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646place0EPKcj.exit
  %.04 = phi i32 [ 0, %.lr.ph ], [ %i.k, %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646place0EPKcj.exit ]
  %i.e = load i8, ptr %i.b, align 8, !tbaa !38, !range !20, !noundef !21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643logEPKc(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.104)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !46
  store i32 -721215457, ptr %i.g, align 4, !tbaa !53
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.j = icmp eq ptr %i.i, %i.h
  br i1 %i.j, label %bb.e, label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646place0EPKcj.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA646extendEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA646place0EPKcj.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA646place0EPKcj.exit: ; preds = %bb.d, %bb.e
  %i.k = add nuw nsw i32 %.04, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !61
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648finalizeEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sub nuw nsw i64 %i.h, %i.m
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.o)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp uge i64 %i.h, %i.m
  %.not.i.i = icmp eq ptr %i.j, %i.c
  %or.cond = or i1 %.not.i.i, %i.p
  br i1 %or.cond, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  store ptr %i.q, ptr %i.i, align 8, !tbaa !41
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %.not1314 = icmp eq ptr %i.s, %i.u
  br i1 %.not1314, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 153
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN4Luau7CodeGen3A6418AssemblyBuilderA6411patchOffsetEjiNS2_5Patch4KindE.exit, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44   ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !43    ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45 ; 3 uses
  %i.ag = sub i64 %i.ad, %i.af                    ; 5 uses
  %.not = icmp eq i64 %i.ad, %i.af
  br i1 %.not, label %bb.h, label %bb.g

bb.d:                                             ; preds = %.lr.ph, %_ZN4Luau7CodeGen3A6418AssemblyBuilderA6411patchOffsetEjiNS2_5Patch4KindE.exit
  %.sroa.010.015 = phi ptr [ %i.s, %.lr.ph ], [ %i.bf, %_ZN4Luau7CodeGen3A6418AssemblyBuilderA6411patchOffsetEjiNS2_5Patch4KindE.exit ] ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %.sroa.010.015, align 4, !tbaa !15 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !53 ; 2 uses
  %i.ah = lshr i32 %.sroa.0.0.copyload, 2
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.am = sub nsw i32 %i.al, %.sroa.5.0.copyload  ; 3 uses
  %i.an = and i32 %.sroa.0.0.copyload, 3          ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0                    ; 2 uses
  %i.ap = icmp eq i32 %i.an, 1
  %i.aq = select i1 %i.ao, i32 67108864, i32 16384
  %i.ar = select i1 %i.ap, i32 524288, i32 %i.aq  ; 2 uses
  %i.as = lshr exact i32 %i.ar, 1                 ; 2 uses
  %i.at = sub nsw i32 0, %i.as
  %i.au = icmp sgt i32 %i.am, %i.at
  %i.av = icmp slt i32 %i.am, %i.as
  %or.cond.i = and i1 %i.au, %i.av
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = select i1 %i.ao, i32 0, i32 5
  %i.ax = add nsw i32 %i.ar, -1
  %i.ay = and i32 %i.ax, %i.am
  %i.az = shl nuw nsw i32 %i.ay, %i.aw
  %i.ba = zext i32 %.sroa.5.0.copyload to i64
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ba ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !53
  %i.be = or i32 %i.bd, %i.az
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !53
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA6411patchOffsetEjiNS2_5Patch4KindE.exit

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.x, align 1, !tbaa !55
  br label %_ZN4Luau7CodeGen3A6418AssemblyBuilderA6411patchOffsetEjiNS2_5Patch4KindE.exit

_ZN4Luau7CodeGen3A6418AssemblyBuilderA6411patchOffsetEjiNS2_5Patch4KindE.exit: ; preds = %bb.e, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 8 ; 2 uses
  %.not13 = icmp eq ptr %i.bf, %i.u
  br i1 %.not13, label %._crit_edge, label %bb.d
end_hunk_2
