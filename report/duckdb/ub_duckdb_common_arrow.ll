inline.NumInlined: 6734
inline.NumDeleted: 3043
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb14ArrowConverter12ToArrowArrayERNS_9DataChunkEP10ArrowArrayNS_16ClientPropertiesERKSt13unordered_mapImKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEESt4hashImESt8equal_toImESaISt4pairIKmSA_EEE:bb.a
  call void @_ZN6duckdb13ArrowAppenderD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.o:                                             ; preds = %_ZN6duckdb16ClientPropertiesC2EOS0_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmKN6duckdb10shared_ptrINS2_22ArrowTypeExtensionDataELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.p ], [ %i.bg, %bb.o ]
  %i.bi = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.c
  br i1 %i.bj, label %_ZN6duckdb16ClientPropertiesD2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.bi) #37
  br label %_ZN6duckdb16ClientPropertiesD2Ev.exit17

_ZN6duckdb16ClientPropertiesD2Ev.exit17:          ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #34
  br label %bb.u

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn12 = phi { ptr, i32 } [ %i.bl, %bb.s ], [ %i.bk, %bb.r ]
  call void @_ZN6duckdb13ArrowAppenderD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %5) #34
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN6duckdb16ClientPropertiesD2Ev.exit17
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %bb.t ], [ %.pn, %_ZN6duckdb16ClientPropertiesD2Ev.exit17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  resume { ptr, i32 } %.pn12.pn
}

declare void @_ZNK6duckdb9DataChunk8GetTypesEv(ptr dead_on_unwind writable sret(%"class.duckdb::vector") align 8, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.156") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 13 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #35, !noalias !228 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 0, i64 %i.c, i1 false), !noalias !228
  store ptr %i.d, ptr %0, align 8, !tbaa !231, !alias.scope !228
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = load ptr, ptr %1, align 8, !tbaa !15     ; 8 uses
  %min.iters.check = icmp ult i64 %i.b, 4
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = sub i64 %i.g, %i.e
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i64 %i.b, 32
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.b, 28
  %n.vec = and i64 %i.b, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !tbaa !20
  %wide.load10 = load <16 x i8>, ptr %i.j, align 1, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <16 x i8> %wide.load, ptr %i.k, align 1, !tbaa !20
  store <16 x i8> %wide.load10, ptr %i.l, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.b, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %index13
  %wide.load14 = load <4 x i8>, ptr %i.n, align 1, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %index13
  store <4 x i8> %wide.load14, ptr %i.o, align 1, !tbaa !20
  %index.next15 = add nuw i64 %index13, 4         ; 2 uses
  %i.p = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !234

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.b, %n.vec12
  br i1 %cmp.n16, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.08.prol = phi i64 [ %i.t, %vec.epilog.scalar.ph.prol ], [ %.08.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %.08.prol
  %i.r = load i8, ptr %i.q, align 1, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %.08.prol
  store i8 %i.r, ptr %i.s, align 1, !tbaa !20
  %i.t = add nuw i64 %.08.prol, 1                 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !235

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.08.unr = phi i64 [ %.08.ph, %vec.epilog.scalar.ph.preheader ], [ %i.t, %vec.epilog.scalar.ph.prol ]
  %i.u = sub i64 %.08.ph, %i.b
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  store i8 0, ptr %i.w, align 1, !tbaa !20
  ret void

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.08 = phi i64 [ %i.am, %vec.epilog.scalar.ph ], [ %.08.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 %.08
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %.08
  store i8 %i.y, ptr %i.z, align 1, !tbaa !20
  %i.aa = add nuw i64 %.08, 1                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aa
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !20
  %i.ae = add nuw i64 %.08, 2                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ae
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !20
  %i.ai = add nuw i64 %.08, 3                     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ai
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !20
  %i.am = add nuw i64 %.08, 4                     ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !237
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15InitializeChildER11ArrowSchemaRNS_23DuckDBArrowSchemaHolderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((24, 32), (56, 72)) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.a, align 8, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN6duckdbL24ReleaseDuckDBArrowSchemaEP11ArrowSchema, ptr %i.b, align 8, !tbaa !242
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %i.c, align 8, !tbaa !243
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18, !noalias !244 ; 13 uses
  %i.g = add i64 %i.f, 1                          ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #35, !noalias !247 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.g, i1 false), !noalias !247
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %3 = ptrtoint ptr %i.h to i64
  %i.i = load ptr, ptr %2, align 8, !tbaa !15, !noalias !244 ; 8 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = sub i64 %i.j, %3
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i64 %i.f, 32
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.f, 28
  %n.vec = and i64 %i.f, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <16 x i8>, ptr %i.l, align 1, !tbaa !20, !noalias !244
  %wide.load23 = load <16 x i8>, ptr %i.m, align 1, !tbaa !20, !noalias !244
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <16 x i8> %wide.load, ptr %i.n, align 1, !tbaa !20, !noalias !244
  store <16 x i8> %wide.load23, ptr %i.o, align 1, !tbaa !20, !noalias !244
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.f, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %index26
  %wide.load27 = load <4 x i8>, ptr %i.q, align 1, !tbaa !20, !noalias !244
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %index26
  store <4 x i8> %wide.load27, ptr %i.r, align 1, !tbaa !20, !noalias !244
  %index.next28 = add nuw i64 %index26, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next28, %n.vec25
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !251

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %i.f, %n.vec25
  br i1 %cmp.n29, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.08.i.prol = phi i64 [ %i.w, %vec.epilog.scalar.ph.prol ], [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %.08.i.prol
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20, !noalias !244
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %.08.i.prol
  store i8 %i.u, ptr %i.v, align 1, !tbaa !20, !noalias !244
  %i.w = add nuw i64 %.08.i.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !252

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.w, %vec.epilog.scalar.ph.prol ]
  %i.x = sub i64 %.08.i.ph, %i.f
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.08.i = phi i64 [ %i.ao, %vec.epilog.scalar.ph ], [ %.08.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %.08.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20, !noalias !244
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %.08.i
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !20, !noalias !244
  %i.ac = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20, !noalias !244
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ac
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !20, !noalias !244
  %i.ag = add nuw i64 %.08.i, 2                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20, !noalias !244
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ag
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !20, !noalias !244
  %i.ak = add nuw i64 %.08.i, 3                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20, !noalias !244
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ak
  store i8 %i.am, ptr %i.an, align 1, !tbaa !20, !noalias !244
  %i.ao = add nuw i64 %.08.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ao, %i.f
  br i1 %exitcond.not.i.3, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph, !llvm.loop !253

_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.ap, align 1, !tbaa !20, !noalias !244
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !254 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !257
  %.not.i.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.au = ptrtoint ptr %i.h to i64
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !231
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !258 ; 10 uses
  %i.ax = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit16

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #35
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit16 ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %i.bj = ptrtoint ptr %i.h to i64
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.ar
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.bk = sub i64 %i.ax, %i.ay
  %i.bl = add i64 %i.bk, -8                       ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.bl, 152
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.i.i.preheader47, label %vector.memcheck30

vector.memcheck30:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bo = add i64 %i.ax, -8
  %i.bp = sub i64 %i.bo, %i.ay
  %i.bq = and i64 %i.bp, -8
  %i.br = add i64 %i.bq, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bh, i64 %i.br
  %scevgep31 = getelementptr i8, ptr %i.aw, i64 %i.br
  %bound0 = icmp ult ptr %i.bh, %scevgep31
  %bound1 = icmp ult ptr %i.aw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader47, label %vector.ph33

vector.ph33:                                      ; preds = %vector.memcheck30
  %n.vec35 = and i64 %i.bn, 4611686018427387900   ; 3 uses
  %i.bs = shl i64 %n.vec35, 3                     ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bh, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.aw, i64 %i.bs
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph33
  %index37 = phi i64 [ 0, %vector.ph33 ], [ %index.next41, %vector.body36 ] ; 2 uses
  %i.bv = shl i64 %index37, 3                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bv ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.aw, i64 %i.bv ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.bw = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load39 = load <2 x i64>, ptr %next.gep38, align 8, !tbaa !231, !alias.scope !264, !noalias !259
  %wide.load40 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !231, !alias.scope !264, !noalias !259
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load39, ptr %next.gep, align 8, !tbaa !231, !alias.scope !267, !noalias !264
  store <2 x i64> %wide.load40, ptr %i.bx, align 8, !tbaa !231, !alias.scope !267, !noalias !264
  %i.by = getelementptr i8, ptr %next.gep38, i64 16
end_hunk_0
begin_hunk_1_@_ZN6duckdb6vectorINS_10unique_ptrIA_cSt14default_deleteIS2_ELb0EEELb1ESaIS5_EE4backEv:bb.a
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20SetArrowStructFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextEb(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((0, 8), (32, 40)) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(512) %4, i1 noundef zeroext %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr @.str, ptr %1, align 8, !tbaa !274
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %2) ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !278
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 56
  %i.i = tail call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.i, ptr %i.j, align 8, !tbaa !279
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !280
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !280
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !286  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !278
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 56                  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !287 ; 2 uses
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !289 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 72                ; 3 uses
  %i.ag = icmp ugt i64 %i.y, %i.af
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ah = sub nuw nsw i64 %i.y, %i.af
  tail call void @_ZNSt6vectorI11ArrowSchemaSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.ah)
  br label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.ai = icmp ult i64 %i.y, %i.af
  br i1 %i.ai, label %bb.d, label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %i.y ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.aj
  br i1 %.not.i.i, label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !287
  br label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit

_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #34
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !290
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !290
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !286 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !275 ; 4 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !278 ; 4 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 56                ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !293 ; 2 uses
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !295 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3                 ; 3 uses
  %i.bg = icmp ugt i64 %i.ay, %i.bf
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit
  %i.bh = sub nuw nsw i64 %i.ay, %i.bf
  tail call void @_ZNSt6vectorIP11ArrowSchemaSaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef %i.bh)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !275
  %.pre77 = load ptr, ptr %i.a, align 8, !tbaa !278
  br label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit

bb.f:                                             ; preds = %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit
  %i.bi = icmp ult i64 %i.ay, %i.bf
  br i1 %i.bi, label %bb.g, label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ay ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.ba, %i.bj
  br i1 %.not.i.i48, label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.g
  store ptr %i.bj, ptr %i.az, align 8, !tbaa !293
  br label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit

_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i
  %i.bk = phi ptr [ %.pre77, %bb.e ], [ %i.au, %bb.f ], [ %i.au, %bb.g ], [ %i.au, %_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.bl = phi ptr [ %.pre, %bb.e ], [ %i.at, %bb.f ], [ %i.at, %bb.g ], [ %i.at, %_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i ]
  %.not = icmp eq ptr %i.bl, %i.bk
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit
  %i.bm = load ptr, ptr %i.aq, align 8, !tbaa !286
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIP11ArrowSchemaLb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef 0)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !296
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !278
  %.not73 = icmp eq ptr %i.bq, %i.br
  br i1 %.not73, label %._crit_edge72, label %._crit_edge.i.i.lr.ph

._crit_edge.i.i.lr.ph:                            ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %._crit_edge.i.i

.lr.ph:                                           ; preds = %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit, %.lr.ph
  %.04470 = phi i64 [ %i.cd, %.lr.ph ], [ 0, %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit ] ; 3 uses
  %i.bx = load ptr, ptr %i.q, align 8, !tbaa !286
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb6vectorI11ArrowSchemaLb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 noundef %.04470)
  %i.ca = load ptr, ptr %i.aq, align 8, !tbaa !286
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIP11ArrowSchemaLb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 noundef %.04470)
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !297
  %i.cd = add nuw i64 %.04470, 1                  ; 2 uses
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !278
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = sdiv exact i64 %i.ci, 56
  %i.ck = icmp ult i64 %i.cd, %i.cj
  br i1 %i.ck, label %.lr.ph, label %._crit_edge, !llvm.loop !298

._crit_edge72:                                    ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %._crit_edge
  br i1 %5, label %bb.o, label %bb.p

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.lr.ph, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %.04371 = phi i64 [ 0, %._crit_edge.i.i.lr.ph ], [ %i.fx, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ] ; 5 uses
  %i.cl = load ptr, ptr %i.bp, align 8, !tbaa !296
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.04371
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store ptr %i.bs, ptr %6, align 8, !tbaa !12
  store i64 0, ptr %i.bt, align 8, !tbaa !18
  store i8 0, ptr %i.bs, align 8, !tbaa !20
  invoke void @_ZN6duckdb15InitializeChildER11ArrowSchemaRNS_23DuckDBArrowSchemaHolderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.co = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bs
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.cq = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.04371) ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !18, !noalias !299 ; 13 uses
  %i.ct = add i64 %i.cs, 1                        ; 2 uses
  %i.cu = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ct) #35, !noalias !302 ; 13 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cu, i8 0, i64 %i.ct, i1 false), !noalias !302
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %7 = ptrtoint ptr %i.cu to i64
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !15, !noalias !299 ; 8 uses
  %min.iters.check108 = icmp ult i64 %i.cs, 4
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %7
  %diff.check = icmp ugt i64 %i.cx, -32
  %or.cond = select i1 %min.iters.check108, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check109 = icmp ult i64 %i.cs, 32
  br i1 %min.iters.check109, label %vec.epilog.ph, label %vector.ph110

vector.ph110:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf111 = and i64 %i.cs, 28
  %n.vec112 = and i64 %i.cs, -32                  ; 4 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph110
  %index114 = phi i64 [ 0, %vector.ph110 ], [ %index.next117, %vector.body113 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %index114 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load115 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !20, !noalias !299
  %wide.load116 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !20, !noalias !299
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %index114 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <16 x i8> %wide.load115, ptr %i.da, align 1, !tbaa !20, !noalias !299
  store <16 x i8> %wide.load116, ptr %i.db, align 1, !tbaa !20, !noalias !299
  %index.next117 = add nuw i64 %index114, 32      ; 2 uses
  %i.dc = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.dc, label %middle.block118, label %vector.body113, !llvm.loop !305

middle.block118:                                  ; preds = %vector.body113
  %cmp.n119 = icmp eq i64 %i.cs, %n.vec112
  br i1 %cmp.n119, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block118
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf111, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec112, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec121 = and i64 %i.cs, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 %index122
  %wide.load123 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !20, !noalias !299
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 %index122
  store <4 x i8> %wide.load123, ptr %i.de, align 1, !tbaa !20, !noalias !299
  %index.next124 = add nuw i64 %index122, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next124, %n.vec121
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !306

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %i.cs, %n.vec121
  br i1 %cmp.n125, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec112, %vec.epilog.iter.check ], [ %n.vec121, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.cs, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.08.i.prol = phi i64 [ %i.dj, %vec.epilog.scalar.ph.prol ], [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.08.i.prol
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !20, !noalias !299
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.08.i.prol
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !20, !noalias !299
  %i.dj = add nuw i64 %.08.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !307

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dj, %vec.epilog.scalar.ph.prol ]
  %i.dk = sub i64 %.08.i.ph, %i.cs
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.08.i = phi i64 [ %i.eb, %vec.epilog.scalar.ph ], [ %.08.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.08.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !20, !noalias !299
  %i.do = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.08.i
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !20, !noalias !299
  %i.dp = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !20, !noalias !299
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dp
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !20, !noalias !299
  %i.dt = add nuw i64 %.08.i, 2                   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !20, !noalias !299
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dt
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !20, !noalias !299
  %i.dx = add nuw i64 %.08.i, 3                   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !20, !noalias !299
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dx
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !20, !noalias !299
  %i.eb = add nuw i64 %.08.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.eb, %i.cs
  br i1 %exitcond.not.i.3, label %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %vec.epilog.scalar.ph, !llvm.loop !308

_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block118, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.ec, align 1, !tbaa !20, !noalias !299
  %i.ed = load ptr, ptr %i.bv, align 8, !tbaa !254 ; 6 uses
  %i.ee = load ptr, ptr %i.bw, align 8, !tbaa !257
  %.not.i.i49 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i.i49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ef = ptrtoint ptr %i.cu to i64
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !231
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.eg, ptr %i.bv, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.j:                                             ; preds = %_ZN6duckdb7AddNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.eh = load ptr, ptr %i.bu, align 8, !tbaa !258 ; 10 uses
  %i.ei = ptrtoint ptr %i.ed to i64               ; 3 uses
  %i.ej = ptrtoint ptr %i.eh to i64               ; 3 uses
  %i.ek = sub i64 %i.ei, %i.ej                    ; 3 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775800
  br i1 %i.el, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc50 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58.loopexit.split-lp

.noexc50:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.em = ashr exact i64 %i.ek, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i.i, %i.em ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  %i.ep = call i64 @llvm.umin.i64(i64 %i.en, i64 1152921504606846975)
  %i.eq = select i1 %i.eo, i64 1152921504606846975, i64 %i.ep ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.er = shl nuw nsw i64 %i.eq, 3
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #35
          to label %.noexc51 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit58.loopexit ; 10 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ek
  %i.eu = ptrtoint ptr %i.cu to i64
  store i64 %i.eu, ptr %i.et, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.eh, %i.ed
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc51
  %i.ev = sub i64 %i.ei, %i.ej
  %i.ew = add i64 %i.ev, -8                       ; 2 uses
  %i.ex = lshr i64 %i.ew, 3
  %i.ey = add nuw nsw i64 %i.ex, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ew, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader128, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.es, i64 8
  %i.ez = add i64 %i.ei, -8
  %i.fa = sub i64 %i.ez, %i.ej
  %i.fb = and i64 %i.fa, -8                       ; 2 uses
  %scevgep100 = getelementptr i8, ptr %scevgep, i64 %i.fb
  %scevgep101 = getelementptr i8, ptr %i.eh, i64 8
  %scevgep102 = getelementptr i8, ptr %scevgep101, i64 %i.fb
  %bound0 = icmp ult ptr %i.es, %scevgep102
  %bound1 = icmp ult ptr %i.eh, %scevgep100
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader128, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ey, 4611686018427387900     ; 3 uses
  %i.fc = shl i64 %n.vec, 3                       ; 2 uses
  %i.fd = getelementptr i8, ptr %i.es, i64 %i.fc  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.eh, i64 %i.fc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ff = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.es, i64 %i.ff ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.eh, i64 %i.ff ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.fg = getelementptr i8, ptr %next.gep103, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep103, align 8, !tbaa !231, !alias.scope !314, !noalias !309
  %wide.load104 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !231, !alias.scope !314, !noalias !309
  %i.fh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !317, !noalias !314
  store <2 x i64> %wide.load104, ptr %i.fh, align 8, !tbaa !231, !alias.scope !317, !noalias !314
  %i.fi = getelementptr i8, ptr %next.gep103, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep103, align 8, !tbaa !231, !alias.scope !314, !noalias !309
end_hunk_1
begin_hunk_2_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
bb.o:                                             ; preds = %bb.e
  store ptr @.str.11, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.p:                                             ; preds = %bb.e
  store ptr @.str.12, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.q:                                             ; preds = %bb.e
  store ptr @.str.13, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.r:                                             ; preds = %bb.e, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 35
  %i.o = load i8, ptr %i.n, align 1, !tbaa !36, !range !43, !noundef !44
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.q = tail call noundef zeroext i1 @_ZN6duckdb17SetArrowExtensionERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(512) %4) ; 0 uses
  br label %bb.iq

bb.t:                                             ; preds = %bb.r
  store ptr @.str.14, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.u:                                             ; preds = %bb.e
  store ptr @.str.15, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.v:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 35
  %i.s = load i8, ptr %i.r, align 1, !tbaa !36, !range !43, !noundef !44
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.u = tail call noundef zeroext i1 @_ZN6duckdb17SetArrowExtensionERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(512) %4) ; 0 uses
  br label %bb.iq

bb.x:                                             ; preds = %bb.v
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 34
  %i.w = load i8, ptr %i.v, align 2, !tbaa !322, !range !43, !noundef !44
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.z = load i8, ptr %i.y, align 4, !tbaa !323
  %i.aa = icmp ugt i8 %i.z, 13
  br i1 %i.aa, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr @.str.16, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !324
  %i.ad = icmp eq i8 %i.ac, 1
  br i1 %i.ad, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr @.str.17, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.ac:                                            ; preds = %bb.aa
  store ptr @.str.18, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.ad:                                            ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 34
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !322, !range !43, !noundef !44
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !323
  %i.aj = icmp ugt i8 %i.ai, 13
  br i1 %i.aj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr @.str.16, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !324
  %i.am = icmp eq i8 %i.al, 1
  br i1 %i.am, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr @.str.17, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.ai:                                            ; preds = %bb.ag
  store ptr @.str.18, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.aj:                                            ; preds = %bb.e
  store ptr @.str.19, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.ak:                                            ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 35
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !36, !range !43, !noundef !44
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.aq = tail call noundef zeroext i1 @_ZN6duckdb17SetArrowExtensionERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(512) %4) ; 0 uses
  br label %bb.iq

bb.am:                                            ; preds = %bb.ak
  store ptr @.str.20, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.an:                                            ; preds = %bb.e
  store ptr @.str.20, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.ao:                                            ; preds = %bb.e
  store ptr @.str.21, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.ap:                                            ; preds = %bb.e
  store ptr @.str.22, ptr %1, align 8, !tbaa !274
  br label %bb.iq

bb.aq:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.ar = load ptr, ptr %3, align 8, !tbaa !15, !noalias !325
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !325 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.au, ptr %5, align 8, !tbaa !12, !alias.scope !328
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.av, align 8, !tbaa !18, !alias.scope !328
  store i8 0, ptr %i.au, align 8, !tbaa !20, !alias.scope !328
  %i.aw = add i64 %i.at, 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aw)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !18, !alias.scope !328
  %i.ay = and i64 %i.ax, -4
  %i.az = icmp eq i64 %i.ay, 4611686018427387900
  br i1 %i.az, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ar
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.22, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.as ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !18, !alias.scope !328
  %i.bc = sub i64 4611686018427387903, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.at
  br i1 %i.bd, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #36
          to label %.cont.i.i unwind label %bb.as

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ar, i64 noundef %i.at)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.aq
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !15, !alias.scope !328 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.au
  br i1 %i.bh, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.bg) #37
  br label %common.resume

common.resume:                                    ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688, %bb.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667, %bb.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i692, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.avu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i692 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.avo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688 ], [ %.pn289, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ %.pn283.pn.pn, %bb.db ], [ %i.wd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460 ], [ %.pn269.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540 ], [ %.pn261.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664 ], [ %.pn249726, %bb.hx ], [ %i.asx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit667 ], [ %.pn291.pn729, %bb.ip ], [ %i.avu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit694 ], [ %i.asx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i665 ], [ %i.bf, %bb.as ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bj = load i64, ptr %i.av, align 8, !tbaa !18, !noalias !331 ; 13 uses
  %i.bk = add i64 %i.bj, 1                        ; 2 uses
  %i.bl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #35
          to label %.noexc unwind label %bb.ay    ; 13 uses

.noexc:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bl, i8 0, i64 %i.bk, i1 false), !noalias !334
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %.loopexit, label %iter.check1248

iter.check1248:                                   ; preds = %.noexc
  %31 = ptrtoint ptr %i.bl to i64
  %i.bm = load ptr, ptr %5, align 8, !tbaa !15, !noalias !331 ; 8 uses
  %min.iters.check1234 = icmp ult i64 %i.bj, 4
  %i.bn = ptrtoaddr ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %31
  %diff.check1232 = icmp ugt i64 %i.bo, -32
  %or.cond = select i1 %min.iters.check1234, i1 true, i1 %diff.check1232
  br i1 %or.cond, label %vec.epilog.scalar.ph1249.preheader, label %vector.main.loop.iter.check1235

vector.main.loop.iter.check1235:                  ; preds = %iter.check1248
  %min.iters.check1236 = icmp ult i64 %i.bj, 32
  br i1 %min.iters.check1236, label %vec.epilog.ph1252, label %vector.ph1237

vector.ph1237:                                    ; preds = %vector.main.loop.iter.check1235
  %n.mod.vf1238 = and i64 %i.bj, 28
  %n.vec1239 = and i64 %i.bj, -32                 ; 4 uses
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1237
  %index1241 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1244, %vector.body1240 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index1241 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load1242 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !20, !noalias !331
  %wide.load1243 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !20, !noalias !331
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index1241 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <16 x i8> %wide.load1242, ptr %i.br, align 1, !tbaa !20, !noalias !331
  store <16 x i8> %wide.load1243, ptr %i.bs, align 1, !tbaa !20, !noalias !331
  %index.next1244 = add nuw i64 %index1241, 32    ; 2 uses
  %i.bt = icmp eq i64 %index.next1244, %n.vec1239
  br i1 %i.bt, label %middle.block1245, label %vector.body1240, !llvm.loop !337

middle.block1245:                                 ; preds = %vector.body1240
  %cmp.n1246 = icmp eq i64 %i.bj, %n.vec1239
  br i1 %cmp.n1246, label %.loopexit, label %vec.epilog.iter.check1250

vec.epilog.iter.check1250:                        ; preds = %middle.block1245
  %min.epilog.iters.check1251 = icmp eq i64 %n.mod.vf1238, 0
  br i1 %min.epilog.iters.check1251, label %vec.epilog.scalar.ph1249.preheader, label %vec.epilog.ph1252, !prof !233

vec.epilog.ph1252:                                ; preds = %vector.main.loop.iter.check1235, %vec.epilog.iter.check1250
  %vec.epilog.resume.val1247 = phi i64 [ %n.vec1239, %vec.epilog.iter.check1250 ], [ 0, %vector.main.loop.iter.check1235 ]
  %n.vec1254 = and i64 %i.bj, -4                  ; 3 uses
  br label %vec.epilog.vector.body1255

vec.epilog.vector.body1255:                       ; preds = %vec.epilog.vector.body1255, %vec.epilog.ph1252
  %index1256 = phi i64 [ %vec.epilog.resume.val1247, %vec.epilog.ph1252 ], [ %index.next1258, %vec.epilog.vector.body1255 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index1256
  %wide.load1257 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !20, !noalias !331
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index1256
  store <4 x i8> %wide.load1257, ptr %i.bv, align 1, !tbaa !20, !noalias !331
  %index.next1258 = add nuw i64 %index1256, 4     ; 2 uses
  %i.bw = icmp eq i64 %index.next1258, %n.vec1254
  br i1 %i.bw, label %vec.epilog.middle.block1259, label %vec.epilog.vector.body1255, !llvm.loop !338

vec.epilog.middle.block1259:                      ; preds = %vec.epilog.vector.body1255
  %cmp.n1260 = icmp eq i64 %i.bj, %n.vec1254
  br i1 %cmp.n1260, label %.loopexit, label %vec.epilog.scalar.ph1249.preheader

vec.epilog.scalar.ph1249.preheader:               ; preds = %iter.check1248, %vec.epilog.iter.check1250, %vec.epilog.middle.block1259
  %.08.i.ph = phi i64 [ 0, %iter.check1248 ], [ %n.vec1239, %vec.epilog.iter.check1250 ], [ %n.vec1254, %vec.epilog.middle.block1259 ] ; 3 uses
  %xtraiter1330 = and i64 %i.bj, 3                ; 2 uses
  %lcmp.mod1331.not = icmp eq i64 %xtraiter1330, 0
  br i1 %lcmp.mod1331.not, label %vec.epilog.scalar.ph1249.prol.loopexit, label %vec.epilog.scalar.ph1249.prol

vec.epilog.scalar.ph1249.prol:                    ; preds = %vec.epilog.scalar.ph1249.preheader, %vec.epilog.scalar.ph1249.prol
  %.08.i.prol = phi i64 [ %i.ca, %vec.epilog.scalar.ph1249.prol ], [ %.08.i.ph, %vec.epilog.scalar.ph1249.preheader ] ; 3 uses
  %prol.iter1332 = phi i64 [ %prol.iter1332.next, %vec.epilog.scalar.ph1249.prol ], [ 0, %vec.epilog.scalar.ph1249.preheader ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.08.i.prol
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !20, !noalias !331
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.08.i.prol
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !20, !noalias !331
  %i.ca = add nuw i64 %.08.i.prol, 1              ; 2 uses
  %prol.iter1332.next = add i64 %prol.iter1332, 1 ; 2 uses
  %prol.iter1332.cmp.not = icmp eq i64 %prol.iter1332.next, %xtraiter1330
  br i1 %prol.iter1332.cmp.not, label %vec.epilog.scalar.ph1249.prol.loopexit, label %vec.epilog.scalar.ph1249.prol, !llvm.loop !339

vec.epilog.scalar.ph1249.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1249.prol, %vec.epilog.scalar.ph1249.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %vec.epilog.scalar.ph1249.preheader ], [ %i.ca, %vec.epilog.scalar.ph1249.prol ]
  %i.cb = sub i64 %.08.i.ph, %i.bj
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %.loopexit, label %vec.epilog.scalar.ph1249

vec.epilog.scalar.ph1249:                         ; preds = %vec.epilog.scalar.ph1249.prol.loopexit, %vec.epilog.scalar.ph1249
  %.08.i = phi i64 [ %i.cs, %vec.epilog.scalar.ph1249 ], [ %.08.i.unr, %vec.epilog.scalar.ph1249.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.08.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !20, !noalias !331
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.08.i
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !20, !noalias !331
  %i.cg = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !20, !noalias !331
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !20, !noalias !331
  %i.ck = add nuw i64 %.08.i, 2                   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !20, !noalias !331
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ck
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !20, !noalias !331
  %i.co = add nuw i64 %.08.i, 3                   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !20, !noalias !331
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.co
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !20, !noalias !331
  %i.cs = add nuw i64 %.08.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cs, %i.bj
  br i1 %exitcond.not.i.3, label %.loopexit, label %vec.epilog.scalar.ph1249, !llvm.loop !340

.loopexit:                                        ; preds = %vec.epilog.scalar.ph1249.prol.loopexit, %vec.epilog.scalar.ph1249, %middle.block1245, %vec.epilog.middle.block1259, %.noexc
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.ct, align 1, !tbaa !20, !noalias !331
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !254 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !257
  %.not.i.i = icmp eq ptr %i.cv, %i.cx
  br i1 %.not.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.cy = ptrtoint ptr %i.bl to i64
  store i64 %i.cy, ptr %i.cv, align 8, !tbaa !231
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cz, ptr %i.cu, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.au:                                            ; preds = %.loopexit
  %i.da = load ptr, ptr %i.bi, align 8, !tbaa !258 ; 10 uses
  %i.db = ptrtoint ptr %i.cv to i64               ; 3 uses
  %i.dc = ptrtoint ptr %i.da to i64               ; 3 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 3 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.av, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc295 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit300

.noexc295:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.df = ashr exact i64 %i.dd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 1152921504606846975)
  %i.dj = select i1 %i.dh, i64 1152921504606846975, i64 %i.di ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #35
          to label %.noexc296 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit300 ; 10 uses

.noexc296:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd
  %i.dn = ptrtoint ptr %i.bl to i64
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.da, %i.cv
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc296
  %i.do = sub i64 %i.db, %i.dc
  %i.dp = add i64 %i.do, -8                       ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check1269 = icmp ult i64 %i.dp, 152
  br i1 %min.iters.check1269, label %.lr.ph.i.i.i.i.i.i.i.preheader1293, label %vector.memcheck1262

vector.memcheck1262:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ds = add i64 %i.db, -8
  %i.dt = sub i64 %i.ds, %i.dc
  %i.du = and i64 %i.dt, -8
  %i.dv = add i64 %i.du, 8                        ; 2 uses
  %scevgep1263 = getelementptr i8, ptr %i.dl, i64 %i.dv
  %scevgep1264 = getelementptr i8, ptr %i.da, i64 %i.dv
  %bound01265 = icmp ult ptr %i.dl, %scevgep1264
  %bound11266 = icmp ult ptr %i.da, %scevgep1263
  %found.conflict1267 = and i1 %bound01265, %bound11266
  br i1 %found.conflict1267, label %.lr.ph.i.i.i.i.i.i.i.preheader1293, label %vector.ph1270

vector.ph1270:                                    ; preds = %vector.memcheck1262
  %n.vec1272 = and i64 %i.dr, 4611686018427387900 ; 3 uses
  %i.dw = shl i64 %n.vec1272, 3                   ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dl, i64 %i.dw  ; 2 uses
  %i.dy = getelementptr i8, ptr %i.da, i64 %i.dw
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %vector.ph1270
  %index1274 = phi i64 [ 0, %vector.ph1270 ], [ %index.next1279, %vector.body1273 ] ; 2 uses
  %i.dz = shl i64 %index1274, 3                   ; 2 uses
  %next.gep1275 = getelementptr i8, ptr %i.dl, i64 %i.dz ; 2 uses
  %next.gep1276 = getelementptr i8, ptr %i.da, i64 %i.dz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.ea = getelementptr i8, ptr %next.gep1276, i64 16
  %wide.load1277 = load <2 x i64>, ptr %next.gep1276, align 8, !tbaa !231, !alias.scope !346, !noalias !341
  %wide.load1278 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !231, !alias.scope !346, !noalias !341
  %i.eb = getelementptr i8, ptr %next.gep1275, i64 16
  store <2 x i64> %wide.load1277, ptr %next.gep1275, align 8, !tbaa !231, !alias.scope !349, !noalias !346
  store <2 x i64> %wide.load1278, ptr %i.eb, align 8, !tbaa !231, !alias.scope !349, !noalias !346
  %i.ec = getelementptr i8, ptr %next.gep1276, i64 16
end_hunk_2
begin_hunk_3_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %_ZNSt7__cxx119to_stringEi.exit355
  %i.me = load i64, ptr %i.kr, align 8, !tbaa !20, !noalias !374
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i357: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i368
  %i.mf = phi i64 [ %i.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i368 ]
  %i.mg = icmp ugt i64 %i.ma, %i.mf
  br i1 %i.mg, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i357
  %i.mh = load ptr, ptr %15, align 8, !tbaa !15, !noalias !374
  %i.mi = icmp eq ptr %i.mh, %i.ld
  br i1 %i.mi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i367: ; preds = %bb.cj
  %i.mj = icmp ult i64 %i.lz, 16
  call void @llvm.assume(i1 %i.mj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i361: ; preds = %bb.cj
  %i.mk = load i64, ptr %i.ld, align 8, !tbaa !20, !noalias !374
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i362: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i367
  %i.ml = phi i64 [ %i.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i361 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i367 ]
  %.not.i363 = icmp ugt i64 %i.ma, %i.ml
  br i1 %.not.i363, label %bb.cl, label %.critedge.i364

.critedge.i364:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i362
  %i.mm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.mb, i64 noundef %i.lx)
          to label %.noexc369 unwind label %bb.cx ; 5 uses

.noexc369:                                        ; preds = %.critedge.i364
  %i.mn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.mn, ptr %8, align 8, !tbaa !12, !alias.scope !374
  %i.mo = load ptr, ptr %i.mm, align 8, !tbaa !15 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 16 ; 5 uses
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %bb.ck, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i365

bb.ck:                                            ; preds = %.noexc369
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !18 ; 2 uses
  %i.mt = icmp ult i64 %i.ms, 16
  call void @llvm.assume(i1 %i.mt)
  %i.mu = add nuw nsw i64 %i.ms, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mn, ptr noundef nonnull align 8 dereferenceable(1) %i.mp, i64 %i.mu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i365: ; preds = %.noexc369
  store ptr %i.mo, ptr %8, align 8, !tbaa !15, !alias.scope !374
  %i.mv = load i64, ptr %i.mp, align 8, !tbaa !20
  store i64 %i.mv, ptr %i.mn, align 8, !tbaa !20, !alias.scope !374
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i366: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i365, %bb.ck
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !18
  %i.my = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.mx, ptr %i.my, align 8, !tbaa !18, !alias.scope !374
  store ptr %i.mp, ptr %i.mm, align 8, !tbaa !15
  store i64 0, ptr %i.mw, align 8, !tbaa !18
  store i8 0, ptr %i.mp, align 8, !tbaa !20
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit372

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i362, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i357
  %i.mz = sub i64 4611686018427387903, %i.lx
  %i.na = icmp ult i64 %i.mz, %i.lz
  br i1 %i.na, label %bb.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i358

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #36
          to label %.noexc370 unwind label %bb.cx

.noexc370:                                        ; preds = %bb.cm
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i358: ; preds = %bb.cl
  %i.nb = load ptr, ptr %15, align 8, !tbaa !15, !noalias !374
  %i.nc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.nb, i64 noundef %i.lz)
          to label %.noexc371 unwind label %bb.cx ; 5 uses

.noexc371:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i358
  %i.nd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.nd, ptr %8, align 8, !tbaa !12, !alias.scope !374
  %i.ne = load ptr, ptr %i.nc, align 8, !tbaa !15 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 5 uses
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %bb.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i359

bb.cn:                                            ; preds = %.noexc371
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !18 ; 2 uses
  %i.nj = icmp ult i64 %i.ni, 16
  call void @llvm.assume(i1 %i.nj)
  %i.nk = add nuw nsw i64 %i.ni, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nd, ptr noundef nonnull align 8 dereferenceable(1) %i.nf, i64 %i.nk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i359: ; preds = %.noexc371
  store ptr %i.ne, ptr %8, align 8, !tbaa !15, !alias.scope !374
  %i.nl = load i64, ptr %i.nf, align 8, !tbaa !20
  store i64 %i.nl, ptr %i.nd, align 8, !tbaa !20, !alias.scope !374
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i360

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i360: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i359, %bb.cn
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !18
  %i.no = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.nn, ptr %i.no, align 8, !tbaa !18, !alias.scope !374
  store ptr %i.nf, ptr %i.nc, align 8, !tbaa !15
  store i64 0, ptr %i.nm, align 8, !tbaa !18
  store i8 0, ptr %i.nf, align 8, !tbaa !20
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit372

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit372: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i360, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i366
  %i.np = load ptr, ptr %15, align 8, !tbaa !15   ; 2 uses
  %i.nq = icmp eq ptr %i.np, %i.ld
  br i1 %i.nq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit372
  call void @_ZdlPv(ptr noundef %i.np) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i373
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %i.nr = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.ns = icmp eq ptr %i.nr, %i.kr
  br i1 %i.ns, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375
  call void @_ZdlPv(ptr noundef %i.nr) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376
  %i.nt = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.nv = icmp eq ptr %i.nt, %i.nu
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378
  call void @_ZdlPv(ptr noundef %i.nt) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379
  %i.nw = load ptr, ptr %14, align 8, !tbaa !15   ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.ht
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381
  call void @_ZdlPv(ptr noundef %i.nw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.ny = load ptr, ptr %11, align 8, !tbaa !15   ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.hc
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384
  call void @_ZdlPv(ptr noundef %i.ny) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385
  %i.oa = load ptr, ptr %12, align 8, !tbaa !15   ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.gn
  br i1 %i.ob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387
  call void @_ZdlPv(ptr noundef %i.oa) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388
  %i.oc = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.fk
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390
  call void @_ZdlPv(ptr noundef %i.oc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.og = load i64, ptr %i.of, align 8, !tbaa !18, !noalias !377 ; 13 uses
  %i.oh = add i64 %i.og, 1                        ; 2 uses
  %i.oi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.oh) #35
          to label %.noexc398 unwind label %bb.cy ; 13 uses

.noexc398:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.oi, i8 0, i64 %i.oh, i1 false), !noalias !380
  %.not.i394 = icmp eq i64 %i.og, 0
  br i1 %.not.i394, label %.loopexit743, label %iter.check1195

iter.check1195:                                   ; preds = %.noexc398
  %32 = ptrtoint ptr %i.oi to i64
  %i.oj = load ptr, ptr %8, align 8, !tbaa !15, !noalias !377 ; 8 uses
  %min.iters.check1181 = icmp ult i64 %i.og, 4
  %i.ok = ptrtoaddr ptr %i.oj to i64
  %i.ol = sub i64 %i.ok, %32
  %diff.check1179 = icmp ugt i64 %i.ol, -32
  %or.cond1286 = select i1 %min.iters.check1181, i1 true, i1 %diff.check1179
  br i1 %or.cond1286, label %vec.epilog.scalar.ph1196.preheader, label %vector.main.loop.iter.check1182

vector.main.loop.iter.check1182:                  ; preds = %iter.check1195
  %min.iters.check1183 = icmp ult i64 %i.og, 32
  br i1 %min.iters.check1183, label %vec.epilog.ph1199, label %vector.ph1184

vector.ph1184:                                    ; preds = %vector.main.loop.iter.check1182
  %n.mod.vf1185 = and i64 %i.og, 28
  %n.vec1186 = and i64 %i.og, -32                 ; 4 uses
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1184
  %index1188 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1191, %vector.body1187 ] ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 %index1188 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %wide.load1189 = load <16 x i8>, ptr %i.om, align 1, !tbaa !20, !noalias !377
  %wide.load1190 = load <16 x i8>, ptr %i.on, align 1, !tbaa !20, !noalias !377
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 %index1188 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store <16 x i8> %wide.load1189, ptr %i.oo, align 1, !tbaa !20, !noalias !377
  store <16 x i8> %wide.load1190, ptr %i.op, align 1, !tbaa !20, !noalias !377
  %index.next1191 = add nuw i64 %index1188, 32    ; 2 uses
  %i.oq = icmp eq i64 %index.next1191, %n.vec1186
  br i1 %i.oq, label %middle.block1192, label %vector.body1187, !llvm.loop !383

middle.block1192:                                 ; preds = %vector.body1187
  %cmp.n1193 = icmp eq i64 %i.og, %n.vec1186
  br i1 %cmp.n1193, label %.loopexit743, label %vec.epilog.iter.check1197

vec.epilog.iter.check1197:                        ; preds = %middle.block1192
  %min.epilog.iters.check1198 = icmp eq i64 %n.mod.vf1185, 0
  br i1 %min.epilog.iters.check1198, label %vec.epilog.scalar.ph1196.preheader, label %vec.epilog.ph1199, !prof !233

vec.epilog.ph1199:                                ; preds = %vector.main.loop.iter.check1182, %vec.epilog.iter.check1197
  %vec.epilog.resume.val1194 = phi i64 [ %n.vec1186, %vec.epilog.iter.check1197 ], [ 0, %vector.main.loop.iter.check1182 ]
  %n.vec1201 = and i64 %i.og, -4                  ; 3 uses
  br label %vec.epilog.vector.body1202

vec.epilog.vector.body1202:                       ; preds = %vec.epilog.vector.body1202, %vec.epilog.ph1199
  %index1203 = phi i64 [ %vec.epilog.resume.val1194, %vec.epilog.ph1199 ], [ %index.next1205, %vec.epilog.vector.body1202 ] ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oj, i64 %index1203
  %wide.load1204 = load <4 x i8>, ptr %i.or, align 1, !tbaa !20, !noalias !377
  %i.os = getelementptr inbounds nuw i8, ptr %i.oi, i64 %index1203
  store <4 x i8> %wide.load1204, ptr %i.os, align 1, !tbaa !20, !noalias !377
  %index.next1205 = add nuw i64 %index1203, 4     ; 2 uses
  %i.ot = icmp eq i64 %index.next1205, %n.vec1201
  br i1 %i.ot, label %vec.epilog.middle.block1206, label %vec.epilog.vector.body1202, !llvm.loop !384

vec.epilog.middle.block1206:                      ; preds = %vec.epilog.vector.body1202
  %cmp.n1207 = icmp eq i64 %i.og, %n.vec1201
  br i1 %cmp.n1207, label %.loopexit743, label %vec.epilog.scalar.ph1196.preheader

vec.epilog.scalar.ph1196.preheader:               ; preds = %iter.check1195, %vec.epilog.iter.check1197, %vec.epilog.middle.block1206
  %.08.i396.ph = phi i64 [ 0, %iter.check1195 ], [ %n.vec1186, %vec.epilog.iter.check1197 ], [ %n.vec1201, %vec.epilog.middle.block1206 ] ; 3 uses
  %xtraiter1327 = and i64 %i.og, 3                ; 2 uses
  %lcmp.mod1328.not = icmp eq i64 %xtraiter1327, 0
  br i1 %lcmp.mod1328.not, label %vec.epilog.scalar.ph1196.prol.loopexit, label %vec.epilog.scalar.ph1196.prol

vec.epilog.scalar.ph1196.prol:                    ; preds = %vec.epilog.scalar.ph1196.preheader, %vec.epilog.scalar.ph1196.prol
  %.08.i396.prol = phi i64 [ %i.ox, %vec.epilog.scalar.ph1196.prol ], [ %.08.i396.ph, %vec.epilog.scalar.ph1196.preheader ] ; 3 uses
  %prol.iter1329 = phi i64 [ %prol.iter1329.next, %vec.epilog.scalar.ph1196.prol ], [ 0, %vec.epilog.scalar.ph1196.preheader ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.08.i396.prol
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !20, !noalias !377
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oi, i64 %.08.i396.prol
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !20, !noalias !377
  %i.ox = add nuw i64 %.08.i396.prol, 1           ; 2 uses
  %prol.iter1329.next = add i64 %prol.iter1329, 1 ; 2 uses
  %prol.iter1329.cmp.not = icmp eq i64 %prol.iter1329.next, %xtraiter1327
  br i1 %prol.iter1329.cmp.not, label %vec.epilog.scalar.ph1196.prol.loopexit, label %vec.epilog.scalar.ph1196.prol, !llvm.loop !385

vec.epilog.scalar.ph1196.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1196.prol, %vec.epilog.scalar.ph1196.preheader
  %.08.i396.unr = phi i64 [ %.08.i396.ph, %vec.epilog.scalar.ph1196.preheader ], [ %i.ox, %vec.epilog.scalar.ph1196.prol ]
  %i.oy = sub i64 %.08.i396.ph, %i.og
  %i.oz = icmp ugt i64 %i.oy, -4
  br i1 %i.oz, label %.loopexit743, label %vec.epilog.scalar.ph1196

vec.epilog.scalar.ph1196:                         ; preds = %vec.epilog.scalar.ph1196.prol.loopexit, %vec.epilog.scalar.ph1196
  %.08.i396 = phi i64 [ %i.pp, %vec.epilog.scalar.ph1196 ], [ %.08.i396.unr, %vec.epilog.scalar.ph1196.prol.loopexit ] ; 6 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.08.i396
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !20, !noalias !377
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oi, i64 %.08.i396
  store i8 %i.pb, ptr %i.pc, align 1, !tbaa !20, !noalias !377
  %i.pd = add nuw i64 %.08.i396, 1                ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !20, !noalias !377
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.pd
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !20, !noalias !377
  %i.ph = add nuw i64 %.08.i396, 2                ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !20, !noalias !377
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ph
  store i8 %i.pj, ptr %i.pk, align 1, !tbaa !20, !noalias !377
  %i.pl = add nuw i64 %.08.i396, 3                ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !20, !noalias !377
  %i.po = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.pl
  store i8 %i.pn, ptr %i.po, align 1, !tbaa !20, !noalias !377
  %i.pp = add nuw i64 %.08.i396, 4                ; 2 uses
  %exitcond.not.i397.3 = icmp eq i64 %i.pp, %i.og
  br i1 %exitcond.not.i397.3, label %.loopexit743, label %vec.epilog.scalar.ph1196, !llvm.loop !386

.loopexit743:                                     ; preds = %vec.epilog.scalar.ph1196.prol.loopexit, %vec.epilog.scalar.ph1196, %middle.block1192, %vec.epilog.middle.block1206, %.noexc398
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.og
  store i8 0, ptr %i.pq, align 1, !tbaa !20, !noalias !377
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !254 ; 6 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !257
  %.not.i.i400 = icmp eq ptr %i.ps, %i.pu
  br i1 %.not.i.i400, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.loopexit743
  %i.pv = ptrtoint ptr %i.oi to i64
  store i64 %i.pv, ptr %i.ps, align 8, !tbaa !231
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store ptr %i.pw, ptr %i.pr, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit418

bb.cp:                                            ; preds = %.loopexit743
  %i.px = load ptr, ptr %i.oe, align 8, !tbaa !258 ; 10 uses
  %i.py = ptrtoint ptr %i.ps to i64               ; 3 uses
  %i.pz = ptrtoint ptr %i.px to i64               ; 3 uses
  %i.qa = sub i64 %i.py, %i.pz                    ; 3 uses
  %i.qb = icmp eq i64 %i.qa, 9223372036854775800
  br i1 %i.qb, label %bb.cq, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i401

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc413 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit445

.noexc413:                                        ; preds = %bb.cq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i401: ; preds = %bb.cp
  %i.qc = ashr exact i64 %i.qa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i402 = call i64 @llvm.umax.i64(i64 %i.qc, i64 1)
  %i.qd = add nsw i64 %.sroa.speculated.i.i.i.i402, %i.qc ; 2 uses
  %i.qe = icmp ult i64 %i.qd, %i.qc
  %i.qf = call i64 @llvm.umin.i64(i64 %i.qd, i64 1152921504606846975)
  %i.qg = select i1 %i.qe, i64 1152921504606846975, i64 %i.qf ; 3 uses
  %.not.i.i.i.i403 = icmp ne i64 %i.qg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i403)
  %i.qh = shl nuw nsw i64 %i.qg, 3
  %i.qi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qh) #35
          to label %.noexc414 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit445 ; 10 uses

.noexc414:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i401
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qa
  %i.qk = ptrtoint ptr %i.oi to i64
  store i64 %i.qk, ptr %i.qj, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i404 = icmp eq ptr %i.px, %i.ps
  br i1 %.not10.i.i.i.i.i.i.i404, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i409, label %.lr.ph.i.i.i.i.i.i.i405.preheader

.lr.ph.i.i.i.i.i.i.i405.preheader:                ; preds = %.noexc414
  %i.ql = sub i64 %i.py, %i.pz
  %i.qm = add i64 %i.ql, -8                       ; 2 uses
  %i.qn = lshr i64 %i.qm, 3
  %i.qo = add nuw nsw i64 %i.qn, 1                ; 2 uses
  %min.iters.check1216 = icmp ult i64 %i.qm, 152
  br i1 %min.iters.check1216, label %.lr.ph.i.i.i.i.i.i.i405.preheader1294, label %vector.memcheck1209

vector.memcheck1209:                              ; preds = %.lr.ph.i.i.i.i.i.i.i405.preheader
  %i.qp = add i64 %i.py, -8
  %i.qq = sub i64 %i.qp, %i.pz
  %i.qr = and i64 %i.qq, -8
  %i.qs = add i64 %i.qr, 8                        ; 2 uses
  %scevgep1210 = getelementptr i8, ptr %i.qi, i64 %i.qs
  %scevgep1211 = getelementptr i8, ptr %i.px, i64 %i.qs
  %bound01212 = icmp ult ptr %i.qi, %scevgep1211
  %bound11213 = icmp ult ptr %i.px, %scevgep1210
  %found.conflict1214 = and i1 %bound01212, %bound11213
  br i1 %found.conflict1214, label %.lr.ph.i.i.i.i.i.i.i405.preheader1294, label %vector.ph1217

vector.ph1217:                                    ; preds = %vector.memcheck1209
  %n.vec1219 = and i64 %i.qo, 4611686018427387900 ; 3 uses
  %i.qt = shl i64 %n.vec1219, 3                   ; 2 uses
  %i.qu = getelementptr i8, ptr %i.qi, i64 %i.qt  ; 2 uses
  %i.qv = getelementptr i8, ptr %i.px, i64 %i.qt
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %vector.ph1217
  %index1221 = phi i64 [ 0, %vector.ph1217 ], [ %index.next1226, %vector.body1220 ] ; 2 uses
  %i.qw = shl i64 %index1221, 3                   ; 2 uses
  %next.gep1222 = getelementptr i8, ptr %i.qi, i64 %i.qw ; 2 uses
  %next.gep1223 = getelementptr i8, ptr %i.px, i64 %i.qw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.qx = getelementptr i8, ptr %next.gep1223, i64 16
  %wide.load1224 = load <2 x i64>, ptr %next.gep1223, align 8, !tbaa !231, !alias.scope !392, !noalias !387
  %wide.load1225 = load <2 x i64>, ptr %i.qx, align 8, !tbaa !231, !alias.scope !392, !noalias !387
  %i.qy = getelementptr i8, ptr %next.gep1222, i64 16
  store <2 x i64> %wide.load1224, ptr %next.gep1222, align 8, !tbaa !231, !alias.scope !395, !noalias !392
  store <2 x i64> %wide.load1225, ptr %i.qy, align 8, !tbaa !231, !alias.scope !395, !noalias !392
  %i.qz = getelementptr i8, ptr %next.gep1223, i64 16
end_hunk_3
begin_hunk_4_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  %i.vv = icmp eq ptr %i.vu, %i.vs
  br i1 %i.vv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455: ; preds = %bb.ec
  call void @_ZdlPv(ptr noundef %i.vu) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i455
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  %i.vw = load ptr, ptr %i.uo, align 8, !tbaa !286
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.vy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIP11ArrowSchemaLb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.vx, i64 noundef 0) ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.vy, ptr %i.vz, align 8, !tbaa !296
  %i.wa = load ptr, ptr %i.vy, align 8, !tbaa !297 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  store ptr @.str.8, ptr %i.wb, align 8, !tbaa !271
  %i.wc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.wa, ptr noundef nonnull align 8 dereferenceable(24) %i.wc, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(512) %4)
  br label %bb.iq

bb.ed:                                            ; preds = %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE9push_backEOS1_.exit
  %i.wd = landingpad { ptr, i32 }
          cleanup
  %i.we = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.wf = icmp eq ptr %i.we, %i.vs
  br i1 %i.wf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458: ; preds = %bb.ed
  call void @_ZdlPv(ptr noundef %i.we) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i458
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %common.resume

bb.ee:                                            ; preds = %bb.e
  tail call void @_ZN6duckdb20SetArrowStructFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextEb(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(512) %4, i1 noundef zeroext false)
  br label %bb.iq

bb.ef:                                            ; preds = %bb.e
  %i.wg = tail call noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %2) ; 5 uses
  %i.wh = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ArrayType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.wi = icmp ult i64 %i.wg, 10
  br i1 %i.wi, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i461

.lr.ph.i.i461:                                    ; preds = %bb.ef, %bb.el
  %.02229.i.i = phi i64 [ %i.wp, %bb.el ], [ %i.wg, %bb.ef ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.wq, %bb.el ], [ 1, %bb.ef ] ; 4 uses
  %i.wj = icmp ult i64 %.02229.i.i, 100
  br i1 %i.wj, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.lr.ph.i.i461
  %i.wk = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.eh:                                            ; preds = %.lr.ph.i.i461
  %i.wl = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.wl, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.wm = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.ej:                                            ; preds = %bb.eh
  %i.wn = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.wn, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.wo = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.el:                                            ; preds = %bb.ej
  %i.wp = udiv i64 %.02229.i.i, 10000
  %i.wq = add i32 %.02328.i.i, 4                  ; 2 uses
  %i.wr = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.wr, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i461, !llvm.loop !404

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.el, %bb.ek, %bb.ei, %bb.eg, %bb.ef
  %.0.i.i462 = phi i32 [ %i.wo, %bb.ek ], [ %i.wk, %bb.eg ], [ %i.wm, %bb.ei ], [ 1, %bb.ef ], [ %i.wq, %bb.el ]
  %i.ws = zext i32 %.0.i.i462 to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.wt, ptr %18, align 8, !tbaa !12, !alias.scope !401
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.ws, i8 noundef signext 0)
  %i.wu = load ptr, ptr %18, align 8, !tbaa !15, !alias.scope !401 ; 4 uses
  %i.wv = icmp ugt i64 %i.wg, 99
  br i1 %i.wv, label %.lr.ph.preheader.i.i466, label %._crit_edge.i.i463

.lr.ph.preheader.i.i466:                          ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ww = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !18, !alias.scope !401
  %i.wy = trunc i64 %i.wx to i32
  %i.wz = add i32 %i.wy, -1
  br label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %.lr.ph.i6.i, %.lr.ph.preheader.i.i466
  %.020.i.i467 = phi i64 [ %i.xc, %.lr.ph.i6.i ], [ %i.wg, %.lr.ph.preheader.i.i466 ] ; 3 uses
  %.01819.i.i468 = phi i32 [ %i.xm, %.lr.ph.i6.i ], [ %i.wz, %.lr.ph.preheader.i.i466 ] ; 3 uses
  %i.xa = urem i64 %.020.i.i467, 100
  %i.xb = shl nuw nsw i64 %i.xa, 1
  %i.xc = udiv i64 %.020.i.i467, 100              ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.xb ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 1
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !20, !noalias !401
  %i.xg = zext i32 %.01819.i.i468 to i64
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.xg
  store i8 %i.xf, ptr %i.xh, align 1, !tbaa !20
  %i.xi = load i8, ptr %i.xd, align 2, !tbaa !20, !noalias !401
  %i.xj = add i32 %.01819.i.i468, -1
  %i.xk = zext i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.xk
  store i8 %i.xi, ptr %i.xl, align 1, !tbaa !20
  %i.xm = add i32 %.01819.i.i468, -2
  %i.xn = icmp ugt i64 %.020.i.i467, 9999
  br i1 %i.xn, label %.lr.ph.i6.i, label %._crit_edge.i.i463, !llvm.loop !405

._crit_edge.i.i463:                               ; preds = %.lr.ph.i6.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i464 = phi i64 [ %i.wg, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.xc, %.lr.ph.i6.i ] ; 3 uses
  %i.xo = icmp samesign ugt i64 %.0.lcssa.i.i464, 9
  br i1 %i.xo, label %bb.em, label %bb.en

bb.em:                                            ; preds = %._crit_edge.i.i463
  %i.xp = shl nuw nsw i64 %.0.lcssa.i.i464, 1
  %i.xq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.xp ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 1
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !20, !noalias !401
  %i.xt = getelementptr inbounds nuw i8, ptr %i.wu, i64 1
  store i8 %i.xs, ptr %i.xt, align 1, !tbaa !20
  %i.xu = load i8, ptr %i.xq, align 2, !tbaa !20, !noalias !401
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.en:                                            ; preds = %._crit_edge.i.i463
  %i.xv = trunc nuw nsw i64 %.0.lcssa.i.i464 to i8
  %i.xw = or disjoint i8 %i.xv, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.em, %bb.en
  %storemerge.i.i465 = phi i8 [ %i.xw, %bb.en ], [ %i.xu, %bb.em ]
  store i8 %storemerge.i.i465, ptr %i.wu, align 1, !tbaa !20
  %i.xx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.38, i64 noundef 3)
          to label %.noexc473 unwind label %bb.fj ; 6 uses

.noexc473:                                        ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.xy = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.xy, ptr %17, align 8, !tbaa !12, !alias.scope !406
  %i.xz = load ptr, ptr %i.xx, align 8, !tbaa !15 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 16 ; 5 uses
  %i.yb = icmp eq ptr %i.xz, %i.ya
  br i1 %i.yb, label %bb.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

bb.eo:                                            ; preds = %.noexc473
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !18 ; 3 uses
  %i.ye = icmp ult i64 %i.yd, 16
  call void @llvm.assume(i1 %i.ye)
  %i.yf = add nuw nsw i64 %i.yd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.xy, ptr noundef nonnull align 8 dereferenceable(1) %i.ya, i64 %i.yf, i1 false)
  br label %bb.ep

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %.noexc473
  store ptr %i.xz, ptr %17, align 8, !tbaa !15, !alias.scope !406
  %i.yg = load i64, ptr %i.ya, align 8, !tbaa !20
  store i64 %i.yg, ptr %i.xy, align 8, !tbaa !20, !alias.scope !406
  %.phi.trans.insert.i470 = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %.pre.i471 = load i64, ptr %.phi.trans.insert.i470, align 8, !tbaa !18
  br label %bb.ep

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469, %bb.eo
  %i.yh = phi i64 [ %i.yd, %bb.eo ], [ %.pre.i471, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469 ]
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.yj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.yh, ptr %i.yj, align 8, !tbaa !18, !alias.scope !406
  store ptr %i.ya, ptr %i.xx, align 8, !tbaa !15
  store i64 0, ptr %i.yi, align 8, !tbaa !18
  store i8 0, ptr %i.ya, align 8, !tbaa !20
  %i.yk = load ptr, ptr %18, align 8, !tbaa !15   ; 2 uses
  %i.yl = icmp eq ptr %i.yk, %i.wt
  br i1 %i.yl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %bb.ep
  call void @_ZdlPv(ptr noundef %i.yk) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.yn = load i64, ptr %i.yj, align 8, !tbaa !18, !noalias !409 ; 13 uses
  %i.yo = add i64 %i.yn, 1                        ; 2 uses
  %i.yp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yo) #35
          to label %.noexc482 unwind label %bb.fk ; 13 uses

.noexc482:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yp, i8 0, i64 %i.yo, i1 false), !noalias !412
  %.not.i478 = icmp eq i64 %i.yn, 0
  br i1 %.not.i478, label %.loopexit744, label %iter.check1142

iter.check1142:                                   ; preds = %.noexc482
  %33 = ptrtoint ptr %i.yp to i64
  %i.yq = load ptr, ptr %17, align 8, !tbaa !15, !noalias !409 ; 8 uses
  %min.iters.check1128 = icmp ult i64 %i.yn, 4
  %i.yr = ptrtoaddr ptr %i.yq to i64
  %i.ys = sub i64 %i.yr, %33
  %diff.check1126 = icmp ugt i64 %i.ys, -32
  %or.cond1288 = select i1 %min.iters.check1128, i1 true, i1 %diff.check1126
  br i1 %or.cond1288, label %vec.epilog.scalar.ph1143.preheader, label %vector.main.loop.iter.check1129

vector.main.loop.iter.check1129:                  ; preds = %iter.check1142
  %min.iters.check1130 = icmp ult i64 %i.yn, 32
  br i1 %min.iters.check1130, label %vec.epilog.ph1146, label %vector.ph1131

vector.ph1131:                                    ; preds = %vector.main.loop.iter.check1129
  %n.mod.vf1132 = and i64 %i.yn, 28
  %n.vec1133 = and i64 %i.yn, -32                 ; 4 uses
  br label %vector.body1134

vector.body1134:                                  ; preds = %vector.body1134, %vector.ph1131
  %index1135 = phi i64 [ 0, %vector.ph1131 ], [ %index.next1138, %vector.body1134 ] ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 %index1135 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %wide.load1136 = load <16 x i8>, ptr %i.yt, align 1, !tbaa !20, !noalias !409
  %wide.load1137 = load <16 x i8>, ptr %i.yu, align 1, !tbaa !20, !noalias !409
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yp, i64 %index1135 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  store <16 x i8> %wide.load1136, ptr %i.yv, align 1, !tbaa !20, !noalias !409
  store <16 x i8> %wide.load1137, ptr %i.yw, align 1, !tbaa !20, !noalias !409
  %index.next1138 = add nuw i64 %index1135, 32    ; 2 uses
  %i.yx = icmp eq i64 %index.next1138, %n.vec1133
  br i1 %i.yx, label %middle.block1139, label %vector.body1134, !llvm.loop !415

middle.block1139:                                 ; preds = %vector.body1134
  %cmp.n1140 = icmp eq i64 %i.yn, %n.vec1133
  br i1 %cmp.n1140, label %.loopexit744, label %vec.epilog.iter.check1144

vec.epilog.iter.check1144:                        ; preds = %middle.block1139
  %min.epilog.iters.check1145 = icmp eq i64 %n.mod.vf1132, 0
  br i1 %min.epilog.iters.check1145, label %vec.epilog.scalar.ph1143.preheader, label %vec.epilog.ph1146, !prof !233

vec.epilog.ph1146:                                ; preds = %vector.main.loop.iter.check1129, %vec.epilog.iter.check1144
  %vec.epilog.resume.val1141 = phi i64 [ %n.vec1133, %vec.epilog.iter.check1144 ], [ 0, %vector.main.loop.iter.check1129 ]
  %n.vec1148 = and i64 %i.yn, -4                  ; 3 uses
  br label %vec.epilog.vector.body1149

vec.epilog.vector.body1149:                       ; preds = %vec.epilog.vector.body1149, %vec.epilog.ph1146
  %index1150 = phi i64 [ %vec.epilog.resume.val1141, %vec.epilog.ph1146 ], [ %index.next1152, %vec.epilog.vector.body1149 ] ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yq, i64 %index1150
  %wide.load1151 = load <4 x i8>, ptr %i.yy, align 1, !tbaa !20, !noalias !409
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yp, i64 %index1150
  store <4 x i8> %wide.load1151, ptr %i.yz, align 1, !tbaa !20, !noalias !409
  %index.next1152 = add nuw i64 %index1150, 4     ; 2 uses
  %i.za = icmp eq i64 %index.next1152, %n.vec1148
  br i1 %i.za, label %vec.epilog.middle.block1153, label %vec.epilog.vector.body1149, !llvm.loop !416

vec.epilog.middle.block1153:                      ; preds = %vec.epilog.vector.body1149
  %cmp.n1154 = icmp eq i64 %i.yn, %n.vec1148
  br i1 %cmp.n1154, label %.loopexit744, label %vec.epilog.scalar.ph1143.preheader

vec.epilog.scalar.ph1143.preheader:               ; preds = %iter.check1142, %vec.epilog.iter.check1144, %vec.epilog.middle.block1153
  %.08.i480.ph = phi i64 [ 0, %iter.check1142 ], [ %n.vec1133, %vec.epilog.iter.check1144 ], [ %n.vec1148, %vec.epilog.middle.block1153 ] ; 3 uses
  %xtraiter1324 = and i64 %i.yn, 3                ; 2 uses
  %lcmp.mod1325.not = icmp eq i64 %xtraiter1324, 0
  br i1 %lcmp.mod1325.not, label %vec.epilog.scalar.ph1143.prol.loopexit, label %vec.epilog.scalar.ph1143.prol

vec.epilog.scalar.ph1143.prol:                    ; preds = %vec.epilog.scalar.ph1143.preheader, %vec.epilog.scalar.ph1143.prol
  %.08.i480.prol = phi i64 [ %i.ze, %vec.epilog.scalar.ph1143.prol ], [ %.08.i480.ph, %vec.epilog.scalar.ph1143.preheader ] ; 3 uses
  %prol.iter1326 = phi i64 [ %prol.iter1326.next, %vec.epilog.scalar.ph1143.prol ], [ 0, %vec.epilog.scalar.ph1143.preheader ]
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yq, i64 %.08.i480.prol
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !20, !noalias !409
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yp, i64 %.08.i480.prol
  store i8 %i.zc, ptr %i.zd, align 1, !tbaa !20, !noalias !409
  %i.ze = add nuw i64 %.08.i480.prol, 1           ; 2 uses
  %prol.iter1326.next = add i64 %prol.iter1326, 1 ; 2 uses
  %prol.iter1326.cmp.not = icmp eq i64 %prol.iter1326.next, %xtraiter1324
  br i1 %prol.iter1326.cmp.not, label %vec.epilog.scalar.ph1143.prol.loopexit, label %vec.epilog.scalar.ph1143.prol, !llvm.loop !417

vec.epilog.scalar.ph1143.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1143.prol, %vec.epilog.scalar.ph1143.preheader
  %.08.i480.unr = phi i64 [ %.08.i480.ph, %vec.epilog.scalar.ph1143.preheader ], [ %i.ze, %vec.epilog.scalar.ph1143.prol ]
  %i.zf = sub i64 %.08.i480.ph, %i.yn
  %i.zg = icmp ugt i64 %i.zf, -4
  br i1 %i.zg, label %.loopexit744, label %vec.epilog.scalar.ph1143

vec.epilog.scalar.ph1143:                         ; preds = %vec.epilog.scalar.ph1143.prol.loopexit, %vec.epilog.scalar.ph1143
  %.08.i480 = phi i64 [ %i.zw, %vec.epilog.scalar.ph1143 ], [ %.08.i480.unr, %vec.epilog.scalar.ph1143.prol.loopexit ] ; 6 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yq, i64 %.08.i480
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !20, !noalias !409
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yp, i64 %.08.i480
  store i8 %i.zi, ptr %i.zj, align 1, !tbaa !20, !noalias !409
  %i.zk = add nuw i64 %.08.i480, 1                ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.zk
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !20, !noalias !409
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.zk
  store i8 %i.zm, ptr %i.zn, align 1, !tbaa !20, !noalias !409
  %i.zo = add nuw i64 %.08.i480, 2                ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.zo
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !20, !noalias !409
  %i.zr = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.zo
  store i8 %i.zq, ptr %i.zr, align 1, !tbaa !20, !noalias !409
  %i.zs = add nuw i64 %.08.i480, 3                ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.zs
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !20, !noalias !409
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.zs
  store i8 %i.zu, ptr %i.zv, align 1, !tbaa !20, !noalias !409
  %i.zw = add nuw i64 %.08.i480, 4                ; 2 uses
  %exitcond.not.i481.3 = icmp eq i64 %i.zw, %i.yn
  br i1 %exitcond.not.i481.3, label %.loopexit744, label %vec.epilog.scalar.ph1143, !llvm.loop !418

.loopexit744:                                     ; preds = %vec.epilog.scalar.ph1143.prol.loopexit, %vec.epilog.scalar.ph1143, %middle.block1139, %vec.epilog.middle.block1153, %.noexc482
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.yn
  store i8 0, ptr %i.zx, align 1, !tbaa !20, !noalias !409
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !254 ; 6 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !257
  %.not.i.i484 = icmp eq ptr %i.zz, %i.aab
  br i1 %.not.i.i484, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %.loopexit744
  %i.aac = ptrtoint ptr %i.yp to i64
  store i64 %i.aac, ptr %i.zz, align 8, !tbaa !231
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  store ptr %i.aad, ptr %i.zy, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit502

bb.er:                                            ; preds = %.loopexit744
  %i.aae = load ptr, ptr %i.ym, align 8, !tbaa !258 ; 10 uses
  %i.aaf = ptrtoint ptr %i.zz to i64              ; 3 uses
  %i.aag = ptrtoint ptr %i.aae to i64             ; 3 uses
  %i.aah = sub i64 %i.aaf, %i.aag                 ; 3 uses
  %i.aai = icmp eq i64 %i.aah, 9223372036854775800
  br i1 %i.aai, label %bb.es, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i485

bb.es:                                            ; preds = %bb.er
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc497 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit534

.noexc497:                                        ; preds = %bb.es
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i485: ; preds = %bb.er
  %i.aaj = ashr exact i64 %i.aah, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i486 = call i64 @llvm.umax.i64(i64 %i.aaj, i64 1)
  %i.aak = add nsw i64 %.sroa.speculated.i.i.i.i486, %i.aaj ; 2 uses
  %i.aal = icmp ult i64 %i.aak, %i.aaj
  %i.aam = call i64 @llvm.umin.i64(i64 %i.aak, i64 1152921504606846975)
  %i.aan = select i1 %i.aal, i64 1152921504606846975, i64 %i.aam ; 3 uses
  %.not.i.i.i.i487 = icmp ne i64 %i.aan, 0
  call void @llvm.assume(i1 %.not.i.i.i.i487)
  %i.aao = shl nuw nsw i64 %i.aan, 3
  %i.aap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aao) #35
          to label %.noexc498 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit534 ; 10 uses

.noexc498:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i485
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aah
  %i.aar = ptrtoint ptr %i.yp to i64
  store i64 %i.aar, ptr %i.aaq, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i488 = icmp eq ptr %i.aae, %i.zz
  br i1 %.not10.i.i.i.i.i.i.i488, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493, label %.lr.ph.i.i.i.i.i.i.i489.preheader

.lr.ph.i.i.i.i.i.i.i489.preheader:                ; preds = %.noexc498
  %i.aas = sub i64 %i.aaf, %i.aag
  %i.aat = add i64 %i.aas, -8                     ; 2 uses
  %i.aau = lshr i64 %i.aat, 3
  %i.aav = add nuw nsw i64 %i.aau, 1              ; 2 uses
  %min.iters.check1163 = icmp ult i64 %i.aat, 152
  br i1 %min.iters.check1163, label %.lr.ph.i.i.i.i.i.i.i489.preheader1296, label %vector.memcheck1156

vector.memcheck1156:                              ; preds = %.lr.ph.i.i.i.i.i.i.i489.preheader
  %i.aaw = add i64 %i.aaf, -8
  %i.aax = sub i64 %i.aaw, %i.aag
  %i.aay = and i64 %i.aax, -8
  %i.aaz = add i64 %i.aay, 8                      ; 2 uses
  %scevgep1157 = getelementptr i8, ptr %i.aap, i64 %i.aaz
  %scevgep1158 = getelementptr i8, ptr %i.aae, i64 %i.aaz
  %bound01159 = icmp ult ptr %i.aap, %scevgep1158
  %bound11160 = icmp ult ptr %i.aae, %scevgep1157
  %found.conflict1161 = and i1 %bound01159, %bound11160
  br i1 %found.conflict1161, label %.lr.ph.i.i.i.i.i.i.i489.preheader1296, label %vector.ph1164

vector.ph1164:                                    ; preds = %vector.memcheck1156
  %n.vec1166 = and i64 %i.aav, 4611686018427387900 ; 3 uses
  %i.aba = shl i64 %n.vec1166, 3                  ; 2 uses
  %i.abb = getelementptr i8, ptr %i.aap, i64 %i.aba ; 2 uses
  %i.abc = getelementptr i8, ptr %i.aae, i64 %i.aba
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1164
  %index1168 = phi i64 [ 0, %vector.ph1164 ], [ %index.next1173, %vector.body1167 ] ; 2 uses
  %i.abd = shl i64 %index1168, 3                  ; 2 uses
  %next.gep1169 = getelementptr i8, ptr %i.aap, i64 %i.abd ; 2 uses
  %next.gep1170 = getelementptr i8, ptr %i.aae, i64 %i.abd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.abe = getelementptr i8, ptr %next.gep1170, i64 16
  %wide.load1171 = load <2 x i64>, ptr %next.gep1170, align 8, !tbaa !231, !alias.scope !424, !noalias !419
  %wide.load1172 = load <2 x i64>, ptr %i.abe, align 8, !tbaa !231, !alias.scope !424, !noalias !419
  %i.abf = getelementptr i8, ptr %next.gep1169, i64 16
  store <2 x i64> %wide.load1171, ptr %next.gep1169, align 8, !tbaa !231, !alias.scope !427, !noalias !424
  store <2 x i64> %wide.load1172, ptr %i.abf, align 8, !tbaa !231, !alias.scope !427, !noalias !424
  %i.abg = getelementptr i8, ptr %next.gep1170, i64 16
end_hunk_4
begin_hunk_5_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a

bb.fr:                                            ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aff, i8 0, i64 24, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.afd, ptr noundef nonnull align 8 dereferenceable(24) %i.afe) #34
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.afh = load i64, ptr %i.afg, align 8, !tbaa !280
  %i.afi = add i64 %i.afh, 1
  store i64 %i.afi, ptr %i.afg, align 8, !tbaa !280
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !286 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 16 ; 2 uses
  %i.afm = load ptr, ptr %i.aeu, align 8, !tbaa !275
  %i.afn = load ptr, ptr %21, align 8, !tbaa !278
  %i.afo = ptrtoint ptr %i.afm to i64
  %i.afp = ptrtoint ptr %i.afn to i64
  %i.afq = sub i64 %i.afo, %i.afp
  %i.afr = sdiv exact i64 %i.afq, 56              ; 4 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afk, i64 24 ; 2 uses
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !287 ; 2 uses
  %i.afu = load ptr, ptr %i.afl, align 8, !tbaa !289 ; 2 uses
  %i.afv = ptrtoint ptr %i.aft to i64
  %i.afw = ptrtoint ptr %i.afu to i64
  %i.afx = sub i64 %i.afv, %i.afw
  %i.afy = sdiv exact i64 %i.afx, 72              ; 3 uses
  %i.afz = icmp ugt i64 %i.afr, %i.afy
  br i1 %i.afz, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.aga = sub nuw nsw i64 %i.afr, %i.afy
  invoke void @_ZNSt6vectorI11ArrowSchemaSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.afl, i64 noundef %i.aga)
          to label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit551 unwind label %bb.ga

bb.ft:                                            ; preds = %bb.fr
  %i.agb = icmp ult i64 %i.afr, %i.afy
  br i1 %i.agb, label %bb.fu, label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit551

bb.fu:                                            ; preds = %bb.ft
  %i.agc = getelementptr inbounds nuw [72 x i8], ptr %i.afu, i64 %i.afr ; 2 uses
  %.not.i.i548 = icmp eq ptr %i.aft, %i.agc
  br i1 %.not.i.i548, label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit551, label %_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i549

_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i549: ; preds = %bb.fu
  store ptr %i.agc, ptr %i.afs, align 8, !tbaa !287
  br label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit551

_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit551: ; preds = %_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i549, %bb.fu, %bb.ft, %bb.fs
  %i.agd = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.fv unwind label %bb.ga     ; 2 uses

bb.fv:                                            ; preds = %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit551
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agf, i8 0, i64 24, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.agd, ptr noundef nonnull align 8 dereferenceable(24) %i.age) #34
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.agh = load i64, ptr %i.agg, align 8, !tbaa !290
  %i.agi = add i64 %i.agh, 1
  store i64 %i.agi, ptr %i.agg, align 8, !tbaa !290
  %i.agj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !286 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 16 ; 2 uses
  %i.agm = load ptr, ptr %i.aeu, align 8, !tbaa !275 ; 4 uses
  %i.agn = load ptr, ptr %21, align 8, !tbaa !278 ; 4 uses
  %i.ago = ptrtoint ptr %i.agm to i64
  %i.agp = ptrtoint ptr %i.agn to i64
  %i.agq = sub i64 %i.ago, %i.agp
  %i.agr = sdiv exact i64 %i.agq, 56              ; 4 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agk, i64 24 ; 2 uses
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !293 ; 2 uses
  %i.agu = load ptr, ptr %i.agl, align 8, !tbaa !295 ; 2 uses
  %i.agv = ptrtoint ptr %i.agt to i64
  %i.agw = ptrtoint ptr %i.agu to i64
  %i.agx = sub i64 %i.agv, %i.agw
  %i.agy = ashr exact i64 %i.agx, 3               ; 3 uses
  %i.agz = icmp ugt i64 %i.agr, %i.agy
  br i1 %i.agz, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.aha = sub nuw nsw i64 %i.agr, %i.agy
  invoke void @_ZNSt6vectorIP11ArrowSchemaSaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.agl, i64 noundef %i.aha)
          to label %._ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit_crit_edge unwind label %bb.ga

._ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit_crit_edge: ; preds = %bb.fw
  %.pre = load ptr, ptr %i.aeu, align 8, !tbaa !275
  %.pre838 = load ptr, ptr %21, align 8, !tbaa !278
  br label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit

bb.fx:                                            ; preds = %bb.fv
  %i.ahb = icmp ult i64 %i.agr, %i.agy
  br i1 %i.ahb, label %bb.fy, label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit

bb.fy:                                            ; preds = %bb.fx
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.agu, i64 %i.agr ; 2 uses
  %.not.i.i554 = icmp eq ptr %i.agt, %i.ahc
  br i1 %.not.i.i554, label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.fy
  store ptr %i.ahc, ptr %i.ags, align 8, !tbaa !293
  br label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit

_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit: ; preds = %._ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit_crit_edge, %bb.fx, %bb.fy, %_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ahd = phi ptr [ %.pre838, %._ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit_crit_edge ], [ %i.agn, %bb.fx ], [ %i.agn, %bb.fy ], [ %i.agn, %_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.ahe = phi ptr [ %.pre, %._ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit_crit_edge ], [ %i.agm, %bb.fx ], [ %i.agm, %bb.fy ], [ %i.agm, %_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i ]
  %.not = icmp eq ptr %i.ahe, %i.ahd
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.gc, %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit
  %i.ahf = load ptr, ptr %i.agj, align 8, !tbaa !286
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16
  %i.ahh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIP11ArrowSchemaLb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ahg, i64 noundef 0)
          to label %bb.ge unwind label %bb.ga

bb.fz:                                            ; preds = %._crit_edge.i.i541
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

bb.ga:                                            ; preds = %bb.fw, %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit551, %bb.fs, %_ZN6duckdb11NumericCastIlmvEET_T0_.exit, %bb.fq, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit655, %._crit_edge
  %i.ahj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

.lr.ph:                                           ; preds = %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit, %bb.gc
  %.0214811 = phi i64 [ %i.ahq, %bb.gc ], [ 0, %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEm.exit ] ; 3 uses
  %i.ahk = load ptr, ptr %i.afj, align 8, !tbaa !286
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16
  %i.ahm = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb6vectorI11ArrowSchemaLb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ahl, i64 noundef %.0214811)
          to label %bb.gb unwind label %bb.gd

bb.gb:                                            ; preds = %.lr.ph
  %i.ahn = load ptr, ptr %i.agj, align 8, !tbaa !286
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 16
  %i.ahp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIP11ArrowSchemaLb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aho, i64 noundef %.0214811)
          to label %bb.gc unwind label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  store ptr %i.ahm, ptr %i.ahp, align 8, !tbaa !297
  %i.ahq = add nuw i64 %.0214811, 1               ; 2 uses
  %i.ahr = load ptr, ptr %i.aeu, align 8, !tbaa !275
  %i.ahs = load ptr, ptr %21, align 8, !tbaa !278
  %i.aht = ptrtoint ptr %i.ahr to i64
  %i.ahu = ptrtoint ptr %i.ahs to i64
  %i.ahv = sub i64 %i.aht, %i.ahu
  %i.ahw = sdiv exact i64 %i.ahv, 56
  %i.ahx = icmp ult i64 %i.ahq, %i.ahw
  br i1 %i.ahx, label %.lr.ph, label %._crit_edge, !llvm.loop !431

bb.gd:                                            ; preds = %bb.gb, %.lr.ph
  %i.ahy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.ge:                                            ; preds = %._crit_edge
  %i.ahz = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store ptr %i.ahh, ptr %i.ahz, align 8, !tbaa !296
  %i.aia = load ptr, ptr %i.aeu, align 8, !tbaa !275
  %i.aib = load ptr, ptr %21, align 8, !tbaa !278
  %.not814 = icmp eq ptr %i.aia, %i.aib
  br i1 %.not814, label %._crit_edge813, label %._crit_edge.i.i562.lr.ph

._crit_edge.i.i562.lr.ph:                         ; preds = %bb.ge
  %i.aic = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.aie = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 5 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  br label %._crit_edge.i.i562

._crit_edge813:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624, %bb.ge
  %i.ail = load i64, ptr %i.aes, align 8, !tbaa !18
  %i.aim = add i64 %i.ail, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.aim, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit unwind label %bb.gf

bb.gf:                                            ; preds = %._crit_edge813
  %i.ain = landingpad { ptr, i32 }
          catch ptr null
  %i.aio = extractvalue { ptr, i32 } %i.ain, 0
  call void @__clang_call_terminate(ptr %i.aio) #40
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit: ; preds = %._crit_edge813
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.aiq = load i64, ptr %i.aes, align 8, !tbaa !18, !noalias !432 ; 13 uses
  %i.air = add i64 %i.aiq, 1                      ; 2 uses
  %i.ais = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.air) #35
          to label %.noexc560 unwind label %bb.hn ; 13 uses

.noexc560:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8pop_backEv.exit
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ais, i8 0, i64 %i.air, i1 false), !noalias !435
  %.not.i556 = icmp eq i64 %i.aiq, 0
  br i1 %.not.i556, label %.loopexit745, label %iter.check1089

iter.check1089:                                   ; preds = %.noexc560
  %34 = ptrtoint ptr %i.ais to i64
  %i.ait = load ptr, ptr %20, align 8, !tbaa !15, !noalias !432 ; 8 uses
  %min.iters.check1075 = icmp ult i64 %i.aiq, 4
  %i.aiu = ptrtoaddr ptr %i.ait to i64
  %i.aiv = sub i64 %i.aiu, %34
  %diff.check1073 = icmp ugt i64 %i.aiv, -32
  %or.cond1290 = select i1 %min.iters.check1075, i1 true, i1 %diff.check1073
  br i1 %or.cond1290, label %vec.epilog.scalar.ph1090.preheader, label %vector.main.loop.iter.check1076

vector.main.loop.iter.check1076:                  ; preds = %iter.check1089
  %min.iters.check1077 = icmp ult i64 %i.aiq, 32
  br i1 %min.iters.check1077, label %vec.epilog.ph1093, label %vector.ph1078

vector.ph1078:                                    ; preds = %vector.main.loop.iter.check1076
  %n.mod.vf1079 = and i64 %i.aiq, 28
  %n.vec1080 = and i64 %i.aiq, -32                ; 4 uses
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %vector.ph1078
  %index1082 = phi i64 [ 0, %vector.ph1078 ], [ %index.next1085, %vector.body1081 ] ; 3 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ait, i64 %index1082 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 16
  %wide.load1083 = load <16 x i8>, ptr %i.aiw, align 1, !tbaa !20, !noalias !432
  %wide.load1084 = load <16 x i8>, ptr %i.aix, align 1, !tbaa !20, !noalias !432
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ais, i64 %index1082 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  store <16 x i8> %wide.load1083, ptr %i.aiy, align 1, !tbaa !20, !noalias !432
  store <16 x i8> %wide.load1084, ptr %i.aiz, align 1, !tbaa !20, !noalias !432
  %index.next1085 = add nuw i64 %index1082, 32    ; 2 uses
  %i.aja = icmp eq i64 %index.next1085, %n.vec1080
  br i1 %i.aja, label %middle.block1086, label %vector.body1081, !llvm.loop !438

middle.block1086:                                 ; preds = %vector.body1081
  %cmp.n1087 = icmp eq i64 %i.aiq, %n.vec1080
  br i1 %cmp.n1087, label %.loopexit745, label %vec.epilog.iter.check1091

vec.epilog.iter.check1091:                        ; preds = %middle.block1086
  %min.epilog.iters.check1092 = icmp eq i64 %n.mod.vf1079, 0
  br i1 %min.epilog.iters.check1092, label %vec.epilog.scalar.ph1090.preheader, label %vec.epilog.ph1093, !prof !233

vec.epilog.ph1093:                                ; preds = %vector.main.loop.iter.check1076, %vec.epilog.iter.check1091
  %vec.epilog.resume.val1088 = phi i64 [ %n.vec1080, %vec.epilog.iter.check1091 ], [ 0, %vector.main.loop.iter.check1076 ]
  %n.vec1095 = and i64 %i.aiq, -4                 ; 3 uses
  br label %vec.epilog.vector.body1096

vec.epilog.vector.body1096:                       ; preds = %vec.epilog.vector.body1096, %vec.epilog.ph1093
  %index1097 = phi i64 [ %vec.epilog.resume.val1088, %vec.epilog.ph1093 ], [ %index.next1099, %vec.epilog.vector.body1096 ] ; 3 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ait, i64 %index1097
  %wide.load1098 = load <4 x i8>, ptr %i.ajb, align 1, !tbaa !20, !noalias !432
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ais, i64 %index1097
  store <4 x i8> %wide.load1098, ptr %i.ajc, align 1, !tbaa !20, !noalias !432
  %index.next1099 = add nuw i64 %index1097, 4     ; 2 uses
  %i.ajd = icmp eq i64 %index.next1099, %n.vec1095
  br i1 %i.ajd, label %vec.epilog.middle.block1100, label %vec.epilog.vector.body1096, !llvm.loop !439

vec.epilog.middle.block1100:                      ; preds = %vec.epilog.vector.body1096
  %cmp.n1101 = icmp eq i64 %i.aiq, %n.vec1095
  br i1 %cmp.n1101, label %.loopexit745, label %vec.epilog.scalar.ph1090.preheader

vec.epilog.scalar.ph1090.preheader:               ; preds = %iter.check1089, %vec.epilog.iter.check1091, %vec.epilog.middle.block1100
  %.08.i558.ph = phi i64 [ 0, %iter.check1089 ], [ %n.vec1080, %vec.epilog.iter.check1091 ], [ %n.vec1095, %vec.epilog.middle.block1100 ] ; 3 uses
  %xtraiter1321 = and i64 %i.aiq, 3               ; 2 uses
  %lcmp.mod1322.not = icmp eq i64 %xtraiter1321, 0
  br i1 %lcmp.mod1322.not, label %vec.epilog.scalar.ph1090.prol.loopexit, label %vec.epilog.scalar.ph1090.prol

vec.epilog.scalar.ph1090.prol:                    ; preds = %vec.epilog.scalar.ph1090.preheader, %vec.epilog.scalar.ph1090.prol
  %.08.i558.prol = phi i64 [ %i.ajh, %vec.epilog.scalar.ph1090.prol ], [ %.08.i558.ph, %vec.epilog.scalar.ph1090.preheader ] ; 3 uses
  %prol.iter1323 = phi i64 [ %prol.iter1323.next, %vec.epilog.scalar.ph1090.prol ], [ 0, %vec.epilog.scalar.ph1090.preheader ]
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ait, i64 %.08.i558.prol
  %i.ajf = load i8, ptr %i.aje, align 1, !tbaa !20, !noalias !432
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ais, i64 %.08.i558.prol
  store i8 %i.ajf, ptr %i.ajg, align 1, !tbaa !20, !noalias !432
  %i.ajh = add nuw i64 %.08.i558.prol, 1          ; 2 uses
  %prol.iter1323.next = add i64 %prol.iter1323, 1 ; 2 uses
  %prol.iter1323.cmp.not = icmp eq i64 %prol.iter1323.next, %xtraiter1321
  br i1 %prol.iter1323.cmp.not, label %vec.epilog.scalar.ph1090.prol.loopexit, label %vec.epilog.scalar.ph1090.prol, !llvm.loop !440

vec.epilog.scalar.ph1090.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1090.prol, %vec.epilog.scalar.ph1090.preheader
  %.08.i558.unr = phi i64 [ %.08.i558.ph, %vec.epilog.scalar.ph1090.preheader ], [ %i.ajh, %vec.epilog.scalar.ph1090.prol ]
  %i.aji = sub i64 %.08.i558.ph, %i.aiq
  %i.ajj = icmp ugt i64 %i.aji, -4
  br i1 %i.ajj, label %.loopexit745, label %vec.epilog.scalar.ph1090

vec.epilog.scalar.ph1090:                         ; preds = %vec.epilog.scalar.ph1090.prol.loopexit, %vec.epilog.scalar.ph1090
  %.08.i558 = phi i64 [ %i.ajz, %vec.epilog.scalar.ph1090 ], [ %.08.i558.unr, %vec.epilog.scalar.ph1090.prol.loopexit ] ; 6 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ait, i64 %.08.i558
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !20, !noalias !432
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ais, i64 %.08.i558
  store i8 %i.ajl, ptr %i.ajm, align 1, !tbaa !20, !noalias !432
  %i.ajn = add nuw i64 %.08.i558, 1               ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.ajn
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !20, !noalias !432
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.ajn
  store i8 %i.ajp, ptr %i.ajq, align 1, !tbaa !20, !noalias !432
  %i.ajr = add nuw i64 %.08.i558, 2               ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.ajr
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !20, !noalias !432
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.ajr
  store i8 %i.ajt, ptr %i.aju, align 1, !tbaa !20, !noalias !432
  %i.ajv = add nuw i64 %.08.i558, 3               ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.ajv
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !20, !noalias !432
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.ajv
  store i8 %i.ajx, ptr %i.ajy, align 1, !tbaa !20, !noalias !432
  %i.ajz = add nuw i64 %.08.i558, 4               ; 2 uses
  %exitcond.not.i559.3 = icmp eq i64 %i.ajz, %i.aiq
  br i1 %exitcond.not.i559.3, label %.loopexit745, label %vec.epilog.scalar.ph1090, !llvm.loop !441

._crit_edge.i.i562:                               ; preds = %._crit_edge.i.i562.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624
  %.0213812 = phi i64 [ 0, %._crit_edge.i.i562.lr.ph ], [ %i.apw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624 ] ; 10 uses
  %i.aka = load ptr, ptr %i.ahz, align 8, !tbaa !296
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %i.aka, i64 %.0213812
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !297
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  store ptr %i.aic, ptr %22, align 8, !tbaa !12
  store i64 0, ptr %i.aid, align 8, !tbaa !18
  store i8 0, ptr %i.aic, align 8, !tbaa !20
  invoke void @_ZN6duckdb15InitializeChildER11ArrowSchemaRNS_23DuckDBArrowSchemaHolderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.akc, ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.gg unwind label %bb.hc

bb.gg:                                            ; preds = %._crit_edge.i.i562
  %i.akd = load ptr, ptr %22, align 8, !tbaa !15  ; 2 uses
  %i.ake = icmp eq ptr %i.akd, %i.aic
  br i1 %i.ake, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566: ; preds = %bb.gg
  call void @_ZdlPv(ptr noundef %i.akd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  %i.akf = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %.0213812)
          to label %bb.gh unwind label %bb.hd     ; 2 uses

bb.gh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  %i.akh = load i64, ptr %i.akg, align 8, !tbaa !18, !noalias !442 ; 13 uses
  %i.aki = add i64 %i.akh, 1                      ; 2 uses
  %i.akj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aki) #35
          to label %.noexc573 unwind label %bb.hd ; 13 uses

.noexc573:                                        ; preds = %bb.gh
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.akj, i8 0, i64 %i.aki, i1 false), !noalias !445
  %.not.i569 = icmp eq i64 %i.akh, 0
  br i1 %.not.i569, label %.loopexit746, label %iter.check

iter.check:                                       ; preds = %.noexc573
  %35 = ptrtoint ptr %i.akj to i64
  %i.akk = load ptr, ptr %i.akf, align 8, !tbaa !15, !noalias !442 ; 8 uses
  %min.iters.check1053 = icmp ult i64 %i.akh, 4
  %i.akl = ptrtoaddr ptr %i.akk to i64
  %i.akm = sub i64 %i.akl, %35
  %diff.check = icmp ugt i64 %i.akm, -32
  %or.cond1292 = select i1 %min.iters.check1053, i1 true, i1 %diff.check
  br i1 %or.cond1292, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1054 = icmp ult i64 %i.akh, 32
  br i1 %min.iters.check1054, label %vec.epilog.ph, label %vector.ph1055

vector.ph1055:                                    ; preds = %vector.main.loop.iter.check
  %n.mod.vf1056 = and i64 %i.akh, 28
  %n.vec1057 = and i64 %i.akh, -32                ; 4 uses
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %vector.ph1055
  %index1059 = phi i64 [ 0, %vector.ph1055 ], [ %index.next1062, %vector.body1058 ] ; 3 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akk, i64 %index1059 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 16
  %wide.load1060 = load <16 x i8>, ptr %i.akn, align 1, !tbaa !20, !noalias !442
  %wide.load1061 = load <16 x i8>, ptr %i.ako, align 1, !tbaa !20, !noalias !442
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akj, i64 %index1059 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 16
  store <16 x i8> %wide.load1060, ptr %i.akp, align 1, !tbaa !20, !noalias !442
  store <16 x i8> %wide.load1061, ptr %i.akq, align 1, !tbaa !20, !noalias !442
  %index.next1062 = add nuw i64 %index1059, 32    ; 2 uses
  %i.akr = icmp eq i64 %index.next1062, %n.vec1057
  br i1 %i.akr, label %middle.block1063, label %vector.body1058, !llvm.loop !448

middle.block1063:                                 ; preds = %vector.body1058
  %cmp.n1064 = icmp eq i64 %i.akh, %n.vec1057
  br i1 %cmp.n1064, label %.loopexit746, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1063
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf1056, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1057, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1066 = and i64 %i.akh, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1067 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1069, %vec.epilog.vector.body ] ; 3 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akk, i64 %index1067
  %wide.load1068 = load <4 x i8>, ptr %i.aks, align 1, !tbaa !20, !noalias !442
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akj, i64 %index1067
  store <4 x i8> %wide.load1068, ptr %i.akt, align 1, !tbaa !20, !noalias !442
  %index.next1069 = add nuw i64 %index1067, 4     ; 2 uses
  %i.aku = icmp eq i64 %index.next1069, %n.vec1066
  br i1 %i.aku, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !449

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1070 = icmp eq i64 %i.akh, %n.vec1066
  br i1 %cmp.n1070, label %.loopexit746, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i571.ph = phi i64 [ 0, %iter.check ], [ %n.vec1057, %vec.epilog.iter.check ], [ %n.vec1066, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.akh, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.08.i571.prol = phi i64 [ %i.aky, %vec.epilog.scalar.ph.prol ], [ %.08.i571.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akk, i64 %.08.i571.prol
  %i.akw = load i8, ptr %i.akv, align 1, !tbaa !20, !noalias !442
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akj, i64 %.08.i571.prol
  store i8 %i.akw, ptr %i.akx, align 1, !tbaa !20, !noalias !442
  %i.aky = add nuw i64 %.08.i571.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !450

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.08.i571.unr = phi i64 [ %.08.i571.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aky, %vec.epilog.scalar.ph.prol ]
  %i.akz = sub i64 %.08.i571.ph, %i.akh
  %i.ala = icmp ugt i64 %i.akz, -4
  br i1 %i.ala, label %.loopexit746, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.08.i571 = phi i64 [ %i.alq, %vec.epilog.scalar.ph ], [ %.08.i571.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akk, i64 %.08.i571
  %i.alc = load i8, ptr %i.alb, align 1, !tbaa !20, !noalias !442
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akj, i64 %.08.i571
  store i8 %i.alc, ptr %i.ald, align 1, !tbaa !20, !noalias !442
  %i.ale = add nuw i64 %.08.i571, 1               ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.akk, i64 %i.ale
  %i.alg = load i8, ptr %i.alf, align 1, !tbaa !20, !noalias !442
  %i.alh = getelementptr inbounds nuw i8, ptr %i.akj, i64 %i.ale
  store i8 %i.alg, ptr %i.alh, align 1, !tbaa !20, !noalias !442
  %i.ali = add nuw i64 %.08.i571, 2               ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.akk, i64 %i.ali
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !20, !noalias !442
  %i.all = getelementptr inbounds nuw i8, ptr %i.akj, i64 %i.ali
  store i8 %i.alk, ptr %i.all, align 1, !tbaa !20, !noalias !442
  %i.alm = add nuw i64 %.08.i571, 3               ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.akk, i64 %i.alm
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !20, !noalias !442
  %i.alp = getelementptr inbounds nuw i8, ptr %i.akj, i64 %i.alm
  store i8 %i.alo, ptr %i.alp, align 1, !tbaa !20, !noalias !442
  %i.alq = add nuw i64 %.08.i571, 4               ; 2 uses
  %exitcond.not.i572.3 = icmp eq i64 %i.alq, %i.akh
  br i1 %exitcond.not.i572.3, label %.loopexit746, label %vec.epilog.scalar.ph, !llvm.loop !451

.loopexit746:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block1063, %vec.epilog.middle.block, %.noexc573
  %i.alr = getelementptr inbounds nuw i8, ptr %i.akj, i64 %i.akh
  store i8 0, ptr %i.alr, align 1, !tbaa !20, !noalias !442
  %i.als = load ptr, ptr %i.aif, align 8, !tbaa !254 ; 6 uses
  %i.alt = load ptr, ptr %i.aig, align 8, !tbaa !257
  %.not.i.i575 = icmp eq ptr %i.als, %i.alt
  br i1 %.not.i.i575, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %.loopexit746
  %i.alu = ptrtoint ptr %i.akj to i64
  store i64 %i.alu, ptr %i.als, align 8, !tbaa !231
  %i.alv = getelementptr inbounds nuw i8, ptr %i.als, i64 8
  store ptr %i.alv, ptr %i.aif, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit593

bb.gj:                                            ; preds = %.loopexit746
  %i.alw = load ptr, ptr %i.aie, align 8, !tbaa !258 ; 10 uses
  %i.alx = ptrtoint ptr %i.als to i64             ; 3 uses
  %i.aly = ptrtoint ptr %i.alw to i64             ; 3 uses
  %i.alz = sub i64 %i.alx, %i.aly                 ; 3 uses
  %i.ama = icmp eq i64 %i.alz, 9223372036854775800
  br i1 %i.ama, label %bb.gk, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i576

bb.gk:                                            ; preds = %bb.gj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc588 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630.loopexit.split-lp

.noexc588:                                        ; preds = %bb.gk
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i576: ; preds = %bb.gj
  %i.amb = ashr exact i64 %i.alz, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i577 = call i64 @llvm.umax.i64(i64 %i.amb, i64 1)
  %i.amc = add nsw i64 %.sroa.speculated.i.i.i.i577, %i.amb ; 2 uses
  %i.amd = icmp ult i64 %i.amc, %i.amb
  %i.ame = call i64 @llvm.umin.i64(i64 %i.amc, i64 1152921504606846975)
  %i.amf = select i1 %i.amd, i64 1152921504606846975, i64 %i.ame ; 3 uses
  %.not.i.i.i.i578 = icmp ne i64 %i.amf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i578)
  %i.amg = shl nuw nsw i64 %i.amf, 3
  %i.amh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amg) #35
          to label %.noexc589 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit630.loopexit ; 10 uses

.noexc589:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i576
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 %i.alz
  %i.amj = ptrtoint ptr %i.akj to i64
  store i64 %i.amj, ptr %i.ami, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i579 = icmp eq ptr %i.alw, %i.als
  br i1 %.not10.i.i.i.i.i.i.i579, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i584, label %.lr.ph.i.i.i.i.i.i.i580.preheader

.lr.ph.i.i.i.i.i.i.i580.preheader:                ; preds = %.noexc589
  %i.amk = sub i64 %i.alx, %i.aly
  %i.aml = add i64 %i.amk, -8                     ; 2 uses
  %i.amm = lshr i64 %i.aml, 3
  %i.amn = add nuw nsw i64 %i.amm, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.aml, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i580.preheader1305, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i580.preheader
  %scevgep = getelementptr i8, ptr %i.amh, i64 8
  %i.amo = add i64 %i.alx, -8
  %i.amp = sub i64 %i.amo, %i.aly
  %i.amq = and i64 %i.amp, -8                     ; 2 uses
  %scevgep1045 = getelementptr i8, ptr %scevgep, i64 %i.amq
  %scevgep1046 = getelementptr i8, ptr %i.alw, i64 8
  %scevgep1047 = getelementptr i8, ptr %scevgep1046, i64 %i.amq
  %bound0 = icmp ult ptr %i.amh, %scevgep1047
  %bound1 = icmp ult ptr %i.alw, %scevgep1045
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i580.preheader1305, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.amn, 4611686018427387900    ; 3 uses
  %i.amr = shl i64 %n.vec, 3                      ; 2 uses
  %i.ams = getelementptr i8, ptr %i.amh, i64 %i.amr ; 2 uses
  %i.amt = getelementptr i8, ptr %i.alw, i64 %i.amr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.amu = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.amh, i64 %i.amu ; 2 uses
  %next.gep1048 = getelementptr i8, ptr %i.alw, i64 %i.amu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.amv = getelementptr i8, ptr %next.gep1048, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1048, align 8, !tbaa !231, !alias.scope !457, !noalias !452
  %wide.load1049 = load <2 x i64>, ptr %i.amv, align 8, !tbaa !231, !alias.scope !457, !noalias !452
  %i.amw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !460, !noalias !457
  store <2 x i64> %wide.load1049, ptr %i.amw, align 8, !tbaa !231, !alias.scope !460, !noalias !457
  %i.amx = getelementptr i8, ptr %next.gep1048, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1048, align 8, !tbaa !231, !alias.scope !457, !noalias !452
end_hunk_5
begin_hunk_6_@_ZNK6duckdb8DBConfig17GetArrowExtensionERKNS_11LogicalTypeE:bb.a
  br label %_ZN6duckdb8TypeInfoD2Ev.exit27

bb.l:                                             ; preds = %bb.p, %bb.g, %bb.d, %bb.q, %_ZNSt13unordered_mapIN6duckdb8TypeInfoENS0_6vectorINS0_22ArrowExtensionMetadataELb1ESaIS3_EEENS0_12HashTypeInfoESt8equal_toIS1_ESaISt4pairIKS1_S5_EEEixERSA_.exit8, %bb.o, %bb.n, %bb.h, %_ZNSt13unordered_mapIN6duckdb8TypeInfoENS0_6vectorINS0_22ArrowExtensionMetadataELb1ESaIS3_EEENS0_12HashTypeInfoESt8equal_toIS1_ESaISt4pairIKS1_S5_EEEixERSA_.exit7, %bb.f, %bb.e, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.m:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb22ArrowExtensionMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #34
  br label %bb.u

bb.n:                                             ; preds = %_ZNSt13unordered_mapIN6duckdb8TypeInfoENS0_6vectorINS0_22ArrowExtensionMetadataELb1ESaIS3_EEENS0_12HashTypeInfoESt8equal_toIS1_ESaISt4pairIKS1_S5_EEEixERSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.ai, align 8, !tbaa !488
  %i.aj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21ArrowTypeExtensionSetESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21ArrowTypeExtensionSetESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.p unwind label %bb.l

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.an = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIN6duckdb8TypeInfoESt4pairIKS2_NS1_6vectorINS1_22ArrowExtensionMetadataELb1ESaIS6_EEEESaIS9_ENS_10_Select1stESt8equal_toIS2_ENS1_12HashTypeInfoENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(33) %3)
          to label %_ZNSt13unordered_mapIN6duckdb8TypeInfoENS0_6vectorINS0_22ArrowExtensionMetadataELb1ESaIS3_EEENS0_12HashTypeInfoESt8equal_toIS1_ESaISt4pairIKS1_S5_EEEixERSA_.exit8 unwind label %bb.l

_ZNSt13unordered_mapIN6duckdb8TypeInfoENS0_6vectorINS0_22ArrowExtensionMetadataELb1ESaIS3_EEENS0_12HashTypeInfoESt8equal_toIS1_ESaISt4pairIKS1_S5_EEEixERSA_.exit8: ; preds = %bb.p
  %i.ao = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_22ArrowExtensionMetadataELb1ESaIS1_EE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.q unwind label %bb.l

bb.q:                                             ; preds = %_ZNSt13unordered_mapIN6duckdb8TypeInfoENS0_6vectorINS0_22ArrowExtensionMetadataELb1ESaIS3_EEENS0_12HashTypeInfoESt8equal_toIS1_ESaISt4pairIKS1_S5_EEEixERSA_.exit8
  invoke void @_ZN6duckdb22ArrowExtensionMetadataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(128) %i.ao)
          to label %bb.r unwind label %bb.l

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6duckdb25GetArrowExtensionInternalERSt13unordered_mapINS_22ArrowExtensionMetadataENS_18ArrowTypeExtensionENS_22HashArrowTypeExtensionESt8equal_toIS1_ESaISt4pairIKS1_S2_EEES1_(ptr dead_on_unwind writable sret(%"class.duckdb::ArrowTypeExtension") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull %5)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.aq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10
  call void @_ZdlPv(ptr noundef %i.au) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i11
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i12
  call void @_ZdlPv(ptr noundef %i.ay) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i13
  %i.bb = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit.sink.split

bb.t:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb22ArrowExtensionMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #34
  br label %bb.u

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %.sink = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i14 ]
  call void @_ZdlPv(ptr noundef %.sink) #37
  br label %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit

_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit:      ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.bf = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN6duckdb8TypeInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bf) #37
  br label %_ZN6duckdb8TypeInfoD2Ev.exit

_ZN6duckdb8TypeInfoD2Ev.exit:                     ; preds = %_ZN6duckdb22ArrowExtensionMetadataD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #34 ; 0 uses
  ret void

bb.u:                                             ; preds = %bb.t, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.ag, %bb.l ], [ %i.ah, %bb.m ] ; 2 uses
  %i.bj = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6duckdb8TypeInfoD2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.bj) #37
  br label %_ZN6duckdb8TypeInfoD2Ev.exit27

_ZN6duckdb8TypeInfoD2Ev.exit27:                   ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.k ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24 ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.bm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #34 ; 0 uses
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ArrowTypeExtension19PopulateArrowSchemaERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_13ClientContextERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(160) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::ArrowSchemaMetadata", align 8 ; 17 uses
  %8 = alloca %"class.duckdb::ArrowSchemaMetadata", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.duckdb::ArrowSchemaMetadata", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !490    ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(512) %3, ptr noundef nonnull align 8 dereferenceable(160) %4)
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !12, !alias.scope !493
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !15, !noalias !493 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !493 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34, !noalias !493
  store i64 %i.l, ptr %i.e, align 8, !tbaa !19, !noalias !493
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !15, !alias.scope !493
  %i.o = load i64, ptr %i.e, align 8, !tbaa !19, !noalias !493
  store i64 %i.o, ptr %i.i, align 8, !tbaa !20, !alias.scope !493
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.p = phi ptr [ %i.n, %.noexc.i.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !20
  store i8 %i.q, ptr %i.p, align 1, !tbaa !20
  br label %_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit

_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.r = load i64, ptr %i.e, align 8, !tbaa !19, !noalias !493 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !18, !alias.scope !493
  %i.t = load ptr, ptr %5, align 8, !tbaa !15, !alias.scope !493
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34, !noalias !493
  %i.v = load i64, ptr %i.s, align 8, !tbaa !18   ; 3 uses
  %i.w = add i64 %i.v, 1                          ; 2 uses
  %i.x = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #35
          to label %bb.f unwind label %bb.n       ; 13 uses

bb.f:                                             ; preds = %_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit
  %13 = ptrtoint ptr %i.x to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.w, i1 false), !noalias !496
  %i.y = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.i
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  %i.aa = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !12, !alias.scope !499
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !15, !noalias !499 ; 2 uses
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !18, !noalias !499 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34, !noalias !499
  store i64 %i.ad, ptr %i.d, align 8, !tbaa !19, !noalias !499
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i.i47, label %._crit_edge.i.i.i46

.noexc.i.i47:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %.thread166 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i47
  store ptr %i.af, ptr %6, align 8, !tbaa !15, !alias.scope !499
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !499
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !20, !alias.scope !499
  br label %._crit_edge.i.i.i46

._crit_edge.i.i.i46:                              ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = phi ptr [ %i.af, %.noexc ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.ad, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i46
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !20
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ac, i64 %i.ad, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i46
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !499 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !18, !alias.scope !499
  %i.al = load ptr, ptr %6, align 8, !tbaa !15, !alias.scope !499
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34, !noalias !499
  %i.an = load ptr, ptr %6, align 8, !tbaa !15    ; 9 uses
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !18 ; 12 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %.not176179 = icmp samesign eq i64 %i.ao, 0
  br i1 %.not176179, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.aq = ptrtoaddr ptr %i.an to i64              ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 4
  %i.ar = sub i64 %i.aq, %13
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check226 = icmp ult i64 %i.ao, 32
  br i1 %min.iters.check226, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ao, 28
  %n.vec = and i64 %i.ao, -32                     ; 5 uses
  %i.as = getelementptr i8, ptr %i.an, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %index ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load227 = load <16 x i8>, ptr %i.at, align 1, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %wide.load, ptr %i.au, align 1, !tbaa !20
  store <16 x i8> %wide.load227, ptr %i.av, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !502

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec229 = and i64 %i.ao, -4                   ; 4 uses
  %i.ax = getelementptr i8, ptr %i.an, i64 %n.vec229
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index230 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ] ; 3 uses
  %next.gep231 = getelementptr i8, ptr %i.an, i64 %index230
  %wide.load232 = load <4 x i8>, ptr %next.gep231, align 1, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %index230
  store <4 x i8> %wide.load232, ptr %i.ay, align 1, !tbaa !20
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next233, %n.vec229
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !503

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n234 = icmp eq i64 %i.ao, %n.vec229
  br i1 %cmp.n234, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.033181.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec229, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.0151.0180.ph = phi ptr [ %i.an, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ] ; 3 uses
  %i.ba = add i64 %i.ao, %i.aq                    ; 2 uses
  %.sroa.0151.0180.ph279 = ptrtoaddr ptr %.sroa.0151.0180.ph to i64 ; 2 uses
  %i.bb = sub i64 %i.ba, %.sroa.0151.0180.ph279
  %xtraiter = and i64 %i.bb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.033181.prol = phi i64 [ %i.bd, %.lr.ph.prol ], [ %.033181.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0151.0180.prol = phi ptr [ %i.bf, %.lr.ph.prol ], [ %.sroa.0151.0180.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bc = load i8, ptr %.sroa.0151.0180.prol, align 1, !tbaa !20
  %i.bd = add nuw i64 %.033181.prol, 1            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %.033181.prol
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0151.0180.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !504

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.033181.unr = phi i64 [ %.033181.ph, %.lr.ph.preheader ], [ %i.bd, %.lr.ph.prol ]
  %.sroa.0151.0180.unr = phi ptr [ %.sroa.0151.0180.ph, %.lr.ph.preheader ], [ %i.bf, %.lr.ph.prol ]
  %i.bg = sub i64 %.sroa.0151.0180.ph279, %i.ba
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.i
  %i.bi = icmp eq ptr %i.an, %i.ab
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50: ; preds = %._crit_edge
  %i.bj = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef %i.an) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ao
  store i8 0, ptr %i.bk, align 1, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !254 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !257
  %.not.i = icmp eq ptr %i.bn, %i.bp
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.bq = ptrtoint ptr %i.x to i64
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !231
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !254
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !258 ; 10 uses
  %i.bt = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 3 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc52 unwind label %.thread172

.noexc52:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #35
          to label %.noexc53 unwind label %.thread172 ; 10 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv
  %i.cf = ptrtoint ptr %i.x to i64
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.bn
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc53
  %i.cg = sub i64 %i.bt, %i.bu
  %i.ch = add i64 %i.cg, -8                       ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check239 = icmp ult i64 %i.ch, 152
  br i1 %min.iters.check239, label %.lr.ph.i.i.i.i.i.i.preheader277, label %vector.memcheck237

vector.memcheck237:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ck = add i64 %i.bt, -8
  %i.cl = sub i64 %i.ck, %i.bu
  %i.cm = and i64 %i.cl, -8
  %i.cn = add i64 %i.cm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cd, i64 %i.cn
  %scevgep238 = getelementptr i8, ptr %i.bs, i64 %i.cn
  %bound0 = icmp ult ptr %i.cd, %scevgep238
  %bound1 = icmp ult ptr %i.bs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader277, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck237
  %n.vec242 = and i64 %i.cj, 4611686018427387900  ; 3 uses
  %i.co = shl i64 %n.vec242, 3                    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cd, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bs, i64 %i.co
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph240
  %index244 = phi i64 [ 0, %vector.ph240 ], [ %index.next249, %vector.body243 ] ; 2 uses
  %i.cr = shl i64 %index244, 3                    ; 2 uses
  %next.gep245 = getelementptr i8, ptr %i.cd, i64 %i.cr ; 2 uses
  %next.gep246 = getelementptr i8, ptr %i.bs, i64 %i.cr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.cs = getelementptr i8, ptr %next.gep246, i64 16
  %wide.load247 = load <2 x i64>, ptr %next.gep246, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  %wide.load248 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  %i.ct = getelementptr i8, ptr %next.gep245, i64 16
  store <2 x i64> %wide.load247, ptr %next.gep245, align 8, !tbaa !231, !alias.scope !513, !noalias !510
  store <2 x i64> %wide.load248, ptr %i.ct, align 8, !tbaa !231, !alias.scope !513, !noalias !510
  %i.cu = getelementptr i8, ptr %next.gep246, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep246, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  store <2 x ptr> splat (ptr null), ptr %i.cu, align 8, !tbaa !231, !alias.scope !510, !noalias !505
  %index.next249 = add nuw i64 %index244, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next249, %n.vec242
  br i1 %i.cv, label %middle.block250, label %vector.body243, !llvm.loop !515

middle.block250:                                  ; preds = %vector.body243
  %cmp.n251 = icmp eq i64 %i.cj, %n.vec242
  br i1 %cmp.n251, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader277

.lr.ph.i.i.i.i.i.i.preheader277:                  ; preds = %vector.memcheck237, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block250
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.cd, %vector.memcheck237 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block250 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bs, %vector.memcheck237 ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block250 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader277, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader277 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader277 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !508, !noalias !505
  store i64 %i.cw, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !505, !noalias !508
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !231, !alias.scope !508, !noalias !505
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.bn
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !516

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block250, %.noexc53
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cd, %.noexc53 ], [ %i.cp, %middle.block250 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bs) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.cd, ptr %i.bl, align 8, !tbaa !258
  store ptr %i.cz, ptr %i.bm, align 8, !tbaa !254
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.da, ptr %i.bo, align 8, !tbaa !257
  br label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.n:                                             ; preds = %_ZNK6duckdb22ArrowExtensionMetadata14GetArrowFormatB5cxx11Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.i
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55: ; preds = %bb.n
  %i.de = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.de)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.dc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit147

.thread166:                                       ; preds = %.noexc.i.i47
  %i.df = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_ZN6duckdb14ArrowConverter13ToArrowSchemaEP11ArrowSchemaRKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERKNS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEERNS_16ClientPropertiesE:bb.a
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.404", align 8 ; 15 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24                  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.i = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #35, !noalias !563 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false), !noalias !563
  store ptr %i.j, ptr %i.k, align 8, !tbaa !286, !noalias !563
  store ptr %i.j, ptr %i.j, align 8, !tbaa !566, !noalias !563
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 0, ptr %i.l, align 8, !tbaa !567, !noalias !563
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr %i.m, ptr %i.n, align 8, !tbaa !286, !noalias !563
  store ptr %i.m, ptr %i.m, align 8, !tbaa !566, !noalias !563
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.o, i8 0, i64 104, i1 false), !noalias !563
  store ptr %i.i, ptr %4, align 8, !tbaa !568, !alias.scope !563
  %i.p = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23DuckDBArrowSchemaHolderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.j       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !287  ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !289  ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 72                  ; 3 uses
  %i.x = icmp ugt i64 %i.h, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = sub nuw nsw i64 %i.h, %i.w
  invoke void @_ZNSt6vectorI11ArrowSchemaSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.y)
          to label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.z = icmp ult i64 %i.h, %i.w
  br i1 %i.z, label %bb.e, label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.s, i64 %i.h ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.aa
  br i1 %.not.i.i, label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !287
  br label %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit

_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIP11ArrowSchemaS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.e, %bb.d, %bb.c
  %i.ab = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23DuckDBArrowSchemaHolderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.j       ; 2 uses

bb.f:                                             ; preds = %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr null, ptr %i.a, align 8, !tbaa !297
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !293 ; 3 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !295 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 3 uses
  %i.ak = icmp ugt i64 %i.h, %i.aj
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = sub nuw nsw i64 %i.h, %i.aj
  invoke void @_ZNSt6vectorIP11ArrowSchemaSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr %i.ae, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEmRKS1_.exit unwind label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.am = icmp ult i64 %i.h, %i.aj
  br i1 %i.am, label %bb.i, label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEmRKS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.h ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.ae, %i.an
  br i1 %.not.i.i44, label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.i
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !293
  br label %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEmRKS1_.exit: ; preds = %_ZSt8_DestroyIPP11ArrowSchemaS1_EvT_S3_RSaIT0_E.exit.i.i, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.o, %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEmRKS1_.exit
  %i.ao = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23DuckDBArrowSchemaHolderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.q unwind label %bb.j

bb.j:                                             ; preds = %bb.q, %bb.c, %._crit_edge, %_ZNSt6vectorI11ArrowSchemaSaIS0_EE6resizeEm.exit, %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.k:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.ak

.lr.ph:                                           ; preds = %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEmRKS1_.exit, %bb.o
  %.03462 = phi i64 [ %i.aw, %bb.o ], [ 0, %_ZNSt6vectorIP11ArrowSchemaSaIS1_EE6resizeEmRKS1_.exit ] ; 3 uses
  %i.ar = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23DuckDBArrowSchemaHolderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %.lr.ph
  %i.as = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb6vectorI11ArrowSchemaLb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef %.03462)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.at = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23DuckDBArrowSchemaHolderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIP11ArrowSchemaLb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %.03462)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.as, ptr %i.av, align 8, !tbaa !297
  %i.aw = add nuw i64 %.03462, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !570

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %.lr.ph
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.q:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !295
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !296
  %i.bb = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.h)
          to label %_ZN6duckdb11NumericCastIlmvEET_T0_.exit unwind label %bb.j

_ZN6duckdb11NumericCastIlmvEET_T0_.exit:          ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !279
  store ptr @.str, ptr %0, align 8, !tbaa !274
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store ptr @.str.42, ptr %i.be, align 8, !tbaa !271
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.bf, align 8, !tbaa !484
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb23DuckDBArrowSchemaHolderESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph64

.lr.ph64:                                         ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  br label %bb.r

_ZNSt10unique_ptrIN6duckdb23DuckDBArrowSchemaHolderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ag, %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  %i.bh = load ptr, ptr %4, align 8, !tbaa !568
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !238
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN6duckdbL24ReleaseDuckDBArrowSchemaEP11ArrowSchema, ptr %i.bj, align 8, !tbaa !242
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.r:                                             ; preds = %.lr.ph64, %bb.ag
  %.03363 = phi i64 [ 0, %.lr.ph64 ], [ %i.eu, %bb.ag ] ; 5 uses
  %i.bk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23DuckDBArrowSchemaHolderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.s unwind label %bb.ah      ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 120 ; 2 uses
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.03363)
          to label %bb.t unwind label %bb.ai      ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !18, !noalias !571 ; 13 uses
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  %i.bq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #35
          to label %.noexc48 unwind label %bb.ai  ; 13 uses

.noexc48:                                         ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bq, i8 0, i64 %i.bp, i1 false), !noalias !574
  %.not.i47 = icmp eq i64 %i.bo, 0
  br i1 %.not.i47, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc48
  %5 = ptrtoint ptr %i.bq to i64
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !15, !noalias !571 ; 8 uses
  %min.iters.check102 = icmp ult i64 %i.bo, 4
  %i.bs = ptrtoaddr ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %5
  %diff.check = icmp ugt i64 %i.bt, -32
  %or.cond = select i1 %min.iters.check102, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check103 = icmp ult i64 %i.bo, 32
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph104

vector.ph104:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf105 = and i64 %i.bo, 28
  %n.vec106 = and i64 %i.bo, -32                  ; 4 uses
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph104
  %index108 = phi i64 [ 0, %vector.ph104 ], [ %index.next111, %vector.body107 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %index108 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load109 = load <16 x i8>, ptr %i.bu, align 1, !tbaa !20, !noalias !571
  %wide.load110 = load <16 x i8>, ptr %i.bv, align 1, !tbaa !20, !noalias !571
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index108 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <16 x i8> %wide.load109, ptr %i.bw, align 1, !tbaa !20, !noalias !571
  store <16 x i8> %wide.load110, ptr %i.bx, align 1, !tbaa !20, !noalias !571
  %index.next111 = add nuw i64 %index108, 32      ; 2 uses
  %i.by = icmp eq i64 %index.next111, %n.vec106
  br i1 %i.by, label %middle.block112, label %vector.body107, !llvm.loop !577

middle.block112:                                  ; preds = %vector.body107
  %cmp.n113 = icmp eq i64 %i.bo, %n.vec106
  br i1 %cmp.n113, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block112
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf105, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !233

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec106, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %i.bo, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 %index116
  %wide.load117 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !20, !noalias !571
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index116
  store <4 x i8> %wide.load117, ptr %i.ca, align 1, !tbaa !20, !noalias !571
  %index.next118 = add nuw i64 %index116, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next118, %n.vec115
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !578

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %i.bo, %n.vec115
  br i1 %cmp.n119, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec106, %vec.epilog.iter.check ], [ %n.vec115, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.bo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.08.i.prol = phi i64 [ %i.cf, %vec.epilog.scalar.ph.prol ], [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 %.08.i.prol
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !20, !noalias !571
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.08.i.prol
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !20, !noalias !571
  %i.cf = add nuw i64 %.08.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !579

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cf, %vec.epilog.scalar.ph.prol ]
  %i.cg = sub i64 %.08.i.ph, %i.bo
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.08.i = phi i64 [ %i.cx, %vec.epilog.scalar.ph ], [ %.08.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 %.08.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !20, !noalias !571
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.08.i
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !20, !noalias !571
  %i.cl = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !20, !noalias !571
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !20, !noalias !571
  %i.cp = add nuw i64 %.08.i, 2                   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !20, !noalias !571
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !20, !noalias !571
  %i.ct = add nuw i64 %.08.i, 3                   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !20, !noalias !571
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ct
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !20, !noalias !571
  %i.cx = add nuw i64 %.08.i, 4                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cx, %i.bo
  br i1 %exitcond.not.i.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !580

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block112, %vec.epilog.middle.block, %.noexc48
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.cy, align 1, !tbaa !20, !noalias !571
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bk, i64 128 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !254 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 136 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !257
  %.not.i.i49 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i49, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.dd = ptrtoint ptr %i.bq to i64
  store i64 %i.dd, ptr %i.da, align 8, !tbaa !231
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.de, ptr %i.cz, align 8, !tbaa !254
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.v:                                             ; preds = %.loopexit
  %i.df = load ptr, ptr %i.bl, align 8, !tbaa !258 ; 10 uses
  %i.dg = ptrtoint ptr %i.da to i64               ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64               ; 3 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %bb.w, label %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #36
          to label %.noexc50 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56.loopexit.split-lp

.noexc50:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.dk = ashr exact i64 %i.di, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975)
  %i.do = select i1 %i.dm, i64 1152921504606846975, i64 %i.dn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #35
          to label %.noexc51 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit56.loopexit ; 10 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.di
  %i.ds = ptrtoint ptr %i.bq to i64
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !231
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.df, %i.da
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrIA_cSt14default_deleteIS2_ELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc51
  %i.dt = sub i64 %i.dg, %i.dh
  %i.du = add i64 %i.dt, -8                       ; 2 uses
  %i.dv = lshr i64 %i.du, 3
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.du, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dq, i64 8
  %i.dx = add i64 %i.dg, -8
  %i.dy = sub i64 %i.dx, %i.dh
  %i.dz = and i64 %i.dy, -8                       ; 2 uses
  %scevgep94 = getelementptr i8, ptr %scevgep, i64 %i.dz
  %scevgep95 = getelementptr i8, ptr %i.df, i64 8
  %scevgep96 = getelementptr i8, ptr %scevgep95, i64 %i.dz
  %bound0 = icmp ult ptr %i.dq, %scevgep96
  %bound1 = icmp ult ptr %i.df, %scevgep94
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dw, 4611686018427387900     ; 3 uses
  %i.ea = shl i64 %n.vec, 3                       ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dq, i64 %i.ea  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.df, i64 %i.ea
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dq, i64 %i.ed ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.df, i64 %i.ed ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.ee = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep97, align 8, !tbaa !231, !alias.scope !586, !noalias !581
  %wide.load98 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !231, !alias.scope !586, !noalias !581
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !231, !alias.scope !589, !noalias !586
  store <2 x i64> %wide.load98, ptr %i.ef, align 8, !tbaa !231, !alias.scope !589, !noalias !586
end_hunk_7
begin_hunk_8_@_ZNSt12__shared_ptrIN6duckdb4TaskELN9__gnu_cxx12_Lock_policyE2EEC2INS0_14ArrowBatchTaskESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E:bb.a
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !79

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #34
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !72
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.e, align 8, !tbaa !73
  store i32 0, ptr %i.f, align 4, !tbaa !75
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34, !inline_history !1902
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34, !inline_history !1902
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.m, %bb.l
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !79

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt16allocator_traitsISaISt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSA_m.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #34
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1903 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(360) %i.b) #34, !inline_history !1905
  br label %_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb14ArrowBatchTaskEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN6duckdb14ArrowBatchTaskESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1863 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN6duckdb14ArrowBatchTaskEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN6duckdb14ArrowBatchTaskEE) #34
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb17ArrowArrayWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1863 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #34
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN6duckdb25QueryResultChunkScanStateC1ERNS_11QueryResultE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(392)) unnamed_addr #3

declare noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #3

declare void @_ZN6duckdb23PhysicalResultCollectorC2ERNS_12PhysicalPlanERNS_21PreparedStatementDataE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(266)) unnamed_addr #3

declare void @_ZN6duckdb22PhysicalBatchCollectorC2ERNS_12PhysicalPlanERNS_21PreparedStatementDataE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(266)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEEvSD_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %.not116 = icmp eq ptr %2, %3
  br i1 %.not116, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1203
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1087 ; 27 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 7 uses
  %i.r = sub i64 %i.b, %i.c
  %i.s = add i64 %i.r, -8                         ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check183 = icmp ult i64 %i.s, 216
  br i1 %min.iters.check183, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck176

vector.memcheck176:                               ; preds = %bb.d
  %i.v = add i64 %i.b, -8
  %i.w = sub i64 %i.v, %i.c
  %i.x = and i64 %i.w, -8                         ; 2 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep177 = getelementptr i8, ptr %i.y, i64 8
  %i.z = add i64 %i.x, %i.c
  %i.aa = add i64 %i.z, 8
  %i.ab = sub i64 %i.aa, %i.b
  %scevgep178 = getelementptr i8, ptr %i.i, i64 %i.ab
  %bound0179 = icmp ult ptr %i.i, %scevgep178
  %bound1180 = icmp ult ptr %i.q, %scevgep177
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck176
  %n.vec186 = and i64 %i.u, 4611686018427387900   ; 3 uses
  %i.ac = shl i64 %n.vec186, 3                    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ac
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph184
  %index188 = phi i64 [ 0, %vector.ph184 ], [ %index.next193, %vector.body187 ] ; 2 uses
  %i.af = shl i64 %index188, 3                    ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.i, i64 %i.af ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.q, i64 %i.af ; 4 uses
  %i.ag = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load191 = load <2 x i64>, ptr %next.gep190, align 8, !tbaa !1091, !alias.scope !1906
  %wide.load192 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !1091, !alias.scope !1906
  %i.ah = getelementptr i8, ptr %next.gep189, i64 16
  store <2 x i64> %wide.load191, ptr %next.gep189, align 8, !tbaa !1091, !alias.scope !1909, !noalias !1906
  store <2 x i64> %wide.load192, ptr %i.ah, align 8, !tbaa !1091, !alias.scope !1909, !noalias !1906
  %i.ai = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep190, align 8, !tbaa !1091, !alias.scope !1906
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !1091, !alias.scope !1906
  %index.next193 = add nuw i64 %index188, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next193, %n.vec186
  br i1 %i.aj, label %middle.block194, label %vector.body187, !llvm.loop !1911

middle.block194:                                  ; preds = %vector.body187
  %cmp.n195 = icmp eq i64 %i.u, %n.vec186
  br i1 %cmp.n195, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck176, %bb.d, %middle.block194
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck176 ], [ %i.i, %bb.d ], [ %i.ad, %middle.block194 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck176 ], [ %i.q, %bb.d ], [ %i.ae, %middle.block194 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ak = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !1091
  store i64 %i.ak, ptr %.013.i.i.i.i.i, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !1091
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1912

_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block194
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.an, ptr %i.h, align 8, !tbaa !1087
  %i.ao = ptrtoint ptr %i.q to i64
  %i.ap = sub i64 %i.ao, %i.m
  %i.aq = ashr exact i64 %i.ap, 3                 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.aw, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.aq, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.at, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.i, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %.078.i.i.i.i.i = phi ptr [ %i.as, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i ], [ %i.q, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ]
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !1091
  store ptr null, ptr %i.as, align 8, !tbaa !1091
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !1091 ; 3 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !1091
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i51
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.av) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.av) #37
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i51
  %i.aw = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ax = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, !llvm.loop !1913

_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.ay = icmp sgt i64 %i.e, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55
  %.012.i.i.i.i.i = phi i64 [ %i.bd, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %i.e, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bc, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %1, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bb, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55 ], [ %2, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit ] ; 3 uses
  %i.az = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !1091
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !1091
  %i.ba = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1091 ; 3 uses
  store ptr %i.az, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1091
  %.not.i.i.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i53, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i52
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ba) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.ba) #37
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i54, %.lr.ph.i.i.i.i.i52
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bd = add nsw i64 %.012.i.i.i.i.i, -1
  %i.be = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1914

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.n ; 6 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bf, %3
  br i1 %.not10.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = add i64 %i.b, %i.m
  %i.bh = add i64 %i.k, %i.c
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = add i64 %i.bi, -8                       ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 264
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader270, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bm = add i64 %i.b, %i.m
  %i.bn = add i64 %i.bm, -8
  %i.bo = add i64 %i.k, %i.c
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -8                       ; 2 uses
  %i.br = getelementptr i8, ptr %i.i, i64 %i.bq
  %scevgep = getelementptr i8, ptr %i.br, i64 8
  %i.bs = add i64 %i.bq, %i.k
  %i.bt = add i64 %i.bs, 8
  %i.bu = sub i64 %i.bt, %i.m
  %scevgep150 = getelementptr i8, ptr %2, i64 %i.bu
  %bound0 = icmp ult ptr %i.i, %scevgep150
  %bound1 = icmp ult ptr %i.bf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader270, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bv = shl i64 %n.vec, 3                       ; 2 uses
  %i.bw = getelementptr i8, ptr %i.i, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bf, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.by ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.bf, i64 %i.by ; 4 uses
  %i.bz = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep151, align 8, !tbaa !1091, !alias.scope !1915
  %wide.load152 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !1091, !alias.scope !1915
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1091, !alias.scope !1918, !noalias !1915
  store <2 x i64> %wide.load152, ptr %i.ca, align 8, !tbaa !1091, !alias.scope !1918, !noalias !1915
  %i.cb = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep151, align 8, !tbaa !1091, !alias.scope !1915
  store <2 x ptr> splat (ptr null), ptr %i.cb, align 8, !tbaa !1091, !alias.scope !1915
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1920

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader270

.lr.ph.i.i.i.i.preheader270:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  %.sroa.08.011.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader270, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader270 ] ; 2 uses
  %.sroa.08.011.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader270 ] ; 3 uses
  %i.cd = load i64, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !1091
  store i64 %i.cd, ptr %.012.i.i.i.i, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.011.i.i.i.i, align 8, !tbaa !1091
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ce, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1921

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cg = sub nsw i64 %i.e, %i.o
  %i.ch = getelementptr [8 x i8], ptr %i.i, i64 %i.cg ; 5 uses
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.ci = sub i64 %i.k, %i.m
  %i.cj = add i64 %i.ci, -8                       ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.cj, 216
  br i1 %min.iters.check161, label %.lr.ph.i.i.i.i.i57.preheader269, label %vector.memcheck154

vector.memcheck154:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader
  %i.cm = add i64 %i.k, -8
  %i.cn = sub i64 %i.cm, %i.m
  %i.co = and i64 %i.cn, -8                       ; 2 uses
  %i.cp = add i64 %i.d, %i.co
  %i.cq = add i64 %i.cp, 8
  %i.cr = sub i64 %i.cq, %i.n
  %scevgep155 = getelementptr i8, ptr %i.i, i64 %i.cr
  %i.cs = getelementptr i8, ptr %1, i64 %i.co
  %scevgep156 = getelementptr i8, ptr %i.cs, i64 8
  %bound0157 = icmp ult ptr %i.ch, %scevgep156
  %bound1158 = icmp ult ptr %1, %scevgep155
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph.i.i.i.i.i57.preheader269, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck154
  %n.vec164 = and i64 %i.cl, 4611686018427387900  ; 3 uses
  %i.ct = shl i64 %n.vec164, 3                    ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ch, i64 %i.ct
  %i.cv = getelementptr i8, ptr %1, i64 %i.ct
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.cw = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.ch, i64 %i.cw ; 2 uses
  %next.gep168 = getelementptr i8, ptr %1, i64 %i.cw ; 4 uses
  %i.cx = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 8, !tbaa !1091, !alias.scope !1922
  %wide.load170 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !1091, !alias.scope !1922
  %i.cy = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 8, !tbaa !1091, !alias.scope !1925, !noalias !1922
  store <2 x i64> %wide.load170, ptr %i.cy, align 8, !tbaa !1091, !alias.scope !1925, !noalias !1922
  %i.cz = getelementptr i8, ptr %next.gep168, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep168, align 8, !tbaa !1091, !alias.scope !1922
  store <2 x ptr> splat (ptr null), ptr %i.cz, align 8, !tbaa !1091, !alias.scope !1922
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.da, label %middle.block172, label %vector.body165, !llvm.loop !1927

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.cl, %n.vec164
  br i1 %cmp.n173, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader269

.lr.ph.i.i.i.i.i57.preheader269:                  ; preds = %vector.memcheck154, %.lr.ph.i.i.i.i.i57.preheader, %middle.block172
  %.013.i.i.i.i.i58.ph = phi ptr [ %i.ch, %vector.memcheck154 ], [ %i.ch, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.cu, %middle.block172 ]
  %.sroa.08.012.i.i.i.i.i59.ph = phi ptr [ %1, %vector.memcheck154 ], [ %1, %.lr.ph.i.i.i.i.i57.preheader ], [ %i.cv, %middle.block172 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader269, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i57 ], [ %.013.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader269 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i57 ], [ %.sroa.08.012.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader269 ] ; 3 uses
  %i.db = load i64, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !1091
  store i64 %i.db, ptr %.013.i.i.i.i.i58, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !1091
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 8
  %.not.i.i.i.i.i60 = icmp eq ptr %i.dc, %i.i
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, label %.lr.ph.i.i.i.i.i57, !llvm.loop !1928

_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62: ; preds = %.lr.ph.i.i.i.i.i57, %middle.block172, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.de, ptr %i.h, align 8, !tbaa !1087
  %i.df = ashr exact i64 %i.n, 3                  ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i64:                               ; preds = %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70
  %.012.i.i.i.i.i65 = phi i64 [ %i.dl, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %i.df, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 2 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.dk, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %1, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %.0910.i.i.i.i.i67 = phi ptr [ %i.dj, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70 ], [ %2, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62 ] ; 3 uses
  %i.dh = load ptr, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !1091
  store ptr null, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !1091
  %i.di = load ptr, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !1091 ; 3 uses
  store ptr %i.dh, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !1091
  %.not.i.i.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i68, label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69: ; preds = %.lr.ph.i.i.i.i.i64
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.di) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.di) #37
  br label %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70

_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i69, %.lr.ph.i.i.i.i.i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i67, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  %i.dl = add nsw i64 %.012.i.i.i.i.i65, -1
  %i.dm = icmp sgt i64 %.012.i.i.i.i.i65, 1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit, !llvm.loop !1914

bb.e:                                             ; preds = %bb.b
  %i.dn = load ptr, ptr %0, align 8, !tbaa !1090  ; 12 uses
  %i.do = ptrtoint ptr %i.dn to i64               ; 3 uses
  %i.dp = sub i64 %i.k, %i.do
  %i.dq = ashr exact i64 %i.dp, 3                 ; 4 uses
  %i.dr = sub nsw i64 1152921504606846975, %i.dq
  %i.ds = icmp ult i64 %i.dr, %i.e
  br i1 %i.ds, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #36
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.e)
  %i.dt = add nsw i64 %.sroa.speculated.i, %i.dq  ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.dq
  %i.dv = tail call i64 @llvm.umin.i64(i64 %i.dt, i64 1152921504606846975)
  %i.dw = select i1 %i.du, i64 1152921504606846975, i64 %i.dv ; 3 uses
  %.not.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #35
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.dz = phi ptr [ %i.dy, %bb.g ], [ null, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %i.dn, %1
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit
  %i.ea = sub i64 %i.a, %i.do
  %i.eb = add i64 %i.ea, -8                       ; 2 uses
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.eb, 152
  br i1 %min.iters.check205, label %.lr.ph.i.i.i.i.i73.preheader266, label %vector.memcheck198

vector.memcheck198:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %i.ee = add i64 %i.a, -8
  %i.ef = sub i64 %i.ee, %i.do
  %i.eg = and i64 %i.ef, -8
  %i.eh = add i64 %i.eg, 8                        ; 2 uses
  %scevgep199 = getelementptr i8, ptr %i.dz, i64 %i.eh
  %scevgep200 = getelementptr i8, ptr %i.dn, i64 %i.eh
  %bound0201 = icmp ult ptr %i.dz, %scevgep200
  %bound1202 = icmp ult ptr %i.dn, %scevgep199
  %found.conflict203 = and i1 %bound0201, %bound1202
  br i1 %found.conflict203, label %.lr.ph.i.i.i.i.i73.preheader266, label %vector.ph206

vector.ph206:                                     ; preds = %vector.memcheck198
  %n.vec208 = and i64 %i.ed, 4611686018427387900  ; 3 uses
  %i.ei = shl i64 %n.vec208, 3                    ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dz, i64 %i.ei  ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dn, i64 %i.ei
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph206
  %index210 = phi i64 [ 0, %vector.ph206 ], [ %index.next215, %vector.body209 ] ; 2 uses
  %i.el = shl i64 %index210, 3                    ; 2 uses
  %next.gep211 = getelementptr i8, ptr %i.dz, i64 %i.el ; 2 uses
  %next.gep212 = getelementptr i8, ptr %i.dn, i64 %i.el ; 4 uses
  %i.em = getelementptr i8, ptr %next.gep212, i64 16
  %wide.load213 = load <2 x i64>, ptr %next.gep212, align 8, !tbaa !1091, !alias.scope !1929
  %wide.load214 = load <2 x i64>, ptr %i.em, align 8, !tbaa !1091, !alias.scope !1929
  %i.en = getelementptr i8, ptr %next.gep211, i64 16
  store <2 x i64> %wide.load213, ptr %next.gep211, align 8, !tbaa !1091, !alias.scope !1932, !noalias !1929
  store <2 x i64> %wide.load214, ptr %i.en, align 8, !tbaa !1091, !alias.scope !1932, !noalias !1929
  %i.eo = getelementptr i8, ptr %next.gep212, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep212, align 8, !tbaa !1091, !alias.scope !1929
  store <2 x ptr> splat (ptr null), ptr %i.eo, align 8, !tbaa !1091, !alias.scope !1929
  %index.next215 = add nuw i64 %index210, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next215, %n.vec208
  br i1 %i.ep, label %middle.block216, label %vector.body209, !llvm.loop !1934

middle.block216:                                  ; preds = %vector.body209
  %cmp.n217 = icmp eq i64 %i.ed, %n.vec208
  br i1 %cmp.n217, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73.preheader266

.lr.ph.i.i.i.i.i73.preheader266:                  ; preds = %vector.memcheck198, %.lr.ph.i.i.i.i.i73.preheader, %middle.block216
  %.013.i.i.i.i.i74.ph = phi ptr [ %i.dz, %vector.memcheck198 ], [ %i.dz, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ej, %middle.block216 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %i.dn, %vector.memcheck198 ], [ %i.dn, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ek, %middle.block216 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader266, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader266 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader266 ] ; 3 uses
  %i.eq = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !1091
  store i64 %i.eq, ptr %.013.i.i.i.i.i74, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i75, align 8, !tbaa !1091
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.er, %1
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i73, !llvm.loop !1935

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block216, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %i.dz, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit ], [ %i.ej, %middle.block216 ], [ %i.es, %.lr.ph.i.i.i.i.i73 ] ; 6 uses
  %i.et = sub i64 %i.b, %i.c
  %i.eu = add i64 %i.et, -8                       ; 2 uses
  %i.ev = lshr i64 %i.eu, 3
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check227 = icmp ult i64 %i.eu, 152
  br i1 %min.iters.check227, label %.lr.ph.i.i.i.i79.preheader, label %vector.memcheck220

vector.memcheck220:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.ex = add i64 %i.b, -8
  %i.ey = sub i64 %i.ex, %i.c
  %i.ez = and i64 %i.ey, -8
  %i.fa = add i64 %i.ez, 8                        ; 2 uses
  %scevgep221 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.fa
  %scevgep222 = getelementptr i8, ptr %2, i64 %i.fa
  %bound0223 = icmp ult ptr %.0.lcssa.i.i.i.i.i77, %scevgep222
  %bound1224 = icmp ult ptr %2, %scevgep221
  %found.conflict225 = and i1 %bound0223, %bound1224
  br i1 %found.conflict225, label %.lr.ph.i.i.i.i79.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck220
  %n.vec230 = and i64 %i.ew, 4611686018427387900  ; 3 uses
  %i.fb = shl i64 %n.vec230, 3                    ; 2 uses
  %i.fc = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.fb ; 2 uses
  %i.fd = getelementptr i8, ptr %2, i64 %i.fb
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph228
  %index232 = phi i64 [ 0, %vector.ph228 ], [ %index.next237, %vector.body231 ] ; 2 uses
  %i.fe = shl i64 %index232, 3                    ; 2 uses
  %next.gep233 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77, i64 %i.fe ; 2 uses
  %next.gep234 = getelementptr i8, ptr %2, i64 %i.fe ; 4 uses
  %i.ff = getelementptr i8, ptr %next.gep234, i64 16
  %wide.load235 = load <2 x i64>, ptr %next.gep234, align 8, !tbaa !1091, !alias.scope !1936
  %wide.load236 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !1091, !alias.scope !1936
  %i.fg = getelementptr i8, ptr %next.gep233, i64 16
  store <2 x i64> %wide.load235, ptr %next.gep233, align 8, !tbaa !1091, !alias.scope !1939, !noalias !1936
  store <2 x i64> %wide.load236, ptr %i.fg, align 8, !tbaa !1091, !alias.scope !1939, !noalias !1936
  %i.fh = getelementptr i8, ptr %next.gep234, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep234, align 8, !tbaa !1091, !alias.scope !1936
  store <2 x ptr> splat (ptr null), ptr %i.fh, align 8, !tbaa !1091, !alias.scope !1936
  %index.next237 = add nuw i64 %index232, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next237, %n.vec230
  br i1 %i.fi, label %middle.block238, label %vector.body231, !llvm.loop !1941

middle.block238:                                  ; preds = %vector.body231
  %cmp.n239 = icmp eq i64 %i.ew, %n.vec230
  br i1 %cmp.n239, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79.preheader

.lr.ph.i.i.i.i79.preheader:                       ; preds = %vector.memcheck220, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %middle.block238
  %.012.i.i.i.i80.ph = phi ptr [ %.0.lcssa.i.i.i.i.i77, %vector.memcheck220 ], [ %.0.lcssa.i.i.i.i.i77, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.fc, %middle.block238 ]
  %.sroa.08.011.i.i.i.i81.ph = phi ptr [ %2, %vector.memcheck220 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ], [ %i.fd, %middle.block238 ]
  br label %.lr.ph.i.i.i.i79

.lr.ph.i.i.i.i79:                                 ; preds = %.lr.ph.i.i.i.i79.preheader, %.lr.ph.i.i.i.i79
  %.012.i.i.i.i80 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i79 ], [ %.012.i.i.i.i80.ph, %.lr.ph.i.i.i.i79.preheader ] ; 2 uses
  %.sroa.08.011.i.i.i.i81 = phi ptr [ %i.fk, %.lr.ph.i.i.i.i79 ], [ %.sroa.08.011.i.i.i.i81.ph, %.lr.ph.i.i.i.i79.preheader ] ; 3 uses
  %i.fj = load i64, ptr %.sroa.08.011.i.i.i.i81, align 8, !tbaa !1091
  store i64 %i.fj, ptr %.012.i.i.i.i80, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.011.i.i.i.i81, align 8, !tbaa !1091
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i81, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i80, i64 8 ; 2 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.fk, %3
  br i1 %.not.i.i.i.i82, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84, label %.lr.ph.i.i.i.i79, !llvm.loop !1942

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84: ; preds = %.lr.ph.i.i.i.i79, %middle.block238
  %.lcssa148 = phi ptr [ %i.fc, %middle.block238 ], [ %i.fl, %.lr.ph.i.i.i.i79 ] ; 7 uses
  %.not11.i.i.i.i.i85 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i85, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86.preheader

.lr.ph.i.i.i.i.i86.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84
  %i.fm = sub i64 %i.k, %i.a
  %i.fn = add i64 %i.fm, -8                       ; 2 uses
  %i.fo = lshr i64 %i.fn, 3
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check249 = icmp ult i64 %i.fn, 152
  br i1 %min.iters.check249, label %.lr.ph.i.i.i.i.i86.preheader264, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i.i.i.i86.preheader
  %i.fq = add i64 %i.k, -8
  %i.fr = sub i64 %i.fq, %i.a
  %i.fs = and i64 %i.fr, -8
  %i.ft = add i64 %i.fs, 8                        ; 2 uses
  %scevgep243 = getelementptr i8, ptr %.lcssa148, i64 %i.ft
  %scevgep244 = getelementptr i8, ptr %1, i64 %i.ft
  %bound0245 = icmp ult ptr %.lcssa148, %scevgep244
  %bound1246 = icmp ult ptr %1, %scevgep243
  %found.conflict247 = and i1 %bound0245, %bound1246
  br i1 %found.conflict247, label %.lr.ph.i.i.i.i.i86.preheader264, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck242
  %n.vec252 = and i64 %i.fp, 4611686018427387900  ; 3 uses
  %i.fu = shl i64 %n.vec252, 3                    ; 2 uses
  %i.fv = getelementptr i8, ptr %.lcssa148, i64 %i.fu ; 2 uses
  %i.fw = getelementptr i8, ptr %1, i64 %i.fu
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph250
  %index254 = phi i64 [ 0, %vector.ph250 ], [ %index.next259, %vector.body253 ] ; 2 uses
  %i.fx = shl i64 %index254, 3                    ; 2 uses
  %next.gep255 = getelementptr i8, ptr %.lcssa148, i64 %i.fx ; 2 uses
  %next.gep256 = getelementptr i8, ptr %1, i64 %i.fx ; 4 uses
  %i.fy = getelementptr i8, ptr %next.gep256, i64 16
  %wide.load257 = load <2 x i64>, ptr %next.gep256, align 8, !tbaa !1091, !alias.scope !1943
  %wide.load258 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !1091, !alias.scope !1943
  %i.fz = getelementptr i8, ptr %next.gep255, i64 16
  store <2 x i64> %wide.load257, ptr %next.gep255, align 8, !tbaa !1091, !alias.scope !1946, !noalias !1943
  store <2 x i64> %wide.load258, ptr %i.fz, align 8, !tbaa !1091, !alias.scope !1946, !noalias !1943
  %i.ga = getelementptr i8, ptr %next.gep256, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep256, align 8, !tbaa !1091, !alias.scope !1943
  store <2 x ptr> splat (ptr null), ptr %i.ga, align 8, !tbaa !1091, !alias.scope !1943
  %index.next259 = add nuw i64 %index254, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next259, %n.vec252
  br i1 %i.gb, label %middle.block260, label %vector.body253, !llvm.loop !1948

middle.block260:                                  ; preds = %vector.body253
  %cmp.n261 = icmp eq i64 %i.fp, %n.vec252
  br i1 %cmp.n261, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86.preheader264

.lr.ph.i.i.i.i.i86.preheader264:                  ; preds = %vector.memcheck242, %.lr.ph.i.i.i.i.i86.preheader, %middle.block260
  %.013.i.i.i.i.i87.ph = phi ptr [ %.lcssa148, %vector.memcheck242 ], [ %.lcssa148, %.lr.ph.i.i.i.i.i86.preheader ], [ %i.fv, %middle.block260 ]
  %.sroa.08.012.i.i.i.i.i88.ph = phi ptr [ %1, %vector.memcheck242 ], [ %1, %.lr.ph.i.i.i.i.i86.preheader ], [ %i.fw, %middle.block260 ]
  br label %.lr.ph.i.i.i.i.i86

.lr.ph.i.i.i.i.i86:                               ; preds = %.lr.ph.i.i.i.i.i86.preheader264, %.lr.ph.i.i.i.i.i86
  %.013.i.i.i.i.i87 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i86 ], [ %.013.i.i.i.i.i87.ph, %.lr.ph.i.i.i.i.i86.preheader264 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i88 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i86 ], [ %.sroa.08.012.i.i.i.i.i88.ph, %.lr.ph.i.i.i.i.i86.preheader264 ] ; 3 uses
  %i.gc = load i64, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !1091
  store i64 %i.gc, ptr %.013.i.i.i.i.i87, align 8, !tbaa !1091
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i88, align 8, !tbaa !1091
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i88, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i87, i64 8 ; 2 uses
  %.not.i.i.i.i.i89 = icmp eq ptr %i.gd, %i.i
  br i1 %.not.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, label %.lr.ph.i.i.i.i.i86, !llvm.loop !1949

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91: ; preds = %.lr.ph.i.i.i.i.i86, %middle.block260, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84
  %.0.lcssa.i.i.i.i.i90 = phi ptr [ %.lcssa148, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEES9_S8_ET0_T_SG_SF_RSaIT1_E.exit84 ], [ %i.fv, %middle.block260 ], [ %i.ge, %.lr.ph.i.i.i.i.i86 ]
  %.not4.i.i = icmp eq ptr %i.dn, %i.i
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.gg, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.dn, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91 ] ; 2 uses
  %i.gf = load ptr, ptr %.05.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i92, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.gf) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.gf) #37
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gg, %i.i
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit91
  %.not.i93 = icmp eq ptr %i.dn, null
  br i1 %.not.i93, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.dn) #37
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvT_S7_.exit, %bb.h
  store ptr %i.dz, ptr %0, align 8, !tbaa !1090
  store ptr %.0.lcssa.i.i.i.i.i90, ptr %i.h, align 8, !tbaa !1087
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dw
  store ptr %i.gh, ptr %i.f, align 8, !tbaa !1203
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS3_17ArrowArrayWrapperESt14default_deleteIS5_ELb1EEESt6vectorIS8_SaIS8_EEEEESD_ET0_T_SG_SF_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i70, %_ZN6duckdb10unique_ptrINS_17ArrowArrayWrapperESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_SaIS5_EET0_T_S9_S8_RT1_.exit62, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb25ArrowCollectorGlobalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb25ArrowCollectorGlobalStateE, i64 16), ptr %0, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !75
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1950
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !1950
  br label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, !prof !79

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1090 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1087 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.s, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1091 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN6duckdb17ArrowArrayWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.v) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #37
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17ArrowArrayWrapperEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.r, align 8, !tbaa !1090
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #37
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1282 ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb11QueryResultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb11QueryResultEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17ArrowArrayWrapperESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
end_hunk_8
