Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory11command_ins:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit
  tail call fastcc void @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register(i32 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i8 noundef %.sroa.02.0, i8 noundef 5)
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit13, %bb.q, %bb.m, %bb.i
  ret void

bb.o:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4985)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !4985, !noalias !4986, !noundef !21 ; 3 uses
  %i.an = load i64, ptr %i.ak, align 8, !range !22, !alias.scope !4985, !noalias !4986, !noundef !21
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.p, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit10

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #44, !noalias !4986
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit10

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit10: ; preds = %bb.o, %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !4985, !noalias !4986, !nonnull !21, !noundef !21
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.am ; 6 uses
  store i64 0, ptr %i.ar, align 8, !noalias !4985
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i8 71, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4985
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  store i8 %.sroa.02.0, ptr %.sroa.5.0..sroa_idx, align 1, !noalias !4985
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 10
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.6.0..sroa_idx, align 2, !noalias !4985
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  store i8 4, ptr %.sroa.10.0..sroa_idx, align 2, !noalias !4985
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 15
  store i8 %.sroa.0.0, ptr %.sroa.11.0..sroa_idx, align 1, !noalias !4985
  %i.as = add i64 %i.am, 1
  store i64 %i.as, ptr %i.al, align 8, !alias.scope !4985, !noalias !4986
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit10
  %i.at = and i32 %2, 2
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.r, label %bb.n

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.aw = load i64, ptr %i.av, align 8, !noundef !21
  %.not8 = icmp eq i64 %i.aw, 0
  br i1 %.not8, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !21, !noundef !21 ; 2 uses
  store i8 2, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 23, ptr %i.az, align 1
  tail call fastcc void @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register(i32 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i8 noundef %.sroa.07.0, i8 noundef 6)
  %i.ba = and i32 %2, 4                           ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  %.pre = load i64, ptr %i.av, align 8            ; 4 uses
  %.pre24 = load i64, ptr %1, align 8, !range !22 ; 3 uses
  br i1 %i.bb, label %bb.u, label %bb.w

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #47
  unreachable

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4988)
  %i.bc = icmp eq i64 %.pre, %.pre24
  br i1 %i.bc, label %bb.v, label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit11

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #44
  %.pre23.pre = load i64, ptr %1, align 8, !range !22, !alias.scope !4989
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit11

_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit11: ; preds = %bb.u, %bb.v
  %.pre23 = phi i64 [ %.pre24, %bb.u ], [ %.pre23.pre, %bb.v ]
  %i.bd = load ptr, ptr %i.ax, align 8, !alias.scope !4990, !nonnull !21, !noundef !21
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %.pre ; 2 uses
  store i8 2, ptr %i.be, align 1, !noalias !4990
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 71, ptr %i.bf, align 1, !noalias !4990
  %i.bg = add i64 %.pre, 1                        ; 2 uses
  store i64 %i.bg, ptr %i.av, align 8, !alias.scope !4990
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit11
  %i.bh = phi i64 [ %.pre24, %bb.s ], [ %.pre23, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit11 ]
  %i.bi = phi i64 [ %.pre, %bb.s ], [ %i.bg, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit11 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4992)
  %i.bj = icmp eq i64 %i.bi, %i.bh
  br i1 %i.bj, label %bb.x, label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit12

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #44
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit12

_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit12: ; preds = %bb.w, %bb.x
  %i.bk = load ptr, ptr %i.ax, align 8, !alias.scope !4989, !nonnull !21, !noundef !21 ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bi ; 2 uses
  store i8 2, ptr %i.bl, align 1, !noalias !4989
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %.sroa.02.0, ptr %i.bm, align 1, !noalias !4989
  %i.bn = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bn, ptr %i.av, align 8, !alias.scope !4989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4993)
  %i.bo = icmp samesign ugt i32 %2, 3
  br i1 %i.bo, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit12
  %i.bp = icmp ne i32 %i.ba, 0
  %i.bq = add nsw i8 %.sroa.02.0, -40
  %i.br = icmp ult i8 %i.bq, 16
  %or.cond3.i = and i1 %i.bp, %i.br
  %i.bs = add nuw nsw i8 %.sroa.02.0, 16
  %spec.select = select i1 %or.cond3.i, i8 %i.bs, i8 %.sroa.02.0
  br label %.thread.i

.thread.i:                                        ; preds = %bb.y, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit12
  %.sroa.0.028.i = phi i8 [ %spec.select, %bb.y ], [ %.sroa.02.0, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4994)
  %i.bt = load i64, ptr %1, align 8, !range !22, !alias.scope !4995, !noundef !21
  %i.bu = icmp eq i64 %i.bn, %i.bt
  br i1 %i.bu, label %bb.z, label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit13

bb.z:                                             ; preds = %.thread.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #44
  %.pre25 = load ptr, ptr %i.ax, align 8, !alias.scope !4995
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit13

_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit13: ; preds = %.thread.i, %bb.z
  %i.bv = phi ptr [ %i.bk, %.thread.i ], [ %.pre25, %bb.z ]
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.bn ; 2 uses
  store i8 4, ptr %i.bw, align 1, !noalias !4995
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 %.sroa.0.028.i, ptr %i.bx, align 1, !noalias !4995
  %i.by = add i64 %i.bi, 2
  store i64 %i.by, ptr %i.av, align 8, !alias.scope !4995
  br label %bb.n
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory11command_lea(i8 %.28.val, ptr nofree captures(address) %.8.val, i64 %.16.val, i32 noundef range(i32 0, 16) %0) unnamed_addr #15 {
bb.a:
  %.28.val.fr = freeze i8 %.28.val                ; 2 uses
  %i.a = and i32 %0, 2
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.idx = shl nuw nsw i64 %.16.val, 1
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx ; 2 uses
  %i.d = add i8 %.28.val.fr, -37
  %or.cond = icmp ult i8 %i.d, 16
  br i1 %or.cond, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.b
  %.not.i.not.us.peel = icmp samesign ugt i64 %.16.val, 1
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 27 uses
  br i1 %.not.i.not.us.peel, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.split.us.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 3 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !noundef !21 ; 2 uses
  %i.h = add i8 %i.g, -53
  %or.cond10.us.peel = icmp ult i8 %i.h, 16
  br i1 %or.cond10.us.peel, label %bb.d, label %.split.us.peel.next

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i8 %i.g, -16
  store i8 %i.i, ptr %i.f, align 1
  br label %.split.us.peel.next

.split.us.peel.next:                              ; preds = %bb.d, %bb.c
  %i.j = icmp eq i64 %.16.val, 2
  br i1 %i.j, label %.loopexit, label %iter.check152

iter.check152:                                    ; preds = %.split.us.peel.next
  %i.k = add i64 %.16.val, 9223372036854775805
  %i.l = and i64 %i.k, 9223372036854775807        ; 3 uses
  %i.m = add nuw i64 %i.l, 1                      ; 4 uses
  %min.iters.check94 = icmp samesign ult i64 %i.l, 8
  br i1 %min.iters.check94, label %vec.epilog.scalar.ph153.preheader, label %vector.main.loop.iter.check95

vector.main.loop.iter.check95:                    ; preds = %iter.check152
  %min.iters.check96 = icmp samesign ult i64 %i.l, 16
  br i1 %min.iters.check96, label %vec.epilog.ph156, label %vector.ph97

vector.ph97:                                      ; preds = %vector.main.loop.iter.check95
  %i.n = and i64 %i.m, 15                         ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 16, i64 %i.n         ; 2 uses
  %n.vec98 = sub i64 %i.m, %i.p                   ; 3 uses
  br label %vector.body99

vector.body99:                                    ; preds = %pred.store.continue148, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next149, %pred.store.continue148 ] ; 2 uses
  %i.q = shl i64 %index100, 1                     ; 16 uses
  %next.gep101 = getelementptr i8, ptr %i.e, i64 %i.q
  %i.r = getelementptr i8, ptr %i.e, i64 %i.q
  %i.s = getelementptr i8, ptr %i.e, i64 %i.q
  %i.t = getelementptr i8, ptr %i.e, i64 %i.q
  %i.u = getelementptr i8, ptr %i.e, i64 %i.q
  %i.v = getelementptr i8, ptr %i.e, i64 %i.q
  %i.w = getelementptr i8, ptr %i.e, i64 %i.q
  %i.x = getelementptr i8, ptr %i.e, i64 %i.q
  %i.y = getelementptr i8, ptr %i.e, i64 %i.q
  %i.z = getelementptr i8, ptr %i.e, i64 %i.q
  %i.aa = getelementptr i8, ptr %i.e, i64 %i.q
  %i.ab = getelementptr i8, ptr %i.e, i64 %i.q
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.q
  %i.ad = getelementptr i8, ptr %i.e, i64 %i.q
  %i.ae = getelementptr i8, ptr %i.e, i64 %i.q
  %i.af = getelementptr i8, ptr %i.e, i64 %i.q
  %i.ag = getelementptr inbounds nuw i8, ptr %next.gep101, i64 1 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.r, i64 3       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.s, i64 5       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.t, i64 7       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.u, i64 9       ; 2 uses
  %i.al = getelementptr i8, ptr %i.v, i64 11      ; 2 uses
  %i.am = getelementptr i8, ptr %i.w, i64 13      ; 2 uses
  %i.an = getelementptr i8, ptr %i.x, i64 15      ; 2 uses
  %i.ao = getelementptr i8, ptr %i.y, i64 17      ; 2 uses
  %i.ap = getelementptr i8, ptr %i.z, i64 19      ; 2 uses
  %i.aq = getelementptr i8, ptr %i.aa, i64 21     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ab, i64 23     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ac, i64 25     ; 2 uses
  %i.at = getelementptr i8, ptr %i.ad, i64 27     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ae, i64 29     ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 31     ; 2 uses
  %i.aw = load i8, ptr %i.ag, align 1, !noundef !21 ; 2 uses
  %i.ax = load i8, ptr %i.ah, align 1, !noundef !21 ; 2 uses
  %i.ay = load i8, ptr %i.ai, align 1, !noundef !21 ; 2 uses
  %i.az = load i8, ptr %i.aj, align 1, !noundef !21 ; 2 uses
  %i.ba = load i8, ptr %i.ak, align 1, !noundef !21 ; 2 uses
  %i.bb = load i8, ptr %i.al, align 1, !noundef !21 ; 2 uses
  %i.bc = load i8, ptr %i.am, align 1, !noundef !21 ; 2 uses
  %i.bd = load i8, ptr %i.an, align 1, !noundef !21 ; 2 uses
  %i.be = load i8, ptr %i.ao, align 1, !noundef !21 ; 2 uses
  %i.bf = load i8, ptr %i.ap, align 1, !noundef !21 ; 2 uses
  %i.bg = load i8, ptr %i.aq, align 1, !noundef !21 ; 2 uses
  %i.bh = load i8, ptr %i.ar, align 1, !noundef !21 ; 2 uses
  %i.bi = load i8, ptr %i.as, align 1, !noundef !21 ; 2 uses
  %i.bj = load i8, ptr %i.at, align 1, !noundef !21 ; 2 uses
  %i.bk = load i8, ptr %i.au, align 1, !noundef !21 ; 2 uses
  %i.bl = load i8, ptr %i.av, align 1, !noundef !21 ; 2 uses
  %i.bm = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 1
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 2
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 3
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 4
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 5
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 6
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 7
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 8
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 9
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 10
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 11
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 12
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 13
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 14
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 15
  %i.cc = add <16 x i8> %i.cb, splat (i8 -53)
  %i.cd = icmp ult <16 x i8> %i.cc, splat (i8 16) ; 16 uses
  %i.ce = extractelement <16 x i1> %i.cd, i64 0
  br i1 %i.ce, label %pred.store.if117, label %pred.store.continue118

pred.store.if117:                                 ; preds = %vector.body99
  %i.cf = add nsw i8 %i.aw, -16
  store i8 %i.cf, ptr %i.ag, align 1
  br label %pred.store.continue118

pred.store.continue118:                           ; preds = %pred.store.if117, %vector.body99
  %i.cg = extractelement <16 x i1> %i.cd, i64 1
  br i1 %i.cg, label %pred.store.if119, label %pred.store.continue120

pred.store.if119:                                 ; preds = %pred.store.continue118
  %i.ch = add nsw i8 %i.ax, -16
  store i8 %i.ch, ptr %i.ah, align 1
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.if119, %pred.store.continue118
  %i.ci = extractelement <16 x i1> %i.cd, i64 2
  br i1 %i.ci, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %pred.store.continue120
  %i.cj = add nsw i8 %i.ay, -16
  store i8 %i.cj, ptr %i.ai, align 1
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %pred.store.continue120
  %i.ck = extractelement <16 x i1> %i.cd, i64 3
  br i1 %i.ck, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
  %i.cl = add nsw i8 %i.az, -16
  store i8 %i.cl, ptr %i.aj, align 1
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.if123, %pred.store.continue122
  %i.cm = extractelement <16 x i1> %i.cd, i64 4
  br i1 %i.cm, label %pred.store.if125, label %pred.store.continue126

pred.store.if125:                                 ; preds = %pred.store.continue124
  %i.cn = add nsw i8 %i.ba, -16
  store i8 %i.cn, ptr %i.ak, align 1
  br label %pred.store.continue126

pred.store.continue126:                           ; preds = %pred.store.if125, %pred.store.continue124
  %i.co = extractelement <16 x i1> %i.cd, i64 5
  br i1 %i.co, label %pred.store.if127, label %pred.store.continue128

pred.store.if127:                                 ; preds = %pred.store.continue126
  %i.cp = add nsw i8 %i.bb, -16
  store i8 %i.cp, ptr %i.al, align 1
  br label %pred.store.continue128

pred.store.continue128:                           ; preds = %pred.store.if127, %pred.store.continue126
  %i.cq = extractelement <16 x i1> %i.cd, i64 6
  br i1 %i.cq, label %pred.store.if129, label %pred.store.continue130

pred.store.if129:                                 ; preds = %pred.store.continue128
  %i.cr = add nsw i8 %i.bc, -16
  store i8 %i.cr, ptr %i.am, align 1
  br label %pred.store.continue130

pred.store.continue130:                           ; preds = %pred.store.if129, %pred.store.continue128
  %i.cs = extractelement <16 x i1> %i.cd, i64 7
  br i1 %i.cs, label %pred.store.if131, label %pred.store.continue132

pred.store.if131:                                 ; preds = %pred.store.continue130
  %i.ct = add nsw i8 %i.bd, -16
  store i8 %i.ct, ptr %i.an, align 1
  br label %pred.store.continue132

pred.store.continue132:                           ; preds = %pred.store.if131, %pred.store.continue130
  %i.cu = extractelement <16 x i1> %i.cd, i64 8
  br i1 %i.cu, label %pred.store.if133, label %pred.store.continue134

pred.store.if133:                                 ; preds = %pred.store.continue132
  %i.cv = add nsw i8 %i.be, -16
  store i8 %i.cv, ptr %i.ao, align 1
  br label %pred.store.continue134

pred.store.continue134:                           ; preds = %pred.store.if133, %pred.store.continue132
  %i.cw = extractelement <16 x i1> %i.cd, i64 9
  br i1 %i.cw, label %pred.store.if135, label %pred.store.continue136

pred.store.if135:                                 ; preds = %pred.store.continue134
  %i.cx = add nsw i8 %i.bf, -16
  store i8 %i.cx, ptr %i.ap, align 1
  br label %pred.store.continue136

pred.store.continue136:                           ; preds = %pred.store.if135, %pred.store.continue134
  %i.cy = extractelement <16 x i1> %i.cd, i64 10
  br i1 %i.cy, label %pred.store.if137, label %pred.store.continue138

pred.store.if137:                                 ; preds = %pred.store.continue136
  %i.cz = add nsw i8 %i.bg, -16
  store i8 %i.cz, ptr %i.aq, align 1
  br label %pred.store.continue138

pred.store.continue138:                           ; preds = %pred.store.if137, %pred.store.continue136
  %i.da = extractelement <16 x i1> %i.cd, i64 11
  br i1 %i.da, label %pred.store.if139, label %pred.store.continue140

pred.store.if139:                                 ; preds = %pred.store.continue138
  %i.db = add nsw i8 %i.bh, -16
  store i8 %i.db, ptr %i.ar, align 1
  br label %pred.store.continue140

pred.store.continue140:                           ; preds = %pred.store.if139, %pred.store.continue138
  %i.dc = extractelement <16 x i1> %i.cd, i64 12
  br i1 %i.dc, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %pred.store.continue140
  %i.dd = add nsw i8 %i.bi, -16
  store i8 %i.dd, ptr %i.as, align 1
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue140
  %i.de = extractelement <16 x i1> %i.cd, i64 13
  br i1 %i.de, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  %i.df = add nsw i8 %i.bj, -16
  store i8 %i.df, ptr %i.at, align 1
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.dg = extractelement <16 x i1> %i.cd, i64 14
  br i1 %i.dg, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  %i.dh = add nsw i8 %i.bk, -16
  store i8 %i.dh, ptr %i.au, align 1
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.di = extractelement <16 x i1> %i.cd, i64 15
  br i1 %i.di, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  %i.dj = add nsw i8 %i.bl, -16
  store i8 %i.dj, ptr %i.av, align 1
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %index.next149 = add nuw i64 %index100, 16      ; 2 uses
  %i.dk = icmp eq i64 %index.next149, %n.vec98
  br i1 %i.dk, label %vec.epilog.iter.check154, label %vector.body99, !llvm.loop !4996

vec.epilog.iter.check154:                         ; preds = %pred.store.continue148
  %1 = shl i64 %n.vec98, 1
  %2 = getelementptr i8, ptr %i.e, i64 %1
  %min.epilog.iters.check155 = icmp samesign ult i64 %i.p, 9
  br i1 %min.epilog.iters.check155, label %vec.epilog.scalar.ph153.preheader, label %vec.epilog.ph156, !prof !5004

vec.epilog.ph156:                                 ; preds = %vector.main.loop.iter.check95, %vec.epilog.iter.check154
  %vec.epilog.resume.val151 = phi i64 [ %n.vec98, %vec.epilog.iter.check154 ], [ 0, %vector.main.loop.iter.check95 ]
  %i.dl = and i64 %i.m, 7                         ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  %i.dn = select i1 %i.dm, i64 8, i64 %i.dl
  %n.vec157 = sub i64 %i.m, %i.dn                 ; 2 uses
  br label %vec.epilog.vector.body158

vec.epilog.vector.body158:                        ; preds = %pred.store.continue183, %vec.epilog.ph156
  %index159 = phi i64 [ %vec.epilog.resume.val151, %vec.epilog.ph156 ], [ %index.next184, %pred.store.continue183 ] ; 2 uses
  %i.do = shl i64 %index159, 1                    ; 8 uses
  %next.gep160 = getelementptr i8, ptr %i.e, i64 %i.do
  %i.dp = getelementptr i8, ptr %i.e, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.e, i64 %i.do
  %i.dr = getelementptr i8, ptr %i.e, i64 %i.do
  %i.ds = getelementptr i8, ptr %i.e, i64 %i.do
  %i.dt = getelementptr i8, ptr %i.e, i64 %i.do
  %i.du = getelementptr i8, ptr %i.e, i64 %i.do
  %i.dv = getelementptr i8, ptr %i.e, i64 %i.do
  %i.dw = getelementptr inbounds nuw i8, ptr %next.gep160, i64 1 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dp, i64 3      ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dq, i64 5      ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dr, i64 7      ; 2 uses
  %i.ea = getelementptr i8, ptr %i.ds, i64 9      ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dt, i64 11     ; 2 uses
  %i.ec = getelementptr i8, ptr %i.du, i64 13     ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dv, i64 15     ; 2 uses
  %i.ee = load i8, ptr %i.dw, align 1, !noundef !21 ; 2 uses
  %i.ef = load i8, ptr %i.dx, align 1, !noundef !21 ; 2 uses
  %i.eg = load i8, ptr %i.dy, align 1, !noundef !21 ; 2 uses
  %i.eh = load i8, ptr %i.dz, align 1, !noundef !21 ; 2 uses
  %i.ei = load i8, ptr %i.ea, align 1, !noundef !21 ; 2 uses
  %i.ej = load i8, ptr %i.eb, align 1, !noundef !21 ; 2 uses
  %i.ek = load i8, ptr %i.ec, align 1, !noundef !21 ; 2 uses
  %i.el = load i8, ptr %i.ed, align 1, !noundef !21 ; 2 uses
  %i.em = insertelement <8 x i8> poison, i8 %i.ee, i64 0
  %i.en = insertelement <8 x i8> %i.em, i8 %i.ef, i64 1
  %i.eo = insertelement <8 x i8> %i.en, i8 %i.eg, i64 2
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 3
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 4
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 5
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 6
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 7
  %i.eu = add <8 x i8> %i.et, splat (i8 -53)
  %i.ev = icmp ult <8 x i8> %i.eu, splat (i8 16)  ; 8 uses
  %i.ew = extractelement <8 x i1> %i.ev, i64 0
  br i1 %i.ew, label %pred.store.if168, label %pred.store.continue169

pred.store.if168:                                 ; preds = %vec.epilog.vector.body158
  %i.ex = add nsw i8 %i.ee, -16
  store i8 %i.ex, ptr %i.dw, align 1
  br label %pred.store.continue169

pred.store.continue169:                           ; preds = %pred.store.if168, %vec.epilog.vector.body158
  %i.ey = extractelement <8 x i1> %i.ev, i64 1
  br i1 %i.ey, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %pred.store.continue169
  %i.ez = add nsw i8 %i.ef, -16
  store i8 %i.ez, ptr %i.dx, align 1
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %pred.store.continue169
  %i.fa = extractelement <8 x i1> %i.ev, i64 2
  br i1 %i.fa, label %pred.store.if172, label %pred.store.continue173

pred.store.if172:                                 ; preds = %pred.store.continue171
  %i.fb = add nsw i8 %i.eg, -16
  store i8 %i.fb, ptr %i.dy, align 1
  br label %pred.store.continue173

pred.store.continue173:                           ; preds = %pred.store.if172, %pred.store.continue171
  %i.fc = extractelement <8 x i1> %i.ev, i64 3
  br i1 %i.fc, label %pred.store.if174, label %pred.store.continue175

pred.store.if174:                                 ; preds = %pred.store.continue173
  %i.fd = add nsw i8 %i.eh, -16
  store i8 %i.fd, ptr %i.dz, align 1
  br label %pred.store.continue175

pred.store.continue175:                           ; preds = %pred.store.if174, %pred.store.continue173
  %i.fe = extractelement <8 x i1> %i.ev, i64 4
  br i1 %i.fe, label %pred.store.if176, label %pred.store.continue177

pred.store.if176:                                 ; preds = %pred.store.continue175
  %i.ff = add nsw i8 %i.ei, -16
  store i8 %i.ff, ptr %i.ea, align 1
  br label %pred.store.continue177

pred.store.continue177:                           ; preds = %pred.store.if176, %pred.store.continue175
  %i.fg = extractelement <8 x i1> %i.ev, i64 5
  br i1 %i.fg, label %pred.store.if178, label %pred.store.continue179

pred.store.if178:                                 ; preds = %pred.store.continue177
  %i.fh = add nsw i8 %i.ej, -16
  store i8 %i.fh, ptr %i.eb, align 1
  br label %pred.store.continue179

pred.store.continue179:                           ; preds = %pred.store.if178, %pred.store.continue177
  %i.fi = extractelement <8 x i1> %i.ev, i64 6
  br i1 %i.fi, label %pred.store.if180, label %pred.store.continue181

pred.store.if180:                                 ; preds = %pred.store.continue179
  %i.fj = add nsw i8 %i.ek, -16
  store i8 %i.fj, ptr %i.ec, align 1
  br label %pred.store.continue181

pred.store.continue181:                           ; preds = %pred.store.if180, %pred.store.continue179
  %i.fk = extractelement <8 x i1> %i.ev, i64 7
  br i1 %i.fk, label %pred.store.if182, label %pred.store.continue183

pred.store.if182:                                 ; preds = %pred.store.continue181
  %i.fl = add nsw i8 %i.el, -16
  store i8 %i.fl, ptr %i.ed, align 1
  br label %pred.store.continue183

pred.store.continue183:                           ; preds = %pred.store.if182, %pred.store.continue181
  %index.next184 = add nuw i64 %index159, 8       ; 2 uses
  %i.fm = icmp eq i64 %index.next184, %n.vec157
  br i1 %i.fm, label %vec.epilog.scalar.ph153.preheader.loopexit, label %vec.epilog.vector.body158, !llvm.loop !4997

vec.epilog.scalar.ph153.preheader.loopexit:       ; preds = %pred.store.continue183
  %3 = shl i64 %n.vec157, 1
  %4 = getelementptr i8, ptr %i.e, i64 %3
  br label %vec.epilog.scalar.ph153.preheader

vec.epilog.scalar.ph153.preheader:                ; preds = %vec.epilog.scalar.ph153.preheader.loopexit, %iter.check152, %vec.epilog.iter.check154
  %.sroa.0.0.us18.ph = phi ptr [ %i.e, %iter.check152 ], [ %2, %vec.epilog.iter.check154 ], [ %4, %vec.epilog.scalar.ph153.preheader.loopexit ]
  br label %vec.epilog.scalar.ph153

vec.epilog.scalar.ph153:                          ; preds = %vec.epilog.scalar.ph153.preheader, %bb.f
  %.sroa.0.0.us18 = phi ptr [ %i.fn, %bb.f ], [ %.sroa.0.0.us18.ph, %vec.epilog.scalar.ph153.preheader ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us18, i64 2 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us18, i64 1 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !noundef !21 ; 2 uses
  %i.fq = add i8 %i.fp, -53
  %or.cond10.us = icmp ult i8 %i.fq, 16
  br i1 %or.cond10.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %vec.epilog.scalar.ph153
  %i.fr = add nsw i8 %i.fp, -16
  store i8 %i.fr, ptr %i.fo, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %vec.epilog.scalar.ph153
  %i.fs = icmp eq ptr %i.fn, %i.c
  br i1 %i.fs, label %.loopexit, label %vec.epilog.scalar.ph153, !llvm.loop !4998

.split:                                           ; preds = %bb.b
  %i.ft = add i8 %.28.val.fr, -21
  %or.cond3 = icmp ult i8 %i.ft, 16
  br i1 %or.cond3, label %.split.split.us.preheader, label %.loopexit

.split.split.us.preheader:                        ; preds = %.split
  %.not.i.not.us7.peel = icmp samesign ugt i64 %.16.val, 1
  %i.fu = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 27 uses
  br i1 %.not.i.not.us7.peel, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.split.split.us.preheader
  %i.fv = getelementptr inbounds nuw i8, ptr %.8.val, i64 3 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !noundef !21 ; 2 uses
  %i.fx = add i8 %i.fw, -37
  %or.cond9.us.peel = icmp ult i8 %i.fx, 32
  br i1 %or.cond9.us.peel, label %bb.h, label %.split.split.us.peel.next

bb.h:                                             ; preds = %bb.g
  %narrow.us.peel = add nuw nsw i8 %i.fw, 11
  %i.fy = and i8 %narrow.us.peel, 15
  %narrow8.us.peel = add nuw nsw i8 %i.fy, 21
  store i8 %narrow8.us.peel, ptr %i.fv, align 1
  br label %.split.split.us.peel.next

.split.split.us.peel.next:                        ; preds = %bb.h, %bb.g
  %i.fz = icmp eq i64 %.16.val, 2
  br i1 %i.fz, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.split.split.us.peel.next
  %i.ga = add i64 %.16.val, 9223372036854775805
  %i.gb = and i64 %i.ga, 9223372036854775807      ; 3 uses
  %i.gc = add nuw i64 %i.gb, 1                    ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.gb, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp samesign ult i64 %i.gb, 16
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gd = and i64 %i.gc, 15                       ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0
  %i.gf = select i1 %i.ge, i64 16, i64 %i.gd      ; 2 uses
  %n.vec = sub i64 %i.gc, %i.gf                   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue65, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue65 ] ; 2 uses
  %i.gg = shl i64 %index, 1                       ; 16 uses
  %next.gep = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gh = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gj = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gk = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gl = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gm = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gn = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.go = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gp = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gq = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gr = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gs = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gt = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gu = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gv = getelementptr i8, ptr %i.fu, i64 %i.gg
  %i.gw = getelementptr inbounds nuw i8, ptr %next.gep, i64 1 ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gh, i64 3      ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gi, i64 5      ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gj, i64 7      ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gk, i64 9      ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gl, i64 11     ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gm, i64 13     ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gn, i64 15     ; 2 uses
  %i.he = getelementptr i8, ptr %i.go, i64 17     ; 2 uses
  %i.hf = getelementptr i8, ptr %i.gp, i64 19     ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gq, i64 21     ; 2 uses
  %i.hh = getelementptr i8, ptr %i.gr, i64 23     ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gs, i64 25     ; 2 uses
  %i.hj = getelementptr i8, ptr %i.gt, i64 27     ; 2 uses
  %i.hk = getelementptr i8, ptr %i.gu, i64 29     ; 2 uses
  %i.hl = getelementptr i8, ptr %i.gv, i64 31     ; 2 uses
  %i.hm = load i8, ptr %i.gw, align 1, !noundef !21 ; 2 uses
  %i.hn = load i8, ptr %i.gx, align 1, !noundef !21 ; 2 uses
  %i.ho = load i8, ptr %i.gy, align 1, !noundef !21 ; 2 uses
  %i.hp = load i8, ptr %i.gz, align 1, !noundef !21 ; 2 uses
  %i.hq = load i8, ptr %i.ha, align 1, !noundef !21 ; 2 uses
  %i.hr = load i8, ptr %i.hb, align 1, !noundef !21 ; 2 uses
  %i.hs = load i8, ptr %i.hc, align 1, !noundef !21 ; 2 uses
  %i.ht = load i8, ptr %i.hd, align 1, !noundef !21 ; 2 uses
  %i.hu = load i8, ptr %i.he, align 1, !noundef !21 ; 2 uses
  %i.hv = load i8, ptr %i.hf, align 1, !noundef !21 ; 2 uses
  %i.hw = load i8, ptr %i.hg, align 1, !noundef !21 ; 2 uses
  %i.hx = load i8, ptr %i.hh, align 1, !noundef !21 ; 2 uses
  %i.hy = load i8, ptr %i.hi, align 1, !noundef !21 ; 2 uses
  %i.hz = load i8, ptr %i.hj, align 1, !noundef !21 ; 2 uses
  %i.ia = load i8, ptr %i.hk, align 1, !noundef !21 ; 2 uses
  %i.ib = load i8, ptr %i.hl, align 1, !noundef !21 ; 2 uses
  %i.ic = insertelement <16 x i8> poison, i8 %i.hm, i64 0
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 1
  %i.ie = insertelement <16 x i8> %i.id, i8 %i.ho, i64 2
  %i.if = insertelement <16 x i8> %i.ie, i8 %i.hp, i64 3
  %i.ig = insertelement <16 x i8> %i.if, i8 %i.hq, i64 4
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 5
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 6
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 7
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 8
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 9
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 10
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 11
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 12
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 13
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 14
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 15
  %i.is = add <16 x i8> %i.ir, splat (i8 -37)
  %i.it = icmp ult <16 x i8> %i.is, splat (i8 32) ; 16 uses
  %i.iu = extractelement <16 x i1> %i.it, i64 0
  br i1 %i.iu, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.iv = add nuw nsw i8 %i.hm, 11
  %i.iw = and i8 %i.iv, 15
  %i.ix = add nuw nsw i8 %i.iw, 21
  store i8 %i.ix, ptr %i.gw, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.iy = extractelement <16 x i1> %i.it, i64 1
  br i1 %i.iy, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue
  %i.iz = add nuw nsw i8 %i.hn, 11
  %i.ja = and i8 %i.iz, 15
  %i.jb = add nuw nsw i8 %i.ja, 21
  store i8 %i.jb, ptr %i.gx, align 1
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue
  %i.jc = extractelement <16 x i1> %i.it, i64 2
  br i1 %i.jc, label %pred.store.if38, label %pred.store.continue39

pred.store.if38:                                  ; preds = %pred.store.continue37
  %i.jd = add nuw nsw i8 %i.ho, 11
  %i.je = and i8 %i.jd, 15
  %i.jf = add nuw nsw i8 %i.je, 21
  store i8 %i.jf, ptr %i.gy, align 1
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %pred.store.if38, %pred.store.continue37
  %i.jg = extractelement <16 x i1> %i.it, i64 3
  br i1 %i.jg, label %pred.store.if40, label %pred.store.continue41

pred.store.if40:                                  ; preds = %pred.store.continue39
  %i.jh = add nuw nsw i8 %i.hp, 11
  %i.ji = and i8 %i.jh, 15
  %i.jj = add nuw nsw i8 %i.ji, 21
  store i8 %i.jj, ptr %i.gz, align 1
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.if40, %pred.store.continue39
  %i.jk = extractelement <16 x i1> %i.it, i64 4
  br i1 %i.jk, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue41
  %i.jl = add nuw nsw i8 %i.hq, 11
  %i.jm = and i8 %i.jl, 15
  %i.jn = add nuw nsw i8 %i.jm, 21
  store i8 %i.jn, ptr %i.ha, align 1
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue41
  %i.jo = extractelement <16 x i1> %i.it, i64 5
  br i1 %i.jo, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.jp = add nuw nsw i8 %i.hr, 11
  %i.jq = and i8 %i.jp, 15
  %i.jr = add nuw nsw i8 %i.jq, 21
  store i8 %i.jr, ptr %i.hb, align 1
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.js = extractelement <16 x i1> %i.it, i64 6
  br i1 %i.js, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.jt = add nuw nsw i8 %i.hs, 11
  %i.ju = and i8 %i.jt, 15
  %i.jv = add nuw nsw i8 %i.ju, 21
  store i8 %i.jv, ptr %i.hc, align 1
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.jw = extractelement <16 x i1> %i.it, i64 7
  br i1 %i.jw, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.jx = add nuw nsw i8 %i.ht, 11
  %i.jy = and i8 %i.jx, 15
  %i.jz = add nuw nsw i8 %i.jy, 21
  store i8 %i.jz, ptr %i.hd, align 1
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.ka = extractelement <16 x i1> %i.it, i64 8
  br i1 %i.ka, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  %i.kb = add nuw nsw i8 %i.hu, 11
  %i.kc = and i8 %i.kb, 15
  %i.kd = add nuw nsw i8 %i.kc, 21
  store i8 %i.kd, ptr %i.he, align 1
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.ke = extractelement <16 x i1> %i.it, i64 9
  br i1 %i.ke, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %i.kf = add nuw nsw i8 %i.hv, 11
  %i.kg = and i8 %i.kf, 15
  %i.kh = add nuw nsw i8 %i.kg, 21
  store i8 %i.kh, ptr %i.hf, align 1
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.ki = extractelement <16 x i1> %i.it, i64 10
  br i1 %i.ki, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %i.kj = add nuw nsw i8 %i.hw, 11
  %i.kk = and i8 %i.kj, 15
  %i.kl = add nuw nsw i8 %i.kk, 21
  store i8 %i.kl, ptr %i.hg, align 1
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.km = extractelement <16 x i1> %i.it, i64 11
  br i1 %i.km, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.kn = add nuw nsw i8 %i.hx, 11
  %i.ko = and i8 %i.kn, 15
  %i.kp = add nuw nsw i8 %i.ko, 21
  store i8 %i.kp, ptr %i.hh, align 1
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.kq = extractelement <16 x i1> %i.it, i64 12
  br i1 %i.kq, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %i.kr = add nuw nsw i8 %i.hy, 11
  %i.ks = and i8 %i.kr, 15
  %i.kt = add nuw nsw i8 %i.ks, 21
  store i8 %i.kt, ptr %i.hi, align 1
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.ku = extractelement <16 x i1> %i.it, i64 13
  br i1 %i.ku, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %i.kv = add nuw nsw i8 %i.hz, 11
  %i.kw = and i8 %i.kv, 15
  %i.kx = add nuw nsw i8 %i.kw, 21
  store i8 %i.kx, ptr %i.hj, align 1
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.ky = extractelement <16 x i1> %i.it, i64 14
  br i1 %i.ky, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %i.kz = add nuw nsw i8 %i.ia, 11
  %i.la = and i8 %i.kz, 15
  %i.lb = add nuw nsw i8 %i.la, 21
  store i8 %i.lb, ptr %i.hk, align 1
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.lc = extractelement <16 x i1> %i.it, i64 15
  br i1 %i.lc, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.ld = add nuw nsw i8 %i.ib, 11
  %i.le = and i8 %i.ld, 15
  %i.lf = add nuw nsw i8 %i.le, 21
  store i8 %i.lf, ptr %i.hl, align 1
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lg = icmp eq i64 %index.next, %n.vec
  br i1 %i.lg, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !4999

vec.epilog.iter.check:                            ; preds = %pred.store.continue65
  %5 = shl i64 %n.vec, 1
  %6 = getelementptr i8, ptr %i.fu, i64 %5
  %min.epilog.iters.check = icmp samesign ult i64 %i.gf, 9
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !5004

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.lh = and i64 %i.gc, 7                        ; 2 uses
  %i.li = icmp eq i64 %i.lh, 0
  %i.lj = select i1 %i.li, i64 8, i64 %i.lh
  %n.vec66 = sub i64 %i.gc, %i.lj                 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue91, %vec.epilog.ph
  %index67 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %pred.store.continue91 ] ; 2 uses
  %i.lk = shl i64 %index67, 1                     ; 8 uses
  %next.gep68 = getelementptr i8, ptr %i.fu, i64 %i.lk
  %i.ll = getelementptr i8, ptr %i.fu, i64 %i.lk
  %i.lm = getelementptr i8, ptr %i.fu, i64 %i.lk
  %i.ln = getelementptr i8, ptr %i.fu, i64 %i.lk
  %i.lo = getelementptr i8, ptr %i.fu, i64 %i.lk
  %i.lp = getelementptr i8, ptr %i.fu, i64 %i.lk
  %i.lq = getelementptr i8, ptr %i.fu, i64 %i.lk
  %i.lr = getelementptr i8, ptr %i.fu, i64 %i.lk
  %i.ls = getelementptr inbounds nuw i8, ptr %next.gep68, i64 1 ; 2 uses
  %i.lt = getelementptr i8, ptr %i.ll, i64 3      ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lm, i64 5      ; 2 uses
  %i.lv = getelementptr i8, ptr %i.ln, i64 7      ; 2 uses
  %i.lw = getelementptr i8, ptr %i.lo, i64 9      ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lp, i64 11     ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lq, i64 13     ; 2 uses
  %i.lz = getelementptr i8, ptr %i.lr, i64 15     ; 2 uses
  %i.ma = load i8, ptr %i.ls, align 1, !noundef !21 ; 2 uses
  %i.mb = load i8, ptr %i.lt, align 1, !noundef !21 ; 2 uses
  %i.mc = load i8, ptr %i.lu, align 1, !noundef !21 ; 2 uses
  %i.md = load i8, ptr %i.lv, align 1, !noundef !21 ; 2 uses
  %i.me = load i8, ptr %i.lw, align 1, !noundef !21 ; 2 uses
  %i.mf = load i8, ptr %i.lx, align 1, !noundef !21 ; 2 uses
  %i.mg = load i8, ptr %i.ly, align 1, !noundef !21 ; 2 uses
  %i.mh = load i8, ptr %i.lz, align 1, !noundef !21 ; 2 uses
  %i.mi = insertelement <8 x i8> poison, i8 %i.ma, i64 0
  %i.mj = insertelement <8 x i8> %i.mi, i8 %i.mb, i64 1
  %i.mk = insertelement <8 x i8> %i.mj, i8 %i.mc, i64 2
  %i.ml = insertelement <8 x i8> %i.mk, i8 %i.md, i64 3
  %i.mm = insertelement <8 x i8> %i.ml, i8 %i.me, i64 4
  %i.mn = insertelement <8 x i8> %i.mm, i8 %i.mf, i64 5
  %i.mo = insertelement <8 x i8> %i.mn, i8 %i.mg, i64 6
  %i.mp = insertelement <8 x i8> %i.mo, i8 %i.mh, i64 7
  %i.mq = add <8 x i8> %i.mp, splat (i8 -37)
  %i.mr = icmp ult <8 x i8> %i.mq, splat (i8 32)  ; 8 uses
  %i.ms = extractelement <8 x i1> %i.mr, i64 0
  br i1 %i.ms, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %vec.epilog.vector.body
  %i.mt = add nuw nsw i8 %i.ma, 11
  %i.mu = and i8 %i.mt, 15
  %i.mv = add nuw nsw i8 %i.mu, 21
  store i8 %i.mv, ptr %i.ls, align 1
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %vec.epilog.vector.body
  %i.mw = extractelement <8 x i1> %i.mr, i64 1
  br i1 %i.mw, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.mx = add nuw nsw i8 %i.mb, 11
  %i.my = and i8 %i.mx, 15
  %i.mz = add nuw nsw i8 %i.my, 21
  store i8 %i.mz, ptr %i.lt, align 1
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.na = extractelement <8 x i1> %i.mr, i64 2
  br i1 %i.na, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.nb = add nuw nsw i8 %i.mc, 11
  %i.nc = and i8 %i.nb, 15
  %i.nd = add nuw nsw i8 %i.nc, 21
  store i8 %i.nd, ptr %i.lu, align 1
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.ne = extractelement <8 x i1> %i.mr, i64 3
  br i1 %i.ne, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.nf = add nuw nsw i8 %i.md, 11
  %i.ng = and i8 %i.nf, 15
  %i.nh = add nuw nsw i8 %i.ng, 21
  store i8 %i.nh, ptr %i.lv, align 1
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.ni = extractelement <8 x i1> %i.mr, i64 4
  br i1 %i.ni, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  %i.nj = add nuw nsw i8 %i.me, 11
  %i.nk = and i8 %i.nj, 15
  %i.nl = add nuw nsw i8 %i.nk, 21
  store i8 %i.nl, ptr %i.lw, align 1
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.nm = extractelement <8 x i1> %i.mr, i64 5
  br i1 %i.nm, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  %i.nn = add nuw nsw i8 %i.mf, 11
  %i.no = and i8 %i.nn, 15
  %i.np = add nuw nsw i8 %i.no, 21
  store i8 %i.np, ptr %i.lx, align 1
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.nq = extractelement <8 x i1> %i.mr, i64 6
  br i1 %i.nq, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  %i.nr = add nuw nsw i8 %i.mg, 11
  %i.ns = and i8 %i.nr, 15
  %i.nt = add nuw nsw i8 %i.ns, 21
  store i8 %i.nt, ptr %i.ly, align 1
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.nu = extractelement <8 x i1> %i.mr, i64 7
  br i1 %i.nu, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  %i.nv = add nuw nsw i8 %i.mh, 11
  %i.nw = and i8 %i.nv, 15
  %i.nx = add nuw nsw i8 %i.nw, 21
  store i8 %i.nx, ptr %i.lz, align 1
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %index.next92 = add nuw i64 %index67, 8         ; 2 uses
  %i.ny = icmp eq i64 %index.next92, %n.vec66
  br i1 %i.ny, label %vec.epilog.scalar.ph.preheader.loopexit, label %vec.epilog.vector.body, !llvm.loop !5000

vec.epilog.scalar.ph.preheader.loopexit:          ; preds = %pred.store.continue91
  %7 = shl i64 %n.vec66, 1
  %8 = getelementptr i8, ptr %i.fu, i64 %7
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.scalar.ph.preheader.loopexit, %iter.check, %vec.epilog.iter.check
  %.sroa.0.0.us617.ph = phi ptr [ %i.fu, %iter.check ], [ %6, %vec.epilog.iter.check ], [ %8, %vec.epilog.scalar.ph.preheader.loopexit ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.j
  %.sroa.0.0.us617 = phi ptr [ %i.nz, %bb.j ], [ %.sroa.0.0.us617.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us617, i64 2 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us617, i64 1 ; 2 uses
  %i.ob = load i8, ptr %i.oa, align 1, !noundef !21 ; 2 uses
  %i.oc = add i8 %i.ob, -37
  %or.cond9.us = icmp ult i8 %i.oc, 32
  br i1 %or.cond9.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %vec.epilog.scalar.ph
  %narrow.us = add nuw nsw i8 %i.ob, 11
  %i.od = and i8 %narrow.us, 15
  %narrow8.us = add nuw nsw i8 %i.od, 21
  store i8 %narrow8.us, ptr %i.oa, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %vec.epilog.scalar.ph
  %i.oe = icmp eq ptr %i.nz, %i.c
  br i1 %i.oe, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !5001

.loopexit:                                        ; preds = %bb.j, %bb.f, %.split.split.us.peel.next, %.split.us.peel.next, %.split.split.us.preheader, %.split.us.preheader, %.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory11command_pop(i32 %.20.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i32 noundef range(i32 0, 16) %1, i32 noundef range(i32 1, 7) %2, i32 noundef range(i32 2, 9) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i32 %.20.val, 18
  %i.b = and i32 %i.a, 3
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr @_RNvNtNtCsf8MNnN4IDbl_8iced_x864info7factory9XSP_TABLE, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1, !noundef !21 ; 2 uses
  %i.g = load i8, ptr %i.d, align 8, !range !40, !noundef !21
  %i.h = and i32 %1, 2
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = and i32 %1, 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5013)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !5014, !noundef !21 ; 3 uses
  %i.n = load i64, ptr %0, align 8, !range !22, !alias.scope !5014, !noundef !21
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #44
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit

_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit: ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !5014, !nonnull !21, !noundef !21
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.m ; 2 uses
  store i8 1, ptr %i.r, align 1, !noalias !5014
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 73, ptr %i.s, align 1, !noalias !5014
  %i.t = add i64 %i.m, 1
  store i64 %i.t, ptr %i.l, align 8, !alias.scope !5014
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit
  tail call fastcc void @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register(i32 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i8 noundef %i.f, i8 noundef 5)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %i.u = and i32 %1, 1
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %switch.selectcmp = icmp eq i32 %3, 4
  %switch.select = select i1 %switch.selectcmp, i8 3, i8 2
  %switch.selectcmp5 = icmp eq i32 %3, 8
  %switch.select6 = select i1 %switch.selectcmp5, i8 5, i8 %switch.select
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = zext nneg i32 %3 to i64
  %.pre = load i64, ptr %i.x, align 8, !alias.scope !5015, !noalias !5016
  %i.aa = insertelement <4 x i8> <i8 73, i8 poison, i8 0, i8 1>, i8 %i.f, i64 1
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory10add_memory.exit

_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory10add_memory.exit: ; preds = %bb.g, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit
  %i.ab = phi i64 [ %.pre, %bb.g ], [ %i.ah, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit ] ; 3 uses
  %.sroa.01.02 = phi i64 [ 0, %bb.g ], [ %i.ai, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit ] ; 2 uses
  %.sroa.03.01 = phi i32 [ 0, %bb.g ], [ %i.ac, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit ]
  %i.ac = add nuw nsw i32 %.sroa.03.01, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5015)
  %i.ad = load i64, ptr %i.w, align 8, !range !22, !alias.scope !5015, !noalias !5016, !noundef !21
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.h, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit

bb.h:                                             ; preds = %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory10add_memory.exit
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #44, !noalias !5016
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit: ; preds = %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory10add_memory.exit, %bb.h
  %i.af = load ptr, ptr %i.y, align 8, !alias.scope !5015, !noalias !5016, !nonnull !21, !noundef !21
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ab ; 6 uses
  store i64 %.sroa.01.02, ptr %i.ag, align 8, !noalias !5015
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store <4 x i8> %i.aa, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5015
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 4, !noalias !5015
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 13
  store i8 %switch.select6, ptr %.sroa.9.0..sroa_idx, align 1, !noalias !5015
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 14
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 2, !noalias !5015
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 15
  store i8 %i.g, ptr %.sroa.11.0..sroa_idx, align 1, !noalias !5015
  %i.ah = add i64 %i.ab, 1                        ; 2 uses
  store i64 %i.ah, ptr %i.x, align 8, !alias.scope !5015, !noalias !5016
  %i.ai = add nuw nsw i64 %.sroa.01.02, %i.z
  %exitcond.not = icmp eq i32 %i.ac, %2
  br i1 %exitcond.not, label %.loopexit, label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory10add_memory.exit

.loopexit:                                        ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register(i32 noundef range(i32 0, 16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1, i8 noundef %2, i8 noundef range(i8 0, 8) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i32 %0, 3
  %i.b = add nsw i8 %3, -3
  %i.c = icmp ult i8 %i.b, 4
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.c, label %.thread

bb.b:                                             ; preds = %bb.e, %bb.f
  %.sroa.015.1 = phi i8 [ %i.o, %bb.e ], [ %i.r, %bb.f ] ; 4 uses
  %i.d = icmp samesign ult i8 %3, 5
  %i.e = icmp eq i8 %2, %.sroa.015.1
  %i.f = select i1 %i.d, i1 true, i1 %i.e
  br i1 %i.f, label %.thread, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = and i32 %0, 4
  %i.h = icmp ne i32 %i.g, 0
  %i.i = add i8 %2, -37
  %i.j = icmp ult i8 %i.i, 16
  %or.cond3 = and i1 %i.h, %i.j
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext i8 %2 to i32
  %i.l = add nsw i32 %i.k, -77                    ; 2 uses
  %i.m = icmp samesign ugt i32 %0, 7
  %i.n = icmp ult i32 %i.l, 96
  %or.cond5 = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond5, label %bb.f, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.o = add nuw nsw i8 %2, 16
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.p = trunc nuw nsw i32 %i.l to i8
  %i.q = and i8 %i.p, 31
  %i.r = add nuw nsw i8 %i.q, -115
  br label %bb.b

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5025)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !5025, !noundef !21 ; 5 uses
  %i.u = load i64, ptr %1, align 8, !range !22, !alias.scope !5025, !noundef !21
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8push_mutBJ_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #44
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8push_mutBJ_.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8push_mutBJ_.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !5025, !nonnull !21, !noundef !21 ; 3 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.t ; 2 uses
  store i8 1, ptr %i.y, align 1, !noalias !5025
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %2, ptr %i.z, align 1, !noalias !5025
  %i.aa = add i64 %i.t, 1                         ; 5 uses
  store i64 %i.aa, ptr %i.s, align 8, !alias.scope !5025
  %i.ab = icmp eq i8 %3, 5
  br i1 %i.ab, label %.split, label %.split20

.thread:                                          ; preds = %bb.d, %bb.a, %bb.b
  %.sroa.0.028 = phi i8 [ %.sroa.015.1, %bb.b ], [ %2, %bb.a ], [ %2, %bb.d ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5026)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !5026, !noundef !21 ; 3 uses
end_hunk_0
