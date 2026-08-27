Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/extension_set?download=true
inline.NumInlined: 3767
inline.NumDeleted: 1290
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6google8protobuf8internal12ExtensionSet9Extension4FreeEv:bb.a
bb.r:                                             ; preds = %bb.b
  %i.bl = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.aq, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !129
  %i.bo = and i32 %i.bn, 1
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !13
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 3
  %i.bv = add nsw i64 %i.bu, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #35
  br label %_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit:   ; preds = %bb.s, %bb.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 16) #39
  br label %bb.aq

bb.u:                                             ; preds = %bb.b
  %i.bw = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.aq, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !129
  %i.bz = and i32 %i.by, 1
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !13 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !13
  %i.ce = sext i32 %i.cd to i64
  %i.cf = add nsw i64 %i.ce, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cf) #35
  br label %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit:   ; preds = %bb.v, %bb.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 16) #39
  br label %bb.aq

bb.x:                                             ; preds = %bb.b
  %i.cg = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.aq, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !129
  %i.cj = and i32 %i.ci, 1
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit13, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !13 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !13
  %i.co = sext i32 %i.cn to i64
  %i.cp = shl nsw i64 %i.co, 2
  %i.cq = add nsw i64 %i.cp, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cq) #35
  br label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit13

_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit13: ; preds = %bb.y, %bb.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 16) #39
  br label %bb.aq

bb.aa:                                            ; preds = %bb.b
  %i.cr = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.aq, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !132
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  tail call void @__clang_call_terminate(ptr %i.cv) #37
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.ab, %bb.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 16) #39
  br label %bb.aq

bb.ae:                                            ; preds = %bb.b
  %i.cw = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !132
  %.not.i14 = icmp eq ptr %i.cy, null
  br i1 %.not.i14, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_11MessageLiteEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_11MessageLiteEED2Ev.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  tail call void @__clang_call_terminate(ptr %i.da) #37
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINS0_11MessageLiteEED2Ev.exit: ; preds = %bb.af, %bb.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 16) #39
  br label %bb.aq

bb.ai:                                            ; preds = %bb.a
  switch i32 %i.h, label %bb.aq [
    i32 9, label %bb.aj
    i32 10, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.db = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !126 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !13
  %i.dh = add i64 %i.dg, 1
  tail call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 32) #39
  br label %bb.aq

bb.al:                                            ; preds = %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dj = load i8, ptr %i.di, align 2
  %i.dk = and i8 %i.dj, 4
  %.not = icmp eq i8 %i.dk, 0
  %i.dl = load ptr, ptr %0, align 8, !tbaa !13    ; 5 uses
  %i.dm = icmp eq ptr %i.dl, null                 ; 2 uses
  br i1 %.not, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %i.dm, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !69
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void %i.dp(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dl) #35
  br label %bb.aq

bb.ao:                                            ; preds = %bb.al
  br i1 %i.dm, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dq = load ptr, ptr %i.dl, align 8, !tbaa !69
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dl) #35
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aj, %bb.ao, %bb.ap, %bb.am, %bb.an, %bb.ai, %bb.b, %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit, %bb.c, %_ZN6google8protobuf13RepeatedFieldIlED2Ev.exit, %bb.f, %_ZN6google8protobuf13RepeatedFieldIjED2Ev.exit, %bb.i, %_ZN6google8protobuf13RepeatedFieldImED2Ev.exit, %bb.l, %_ZN6google8protobuf13RepeatedFieldIfED2Ev.exit, %bb.o, %_ZN6google8protobuf13RepeatedFieldIdED2Ev.exit, %bb.r, %_ZN6google8protobuf13RepeatedFieldIbED2Ev.exit, %bb.u, %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit13, %bb.x, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %bb.aa, %_ZN6google8protobuf16RepeatedPtrFieldINS0_11MessageLiteEED2Ev.exit, %bb.ae
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, i8 } @_ZN6google8protobuf8internal12ExtensionSet6InsertEPNS0_5ArenaEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 6 uses
  %i.c = icmp slt i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, i8 } @_ZN6google8protobuf8internal12ExtensionSet26InternalInsertIntoLargeMapEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %2)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not48 = icmp eq i16 %i.b, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %3 = zext nneg i16 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.g = getelementptr [32 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !109  ; 2 uses
  %i.j = icmp eq i32 %i.i, %2
  br i1 %i.j, label %.thread, label %bb.d

.thread:                                          ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %i.g, i64 -24
  %i.l = insertvalue { ptr, i8 } poison, ptr %i.k, 0
  %i.m = insertvalue { ptr, i8 } %i.l, i8 0, 1
  br label %bb.m

bb.d:                                             ; preds = %.lr.ph
  %i.n = icmp slt i32 %i.i, %2
  br i1 %i.n, label %._crit_edge.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %4 = and i64 %indvars.iv.next, 65535
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !316

._crit_edge.loopexit:                             ; preds = %bb.d, %bb.e
  %.0.lcssa.ph = phi i64 [ 0, %bb.e ], [ %indvars.iv, %bb.d ]
  %i.o = shl nuw nsw i64 %.0.lcssa.ph, 5
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.o, %._crit_edge.loopexit ] ; 2 uses
  %i.p = load i16, ptr %0, align 8, !tbaa !99
  %i.q = icmp eq i16 %i.b, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %._crit_edge
  %narrow = add nuw i16 %i.b, 1
  %i.r = zext i16 %narrow to i64
  tail call void @_ZN6google8protobuf8internal12ExtensionSet12GrowCapacityEPNS0_5ArenaEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %i.r)
  %i.s = load i16, ptr %i.a, align 2, !tbaa !86   ; 2 uses
  %i.t = icmp slt i16 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.h, !prof !35

bb.g:                                             ; preds = %bb.f
  %i.u = tail call { ptr, i8 } @_ZN6google8protobuf8internal12ExtensionSet26InternalInsertIntoLargeMapEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %2)
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.w = phi i16 [ %i.s, %bb.h ], [ %i.b, %._crit_edge ]
  %.029 = phi ptr [ %i.v, %bb.h ], [ %i.f, %._crit_edge ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.029, i64 %.0.lcssa ; 4 uses
  %i.y = zext nneg i16 %i.w to i64
  %.idx = shl nuw nsw i64 %i.y, 5                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.029, i64 %.idx ; 2 uses
  %gepdiff = sub nsw i64 %.idx, %.0.lcssa         ; 3 uses
  %i.aa = ashr exact i64 %gepdiff, 5              ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ad = sub nsw i64 0, %i.aa
  %i.ae = getelementptr inbounds [32 x i8], ptr %i.ac, i64 %i.ad
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %i.x, i64 %gepdiff, i1 false)
  br label %_ZSt13copy_backwardIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit

bb.k:                                             ; preds = %bb.i
  %i.af = icmp eq i64 %gepdiff, 32
  br i1 %i.af, label %bb.l, label %_ZSt13copy_backwardIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false), !tbaa.struct !141
  br label %_ZSt13copy_backwardIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit

_ZSt13copy_backwardIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.ag = load i16, ptr %i.a, align 2, !tbaa !86
  %i.ah = add i16 %i.ag, 1
  store i16 %i.ah, ptr %i.a, align 2, !tbaa !86
  store i32 %2, ptr %i.x, align 8, !tbaa !109
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.aj = insertvalue { ptr, i8 } poison, ptr %i.ai, 0
  %i.ak = insertvalue { ptr, i8 } %i.aj, i8 1, 1
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.g, %_ZSt13copy_backwardIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit, %bb.b
  %.fca.1.insert.merged = phi { ptr, i8 } [ %i.d, %bb.b ], [ %i.u, %bb.g ], [ %i.ak, %_ZSt13copy_backwardIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit ], [ %i.m, %.thread ]
  ret { ptr, i8 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEPNS0_5ArenaEPKNS0_11MessageLiteE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !86   ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.d, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95   ; 3 uses
  store ptr %i.g, ptr %3, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %.sroa.211.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13    ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = icmp eq ptr %i.g, %i.i
  %i.n = icmp eq i8 %i.k, 0
  %.not3.i.not35 = select i1 %i.m, i1 %i.n, i1 false
  br i1 %.not3.i.not35, label %._crit_edge, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.b, %bb.c
  %i.o = phi i32 [ %i.aa, %bb.c ], [ 0, %bb.b ]
  %i.p = phi ptr [ %i.y, %bb.c ], [ %i.g, %bb.b ]
  %i.q = and i32 %i.o, 255
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.t, align 8, !tbaa !172
  %i.w = call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet9Extension13IsInitializedEPKS2_PKNS0_11MessageLiteEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr nonnull poison, ptr noundef %2, i32 noundef %i.v, ptr noundef %1) ; 3 uses
  br i1 %i.w, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph37
  %i.x = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv(ptr noundef nonnull align 8 dereferenceable(12) %3) ; 0 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !317    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  %i.aa = load i32, ptr %.sroa.211.0..sroa_idx, align 8 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %i.l
  %.not3.i.not = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %.not3.i.not, label %._crit_edge, label %.lr.ph37

._crit_edge:                                      ; preds = %.lr.ph37, %bb.c, %bb.b
  %.not3.i.not.lcssa = phi i1 [ true, %bb.b ], [ %i.w, %bb.c ], [ %i.w, %.lr.ph37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %.not30 = icmp eq i16 %i.b, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !13
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.031, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.af = load i16, ptr %i.a, align 2, !tbaa !86
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ag
  %.not = icmp eq ptr %i.ad, %i.ah
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !319

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.031 = phi ptr [ %i.ad, %bb.e ], [ %i.ac, %.lr.ph.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.aj = load i32, ptr %.031, align 8, !tbaa !109
  %i.ak = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet9Extension13IsInitializedEPKS2_PKNS0_11MessageLiteEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr nonnull poison, ptr noundef %2, i32 noundef %i.aj, ptr noundef %1) ; 3 uses
  br i1 %i.ak, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.d, %._crit_edge
  %.4 = phi i1 [ %.not3.i.not.lcssa, %._crit_edge ], [ true, %bb.d ], [ %i.ak, %bb.e ], [ %i.ak, %.lr.ph ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet9Extension13IsInitializedEPKS2_PKNS0_11MessageLiteEiPNS0_5ArenaE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite22kFieldTypeToCppTypeMapE, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !106
  %.not = icmp eq i32 %i.e, 10
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.g = load i8, ptr %i.f, align 1, !tbaa !101, !range !104, !noundef !30
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !119
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !119
  %i.p = sext i32 %i.o to i64
  %.not16 = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %.not16, label %.lr.ph, label %.loopexit, !llvm.loop !320

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.q = phi ptr [ %i.m, %bb.c ], [ %i.i, %.preheader ] ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = and i64 %i.s, 1
  %i.u = icmp eq i64 %i.t, 0
  %i.v = add i64 %i.s, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %.0.i.i.i.i = select i1 %i.u, ptr %i.q, ptr %i.y
  %i.z = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !20
  %i.aa = tail call noundef zeroext i1 @_ZNK6google8protobuf11MessageLite13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) ; 3 uses
  br i1 %i.aa, label %bb.c, label %.loopexit

bb.d:                                             ; preds = %bb.b
end_hunk_0
