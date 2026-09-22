Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory11command_ins:bb.a
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
  %i.q = shl i64 %n.vec98, 1
  %i.r = getelementptr i8, ptr %i.e, i64 %i.q
  br label %vector.body99

vector.body99:                                    ; preds = %vector.ph97, %pred.store.continue148
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next149, %pred.store.continue148 ] ; 2 uses
  %i.s = shl i64 %index100, 1                     ; 16 uses
  %next.gep101 = getelementptr i8, ptr %i.e, i64 %i.s
  %i.t = getelementptr i8, ptr %i.e, i64 %i.s
  %i.u = getelementptr i8, ptr %i.e, i64 %i.s
  %i.v = getelementptr i8, ptr %i.e, i64 %i.s
  %i.w = getelementptr i8, ptr %i.e, i64 %i.s
  %i.x = getelementptr i8, ptr %i.e, i64 %i.s
  %i.y = getelementptr i8, ptr %i.e, i64 %i.s
  %i.z = getelementptr i8, ptr %i.e, i64 %i.s
  %i.aa = getelementptr i8, ptr %i.e, i64 %i.s
  %i.ab = getelementptr i8, ptr %i.e, i64 %i.s
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.s
  %i.ad = getelementptr i8, ptr %i.e, i64 %i.s
  %i.ae = getelementptr i8, ptr %i.e, i64 %i.s
  %i.af = getelementptr i8, ptr %i.e, i64 %i.s
  %i.ag = getelementptr i8, ptr %i.e, i64 %i.s
  %i.ah = getelementptr i8, ptr %i.e, i64 %i.s
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep101, i64 1 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.t, i64 3       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.u, i64 5       ; 2 uses
  %i.al = getelementptr i8, ptr %i.v, i64 7       ; 2 uses
  %i.am = getelementptr i8, ptr %i.w, i64 9       ; 2 uses
  %i.an = getelementptr i8, ptr %i.x, i64 11      ; 2 uses
  %i.ao = getelementptr i8, ptr %i.y, i64 13      ; 2 uses
  %i.ap = getelementptr i8, ptr %i.z, i64 15      ; 2 uses
  %i.aq = getelementptr i8, ptr %i.aa, i64 17     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ab, i64 19     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ac, i64 21     ; 2 uses
  %i.at = getelementptr i8, ptr %i.ad, i64 23     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ae, i64 25     ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 27     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ag, i64 29     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ah, i64 31     ; 2 uses
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
  %i.bm = load i8, ptr %i.aw, align 1, !noundef !21 ; 2 uses
  %i.bn = load i8, ptr %i.ax, align 1, !noundef !21 ; 2 uses
  %i.bo = insertelement <16 x i8> poison, i8 %i.ay, i64 0
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 1
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 2
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 3
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 4
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 5
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 6
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 7
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 8
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 9
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 10
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 11
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 12
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 13
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 14
  %i.cd = insertelement <16 x i8> %i.cc, i8 %i.bn, i64 15
  %i.ce = add <16 x i8> %i.cd, splat (i8 -53)
  %i.cf = icmp ult <16 x i8> %i.ce, splat (i8 16) ; 16 uses
  %i.cg = extractelement <16 x i1> %i.cf, i64 0
  br i1 %i.cg, label %pred.store.if117, label %pred.store.continue118

pred.store.if117:                                 ; preds = %vector.body99
  %i.ch = add nsw i8 %i.ay, -16
  store i8 %i.ch, ptr %i.ai, align 1
  br label %pred.store.continue118

pred.store.continue118:                           ; preds = %pred.store.if117, %vector.body99
  %i.ci = extractelement <16 x i1> %i.cf, i64 1
  br i1 %i.ci, label %pred.store.if119, label %pred.store.continue120

pred.store.if119:                                 ; preds = %pred.store.continue118
  %i.cj = add nsw i8 %i.az, -16
  store i8 %i.cj, ptr %i.aj, align 1
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.if119, %pred.store.continue118
  %i.ck = extractelement <16 x i1> %i.cf, i64 2
  br i1 %i.ck, label %pred.store.if121, label %pred.store.continue122

pred.store.if121:                                 ; preds = %pred.store.continue120
  %i.cl = add nsw i8 %i.ba, -16
  store i8 %i.cl, ptr %i.ak, align 1
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.if121, %pred.store.continue120
  %i.cm = extractelement <16 x i1> %i.cf, i64 3
  br i1 %i.cm, label %pred.store.if123, label %pred.store.continue124

pred.store.if123:                                 ; preds = %pred.store.continue122
  %i.cn = add nsw i8 %i.bb, -16
  store i8 %i.cn, ptr %i.al, align 1
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.if123, %pred.store.continue122
  %i.co = extractelement <16 x i1> %i.cf, i64 4
  br i1 %i.co, label %pred.store.if125, label %pred.store.continue126

pred.store.if125:                                 ; preds = %pred.store.continue124
  %i.cp = add nsw i8 %i.bc, -16
  store i8 %i.cp, ptr %i.am, align 1
  br label %pred.store.continue126

pred.store.continue126:                           ; preds = %pred.store.if125, %pred.store.continue124
  %i.cq = extractelement <16 x i1> %i.cf, i64 5
  br i1 %i.cq, label %pred.store.if127, label %pred.store.continue128

pred.store.if127:                                 ; preds = %pred.store.continue126
  %i.cr = add nsw i8 %i.bd, -16
  store i8 %i.cr, ptr %i.an, align 1
  br label %pred.store.continue128

pred.store.continue128:                           ; preds = %pred.store.if127, %pred.store.continue126
  %i.cs = extractelement <16 x i1> %i.cf, i64 6
  br i1 %i.cs, label %pred.store.if129, label %pred.store.continue130

pred.store.if129:                                 ; preds = %pred.store.continue128
  %i.ct = add nsw i8 %i.be, -16
  store i8 %i.ct, ptr %i.ao, align 1
  br label %pred.store.continue130

pred.store.continue130:                           ; preds = %pred.store.if129, %pred.store.continue128
  %i.cu = extractelement <16 x i1> %i.cf, i64 7
  br i1 %i.cu, label %pred.store.if131, label %pred.store.continue132

pred.store.if131:                                 ; preds = %pred.store.continue130
  %i.cv = add nsw i8 %i.bf, -16
  store i8 %i.cv, ptr %i.ap, align 1
  br label %pred.store.continue132

pred.store.continue132:                           ; preds = %pred.store.if131, %pred.store.continue130
  %i.cw = extractelement <16 x i1> %i.cf, i64 8
  br i1 %i.cw, label %pred.store.if133, label %pred.store.continue134

pred.store.if133:                                 ; preds = %pred.store.continue132
  %i.cx = add nsw i8 %i.bg, -16
  store i8 %i.cx, ptr %i.aq, align 1
  br label %pred.store.continue134

pred.store.continue134:                           ; preds = %pred.store.if133, %pred.store.continue132
  %i.cy = extractelement <16 x i1> %i.cf, i64 9
  br i1 %i.cy, label %pred.store.if135, label %pred.store.continue136

pred.store.if135:                                 ; preds = %pred.store.continue134
  %i.cz = add nsw i8 %i.bh, -16
  store i8 %i.cz, ptr %i.ar, align 1
  br label %pred.store.continue136

pred.store.continue136:                           ; preds = %pred.store.if135, %pred.store.continue134
  %i.da = extractelement <16 x i1> %i.cf, i64 10
  br i1 %i.da, label %pred.store.if137, label %pred.store.continue138

pred.store.if137:                                 ; preds = %pred.store.continue136
  %i.db = add nsw i8 %i.bi, -16
  store i8 %i.db, ptr %i.as, align 1
  br label %pred.store.continue138

pred.store.continue138:                           ; preds = %pred.store.if137, %pred.store.continue136
  %i.dc = extractelement <16 x i1> %i.cf, i64 11
  br i1 %i.dc, label %pred.store.if139, label %pred.store.continue140

pred.store.if139:                                 ; preds = %pred.store.continue138
  %i.dd = add nsw i8 %i.bj, -16
  store i8 %i.dd, ptr %i.at, align 1
  br label %pred.store.continue140

pred.store.continue140:                           ; preds = %pred.store.if139, %pred.store.continue138
  %i.de = extractelement <16 x i1> %i.cf, i64 12
  br i1 %i.de, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %pred.store.continue140
  %i.df = add nsw i8 %i.bk, -16
  store i8 %i.df, ptr %i.au, align 1
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue140
  %i.dg = extractelement <16 x i1> %i.cf, i64 13
  br i1 %i.dg, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  %i.dh = add nsw i8 %i.bl, -16
  store i8 %i.dh, ptr %i.av, align 1
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.di = extractelement <16 x i1> %i.cf, i64 14
  br i1 %i.di, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  %i.dj = add nsw i8 %i.bm, -16
  store i8 %i.dj, ptr %i.aw, align 1
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory11command_lea:bb.a
  %i.dm = icmp eq i64 %index.next149, %n.vec98
  br i1 %i.dm, label %vec.epilog.iter.check154, label %vector.body99, !llvm.loop !4996

vec.epilog.iter.check154:                         ; preds = %pred.store.continue148
  %min.epilog.iters.check155 = icmp samesign ult i64 %i.p, 9
  br i1 %min.epilog.iters.check155, label %vec.epilog.scalar.ph153.preheader, label %vec.epilog.ph156, !prof !5004

vec.epilog.ph156:                                 ; preds = %vector.main.loop.iter.check95, %vec.epilog.iter.check154
  %vec.epilog.resume.val151 = phi i64 [ %n.vec98, %vec.epilog.iter.check154 ], [ 0, %vector.main.loop.iter.check95 ]
  %i.dn = and i64 %i.m, 7                         ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  %i.dp = select i1 %i.do, i64 8, i64 %i.dn
  %n.vec157 = sub i64 %i.m, %i.dp                 ; 2 uses
  %i.dq = shl i64 %n.vec157, 1
  %i.dr = getelementptr i8, ptr %i.e, i64 %i.dq
  br label %vec.epilog.vector.body158

vec.epilog.vector.body158:                        ; preds = %pred.store.continue183, %vec.epilog.ph156
  %index159 = phi i64 [ %vec.epilog.resume.val151, %vec.epilog.ph156 ], [ %index.next184, %pred.store.continue183 ] ; 2 uses
  %i.ds = shl i64 %index159, 1                    ; 8 uses
  %next.gep160 = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.dt = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.dw = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.dx = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.dz = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.ea = getelementptr inbounds nuw i8, ptr %next.gep160, i64 1 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dt, i64 3      ; 2 uses
  %i.ec = getelementptr i8, ptr %i.du, i64 5      ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dv, i64 7      ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dw, i64 9      ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dx, i64 11     ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dy, i64 13     ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dz, i64 15     ; 2 uses
  %i.ei = load i8, ptr %i.ea, align 1, !noundef !21 ; 2 uses
  %i.ej = load i8, ptr %i.eb, align 1, !noundef !21 ; 2 uses
  %i.ek = load i8, ptr %i.ec, align 1, !noundef !21 ; 2 uses
  %i.el = load i8, ptr %i.ed, align 1, !noundef !21 ; 2 uses
  %i.em = load i8, ptr %i.ee, align 1, !noundef !21 ; 2 uses
  %i.en = load i8, ptr %i.ef, align 1, !noundef !21 ; 2 uses
  %i.eo = load i8, ptr %i.eg, align 1, !noundef !21 ; 2 uses
  %i.ep = load i8, ptr %i.eh, align 1, !noundef !21 ; 2 uses
  %i.eq = insertelement <8 x i8> poison, i8 %i.ei, i64 0
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 1
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 2
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 3
  %i.eu = insertelement <8 x i8> %i.et, i8 %i.em, i64 4
  %i.ev = insertelement <8 x i8> %i.eu, i8 %i.en, i64 5
  %i.ew = insertelement <8 x i8> %i.ev, i8 %i.eo, i64 6
  %i.ex = insertelement <8 x i8> %i.ew, i8 %i.ep, i64 7
  %i.ey = add <8 x i8> %i.ex, splat (i8 -53)
  %i.ez = icmp ult <8 x i8> %i.ey, splat (i8 16)  ; 8 uses
  %i.fa = extractelement <8 x i1> %i.ez, i64 0
  br i1 %i.fa, label %pred.store.if168, label %pred.store.continue169

pred.store.if168:                                 ; preds = %vec.epilog.vector.body158
  %i.fb = add nsw i8 %i.ei, -16
  store i8 %i.fb, ptr %i.ea, align 1
  br label %pred.store.continue169

pred.store.continue169:                           ; preds = %pred.store.if168, %vec.epilog.vector.body158
  %i.fc = extractelement <8 x i1> %i.ez, i64 1
  br i1 %i.fc, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %pred.store.continue169
  %i.fd = add nsw i8 %i.ej, -16
  store i8 %i.fd, ptr %i.eb, align 1
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %pred.store.continue169
  %i.fe = extractelement <8 x i1> %i.ez, i64 2
  br i1 %i.fe, label %pred.store.if172, label %pred.store.continue173

pred.store.if172:                                 ; preds = %pred.store.continue171
  %i.ff = add nsw i8 %i.ek, -16
  store i8 %i.ff, ptr %i.ec, align 1
  br label %pred.store.continue173

pred.store.continue173:                           ; preds = %pred.store.if172, %pred.store.continue171
  %i.fg = extractelement <8 x i1> %i.ez, i64 3
  br i1 %i.fg, label %pred.store.if174, label %pred.store.continue175

pred.store.if174:                                 ; preds = %pred.store.continue173
  %i.fh = add nsw i8 %i.el, -16
  store i8 %i.fh, ptr %i.ed, align 1
  br label %pred.store.continue175

pred.store.continue175:                           ; preds = %pred.store.if174, %pred.store.continue173
  %i.fi = extractelement <8 x i1> %i.ez, i64 4
  br i1 %i.fi, label %pred.store.if176, label %pred.store.continue177

pred.store.if176:                                 ; preds = %pred.store.continue175
  %i.fj = add nsw i8 %i.em, -16
  store i8 %i.fj, ptr %i.ee, align 1
  br label %pred.store.continue177

pred.store.continue177:                           ; preds = %pred.store.if176, %pred.store.continue175
  %i.fk = extractelement <8 x i1> %i.ez, i64 5
  br i1 %i.fk, label %pred.store.if178, label %pred.store.continue179

pred.store.if178:                                 ; preds = %pred.store.continue177
  %i.fl = add nsw i8 %i.en, -16
  store i8 %i.fl, ptr %i.ef, align 1
  br label %pred.store.continue179

pred.store.continue179:                           ; preds = %pred.store.if178, %pred.store.continue177
  %i.fm = extractelement <8 x i1> %i.ez, i64 6
  br i1 %i.fm, label %pred.store.if180, label %pred.store.continue181

pred.store.if180:                                 ; preds = %pred.store.continue179
  %i.fn = add nsw i8 %i.eo, -16
  store i8 %i.fn, ptr %i.eg, align 1
  br label %pred.store.continue181

pred.store.continue181:                           ; preds = %pred.store.if180, %pred.store.continue179
  %i.fo = extractelement <8 x i1> %i.ez, i64 7
  br i1 %i.fo, label %pred.store.if182, label %pred.store.continue183

pred.store.if182:                                 ; preds = %pred.store.continue181
  %i.fp = add nsw i8 %i.ep, -16
  store i8 %i.fp, ptr %i.eh, align 1
  br label %pred.store.continue183

pred.store.continue183:                           ; preds = %pred.store.if182, %pred.store.continue181
  %index.next184 = add nuw i64 %index159, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next184, %n.vec157
  br i1 %i.fq, label %vec.epilog.scalar.ph153.preheader, label %vec.epilog.vector.body158, !llvm.loop !4997

vec.epilog.scalar.ph153.preheader:                ; preds = %pred.store.continue183, %iter.check152, %vec.epilog.iter.check154
  %.sroa.0.0.us18.ph = phi ptr [ %i.e, %iter.check152 ], [ %i.r, %vec.epilog.iter.check154 ], [ %i.dr, %pred.store.continue183 ]
  br label %vec.epilog.scalar.ph153

vec.epilog.scalar.ph153:                          ; preds = %vec.epilog.scalar.ph153.preheader, %bb.f
  %.sroa.0.0.us18 = phi ptr [ %i.fr, %bb.f ], [ %.sroa.0.0.us18.ph, %vec.epilog.scalar.ph153.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us18, i64 2 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us18, i64 1 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !noundef !21 ; 2 uses
  %i.fu = add i8 %i.ft, -53
  %or.cond10.us = icmp ult i8 %i.fu, 16
  br i1 %or.cond10.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %vec.epilog.scalar.ph153
  %i.fv = add nsw i8 %i.ft, -16
  store i8 %i.fv, ptr %i.fs, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %vec.epilog.scalar.ph153
  %i.fw = icmp eq ptr %i.fr, %i.c
  br i1 %i.fw, label %.loopexit, label %vec.epilog.scalar.ph153, !llvm.loop !4998

.split:                                           ; preds = %bb.b
  %i.fx = add i8 %.28.val.fr, -21
  %or.cond3 = icmp ult i8 %i.fx, 16
  br i1 %or.cond3, label %.split.split.us.preheader, label %.loopexit

.split.split.us.preheader:                        ; preds = %.split
  %.not.i.not.us7.peel = icmp samesign ugt i64 %.16.val, 1
  %i.fy = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 27 uses
  br i1 %.not.i.not.us7.peel, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.split.split.us.preheader
  %i.fz = getelementptr inbounds nuw i8, ptr %.8.val, i64 3 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !noundef !21 ; 2 uses
  %i.gb = add i8 %i.ga, -37
  %or.cond9.us.peel = icmp ult i8 %i.gb, 32
  br i1 %or.cond9.us.peel, label %bb.h, label %.split.split.us.peel.next

bb.h:                                             ; preds = %bb.g
  %narrow.us.peel = add nuw nsw i8 %i.ga, 11
  %i.gc = and i8 %narrow.us.peel, 15
  %narrow8.us.peel = add nuw nsw i8 %i.gc, 21
  store i8 %narrow8.us.peel, ptr %i.fz, align 1
  br label %.split.split.us.peel.next

.split.split.us.peel.next:                        ; preds = %bb.h, %bb.g
  %i.gd = icmp eq i64 %.16.val, 2
  br i1 %i.gd, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.split.split.us.peel.next
  %i.ge = add i64 %.16.val, 9223372036854775805
  %i.gf = and i64 %i.ge, 9223372036854775807      ; 3 uses
  %i.gg = add nuw i64 %i.gf, 1                    ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.gf, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp samesign ult i64 %i.gf, 16
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gh = and i64 %i.gg, 15                       ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  %i.gj = select i1 %i.gi, i64 16, i64 %i.gh      ; 2 uses
  %n.vec = sub i64 %i.gg, %i.gj                   ; 3 uses
  %i.gk = shl i64 %n.vec, 1
  %i.gl = getelementptr i8, ptr %i.fy, i64 %i.gk
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue65
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue65 ] ; 2 uses
  %i.gm = shl i64 %index, 1                       ; 16 uses
  %next.gep = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.gn = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.gp = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.gq = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.gr = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.gs = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.gt = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.gu = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.gv = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.gw = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.gx = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.gy = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.gz = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.ha = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.hb = getelementptr i8, ptr %i.fy, i64 %i.gm
  %i.hc = getelementptr inbounds nuw i8, ptr %next.gep, i64 1 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gn, i64 3      ; 2 uses
  %i.he = getelementptr i8, ptr %i.go, i64 5      ; 2 uses
  %i.hf = getelementptr i8, ptr %i.gp, i64 7      ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gq, i64 9      ; 2 uses
  %i.hh = getelementptr i8, ptr %i.gr, i64 11     ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gs, i64 13     ; 2 uses
  %i.hj = getelementptr i8, ptr %i.gt, i64 15     ; 2 uses
  %i.hk = getelementptr i8, ptr %i.gu, i64 17     ; 2 uses
  %i.hl = getelementptr i8, ptr %i.gv, i64 19     ; 2 uses
  %i.hm = getelementptr i8, ptr %i.gw, i64 21     ; 2 uses
  %i.hn = getelementptr i8, ptr %i.gx, i64 23     ; 2 uses
  %i.ho = getelementptr i8, ptr %i.gy, i64 25     ; 2 uses
  %i.hp = getelementptr i8, ptr %i.gz, i64 27     ; 2 uses
  %i.hq = getelementptr i8, ptr %i.ha, i64 29     ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hb, i64 31     ; 2 uses
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
  %i.ic = load i8, ptr %i.hm, align 1, !noundef !21 ; 2 uses
  %i.id = load i8, ptr %i.hn, align 1, !noundef !21 ; 2 uses
  %i.ie = load i8, ptr %i.ho, align 1, !noundef !21 ; 2 uses
  %i.if = load i8, ptr %i.hp, align 1, !noundef !21 ; 2 uses
  %i.ig = load i8, ptr %i.hq, align 1, !noundef !21 ; 2 uses
  %i.ih = load i8, ptr %i.hr, align 1, !noundef !21 ; 2 uses
  %i.ii = insertelement <16 x i8> poison, i8 %i.hs, i64 0
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 1
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 2
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 3
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 4
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 5
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 6
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 7
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 8
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 9
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 10
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 11
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 12
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 13
  %i.iw = insertelement <16 x i8> %i.iv, i8 %i.ig, i64 14
  %i.ix = insertelement <16 x i8> %i.iw, i8 %i.ih, i64 15
  %i.iy = add <16 x i8> %i.ix, splat (i8 -37)
  %i.iz = icmp ult <16 x i8> %i.iy, splat (i8 32) ; 16 uses
  %i.ja = extractelement <16 x i1> %i.iz, i64 0
  br i1 %i.ja, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.jb = add nuw nsw i8 %i.hs, 11
  %i.jc = and i8 %i.jb, 15
  %i.jd = add nuw nsw i8 %i.jc, 21
  store i8 %i.jd, ptr %i.hc, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.je = extractelement <16 x i1> %i.iz, i64 1
  br i1 %i.je, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue
  %i.jf = add nuw nsw i8 %i.ht, 11
  %i.jg = and i8 %i.jf, 15
  %i.jh = add nuw nsw i8 %i.jg, 21
  store i8 %i.jh, ptr %i.hd, align 1
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue
  %i.ji = extractelement <16 x i1> %i.iz, i64 2
  br i1 %i.ji, label %pred.store.if38, label %pred.store.continue39

pred.store.if38:                                  ; preds = %pred.store.continue37
  %i.jj = add nuw nsw i8 %i.hu, 11
  %i.jk = and i8 %i.jj, 15
  %i.jl = add nuw nsw i8 %i.jk, 21
  store i8 %i.jl, ptr %i.he, align 1
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %pred.store.if38, %pred.store.continue37
  %i.jm = extractelement <16 x i1> %i.iz, i64 3
  br i1 %i.jm, label %pred.store.if40, label %pred.store.continue41

pred.store.if40:                                  ; preds = %pred.store.continue39
  %i.jn = add nuw nsw i8 %i.hv, 11
  %i.jo = and i8 %i.jn, 15
  %i.jp = add nuw nsw i8 %i.jo, 21
  store i8 %i.jp, ptr %i.hf, align 1
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.if40, %pred.store.continue39
  %i.jq = extractelement <16 x i1> %i.iz, i64 4
  br i1 %i.jq, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue41
  %i.jr = add nuw nsw i8 %i.hw, 11
  %i.js = and i8 %i.jr, 15
  %i.jt = add nuw nsw i8 %i.js, 21
  store i8 %i.jt, ptr %i.hg, align 1
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue41
  %i.ju = extractelement <16 x i1> %i.iz, i64 5
  br i1 %i.ju, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.jv = add nuw nsw i8 %i.hx, 11
  %i.jw = and i8 %i.jv, 15
  %i.jx = add nuw nsw i8 %i.jw, 21
  store i8 %i.jx, ptr %i.hh, align 1
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.jy = extractelement <16 x i1> %i.iz, i64 6
  br i1 %i.jy, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.jz = add nuw nsw i8 %i.hy, 11
  %i.ka = and i8 %i.jz, 15
  %i.kb = add nuw nsw i8 %i.ka, 21
  store i8 %i.kb, ptr %i.hi, align 1
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.kc = extractelement <16 x i1> %i.iz, i64 7
  br i1 %i.kc, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.kd = add nuw nsw i8 %i.hz, 11
  %i.ke = and i8 %i.kd, 15
  %i.kf = add nuw nsw i8 %i.ke, 21
  store i8 %i.kf, ptr %i.hj, align 1
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.kg = extractelement <16 x i1> %i.iz, i64 8
  br i1 %i.kg, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  %i.kh = add nuw nsw i8 %i.ia, 11
  %i.ki = and i8 %i.kh, 15
  %i.kj = add nuw nsw i8 %i.ki, 21
  store i8 %i.kj, ptr %i.hk, align 1
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.kk = extractelement <16 x i1> %i.iz, i64 9
  br i1 %i.kk, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %i.kl = add nuw nsw i8 %i.ib, 11
  %i.km = and i8 %i.kl, 15
  %i.kn = add nuw nsw i8 %i.km, 21
  store i8 %i.kn, ptr %i.hl, align 1
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.ko = extractelement <16 x i1> %i.iz, i64 10
  br i1 %i.ko, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %i.kp = add nuw nsw i8 %i.ic, 11
  %i.kq = and i8 %i.kp, 15
  %i.kr = add nuw nsw i8 %i.kq, 21
  store i8 %i.kr, ptr %i.hm, align 1
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.ks = extractelement <16 x i1> %i.iz, i64 11
  br i1 %i.ks, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.kt = add nuw nsw i8 %i.id, 11
  %i.ku = and i8 %i.kt, 15
  %i.kv = add nuw nsw i8 %i.ku, 21
  store i8 %i.kv, ptr %i.hn, align 1
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
end_hunk_1
