Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZNK4mold6SymbolINS_6X86_64EE4nameEv
define linkonce_odr dso_local { i64, ptr } @_ZNK4mold6SymbolINS_6X86_64EE4nameEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.b = load i16, ptr %i.a, align 1              ; 2 uses
  %i.c = and i16 %i.b, 256
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !83 ; 6 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !85 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.f = load i8, ptr %i.e, align 1, !tbaa !110   ; 3 uses
  %i.g = icmp ugt i8 %i.f, -17
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = and i8 %i.f, 15
  %i.i = zext nneg i8 %i.h to i64
  %i.j = shl nuw nsw i64 1, %i.i
  %i.k = add nuw nsw i64 %i.j, 239                ; 3 uses
  %i.l = icmp ult i64 %i.k, %.sroa.0.0.copyload.i
  br i1 %i.l, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.c
  %i.m = sub nuw i64 %.sroa.0.0.copyload.i, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 %i.k
  %i.o = tail call ptr @memchr(ptr noundef nonnull %i.n, i32 noundef 64, i64 noundef %i.m) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i, i64 %i.r)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = zext i8 %i.f to i64
  %.sroa.speculated.i10 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i, i64 %i.t)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

bb.f:                                             ; preds = %bb.a
  %i.u = icmp slt i16 %i.b, 0
  br i1 %i.u, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !95   ; 2 uses
  %.not.i13 = icmp eq i32 %i.w, 0
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sext i32 %i.w to i64
  %i.z = shl nsw i64 %i.y, 2
  %i.aa = add nsw i64 %i.z, %i.x                  ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 5 uses
  %.not629 = icmp eq i64 %i.aa, 0
  %.not6 = select i1 %.not.i13, i1 true, i1 %.not629
  br i1 %.not6, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !105 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ag = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !106
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = and i8 %i.ak, 15
  %i.am = icmp eq i8 %i.al, 3
  br i1 %i.am, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %.0.copyload.i.i = load i16, ptr %i.an, align 1 ; 3 uses
  %i.ao = icmp eq i16 %.0.copyload.i.i, -1
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 976
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !113
  %i.ar = shl nuw nsw i64 %i.ag, 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %.0.copyload.i5.i = load i32, ptr %i.as, align 1
  %i.at = zext i32 %.0.copyload.i5.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit

bb.l:                                             ; preds = %bb.j
  %i.au = icmp ugt i16 %.0.copyload.i.i, -257
  %narrow.i = select i1 %i.au, i16 0, i16 %.0.copyload.i.i
  %spec.select.i = zext i16 %narrow.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit: ; preds = %bb.k, %bb.l
  %.0.i15 = phi i64 [ %i.at, %bb.k ], [ %spec.select.i, %bb.l ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !87
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.ax, i64 %.0.i15
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit
  %.0.copyload.i19.sink.in = phi ptr [ %i.ai, %bb.m ], [ %i.ay, %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit ]
  %.sink.in = phi ptr [ %i.az, %bb.m ], [ %i.av, %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !114
  %.0.copyload.i19.sink = load i32, ptr %.0.copyload.i19.sink.in, align 1
  %i.ba = zext i32 %.0.copyload.i19.sink to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !110 ; 2 uses
  %i.be = icmp ugt i8 %i.bd, -17
  %i.bf = zext i8 %i.bd to i64                    ; 2 uses
  br i1 %i.be, label %bb.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = and i64 %i.bf, 15
  %i.bh = shl nuw nsw i64 1, %i.bg
  %i.bi = add nuw nsw i64 %i.bh, 239              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bi
  %i.bk = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bj) #31
  %i.bl = add i64 %i.bk, %i.bi
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %bb.o, %bb.n, %bb.g, %bb.h, %bb.f, %bb.d, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.c, %bb.e
  %.sroa.628.1 = phi ptr [ %.sroa.2.0.copyload.i, %bb.d ], [ @.str.83, %bb.f ], [ @.str.8, %bb.g ], [ %.sroa.2.0.copyload.i, %bb.e ], [ %.sroa.2.0.copyload.i, %bb.c ], [ %.sroa.2.0.copyload.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ @.str.8, %bb.h ], [ %i.bb, %bb.n ], [ %i.bb, %bb.o ]
  %.sroa.027.1 = phi i64 [ %i.s, %bb.d ], [ 10, %bb.f ], [ 0, %bb.g ], [ %.sroa.speculated.i10, %bb.e ], [ %.sroa.0.0.copyload.i, %bb.c ], [ %.sroa.0.0.copyload.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ 0, %bb.h ], [ %i.bf, %bb.n ], [ %i.bl, %bb.o ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.027.1, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.628.1, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold9InputFileINS_6X86_64EE28populate_symbol_name_lengthsEv(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !86   ; 5 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !117
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.k
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30 ; 9 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !116  ; 10 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !117  ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE11_M_allocateEm.exit.i
  %i.u = ptrtoaddr ptr %i.s to i64                ; 2 uses
  %i.v = ptrtoaddr ptr %i.r to i64
  %i.w = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.x = sub i64 %i.w, %i.u                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.x, 8
  %i.y = sub i64 %i.u, %i.v
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check16 = icmp ult i64 %i.x, 32
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.x, 24
  %n.vec = and i64 %i.x, -32                      ; 5 uses
  %i.aa = getelementptr i8, ptr %i.r, i64 %n.vec
  %i.ab = getelementptr i8, ptr %i.s, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %index ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.s, i64 %index ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.ac = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep17, align 1, !tbaa !77, !alias.scope !774, !noalias !773
  %wide.load18 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !77, !alias.scope !774, !noalias !773
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !77, !alias.scope !773, !noalias !774
  store <16 x i8> %wide.load18, ptr %i.ad, align 1, !tbaa !77, !alias.scope !773, !noalias !774
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !755

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !120

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.x, -8                     ; 4 uses
  %i.af = getelementptr i8, ptr %i.r, i64 %n.vec20
  %i.ag = getelementptr i8, ptr %i.s, i64 %n.vec20
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %next.gep22 = getelementptr i8, ptr %i.r, i64 %index21
  %next.gep23 = getelementptr i8, ptr %i.s, i64 %index21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %wide.load24 = load <8 x i8>, ptr %next.gep23, align 1, !tbaa !77, !alias.scope !774, !noalias !773
  store <8 x i8> %wide.load24, ptr %next.gep22, align 1, !tbaa !77, !alias.scope !773, !noalias !774
  %index.next25 = add nuw i64 %index21, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !756

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %i.x, %n.vec20
  br i1 %cmp.n26, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.i.ph = phi ptr [ %i.s, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.i.ph29 = ptrtoaddr ptr %.0911.i.i.i.i.ph to i64 ; 2 uses
  %i.ai = sub i64 %i.w, %.0911.i.i.i.i.ph29
  %xtraiter = and i64 %i.ai, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.012.i.i.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.i.i.prol ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.prol ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.aj = load i8, ptr %.0911.i.i.i.i.prol, align 1, !tbaa !77, !alias.scope !774, !noalias !773
  store i8 %i.aj, ptr %.012.i.i.i.i.prol, align 1, !tbaa !77, !alias.scope !773, !noalias !774
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.prol, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !757

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.012.i.i.i.i.unr = phi ptr [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.prol ]
  %.0911.i.i.i.i.unr = phi ptr [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.i.i.prol ]
  %i.am = sub i64 %.0911.i.i.i.i.ph29, %i.w
  %i.an = icmp ugt i64 %i.am, -8
  br i1 %i.an, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.ao = load i8, ptr %.0911.i.i.i.i, align 1, !tbaa !77, !alias.scope !774, !noalias !773
  store i8 %i.ao, ptr %.012.i.i.i.i, align 1, !tbaa !77, !alias.scope !773, !noalias !774
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !77, !alias.scope !776, !noalias !775
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !77, !alias.scope !775, !noalias !776
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 2
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.au = load i8, ptr %i.as, align 1, !tbaa !77, !alias.scope !778, !noalias !777
  store i8 %i.au, ptr %i.at, align 1, !tbaa !77, !alias.scope !777, !noalias !778
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 3
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !77, !alias.scope !780, !noalias !779
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !77, !alias.scope !779, !noalias !780
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !77, !alias.scope !782, !noalias !781
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !77, !alias.scope !781, !noalias !782
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 5
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !77, !alias.scope !784, !noalias !783
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !77, !alias.scope !783, !noalias !784
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 6
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !77, !alias.scope !786, !noalias !785
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !77, !alias.scope !785, !noalias !786
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 7
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !77, !alias.scope !788, !noalias !787
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !77, !alias.scope !787, !noalias !788
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i.7 = icmp eq ptr %i.bk, %i.t
  br i1 %.not.i.i.i.i.7, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !772

_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.s to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bp) #28
  br label %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.r, ptr %i.b, align 8, !tbaa !116
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store ptr %i.bq, ptr %i.n, align 8, !tbaa !117
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.e
  store ptr %i.br, ptr %i.g, align 8, !tbaa !115
  %.pre = load i64, ptr %i.d, align 8, !tbaa !86
  br label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN4mold7NameLenESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.bs = phi i64 [ %i.e, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !122 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bs, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx
  %i.bv = icmp eq i64 %i.bs, 0
  br i1 %i.bv, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4mold7NameLenESaIS1_EE7reserveEm.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4mold7NameLenESaIS1_EE12emplace_backIJmEEERS1_DpOT_.exit, %_ZNSt6vectorIN4mold7NameLenESaIS1_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4mold7NameLenESaIS1_EE12emplace_backIJmEEERS1_DpOT_.exit
  %.sroa.05.08 = phi ptr [ %i.bt, %.lr.ph ], [ %i.cm, %_ZNSt6vectorIN4mold7NameLenESaIS1_EE12emplace_backIJmEEERS1_DpOT_.exit ] ; 2 uses
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !114
  %.0.copyload.i = load i32, ptr %.sroa.05.08, align 1
  %i.bz = zext i32 %.0.copyload.i to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.cb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ca) #31 ; 4 uses
  store i64 %i.cb, ptr %i.a, align 8, !tbaa !83
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !117 ; 4 uses
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !115
  %.not.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = icmp slt i64 %i.cb, 240
  br i1 %i.ce, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cf = trunc i64 %i.cb to i8
  br label %_ZSt12construct_atIN4mold7NameLenEJmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.cg = add nsw i64 %i.cb, -239
  %i.ch = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cg, i1 false)
  %i.ci = sub nuw nsw i64 63, %i.ch
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.ci, i64 15)
  %i.cj = trunc nuw nsw i64 %.sroa.speculated.i.i.i to i8
  %i.ck = or disjoint i8 %i.cj, -16
  br label %_ZSt12construct_atIN4mold7NameLenEJmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i

_ZSt12construct_atIN4mold7NameLenEJmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i: ; preds = %bb.h, %bb.g
  %storemerge.i.i.i = phi i8 [ %i.ck, %bb.h ], [ %i.cf, %bb.g ]
end_hunk_0
begin_hunk_1_@_ZN4mold10SharedFileINS_6X86_64EED2Ev:bb.a
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28
  br label %_ZNSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !640  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit4, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !639
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #28
  br label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit4

_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit4: ; preds = %_ZNSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EED2Ev.exit, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !633 ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !634
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #28
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EED2Ev.exit4, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !74 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit
  %i.an = load i64, ptr %i.al, align 8, !tbaa !77
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4mold9InputFileINS_6X86_64EEE, i64 16), ptr %0, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !616 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !656
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #28, !inline_history !660
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !115
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #28, !inline_history !660
  br label %_ZNSt6vectorIN4mold7NameLenESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4mold7NameLenESaIS1_EED2Ev.exit.i:  ; preds = %bb.h, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !74 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN4mold9InputFileINS_6X86_64EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4mold7NameLenESaIS1_EED2Ev.exit.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !77
  %i.bi = add i64 %i.bh, 1
  tail call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #28, !inline_history !660
  br label %_ZN4mold9InputFileINS_6X86_64EED2Ev.exit

_ZN4mold9InputFileINS_6X86_64EED2Ev.exit:         ; preds = %_ZNSt6vectorIN4mold7NameLenESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold10SharedFileINS_6X86_64EED0Ev(ptr noundef nonnull align 8 dereferenceable(480) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN4mold10SharedFileINS_6X86_64EED2Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 480) #28
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIN4mold7NameLenESaIS1_EE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !116    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4mold7NameLenESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #29
  unreachable

_ZNKSt6vectorIN4mold7NameLenESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.h = add i64 %.sroa.speculated.i, %i.f        ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.h, i64 9223372036854775807)
  %i.k = select i1 %i.i, i64 9223372036854775807, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4mold7NameLenESaIS1_EE12_M_check_lenEmPKc.exit
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #30
  br label %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4mold7NameLenESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorIN4mold7NameLenESaIS1_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.r = load i64, ptr %2, align 8, !tbaa !83     ; 3 uses
  %i.s = icmp slt i64 %i.r, 240
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE11_M_allocateEm.exit
  %i.t = trunc i64 %i.r to i8
  br label %_ZSt12construct_atIN4mold7NameLenEJmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE11_M_allocateEm.exit
  %i.u = add nsw i64 %i.r, -239
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 false)
  %i.w = sub nuw nsw i64 63, %i.v
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 15)
  %i.x = trunc nuw nsw i64 %.sroa.speculated.i.i to i8
  %i.y = or disjoint i8 %i.x, -16
  br label %_ZSt12construct_atIN4mold7NameLenEJmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit

_ZSt12construct_atIN4mold7NameLenEJmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit: ; preds = %bb.d, %bb.e
  %storemerge.i.i = phi i8 [ %i.y, %bb.e ], [ %i.t, %bb.d ]
  store i8 %storemerge.i.i, ptr %i.q, align 1, !tbaa !110
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt12construct_atIN4mold7NameLenEJmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %i.z = sub i64 %i.l, %i.e                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  %i.aa = sub i64 %i.e, %i.p
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check38 = icmp ult i64 %i.z, 32
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.z, 24
  %n.vec = and i64 %i.z, -32                      ; 5 uses
  %i.ac = getelementptr i8, ptr %i.o, i64 %n.vec  ; 2 uses
  %i.ad = getelementptr i8, ptr %i.c, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %index ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.c, i64 %index ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.ae = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep39, align 1, !tbaa !77, !alias.scope !1103, !noalias !1102
  %wide.load40 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !77, !alias.scope !1103, !noalias !1102
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !77, !alias.scope !1102, !noalias !1103
  store <16 x i8> %wide.load40, ptr %i.af, align 1, !tbaa !77, !alias.scope !1102, !noalias !1103
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1063

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !120

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %i.z, -8                     ; 4 uses
  %i.ah = getelementptr i8, ptr %i.o, i64 %n.vec42 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.c, i64 %n.vec42
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 3 uses
  %next.gep44 = getelementptr i8, ptr %i.o, i64 %index43
  %next.gep45 = getelementptr i8, ptr %i.c, i64 %index43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %wide.load46 = load <8 x i8>, ptr %next.gep45, align 1, !tbaa !77, !alias.scope !1103, !noalias !1102
  store <8 x i8> %wide.load46, ptr %next.gep44, align 1, !tbaa !77, !alias.scope !1102, !noalias !1103
  %index.next47 = add nuw i64 %index43, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next47, %n.vec42
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1064

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %i.z, %n.vec42
  br i1 %cmp.n48, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.ph88 = ptrtoaddr ptr %.0911.i.i.i.ph to i64 ; 2 uses
  %i.ak = sub i64 %i.l, %.0911.i.i.i.ph88
  %xtraiter = and i64 %i.ak, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.012.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.prol ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.i.prol ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.al = load i8, ptr %.0911.i.i.i.prol, align 1, !tbaa !77, !alias.scope !1103, !noalias !1102
  store i8 %i.al, ptr %.012.i.i.i.prol, align 1, !tbaa !77, !alias.scope !1102, !noalias !1103
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.prol, i64 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1065

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa87.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.an, %.lr.ph.i.i.i.prol ]
  %.012.i.i.i.unr = phi ptr [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.an, %.lr.ph.i.i.i.prol ]
  %.0911.i.i.i.unr = phi ptr [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.am, %.lr.ph.i.i.i.prol ]
  %i.ao = sub i64 %.0911.i.i.i.ph88, %i.l
  %i.ap = icmp ugt i64 %i.ao, -8
  br i1 %i.ap, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %.0911.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.aq = load i8, ptr %.0911.i.i.i, align 1, !tbaa !77, !alias.scope !1103, !noalias !1102
  store i8 %i.aq, ptr %.012.i.i.i, align 1, !tbaa !77, !alias.scope !1102, !noalias !1103
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !77, !alias.scope !1105, !noalias !1104
  store i8 %i.at, ptr %i.as, align 1, !tbaa !77, !alias.scope !1104, !noalias !1105
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !77, !alias.scope !1107, !noalias !1106
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !77, !alias.scope !1106, !noalias !1107
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !77, !alias.scope !1109, !noalias !1108
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !77, !alias.scope !1108, !noalias !1109
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !77, !alias.scope !1111, !noalias !1110
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !77, !alias.scope !1110, !noalias !1111
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 5
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !77, !alias.scope !1113, !noalias !1112
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !77, !alias.scope !1112, !noalias !1113
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 6
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !77, !alias.scope !1115, !noalias !1114
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !77, !alias.scope !1114, !noalias !1115
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 7
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !77, !alias.scope !1117, !noalias !1116
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !77, !alias.scope !1116, !noalias !1117
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.bm, %1
  br i1 %.not.i.i.i.7, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1080

_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt12construct_atIN4mold7NameLenEJmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZSt12construct_atIN4mold7NameLenEJmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit ], [ %i.ah, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %.lcssa87.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bn, %.lr.ph.i.i.i ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %iter.check70

iter.check70:                                     ; preds = %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i52 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.bp = sub i64 %i.d, %i.l                      ; 7 uses
  %min.iters.check54 = icmp ult i64 %i.bp, 8
  %i.bq = sub i64 %.0.lcssa.i.i.i52, %i.l
  %diff.check53 = icmp ult i64 %i.bq, 31
  %or.cond86 = select i1 %min.iters.check54, i1 true, i1 %diff.check53
  br i1 %or.cond86, label %.lr.ph.i.i.i17.preheader, label %vector.main.loop.iter.check55

vector.main.loop.iter.check55:                    ; preds = %iter.check70
  %min.iters.check56 = icmp ult i64 %i.bp, 32
  br i1 %min.iters.check56, label %vec.epilog.ph74, label %vector.ph57

vector.ph57:                                      ; preds = %vector.main.loop.iter.check55
  %i.br = and i64 %i.bp, 24
  %n.vec58 = and i64 %i.bp, -32                   ; 5 uses
  %i.bs = getelementptr i8, ptr %i.bo, i64 %n.vec58 ; 2 uses
  %i.bt = getelementptr i8, ptr %1, i64 %n.vec58
  br label %vector.body59

vector.body59:                                    ; preds = %vector.ph57, %vector.body59
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next65, %vector.body59 ] ; 3 uses
  %next.gep61 = getelementptr i8, ptr %i.bo, i64 %index60 ; 2 uses
  %next.gep62 = getelementptr i8, ptr %1, i64 %index60 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.bu = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load63 = load <16 x i8>, ptr %next.gep62, align 1, !tbaa !77, !alias.scope !1119, !noalias !1118
  %wide.load64 = load <16 x i8>, ptr %i.bu, align 1, !tbaa !77, !alias.scope !1119, !noalias !1118
  %i.bv = getelementptr i8, ptr %next.gep61, i64 16
  store <16 x i8> %wide.load63, ptr %next.gep61, align 1, !tbaa !77, !alias.scope !1118, !noalias !1119
  store <16 x i8> %wide.load64, ptr %i.bv, align 1, !tbaa !77, !alias.scope !1118, !noalias !1119
  %index.next65 = add nuw i64 %index60, 32        ; 2 uses
  %i.bw = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.bw, label %middle.block66, label %vector.body59, !llvm.loop !1084

middle.block66:                                   ; preds = %vector.body59
  %cmp.n67 = icmp eq i64 %i.bp, %n.vec58
  br i1 %cmp.n67, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %vec.epilog.iter.check72

vec.epilog.iter.check72:                          ; preds = %middle.block66
  %min.epilog.iters.check73 = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check73, label %.lr.ph.i.i.i17.preheader, label %vec.epilog.ph74, !prof !120

vec.epilog.ph74:                                  ; preds = %vector.main.loop.iter.check55, %vec.epilog.iter.check72
  %vec.epilog.resume.val68 = phi i64 [ %n.vec58, %vec.epilog.iter.check72 ], [ 0, %vector.main.loop.iter.check55 ]
  %n.vec75 = and i64 %i.bp, -8                    ; 4 uses
  %i.bx = getelementptr i8, ptr %i.bo, i64 %n.vec75 ; 2 uses
  %i.by = getelementptr i8, ptr %1, i64 %n.vec75
  br label %vec.epilog.vector.body76

vec.epilog.vector.body76:                         ; preds = %vec.epilog.vector.body76, %vec.epilog.ph74
  %index77 = phi i64 [ %vec.epilog.resume.val68, %vec.epilog.ph74 ], [ %index.next81, %vec.epilog.vector.body76 ] ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.bo, i64 %index77
  %next.gep79 = getelementptr i8, ptr %1, i64 %index77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %wide.load80 = load <8 x i8>, ptr %next.gep79, align 1, !tbaa !77, !alias.scope !1119, !noalias !1118
  store <8 x i8> %wide.load80, ptr %next.gep78, align 1, !tbaa !77, !alias.scope !1118, !noalias !1119
  %index.next81 = add nuw i64 %index77, 8         ; 2 uses
  %i.bz = icmp eq i64 %index.next81, %n.vec75
  br i1 %i.bz, label %vec.epilog.middle.block82, label %vec.epilog.vector.body76, !llvm.loop !1085

vec.epilog.middle.block82:                        ; preds = %vec.epilog.vector.body76
  %cmp.n83 = icmp eq i64 %i.bp, %n.vec75
  br i1 %cmp.n83, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %iter.check70, %vec.epilog.iter.check72, %vec.epilog.middle.block82
  %.012.i.i.i18.ph = phi ptr [ %i.bo, %iter.check70 ], [ %i.bs, %vec.epilog.iter.check72 ], [ %i.bx, %vec.epilog.middle.block82 ] ; 2 uses
  %.0911.i.i.i19.ph = phi ptr [ %1, %iter.check70 ], [ %i.bt, %vec.epilog.iter.check72 ], [ %i.by, %vec.epilog.middle.block82 ] ; 3 uses
  %.0911.i.i.i19.ph89 = ptrtoaddr ptr %.0911.i.i.i19.ph to i64 ; 2 uses
  %i.ca = sub i64 %i.d, %.0911.i.i.i19.ph89
  %xtraiter90 = and i64 %i.ca, 7                  ; 2 uses
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i17.prol

.lr.ph.i.i.i17.prol:                              ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17.prol
  %.012.i.i.i18.prol = phi ptr [ %i.cd, %.lr.ph.i.i.i17.prol ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %.0911.i.i.i19.prol = phi ptr [ %i.cc, %.lr.ph.i.i.i17.prol ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %prol.iter92 = phi i64 [ %prol.iter92.next, %.lr.ph.i.i.i17.prol ], [ 0, %.lr.ph.i.i.i17.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.cb = load i8, ptr %.0911.i.i.i19.prol, align 1, !tbaa !77, !alias.scope !1119, !noalias !1118
  store i8 %i.cb, ptr %.012.i.i.i18.prol, align 1, !tbaa !77, !alias.scope !1118, !noalias !1119
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.prol, i64 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.prol, i64 1 ; 3 uses
  %prol.iter92.next = add i64 %prol.iter92, 1     ; 2 uses
  %prol.iter92.cmp.not = icmp eq i64 %prol.iter92.next, %xtraiter90
  br i1 %prol.iter92.cmp.not, label %.lr.ph.i.i.i17.prol.loopexit, label %.lr.ph.i.i.i17.prol, !llvm.loop !1086

.lr.ph.i.i.i17.prol.loopexit:                     ; preds = %.lr.ph.i.i.i17.prol, %.lr.ph.i.i.i17.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i17.preheader ], [ %i.cd, %.lr.ph.i.i.i17.prol ]
  %.012.i.i.i18.unr = phi ptr [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ], [ %i.cd, %.lr.ph.i.i.i17.prol ]
  %.0911.i.i.i19.unr = phi ptr [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader ], [ %i.cc, %.lr.ph.i.i.i17.prol ]
  %i.ce = sub i64 %.0911.i.i.i19.ph89, %i.d
  %i.cf = icmp ugt i64 %i.ce, -8
  br i1 %i.cf, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.prol.loopexit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.dd, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.unr, %.lr.ph.i.i.i17.prol.loopexit ] ; 9 uses
  %.0911.i.i.i19 = phi ptr [ %i.dc, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.unr, %.lr.ph.i.i.i17.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.cg = load i8, ptr %.0911.i.i.i19, align 1, !tbaa !77, !alias.scope !1119, !noalias !1118
  store i8 %i.cg, ptr %.012.i.i.i18, align 1, !tbaa !77, !alias.scope !1118, !noalias !1119
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.cj = load i8, ptr %i.ch, align 1, !tbaa !77, !alias.scope !1121, !noalias !1120
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !77, !alias.scope !1120, !noalias !1121
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !77, !alias.scope !1123, !noalias !1122
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !77, !alias.scope !1122, !noalias !1123
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 3
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !77, !alias.scope !1125, !noalias !1124
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !77, !alias.scope !1124, !noalias !1125
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !77, !alias.scope !1127, !noalias !1126
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !77, !alias.scope !1126, !noalias !1127
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 5
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !77, !alias.scope !1129, !noalias !1128
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !77, !alias.scope !1128, !noalias !1129
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !77, !alias.scope !1131, !noalias !1130
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !77, !alias.scope !1130, !noalias !1131
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 7
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !77, !alias.scope !1133, !noalias !1132
  store i8 %i.db, ptr %i.da, align 1, !tbaa !77, !alias.scope !1132, !noalias !1133
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20.7 = icmp eq ptr %i.dc, %i.b
  br i1 %.not.i.i.i20.7, label %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1101

_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17.prol.loopexit, %.lr.ph.i.i.i17, %middle.block66, %vec.epilog.middle.block82, %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.bo, %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bx, %vec.epilog.middle.block82 ], [ %i.bs, %middle.block66 ], [ %.lcssa.unr, %.lr.ph.i.i.i17.prol.loopexit ], [ %i.dd, %.lr.ph.i.i.i17 ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !115
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dh) #28
  br label %_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4mold7NameLenESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN4mold7NameLenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !116
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !117
  %i.di = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k
  store ptr %i.di, ptr %i.de, align 8, !tbaa !115
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.neg = sext i1 %4 to i8                        ; 2 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.d = load ptr, ptr %0, align 8, !tbaa !137
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !137  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !138  ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.f
  %i.o = shl nsw i64 %i.n, 3
  %i.p = zext i32 %i.l to i64                     ; 3 uses
  %i.q = add nsw i64 %i.o, %i.p                   ; 5 uses
  %i.r = sub i64 %i.h, %i.q
  %.not = icmp ult i64 %i.r, %3
  br i1 %.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.t = sub i64 %i.m, %i.s
  %i.u = shl nsw i64 %i.t, 3
  %i.v = zext i32 %2 to i64                       ; 4 uses
  %i.w = sub nsw i64 %i.p, %i.v
  %i.x = add i64 %i.w, %i.u                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.c
  %i.z = add nsw i64 %3, %i.p                     ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 63
end_hunk_1
