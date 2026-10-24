Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory11command_ins:bb.a
  store i64 %i.as, ptr %i.al, align 8, !alias.scope !4734
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
  %i.ba = and i32 %2, 4
  %i.bb = icmp ne i32 %i.ba, 0                    ; 2 uses
  %.pre = load i64, ptr %i.av, align 8            ; 4 uses
  %.pre24 = load i64, ptr %1, align 8, !range !22 ; 3 uses
  br i1 %i.bb, label %bb.w, label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #47
  unreachable

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4737)
  %i.bc = icmp eq i64 %.pre, %.pre24
  br i1 %i.bc, label %bb.v, label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit11

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #44
  %.pre23.pre = load i64, ptr %1, align 8, !range !22, !alias.scope !4738
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit11

_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit11: ; preds = %bb.u, %bb.v
  %.pre23 = phi i64 [ %.pre24, %bb.u ], [ %.pre23.pre, %bb.v ]
  %i.bd = load ptr, ptr %i.ax, align 8, !alias.scope !4739, !nonnull !21, !noundef !21
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %.pre ; 2 uses
  store i8 2, ptr %i.be, align 1, !noalias !4739
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 71, ptr %i.bf, align 1, !noalias !4739
  %i.bg = add i64 %.pre, 1                        ; 2 uses
  store i64 %i.bg, ptr %i.av, align 8, !alias.scope !4739
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit11
  %i.bh = phi i64 [ %.pre24, %bb.s ], [ %.pre23, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit11 ]
  %i.bi = phi i64 [ %.pre, %bb.s ], [ %i.bg, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit11 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4741)
  %i.bj = icmp eq i64 %i.bi, %i.bh
  br i1 %i.bj, label %bb.x, label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit12

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #44
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit12

_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit12: ; preds = %bb.w, %bb.x
  %i.bk = load ptr, ptr %i.ax, align 8, !alias.scope !4738, !nonnull !21, !noundef !21 ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bi ; 2 uses
  store i8 2, ptr %i.bl, align 1, !noalias !4738
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %.sroa.02.0, ptr %i.bm, align 1, !noalias !4738
  %i.bn = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bn, ptr %i.av, align 8, !alias.scope !4738
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4742)
  %i.bo = icmp samesign ugt i32 %2, 3
  br i1 %i.bo, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit12
  %i.bp = add nsw i8 %.sroa.02.0, -40
  %i.bq = icmp ult i8 %i.bp, 16
  %or.cond3.i = and i1 %i.bb, %i.bq
  %i.br = add nuw nsw i8 %.sroa.02.0, 16
  %spec.select = select i1 %or.cond3.i, i8 %i.br, i8 %.sroa.02.0
  br label %.thread.i

.thread.i:                                        ; preds = %bb.y, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit12
  %.sroa.0.028.i = phi i8 [ %spec.select, %bb.y ], [ %.sroa.02.0, %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit12 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4743)
  %i.bs = load i64, ptr %1, align 8, !range !22, !alias.scope !4744, !noundef !21
  %i.bt = icmp eq i64 %i.bn, %i.bs
  br i1 %i.bt, label %bb.z, label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit13

bb.z:                                             ; preds = %.thread.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #44
  %.pre26 = load ptr, ptr %i.ax, align 8, !alias.scope !4744
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit13

_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit13: ; preds = %.thread.i, %bb.z
  %i.bu = phi ptr [ %i.bk, %.thread.i ], [ %.pre26, %bb.z ]
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.bn ; 2 uses
  store i8 4, ptr %i.bv, align 1, !noalias !4744
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %.sroa.0.028.i, ptr %i.bw, align 1, !noalias !4744
  %i.bx = add i64 %i.bi, 2
  store i64 %i.bx, ptr %i.av, align 8, !alias.scope !4744
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
  br i1 %i.j, label %.loopexit, label %iter.check150

iter.check150:                                    ; preds = %.split.us.peel.next
  %i.k = add i64 %.16.val, 9223372036854775805
  %i.l = and i64 %i.k, 9223372036854775807        ; 3 uses
  %i.m = add nuw i64 %i.l, 1                      ; 4 uses
  %min.iters.check93 = icmp samesign ult i64 %i.l, 8
  br i1 %min.iters.check93, label %vec.epilog.scalar.ph152.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %iter.check150
  %min.iters.check95 = icmp samesign ult i64 %i.l, 16
  br i1 %min.iters.check95, label %vec.epilog.ph154, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.n = and i64 %i.m, 15                         ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 16, i64 %i.n         ; 2 uses
  %n.vec97 = sub i64 %i.m, %i.p                   ; 3 uses
  %i.q = shl i64 %n.vec97, 1
  %i.r = getelementptr i8, ptr %i.e, i64 %i.q
  br label %vector.body98

vector.body98:                                    ; preds = %vector.ph96, %pred.store.continue147
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next148, %pred.store.continue147 ] ; 2 uses
  %i.s = shl i64 %index99, 1                      ; 16 uses
  %next.gep100 = getelementptr i8, ptr %i.e, i64 %i.s
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
  %i.ai = getelementptr inbounds nuw i8, ptr %next.gep100, i64 1 ; 2 uses
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
  %i.ay = load i8, ptr %i.ai, align 1             ; 2 uses
  %i.az = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.ba = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.bb = load i8, ptr %i.al, align 1             ; 2 uses
  %i.bc = load i8, ptr %i.am, align 1             ; 2 uses
  %i.bd = load i8, ptr %i.an, align 1             ; 2 uses
  %i.be = load i8, ptr %i.ao, align 1             ; 2 uses
  %i.bf = load i8, ptr %i.ap, align 1             ; 2 uses
  %i.bg = load i8, ptr %i.aq, align 1             ; 2 uses
  %i.bh = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.bi = load i8, ptr %i.as, align 1             ; 2 uses
  %i.bj = load i8, ptr %i.at, align 1             ; 2 uses
  %i.bk = load i8, ptr %i.au, align 1             ; 2 uses
  %i.bl = load i8, ptr %i.av, align 1             ; 2 uses
  %i.bm = load i8, ptr %i.aw, align 1             ; 2 uses
  %i.bn = load i8, ptr %i.ax, align 1             ; 2 uses
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
  br i1 %i.cg, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %vector.body98
  %i.ch = add nsw i8 %i.ay, -16
  store i8 %i.ch, ptr %i.ai, align 1
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %vector.body98
  %i.ci = extractelement <16 x i1> %i.cf, i64 1
  br i1 %i.ci, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  %i.cj = add nsw i8 %i.az, -16
  store i8 %i.cj, ptr %i.aj, align 1
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %i.ck = extractelement <16 x i1> %i.cf, i64 2
  br i1 %i.ck, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  %i.cl = add nsw i8 %i.ba, -16
  store i8 %i.cl, ptr %i.ak, align 1
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.cm = extractelement <16 x i1> %i.cf, i64 3
  br i1 %i.cm, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  %i.cn = add nsw i8 %i.bb, -16
  store i8 %i.cn, ptr %i.al, align 1
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %i.co = extractelement <16 x i1> %i.cf, i64 4
  br i1 %i.co, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  %i.cp = add nsw i8 %i.bc, -16
  store i8 %i.cp, ptr %i.am, align 1
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.cq = extractelement <16 x i1> %i.cf, i64 5
  br i1 %i.cq, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  %i.cr = add nsw i8 %i.bd, -16
  store i8 %i.cr, ptr %i.an, align 1
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.cs = extractelement <16 x i1> %i.cf, i64 6
  br i1 %i.cs, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  %i.ct = add nsw i8 %i.be, -16
  store i8 %i.ct, ptr %i.ao, align 1
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.cu = extractelement <16 x i1> %i.cf, i64 7
  br i1 %i.cu, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  %i.cv = add nsw i8 %i.bf, -16
  store i8 %i.cv, ptr %i.ap, align 1
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.cw = extractelement <16 x i1> %i.cf, i64 8
  br i1 %i.cw, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  %i.cx = add nsw i8 %i.bg, -16
  store i8 %i.cx, ptr %i.aq, align 1
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %i.cy = extractelement <16 x i1> %i.cf, i64 9
  br i1 %i.cy, label %pred.store.if134, label %pred.store.continue135

pred.store.if134:                                 ; preds = %pred.store.continue133
  %i.cz = add nsw i8 %i.bh, -16
  store i8 %i.cz, ptr %i.ar, align 1
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.if134, %pred.store.continue133
  %i.da = extractelement <16 x i1> %i.cf, i64 10
  br i1 %i.da, label %pred.store.if136, label %pred.store.continue137

pred.store.if136:                                 ; preds = %pred.store.continue135
  %i.db = add nsw i8 %i.bi, -16
  store i8 %i.db, ptr %i.as, align 1
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.if136, %pred.store.continue135
  %i.dc = extractelement <16 x i1> %i.cf, i64 11
  br i1 %i.dc, label %pred.store.if138, label %pred.store.continue139

pred.store.if138:                                 ; preds = %pred.store.continue137
  %i.dd = add nsw i8 %i.bj, -16
  store i8 %i.dd, ptr %i.at, align 1
  br label %pred.store.continue139

pred.store.continue139:                           ; preds = %pred.store.if138, %pred.store.continue137
  %i.de = extractelement <16 x i1> %i.cf, i64 12
  br i1 %i.de, label %pred.store.if140, label %pred.store.continue141

pred.store.if140:                                 ; preds = %pred.store.continue139
  %i.df = add nsw i8 %i.bk, -16
  store i8 %i.df, ptr %i.au, align 1
  br label %pred.store.continue141

pred.store.continue141:                           ; preds = %pred.store.if140, %pred.store.continue139
  %i.dg = extractelement <16 x i1> %i.cf, i64 13
  br i1 %i.dg, label %pred.store.if142, label %pred.store.continue143

pred.store.if142:                                 ; preds = %pred.store.continue141
  %i.dh = add nsw i8 %i.bl, -16
  store i8 %i.dh, ptr %i.av, align 1
  br label %pred.store.continue143

pred.store.continue143:                           ; preds = %pred.store.if142, %pred.store.continue141
  %i.di = extractelement <16 x i1> %i.cf, i64 14
  br i1 %i.di, label %pred.store.if144, label %pred.store.continue145

pred.store.if144:                                 ; preds = %pred.store.continue143
  %i.dj = add nsw i8 %i.bm, -16
  store i8 %i.dj, ptr %i.aw, align 1
  br label %pred.store.continue145

pred.store.continue145:                           ; preds = %pred.store.if144, %pred.store.continue143
  %i.dk = extractelement <16 x i1> %i.cf, i64 15
  br i1 %i.dk, label %pred.store.if146, label %pred.store.continue147

pred.store.if146:                                 ; preds = %pred.store.continue145
  %i.dl = add nsw i8 %i.bn, -16
  store i8 %i.dl, ptr %i.ax, align 1
  br label %pred.store.continue147

pred.store.continue147:                           ; preds = %pred.store.if146, %pred.store.continue145
  %index.next148 = add nuw i64 %index99, 16       ; 2 uses
  %i.dm = icmp eq i64 %index.next148, %n.vec97
  br i1 %i.dm, label %vec.epilog.iter.check151, label %vector.body98, !llvm.loop !4745

vec.epilog.iter.check151:                         ; preds = %pred.store.continue147
  %min.epilog.iters.check153 = icmp samesign ult i64 %i.p, 9
  br i1 %min.epilog.iters.check153, label %vec.epilog.scalar.ph152.preheader, label %vec.epilog.ph154, !prof !4753

vec.epilog.ph154:                                 ; preds = %vector.main.loop.iter.check94, %vec.epilog.iter.check151
  %vec.epilog.resume.val155 = phi i64 [ %n.vec97, %vec.epilog.iter.check151 ], [ 0, %vector.main.loop.iter.check94 ]
  %i.dn = and i64 %i.m, 7                         ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  %i.dp = select i1 %i.do, i64 8, i64 %i.dn
  %n.vec156 = sub i64 %i.m, %i.dp                 ; 2 uses
  %i.dq = shl i64 %n.vec156, 1
  %i.dr = getelementptr i8, ptr %i.e, i64 %i.dq
  br label %vec.epilog.vector.body157

vec.epilog.vector.body157:                        ; preds = %pred.store.continue182, %vec.epilog.ph154
  %index158 = phi i64 [ %vec.epilog.resume.val155, %vec.epilog.ph154 ], [ %index.next183, %pred.store.continue182 ] ; 2 uses
  %i.ds = shl i64 %index158, 1                    ; 8 uses
  %next.gep159 = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.dt = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.dw = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.dx = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.dz = getelementptr i8, ptr %i.e, i64 %i.ds
  %i.ea = getelementptr inbounds nuw i8, ptr %next.gep159, i64 1 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dt, i64 3      ; 2 uses
  %i.ec = getelementptr i8, ptr %i.du, i64 5      ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dv, i64 7      ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dw, i64 9      ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dx, i64 11     ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dy, i64 13     ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dz, i64 15     ; 2 uses
  %i.ei = load i8, ptr %i.ea, align 1             ; 2 uses
  %i.ej = load i8, ptr %i.eb, align 1             ; 2 uses
  %i.ek = load i8, ptr %i.ec, align 1             ; 2 uses
  %i.el = load i8, ptr %i.ed, align 1             ; 2 uses
  %i.em = load i8, ptr %i.ee, align 1             ; 2 uses
  %i.en = load i8, ptr %i.ef, align 1             ; 2 uses
  %i.eo = load i8, ptr %i.eg, align 1             ; 2 uses
  %i.ep = load i8, ptr %i.eh, align 1             ; 2 uses
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
  br i1 %i.fa, label %pred.store.if167, label %pred.store.continue168

pred.store.if167:                                 ; preds = %vec.epilog.vector.body157
  %i.fb = add nsw i8 %i.ei, -16
  store i8 %i.fb, ptr %i.ea, align 1
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.if167, %vec.epilog.vector.body157
  %i.fc = extractelement <8 x i1> %i.ez, i64 1
  br i1 %i.fc, label %pred.store.if169, label %pred.store.continue170

pred.store.if169:                                 ; preds = %pred.store.continue168
  %i.fd = add nsw i8 %i.ej, -16
  store i8 %i.fd, ptr %i.eb, align 1
  br label %pred.store.continue170

pred.store.continue170:                           ; preds = %pred.store.if169, %pred.store.continue168
  %i.fe = extractelement <8 x i1> %i.ez, i64 2
  br i1 %i.fe, label %pred.store.if171, label %pred.store.continue172

pred.store.if171:                                 ; preds = %pred.store.continue170
  %i.ff = add nsw i8 %i.ek, -16
  store i8 %i.ff, ptr %i.ec, align 1
  br label %pred.store.continue172

pred.store.continue172:                           ; preds = %pred.store.if171, %pred.store.continue170
  %i.fg = extractelement <8 x i1> %i.ez, i64 3
  br i1 %i.fg, label %pred.store.if173, label %pred.store.continue174

pred.store.if173:                                 ; preds = %pred.store.continue172
  %i.fh = add nsw i8 %i.el, -16
  store i8 %i.fh, ptr %i.ed, align 1
  br label %pred.store.continue174

pred.store.continue174:                           ; preds = %pred.store.if173, %pred.store.continue172
  %i.fi = extractelement <8 x i1> %i.ez, i64 4
  br i1 %i.fi, label %pred.store.if175, label %pred.store.continue176

pred.store.if175:                                 ; preds = %pred.store.continue174
  %i.fj = add nsw i8 %i.em, -16
  store i8 %i.fj, ptr %i.ee, align 1
  br label %pred.store.continue176

pred.store.continue176:                           ; preds = %pred.store.if175, %pred.store.continue174
  %i.fk = extractelement <8 x i1> %i.ez, i64 5
  br i1 %i.fk, label %pred.store.if177, label %pred.store.continue178

pred.store.if177:                                 ; preds = %pred.store.continue176
  %i.fl = add nsw i8 %i.en, -16
  store i8 %i.fl, ptr %i.ef, align 1
  br label %pred.store.continue178

pred.store.continue178:                           ; preds = %pred.store.if177, %pred.store.continue176
  %i.fm = extractelement <8 x i1> %i.ez, i64 6
  br i1 %i.fm, label %pred.store.if179, label %pred.store.continue180

pred.store.if179:                                 ; preds = %pred.store.continue178
  %i.fn = add nsw i8 %i.eo, -16
  store i8 %i.fn, ptr %i.eg, align 1
  br label %pred.store.continue180

pred.store.continue180:                           ; preds = %pred.store.if179, %pred.store.continue178
  %i.fo = extractelement <8 x i1> %i.ez, i64 7
  br i1 %i.fo, label %pred.store.if181, label %pred.store.continue182

pred.store.if181:                                 ; preds = %pred.store.continue180
  %i.fp = add nsw i8 %i.ep, -16
  store i8 %i.fp, ptr %i.eh, align 1
  br label %pred.store.continue182

pred.store.continue182:                           ; preds = %pred.store.if181, %pred.store.continue180
  %index.next183 = add nuw i64 %index158, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next183, %n.vec156
  br i1 %i.fq, label %vec.epilog.scalar.ph152.preheader, label %vec.epilog.vector.body157, !llvm.loop !4746

vec.epilog.scalar.ph152.preheader:                ; preds = %pred.store.continue182, %iter.check150, %vec.epilog.iter.check151
  %.sroa.0.0.us18.ph = phi ptr [ %i.e, %iter.check150 ], [ %i.r, %vec.epilog.iter.check151 ], [ %i.dr, %pred.store.continue182 ]
  br label %vec.epilog.scalar.ph152

vec.epilog.scalar.ph152:                          ; preds = %vec.epilog.scalar.ph152.preheader, %bb.f
  %.sroa.0.0.us18 = phi ptr [ %i.fr, %bb.f ], [ %.sroa.0.0.us18.ph, %vec.epilog.scalar.ph152.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us18, i64 2 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us18, i64 1 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !noundef !21 ; 2 uses
  %i.fu = add i8 %i.ft, -53
  %or.cond10.us = icmp ult i8 %i.fu, 16
  br i1 %or.cond10.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %vec.epilog.scalar.ph152
  %i.fv = add nsw i8 %i.ft, -16
  store i8 %i.fv, ptr %i.fs, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %vec.epilog.scalar.ph152
  %i.fw = icmp eq ptr %i.fr, %i.c
  br i1 %i.fw, label %.loopexit, label %vec.epilog.scalar.ph152, !llvm.loop !4747

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
  %i.hs = load i8, ptr %i.hc, align 1             ; 2 uses
  %i.ht = load i8, ptr %i.hd, align 1             ; 2 uses
  %i.hu = load i8, ptr %i.he, align 1             ; 2 uses
  %i.hv = load i8, ptr %i.hf, align 1             ; 2 uses
  %i.hw = load i8, ptr %i.hg, align 1             ; 2 uses
  %i.hx = load i8, ptr %i.hh, align 1             ; 2 uses
  %i.hy = load i8, ptr %i.hi, align 1             ; 2 uses
  %i.hz = load i8, ptr %i.hj, align 1             ; 2 uses
  %i.ia = load i8, ptr %i.hk, align 1             ; 2 uses
  %i.ib = load i8, ptr %i.hl, align 1             ; 2 uses
  %i.ic = load i8, ptr %i.hm, align 1             ; 2 uses
  %i.id = load i8, ptr %i.hn, align 1             ; 2 uses
  %i.ie = load i8, ptr %i.ho, align 1             ; 2 uses
  %i.if = load i8, ptr %i.hp, align 1             ; 2 uses
  %i.ig = load i8, ptr %i.hq, align 1             ; 2 uses
  %i.ih = load i8, ptr %i.hr, align 1             ; 2 uses
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
  %i.kw = extractelement <16 x i1> %i.iz, i64 12
  br i1 %i.kw, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %i.kx = add nuw nsw i8 %i.ie, 11
  %i.ky = and i8 %i.kx, 15
  %i.kz = add nuw nsw i8 %i.ky, 21
  store i8 %i.kz, ptr %i.ho, align 1
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.la = extractelement <16 x i1> %i.iz, i64 13
  br i1 %i.la, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %i.lb = add nuw nsw i8 %i.if, 11
  %i.lc = and i8 %i.lb, 15
  %i.ld = add nuw nsw i8 %i.lc, 21
  store i8 %i.ld, ptr %i.hp, align 1
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.le = extractelement <16 x i1> %i.iz, i64 14
  br i1 %i.le, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %i.lf = add nuw nsw i8 %i.ig, 11
  %i.lg = and i8 %i.lf, 15
  %i.lh = add nuw nsw i8 %i.lg, 21
  store i8 %i.lh, ptr %i.hq, align 1
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.li = extractelement <16 x i1> %i.iz, i64 15
  br i1 %i.li, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.lj = add nuw nsw i8 %i.ih, 11
  %i.lk = and i8 %i.lj, 15
  %i.ll = add nuw nsw i8 %i.lk, 21
  store i8 %i.ll, ptr %i.hr, align 1
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lm = icmp eq i64 %index.next, %n.vec
  br i1 %i.lm, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !4748

vec.epilog.iter.check:                            ; preds = %pred.store.continue65
  %min.epilog.iters.check = icmp samesign ult i64 %i.gj, 9
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !4753

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ln = and i64 %i.gg, 7                        ; 2 uses
  %i.lo = icmp eq i64 %i.ln, 0
  %i.lp = select i1 %i.lo, i64 8, i64 %i.ln
  %n.vec66 = sub i64 %i.gg, %i.lp                 ; 2 uses
  %i.lq = shl i64 %n.vec66, 1
  %i.lr = getelementptr i8, ptr %i.fy, i64 %i.lq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue91, %vec.epilog.ph
  %index67 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %pred.store.continue91 ] ; 2 uses
  %i.ls = shl i64 %index67, 1                     ; 8 uses
  %next.gep68 = getelementptr i8, ptr %i.fy, i64 %i.ls
  %i.lt = getelementptr i8, ptr %i.fy, i64 %i.ls
  %i.lu = getelementptr i8, ptr %i.fy, i64 %i.ls
  %i.lv = getelementptr i8, ptr %i.fy, i64 %i.ls
  %i.lw = getelementptr i8, ptr %i.fy, i64 %i.ls
  %i.lx = getelementptr i8, ptr %i.fy, i64 %i.ls
  %i.ly = getelementptr i8, ptr %i.fy, i64 %i.ls
  %i.lz = getelementptr i8, ptr %i.fy, i64 %i.ls
  %i.ma = getelementptr inbounds nuw i8, ptr %next.gep68, i64 1 ; 2 uses
  %i.mb = getelementptr i8, ptr %i.lt, i64 3      ; 2 uses
  %i.mc = getelementptr i8, ptr %i.lu, i64 5      ; 2 uses
  %i.md = getelementptr i8, ptr %i.lv, i64 7      ; 2 uses
  %i.me = getelementptr i8, ptr %i.lw, i64 9      ; 2 uses
  %i.mf = getelementptr i8, ptr %i.lx, i64 11     ; 2 uses
  %i.mg = getelementptr i8, ptr %i.ly, i64 13     ; 2 uses
  %i.mh = getelementptr i8, ptr %i.lz, i64 15     ; 2 uses
  %i.mi = load i8, ptr %i.ma, align 1             ; 2 uses
  %i.mj = load i8, ptr %i.mb, align 1             ; 2 uses
  %i.mk = load i8, ptr %i.mc, align 1             ; 2 uses
  %i.ml = load i8, ptr %i.md, align 1             ; 2 uses
  %i.mm = load i8, ptr %i.me, align 1             ; 2 uses
  %i.mn = load i8, ptr %i.mf, align 1             ; 2 uses
  %i.mo = load i8, ptr %i.mg, align 1             ; 2 uses
  %i.mp = load i8, ptr %i.mh, align 1             ; 2 uses
  %i.mq = insertelement <8 x i8> poison, i8 %i.mi, i64 0
  %i.mr = insertelement <8 x i8> %i.mq, i8 %i.mj, i64 1
  %i.ms = insertelement <8 x i8> %i.mr, i8 %i.mk, i64 2
  %i.mt = insertelement <8 x i8> %i.ms, i8 %i.ml, i64 3
  %i.mu = insertelement <8 x i8> %i.mt, i8 %i.mm, i64 4
  %i.mv = insertelement <8 x i8> %i.mu, i8 %i.mn, i64 5
  %i.mw = insertelement <8 x i8> %i.mv, i8 %i.mo, i64 6
  %i.mx = insertelement <8 x i8> %i.mw, i8 %i.mp, i64 7
  %i.my = add <8 x i8> %i.mx, splat (i8 -37)
  %i.mz = icmp ult <8 x i8> %i.my, splat (i8 32)  ; 8 uses
  %i.na = extractelement <8 x i1> %i.mz, i64 0
  br i1 %i.na, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %vec.epilog.vector.body
  %i.nb = add nuw nsw i8 %i.mi, 11
  %i.nc = and i8 %i.nb, 15
  %i.nd = add nuw nsw i8 %i.nc, 21
  store i8 %i.nd, ptr %i.ma, align 1
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %vec.epilog.vector.body
  %i.ne = extractelement <8 x i1> %i.mz, i64 1
  br i1 %i.ne, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.nf = add nuw nsw i8 %i.mj, 11
  %i.ng = and i8 %i.nf, 15
  %i.nh = add nuw nsw i8 %i.ng, 21
  store i8 %i.nh, ptr %i.mb, align 1
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.ni = extractelement <8 x i1> %i.mz, i64 2
  br i1 %i.ni, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.nj = add nuw nsw i8 %i.mk, 11
  %i.nk = and i8 %i.nj, 15
  %i.nl = add nuw nsw i8 %i.nk, 21
  store i8 %i.nl, ptr %i.mc, align 1
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.nm = extractelement <8 x i1> %i.mz, i64 3
  br i1 %i.nm, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.nn = add nuw nsw i8 %i.ml, 11
  %i.no = and i8 %i.nn, 15
  %i.np = add nuw nsw i8 %i.no, 21
  store i8 %i.np, ptr %i.md, align 1
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.nq = extractelement <8 x i1> %i.mz, i64 4
  br i1 %i.nq, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  %i.nr = add nuw nsw i8 %i.mm, 11
  %i.ns = and i8 %i.nr, 15
  %i.nt = add nuw nsw i8 %i.ns, 21
  store i8 %i.nt, ptr %i.me, align 1
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.nu = extractelement <8 x i1> %i.mz, i64 5
  br i1 %i.nu, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  %i.nv = add nuw nsw i8 %i.mn, 11
  %i.nw = and i8 %i.nv, 15
  %i.nx = add nuw nsw i8 %i.nw, 21
  store i8 %i.nx, ptr %i.mf, align 1
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.ny = extractelement <8 x i1> %i.mz, i64 6
  br i1 %i.ny, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  %i.nz = add nuw nsw i8 %i.mo, 11
  %i.oa = and i8 %i.nz, 15
  %i.ob = add nuw nsw i8 %i.oa, 21
  store i8 %i.ob, ptr %i.mg, align 1
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.oc = extractelement <8 x i1> %i.mz, i64 7
  br i1 %i.oc, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  %i.od = add nuw nsw i8 %i.mp, 11
  %i.oe = and i8 %i.od, 15
  %i.of = add nuw nsw i8 %i.oe, 21
  store i8 %i.of, ptr %i.mh, align 1
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %index.next92 = add nuw i64 %index67, 8         ; 2 uses
  %i.og = icmp eq i64 %index.next92, %n.vec66
  br i1 %i.og, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !4749

vec.epilog.scalar.ph.preheader:                   ; preds = %pred.store.continue91, %iter.check, %vec.epilog.iter.check
  %.sroa.0.0.us617.ph = phi ptr [ %i.fy, %iter.check ], [ %i.gl, %vec.epilog.iter.check ], [ %i.lr, %pred.store.continue91 ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.j
  %.sroa.0.0.us617 = phi ptr [ %i.oh, %bb.j ], [ %.sroa.0.0.us617.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us617, i64 2 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us617, i64 1 ; 2 uses
  %i.oj = load i8, ptr %i.oi, align 1, !noundef !21 ; 2 uses
  %i.ok = add i8 %i.oj, -37
  %or.cond9.us = icmp ult i8 %i.ok, 32
  br i1 %or.cond9.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %vec.epilog.scalar.ph
  %narrow.us = add nuw nsw i8 %i.oj, 11
  %i.ol = and i8 %narrow.us, 15
  %narrow8.us = add nuw nsw i8 %i.ol, 21
  store i8 %narrow8.us, ptr %i.oi, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %vec.epilog.scalar.ph
  %i.om = icmp eq ptr %i.oh, %i.c
  br i1 %i.om, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !4750

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4762)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !4763, !noundef !21 ; 3 uses
  %i.n = load i64, ptr %0, align 8, !range !22, !alias.scope !4763, !noundef !21
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsf8MNnN4IDbl_8iced_x864info12UsedRegisterE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #44
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit

_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory12add_register.exit: ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !4763, !nonnull !21, !noundef !21
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.m ; 2 uses
  store i8 1, ptr %i.r, align 1, !noalias !4763
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 73, ptr %i.s, align 1, !noalias !4763
  %i.t = add i64 %i.m, 1
  store i64 %i.t, ptr %i.l, align 8, !alias.scope !4763
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
  %.pre = load i64, ptr %i.x, align 8, !alias.scope !4764
  %i.aa = insertelement <4 x i8> <i8 73, i8 poison, i8 0, i8 1>, i8 %i.f, i64 1
  br label %_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory10add_memory.exit

_RNvMs0_NtNtCsf8MNnN4IDbl_8iced_x864info7factoryNtB5_22InstructionInfoFactory10add_memory.exit: ; preds = %bb.g, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit
  %i.ab = phi i64 [ %.pre, %bb.g ], [ %i.ah, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit ] ; 3 uses
  %.sroa.01.02 = phi i64 [ 0, %bb.g ], [ %i.ai, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit ] ; 2 uses
  %.sroa.03.01 = phi i32 [ 0, %bb.g ], [ %i.ac, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsf8MNnN4IDbl_8iced_x864info10UsedMemoryE8push_mutBJ_.exit ]
  %i.ac = add nuw nsw i32 %.sroa.03.01, 1         ; 2 uses
end_hunk_0
