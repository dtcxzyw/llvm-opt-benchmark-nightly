Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tr-4ec185560a9f7532.uu_tr.f6bffaffa43728d0-cgu.0?download=true
inline.NumInlined: 1207
inline.NumDeleted: 660
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXs2_NtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_nINtB5_7RepeatNhENtNtNtB9_6traits8iterator8Iterator10advance_byCslbrwWrVtb7E_5uu_tr:bb.a
bb.b:                                             ; preds = %bb.a
  %or.cond.not = icmp ugt i64 %i.a, %1
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.d, %bb.e
  %.sroa.0.1 = phi i64 [ %i.c, %bb.e ], [ 0, %bb.d ], [ %1, %bb.a ]
  ret i64 %.sroa.0.1

bb.d:                                             ; preds = %bb.b
  %i.b = sub nuw i64 %i.a, %1
  store i64 %i.b, ptr %0, align 8
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %i.c = sub nuw i64 %1, %i.a
  br label %bb.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal { i1, i8 } @_RNvXs2_NtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_nINtB5_7RepeatNhENtNtNtB9_6traits8iterator8Iterator4nextCslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !11  ; 2 uses
  %.not = icmp ne i64 %i.a, 0                     ; 2 uses
  br i1 %.not, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = add i64 %i.a, -1
  %i.d = load i8, ptr %i.b, align 8
  store i64 %i.c, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.sroa.5.0 = phi i8 [ undef, %bb.a ], [ %i.d, %.sink.split ]
  %i.e = insertvalue { i1, i8 } poison, i1 %.not, 0
  %i.f = insertvalue { i1, i8 } %i.e, i8 %.sroa.5.0, 1
  ret { i1, i8 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs2_NtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_nINtB5_7RepeatNhENtNtNtB9_6traits8iterator8Iterator9size_hintCslbrwWrVtb7E_5uu_tr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !11 ; 2 uses
  store i64 %.val, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs6_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_15DeleteOperationNtB5_14ChunkProcessor13process_chunk(ptr noalias nofree noundef readonly captures(none) dereferenceable(256) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
vector.ph:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  %wide.load = load <16 x i8>, ptr %0, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr = freeze <16 x i8> %wide.load
  %i.a = icmp ne <16 x i8> %wide.load.fr, zeroinitializer ; 2 uses
  %i.b = bitcast <16 x i1> %i.a to i16
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.ph
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.c, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.1 = freeze <16 x i8> %wide.load.1
  %i.d = icmp ne <16 x i8> %wide.load.fr.1, zeroinitializer ; 2 uses
  %i.e = bitcast <16 x i1> %i.d to i16
  %.not.1 = icmp eq i16 %i.e, 0
  br i1 %.not.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.f, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.2 = freeze <16 x i8> %wide.load.2
  %i.g = icmp ne <16 x i8> %wide.load.fr.2, zeroinitializer ; 2 uses
  %i.h = bitcast <16 x i1> %i.g to i16
  %.not.2 = icmp eq i16 %i.h, 0
  br i1 %.not.2, label %vector.body.interim.2, label %vector.early.exit

vector.body.interim.2:                            ; preds = %vector.body.interim.1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.load.3 = load <16 x i8>, ptr %i.i, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.3 = freeze <16 x i8> %wide.load.3
  %i.j = icmp ne <16 x i8> %wide.load.fr.3, zeroinitializer ; 2 uses
  %i.k = bitcast <16 x i1> %i.j to i16
  %.not.3 = icmp eq i16 %i.k, 0
  br i1 %.not.3, label %vector.body.interim.3, label %vector.early.exit

vector.body.interim.3:                            ; preds = %vector.body.interim.2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.load.4 = load <16 x i8>, ptr %i.l, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.4 = freeze <16 x i8> %wide.load.4
  %i.m = icmp ne <16 x i8> %wide.load.fr.4, zeroinitializer ; 2 uses
  %i.n = bitcast <16 x i1> %i.m to i16
  %.not.4 = icmp eq i16 %i.n, 0
  br i1 %.not.4, label %vector.body.interim.4, label %vector.early.exit

vector.body.interim.4:                            ; preds = %vector.body.interim.3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.load.5 = load <16 x i8>, ptr %i.o, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.5 = freeze <16 x i8> %wide.load.5
  %i.p = icmp ne <16 x i8> %wide.load.fr.5, zeroinitializer ; 2 uses
  %i.q = bitcast <16 x i1> %i.p to i16
  %.not.5 = icmp eq i16 %i.q, 0
  br i1 %.not.5, label %vector.body.interim.5, label %vector.early.exit

vector.body.interim.5:                            ; preds = %vector.body.interim.4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %wide.load.6 = load <16 x i8>, ptr %i.r, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.6 = freeze <16 x i8> %wide.load.6
  %i.s = icmp ne <16 x i8> %wide.load.fr.6, zeroinitializer ; 2 uses
  %i.t = bitcast <16 x i1> %i.s to i16
  %.not.6 = icmp eq i16 %i.t, 0
  br i1 %.not.6, label %vector.body.interim.6, label %vector.early.exit

vector.body.interim.6:                            ; preds = %vector.body.interim.5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.load.7 = load <16 x i8>, ptr %i.u, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.7 = freeze <16 x i8> %wide.load.7
  %i.v = icmp ne <16 x i8> %wide.load.fr.7, zeroinitializer ; 2 uses
  %i.w = bitcast <16 x i1> %i.v to i16
  %.not.7 = icmp eq i16 %i.w, 0
  br i1 %.not.7, label %vector.body.interim.7, label %vector.early.exit

vector.body.interim.7:                            ; preds = %vector.body.interim.6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %wide.load.8 = load <16 x i8>, ptr %i.x, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.8 = freeze <16 x i8> %wide.load.8
  %i.y = icmp ne <16 x i8> %wide.load.fr.8, zeroinitializer ; 2 uses
  %i.z = bitcast <16 x i1> %i.y to i16
  %.not.8 = icmp eq i16 %i.z, 0
  br i1 %.not.8, label %vector.body.interim.8, label %vector.early.exit

vector.body.interim.8:                            ; preds = %vector.body.interim.7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %wide.load.9 = load <16 x i8>, ptr %i.aa, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.9 = freeze <16 x i8> %wide.load.9
  %i.ab = icmp ne <16 x i8> %wide.load.fr.9, zeroinitializer ; 2 uses
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %.not.9 = icmp eq i16 %i.ac, 0
  br i1 %.not.9, label %vector.body.interim.9, label %vector.early.exit

vector.body.interim.9:                            ; preds = %vector.body.interim.8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %wide.load.10 = load <16 x i8>, ptr %i.ad, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.10 = freeze <16 x i8> %wide.load.10
  %i.ae = icmp ne <16 x i8> %wide.load.fr.10, zeroinitializer ; 2 uses
  %i.af = bitcast <16 x i1> %i.ae to i16
  %.not.10 = icmp eq i16 %i.af, 0
  br i1 %.not.10, label %vector.body.interim.10, label %vector.early.exit

vector.body.interim.10:                           ; preds = %vector.body.interim.9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %wide.load.11 = load <16 x i8>, ptr %i.ag, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.11 = freeze <16 x i8> %wide.load.11
  %i.ah = icmp ne <16 x i8> %wide.load.fr.11, zeroinitializer ; 2 uses
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not.11 = icmp eq i16 %i.ai, 0
  br i1 %.not.11, label %vector.body.interim.11, label %vector.early.exit

vector.body.interim.11:                           ; preds = %vector.body.interim.10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %wide.load.12 = load <16 x i8>, ptr %i.aj, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.12 = freeze <16 x i8> %wide.load.12
  %i.ak = icmp ne <16 x i8> %wide.load.fr.12, zeroinitializer ; 2 uses
  %i.al = bitcast <16 x i1> %i.ak to i16
  %.not.12 = icmp eq i16 %i.al, 0
  br i1 %.not.12, label %vector.body.interim.12, label %vector.early.exit

vector.body.interim.12:                           ; preds = %vector.body.interim.11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %wide.load.13 = load <16 x i8>, ptr %i.am, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.13 = freeze <16 x i8> %wide.load.13
  %i.an = icmp ne <16 x i8> %wide.load.fr.13, zeroinitializer ; 2 uses
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not.13 = icmp eq i16 %i.ao, 0
  br i1 %.not.13, label %vector.body.interim.13, label %vector.early.exit

vector.body.interim.13:                           ; preds = %vector.body.interim.12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224
  %wide.load.14 = load <16 x i8>, ptr %i.ap, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.14 = freeze <16 x i8> %wide.load.14
  %i.aq = icmp ne <16 x i8> %wide.load.fr.14, zeroinitializer ; 2 uses
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not.14 = icmp eq i16 %i.ar, 0
  br i1 %.not.14, label %vector.body.interim.14, label %vector.early.exit

vector.body.interim.14:                           ; preds = %vector.body.interim.13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %wide.load.15 = load <16 x i8>, ptr %i.as, align 1, !alias.scope !2492, !noalias !2493
  %wide.load.fr.15 = freeze <16 x i8> %wide.load.15
  %i.at = icmp ne <16 x i8> %wide.load.fr.15, zeroinitializer ; 2 uses
  %i.au = bitcast <16 x i1> %i.at to i16
  %.not.15 = icmp eq i16 %i.au, 0
  br i1 %.not.15, label %.loopexit, label %vector.early.exit

vector.early.exit:                                ; preds = %vector.body.interim.14, %vector.body.interim.13, %vector.body.interim.12, %vector.body.interim.11, %vector.body.interim.10, %vector.body.interim.9, %vector.body.interim.8, %vector.body.interim.7, %vector.body.interim.6, %vector.body.interim.5, %vector.body.interim.4, %vector.body.interim.3, %vector.body.interim.2, %vector.body.interim.1, %vector.body.interim, %vector.ph
  %index.lcssa = phi i64 [ 0, %vector.ph ], [ 16, %vector.body.interim ], [ 32, %vector.body.interim.1 ], [ 48, %vector.body.interim.2 ], [ 64, %vector.body.interim.3 ], [ 80, %vector.body.interim.4 ], [ 96, %vector.body.interim.5 ], [ 112, %vector.body.interim.6 ], [ 128, %vector.body.interim.7 ], [ 144, %vector.body.interim.8 ], [ 160, %vector.body.interim.9 ], [ 176, %vector.body.interim.10 ], [ 192, %vector.body.interim.11 ], [ 208, %vector.body.interim.12 ], [ 224, %vector.body.interim.13 ], [ 240, %vector.body.interim.14 ]
  %vec.ind.lcssa = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>, %vector.body.interim ], [ <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47>, %vector.body.interim.1 ], [ <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63>, %vector.body.interim.2 ], [ <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79>, %vector.body.interim.3 ], [ <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95>, %vector.body.interim.4 ], [ <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111>, %vector.body.interim.5 ], [ <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127>, %vector.body.interim.6 ], [ <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143>, %vector.body.interim.7 ], [ <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159>, %vector.body.interim.8 ], [ <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167, i64 168, i64 169, i64 170, i64 171, i64 172, i64 173, i64 174, i64 175>, %vector.body.interim.9 ], [ <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183, i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191>, %vector.body.interim.10 ], [ <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207>, %vector.body.interim.11 ], [ <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223>, %vector.body.interim.12 ], [ <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239>, %vector.body.interim.13 ], [ <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255>, %vector.body.interim.14 ]
  %.lcssa = phi <16 x i1> [ %i.a, %vector.ph ], [ %i.d, %vector.body.interim ], [ %i.g, %vector.body.interim.1 ], [ %i.j, %vector.body.interim.2 ], [ %i.m, %vector.body.interim.3 ], [ %i.p, %vector.body.interim.4 ], [ %i.s, %vector.body.interim.5 ], [ %i.v, %vector.body.interim.6 ], [ %i.y, %vector.body.interim.7 ], [ %i.ab, %vector.body.interim.8 ], [ %i.ae, %vector.body.interim.9 ], [ %i.ah, %vector.body.interim.10 ], [ %i.ak, %vector.body.interim.11 ], [ %i.an, %vector.body.interim.12 ], [ %i.aq, %vector.body.interim.13 ], [ %i.at, %vector.body.interim.14 ]
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %.lcssa, i1 false) ; 2 uses
  %4 = extractelement <16 x i64> %vec.ind.lcssa, i64 %first.active.lane
  %i.av = add nuw nsw i64 %4, 1                   ; 2 uses
  %i.aw = add i64 %index.lcssa, %first.active.lane
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2494
  %i.ax = trunc i64 %i.aw to i8                   ; 2 uses
  %i.ay = icmp eq i64 %i.av, 256
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

bb.a:                                             ; preds = %.lr.ph
  %i.az = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %i.ba = icmp eq i64 %i.az, 256
  br i1 %i.ba, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %vector.early.exit, %bb.a
  %i.bb = phi i64 [ %i.az, %bb.a ], [ %i.av, %vector.early.exit ] ; 2 uses
  %.ptr28.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  %.val8.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.ptr28.i, align 1, !range !29, !alias.scope !2492, !noalias !2495, !noundef !11
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.a, label %.loopexit

._crit_edge:                                      ; preds = %bb.a, %vector.early.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.bc = tail call noundef i64 @_RNvCs4yUM5x5lkvE_9bytecount5count(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i8 noundef %i.ax) #32, !noalias !2497 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2498)
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !2499, !noalias !2496, !noundef !11 ; 5 uses
  %i.bg = load i64, ptr %3, align 8, !range !12, !alias.scope !2499, !noalias !2496, !noundef !11
  %i.bh = sub i64 %i.bg, %i.bf
  %i.bi = icmp ugt i64 %2, %i.bh
  br i1 %i.bi, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i, !prof !24

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.thread.i.i: ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bf, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef 1, i64 noundef 1) #32
  %i.bj = load i64, ptr %i.be, align 8, !alias.scope !2500, !noalias !2496, !noundef !11 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  tail call void @llvm.assume(i1 %i.bk)
  br label %bb.c

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i: ; preds = %bb.b
  %i.bl = icmp sgt i64 %i.bf, -1
  tail call void @llvm.assume(i1 %i.bl)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCslbrwWrVtb7E_5uu_tr.exit.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.thread.i.i
  %i.bm = phi i64 [ %i.bj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.thread.i.i ], [ %i.bf, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !2500, !noalias !2496, !nonnull !11, !noundef !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !2500
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCslbrwWrVtb7E_5uu_tr.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCslbrwWrVtb7E_5uu_tr.exit.i: ; preds = %bb.c, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i
  %i.bq = phi i64 [ %i.bm, %bb.c ], [ %i.bf, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ]
  %i.br = add nuw i64 %i.bq, %2
  store i64 %i.br, ptr %i.be, align 8, !alias.scope !2500, !noalias !2496
  br label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit

bb.d:                                             ; preds = %._crit_edge
  %i.bs = icmp ult i64 %i.bc, %2
  br i1 %i.bs, label %.lr.ph48.lr.ph, label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit

.lr.ph48.lr.ph:                                   ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.lr.ph48

bb.e:                                             ; preds = %.lr.ph48
  %.not.not.not.i.not.i.i = icmp eq ptr %i.bx, %i.bt
  br i1 %.not.not.not.i.not.i.i, label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit, label %.lr.ph48.backedge

.lr.ph48.backedge:                                ; preds = %bb.e, %bb.g
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.backedge, %.lr.ph48.lr.ph
  %i.bw = phi ptr [ %1, %.lr.ph48.lr.ph ], [ %i.bx, %.lr.ph48.backedge ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 3 uses
  %i.by = load i8, ptr %i.bw, align 1, !alias.scope !2496, !noalias !2502, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.by, %i.ax
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.f

bb.f:                                             ; preds = %.lr.ph48
  %i.bz = load i64, ptr %i.bu, align 8, !alias.scope !2503, !noalias !2504, !noundef !11 ; 5 uses
  %i.ca = icmp sgt i64 %i.bz, -1
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %3, align 8, !range !12, !alias.scope !2503, !noalias !2504, !noundef !11
  %i.cc = icmp eq i64 %i.bz, %i.cb
  br i1 %i.cc, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.i, label %bb.g

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.i: ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bz, i64 noundef 1, i64 noundef 1, i64 noundef 1) #32, !noalias !2505
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.i, %bb.f
  %i.cd = load ptr, ptr %i.bv, align 8, !alias.scope !2503, !noalias !2504, !nonnull !11, !noundef !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bz
  store i8 %i.by, ptr %i.ce, align 1, !noalias !2506
  %i.cf = add nuw i64 %i.bz, 1
  store i64 %i.cf, ptr %i.bu, align 8, !alias.scope !2503, !noalias !2504
  %.not.not.not.i.not.i.i46 = icmp eq ptr %i.bx, %i.bt
  br i1 %.not.not.not.i.not.i.i46, label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit, label %.lr.ph48.backedge

.loopexit:                                        ; preds = %.lr.ph, %vector.body.interim.14
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2507)
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not.not.not.i.not.i5155 = icmp samesign eq i64 %2, 0
  br i1 %.not.not.not.i.not.i5155, label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit, label %.lr.ph53

bb.h:                                             ; preds = %.lr.ph53
  %.not.not.not.i.not.i = icmp eq ptr %i.ck, %i.cg
  br i1 %.not.not.not.i.not.i, label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit, label %.lr.ph53.backedge

.lr.ph53.backedge:                                ; preds = %bb.h, %bb.j
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.loopexit, %.lr.ph53.backedge
  %i.cj = phi ptr [ %i.ck, %.lr.ph53.backedge ], [ %1, %.loopexit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 3 uses
  %i.cl = load i8, ptr %i.cj, align 1, !noalias !2508, !noundef !11 ; 2 uses
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !range !29, !noalias !2508, !noundef !11
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.h, label %bb.i

bb.i:                                             ; preds = %.lr.ph53
  %i.cq = load i64, ptr %i.ch, align 8, !alias.scope !2507, !noalias !2509, !noundef !11 ; 5 uses
  %i.cr = icmp sgt i64 %i.cq, -1
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = load i64, ptr %3, align 8, !range !12, !alias.scope !2507, !noalias !2509, !noundef !11
  %i.ct = icmp eq i64 %i.cq, %i.cs
  br i1 %i.ct, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i, label %bb.j

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i: ; preds = %bb.i
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.cq, i64 noundef 1, i64 noundef 1, i64 noundef 1) #32, !noalias !2509
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i, %bb.i
  %i.cu = load ptr, ptr %i.ci, align 8, !alias.scope !2507, !noalias !2509, !nonnull !11, !noundef !11
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq
  store i8 %i.cl, ptr %i.cv, align 1, !noalias !2510
  %i.cw = add nuw i64 %i.cq, 1
  store i64 %i.cw, ptr %i.ch, align 8, !alias.scope !2507, !noalias !2509
  %.not.not.not.i.not.i51 = icmp eq ptr %i.ck, %i.cg
  br i1 %.not.not.not.i.not.i51, label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit, label %.lr.ph53.backedge

_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit: ; preds = %bb.g, %bb.e, %bb.j, %bb.h, %.loopexit, %bb.d, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCslbrwWrVtb7E_5uu_tr.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs9_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_18TranslateOperationNtB5_14ChunkProcessor13process_chunk(ptr noalias nofree noundef readonly captures(none) dereferenceable(256) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
vector.ph:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2604)
  %wide.load = load <16 x i8>, ptr %0, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.fr = freeze <16 x i8> %wide.load     ; 2 uses
  %i.b = icmp ne <16 x i8> %wide.load.fr, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.c = bitcast <16 x i1> %i.b to i16
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.ph
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.d, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.1.fr = freeze <16 x i8> %wide.load.1 ; 2 uses
  %i.e = icmp ne <16 x i8> %wide.load.1.fr, <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31> ; 2 uses
  %i.f = bitcast <16 x i1> %i.e to i16
  %.not.1 = icmp eq i16 %i.f, 0
  br i1 %.not.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.g, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.2.fr = freeze <16 x i8> %wide.load.2 ; 2 uses
  %i.h = icmp ne <16 x i8> %wide.load.2.fr, <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47> ; 2 uses
  %i.i = bitcast <16 x i1> %i.h to i16
  %.not.2 = icmp eq i16 %i.i, 0
  br i1 %.not.2, label %vector.body.interim.2, label %vector.early.exit

vector.body.interim.2:                            ; preds = %vector.body.interim.1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.load.3 = load <16 x i8>, ptr %i.j, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.3.fr = freeze <16 x i8> %wide.load.3 ; 2 uses
  %i.k = icmp ne <16 x i8> %wide.load.3.fr, <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63> ; 2 uses
  %i.l = bitcast <16 x i1> %i.k to i16
  %.not.3 = icmp eq i16 %i.l, 0
  br i1 %.not.3, label %vector.body.interim.3, label %vector.early.exit

vector.body.interim.3:                            ; preds = %vector.body.interim.2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.load.4 = load <16 x i8>, ptr %i.m, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.4.fr = freeze <16 x i8> %wide.load.4 ; 2 uses
  %i.n = icmp ne <16 x i8> %wide.load.4.fr, <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79> ; 2 uses
  %i.o = bitcast <16 x i1> %i.n to i16
  %.not.4 = icmp eq i16 %i.o, 0
  br i1 %.not.4, label %vector.body.interim.4, label %vector.early.exit

vector.body.interim.4:                            ; preds = %vector.body.interim.3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.load.5 = load <16 x i8>, ptr %i.p, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.5.fr = freeze <16 x i8> %wide.load.5 ; 2 uses
  %i.q = icmp ne <16 x i8> %wide.load.5.fr, <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95> ; 2 uses
  %i.r = bitcast <16 x i1> %i.q to i16
  %.not.5 = icmp eq i16 %i.r, 0
  br i1 %.not.5, label %vector.body.interim.5, label %vector.early.exit

vector.body.interim.5:                            ; preds = %vector.body.interim.4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %wide.load.6 = load <16 x i8>, ptr %i.s, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.6.fr = freeze <16 x i8> %wide.load.6 ; 2 uses
  %i.t = icmp ne <16 x i8> %wide.load.6.fr, <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111> ; 2 uses
  %i.u = bitcast <16 x i1> %i.t to i16
  %.not.6 = icmp eq i16 %i.u, 0
  br i1 %.not.6, label %vector.body.interim.6, label %vector.early.exit

vector.body.interim.6:                            ; preds = %vector.body.interim.5
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.load.7 = load <16 x i8>, ptr %i.v, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.7.fr = freeze <16 x i8> %wide.load.7 ; 2 uses
  %i.w = icmp ne <16 x i8> %wide.load.7.fr, <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127> ; 2 uses
  %i.x = bitcast <16 x i1> %i.w to i16
  %.not.7 = icmp eq i16 %i.x, 0
  br i1 %.not.7, label %vector.body.interim.7, label %vector.early.exit

vector.body.interim.7:                            ; preds = %vector.body.interim.6
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %wide.load.8 = load <16 x i8>, ptr %i.y, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.8.fr = freeze <16 x i8> %wide.load.8 ; 2 uses
  %i.z = icmp ne <16 x i8> %wide.load.8.fr, <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113> ; 2 uses
  %i.aa = bitcast <16 x i1> %i.z to i16
  %.not.8 = icmp eq i16 %i.aa, 0
  br i1 %.not.8, label %vector.body.interim.8, label %vector.early.exit

vector.body.interim.8:                            ; preds = %vector.body.interim.7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  %wide.load.9 = load <16 x i8>, ptr %i.ab, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.9.fr = freeze <16 x i8> %wide.load.9 ; 2 uses
  %i.ac = icmp ne <16 x i8> %wide.load.9.fr, <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97> ; 2 uses
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %.not.9 = icmp eq i16 %i.ad, 0
  br i1 %.not.9, label %vector.body.interim.9, label %vector.early.exit

vector.body.interim.9:                            ; preds = %vector.body.interim.8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %wide.load.10 = load <16 x i8>, ptr %i.ae, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.10.fr = freeze <16 x i8> %wide.load.10 ; 2 uses
  %i.af = icmp ne <16 x i8> %wide.load.10.fr, <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81> ; 2 uses
  %i.ag = bitcast <16 x i1> %i.af to i16
  %.not.10 = icmp eq i16 %i.ag, 0
  br i1 %.not.10, label %vector.body.interim.10, label %vector.early.exit

vector.body.interim.10:                           ; preds = %vector.body.interim.9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 176
  %wide.load.11 = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.11.fr = freeze <16 x i8> %wide.load.11 ; 2 uses
  %i.ai = icmp ne <16 x i8> %wide.load.11.fr, <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65> ; 2 uses
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %.not.11 = icmp eq i16 %i.aj, 0
  br i1 %.not.11, label %vector.body.interim.11, label %vector.early.exit

vector.body.interim.11:                           ; preds = %vector.body.interim.10
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  %wide.load.12 = load <16 x i8>, ptr %i.ak, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.12.fr = freeze <16 x i8> %wide.load.12 ; 2 uses
  %i.al = icmp ne <16 x i8> %wide.load.12.fr, <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49> ; 2 uses
  %i.am = bitcast <16 x i1> %i.al to i16
  %.not.12 = icmp eq i16 %i.am, 0
  br i1 %.not.12, label %vector.body.interim.12, label %vector.early.exit

vector.body.interim.12:                           ; preds = %vector.body.interim.11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %wide.load.13 = load <16 x i8>, ptr %i.an, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.13.fr = freeze <16 x i8> %wide.load.13 ; 2 uses
  %i.ao = icmp ne <16 x i8> %wide.load.13.fr, <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33> ; 2 uses
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not.13 = icmp eq i16 %i.ap, 0
  br i1 %.not.13, label %vector.body.interim.13, label %vector.early.exit

vector.body.interim.13:                           ; preds = %vector.body.interim.12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %wide.load.14 = load <16 x i8>, ptr %i.aq, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.14.fr = freeze <16 x i8> %wide.load.14 ; 2 uses
  %i.ar = icmp ne <16 x i8> %wide.load.14.fr, <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17> ; 2 uses
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not.14 = icmp eq i16 %i.as, 0
  br i1 %.not.14, label %vector.body.interim.14, label %vector.early.exit

vector.body.interim.14:                           ; preds = %vector.body.interim.13
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 240
  %wide.load.15 = load <16 x i8>, ptr %i.at, align 1, !alias.scope !2604, !noalias !2605
  %wide.load.15.fr = freeze <16 x i8> %wide.load.15 ; 2 uses
  %i.au = icmp ne <16 x i8> %wide.load.15.fr, <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1> ; 2 uses
  %i.av = bitcast <16 x i1> %i.au to i16
  %.not.15 = icmp eq i16 %i.av, 0
  br i1 %.not.15, label %.critedge, label %vector.early.exit

vector.early.exit:                                ; preds = %vector.body.interim.14, %vector.body.interim.13, %vector.body.interim.12, %vector.body.interim.11, %vector.body.interim.10, %vector.body.interim.9, %vector.body.interim.8, %vector.body.interim.7, %vector.body.interim.6, %vector.body.interim.5, %vector.body.interim.4, %vector.body.interim.3, %vector.body.interim.2, %vector.body.interim.1, %vector.body.interim, %vector.ph
  %vec.ind.lcssa = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>, %vector.body.interim ], [ <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47>, %vector.body.interim.1 ], [ <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63>, %vector.body.interim.2 ], [ <i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79>, %vector.body.interim.3 ], [ <i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95>, %vector.body.interim.4 ], [ <i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111>, %vector.body.interim.5 ], [ <i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127>, %vector.body.interim.6 ], [ <i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143>, %vector.body.interim.7 ], [ <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159>, %vector.body.interim.8 ], [ <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167, i64 168, i64 169, i64 170, i64 171, i64 172, i64 173, i64 174, i64 175>, %vector.body.interim.9 ], [ <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183, i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191>, %vector.body.interim.10 ], [ <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207>, %vector.body.interim.11 ], [ <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223>, %vector.body.interim.12 ], [ <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239>, %vector.body.interim.13 ], [ <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254, i64 255>, %vector.body.interim.14 ]
  %vec.ind23.lcssa = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, %vector.body.interim ], [ <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, %vector.body.interim.1 ], [ <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, %vector.body.interim.2 ], [ <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, %vector.body.interim.3 ], [ <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, %vector.body.interim.4 ], [ <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, %vector.body.interim.5 ], [ <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, %vector.body.interim.6 ], [ <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, %vector.body.interim.7 ], [ <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, %vector.body.interim.8 ], [ <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, %vector.body.interim.9 ], [ <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, %vector.body.interim.10 ], [ <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, %vector.body.interim.11 ], [ <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, %vector.body.interim.12 ], [ <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, %vector.body.interim.13 ], [ <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, %vector.body.interim.14 ]
  %wide.load.lcssa = phi <16 x i8> [ %wide.load.fr, %vector.ph ], [ %wide.load.1.fr, %vector.body.interim ], [ %wide.load.2.fr, %vector.body.interim.1 ], [ %wide.load.3.fr, %vector.body.interim.2 ], [ %wide.load.4.fr, %vector.body.interim.3 ], [ %wide.load.5.fr, %vector.body.interim.4 ], [ %wide.load.6.fr, %vector.body.interim.5 ], [ %wide.load.7.fr, %vector.body.interim.6 ], [ %wide.load.8.fr, %vector.body.interim.7 ], [ %wide.load.9.fr, %vector.body.interim.8 ], [ %wide.load.10.fr, %vector.body.interim.9 ], [ %wide.load.11.fr, %vector.body.interim.10 ], [ %wide.load.12.fr, %vector.body.interim.11 ], [ %wide.load.13.fr, %vector.body.interim.12 ], [ %wide.load.14.fr, %vector.body.interim.13 ], [ %wide.load.15.fr, %vector.body.interim.14 ]
  %.lcssa48 = phi <16 x i1> [ %i.b, %vector.ph ], [ %i.e, %vector.body.interim ], [ %i.h, %vector.body.interim.1 ], [ %i.k, %vector.body.interim.2 ], [ %i.n, %vector.body.interim.3 ], [ %i.q, %vector.body.interim.4 ], [ %i.t, %vector.body.interim.5 ], [ %i.w, %vector.body.interim.6 ], [ %i.z, %vector.body.interim.7 ], [ %i.ac, %vector.body.interim.8 ], [ %i.af, %vector.body.interim.9 ], [ %i.ai, %vector.body.interim.10 ], [ %i.al, %vector.body.interim.11 ], [ %i.ao, %vector.body.interim.12 ], [ %i.ar, %vector.body.interim.13 ], [ %i.au, %vector.body.interim.14 ]
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %.lcssa48, i1 false) ; 3 uses
  %4 = extractelement <16 x i64> %vec.ind.lcssa, i64 %first.active.lane
  %i.aw = add nuw nsw i64 %4, 1                   ; 2 uses
  %i.ax = extractelement <16 x i8> %wide.load.lcssa, i64 %first.active.lane ; 7 uses
  %i.ay = extractelement <16 x i8> %vec.ind23.lcssa, i64 %first.active.lane ; 6 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2606
  %i.az = icmp eq i64 %i.aw, 256
  br i1 %i.az, label %_RINvNtCslbrwWrVtb7E_5uu_tr4simd18find_single_changehNCNvXs9_NtB4_9operationNtBW_18TranslateOperationNtBW_14ChunkProcessor13process_chunk0EB4_.exit, label %.lr.ph

bb.a:                                             ; preds = %.lr.ph
  %i.ba = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 256
  br i1 %i.bb, label %_RINvNtCslbrwWrVtb7E_5uu_tr4simd18find_single_changehNCNvXs9_NtB4_9operationNtBW_18TranslateOperationNtBW_14ChunkProcessor13process_chunk0EB4_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %vector.early.exit, %bb.a
  %i.bc = phi i64 [ %i.ba, %bb.a ], [ %i.aw, %vector.early.exit ] ; 3 uses
  %.ptr31.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %.val16.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.ptr31.i, align 1, !alias.scope !2604, !noalias !2607, !noundef !11
  %i.bd = trunc i64 %i.bc to i8
  %.not.i.i.i.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val16.i.i.i.i.i.i.i.i.i.i, %i.bd
  br i1 %.not.i.i.i.i.not.i.i.i.i.i.i.i.i.i.i, label %bb.a, label %.critedge

_RINvNtCslbrwWrVtb7E_5uu_tr4simd18find_single_changehNCNvXs9_NtB4_9operationNtBW_18TranslateOperationNtBW_14ChunkProcessor13process_chunk0EB4_.exit: ; preds = %bb.a, %vector.early.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2609)
  %i.be = tail call noundef i64 @_RNvCs4yUM5x5lkvE_9bytecount5count(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i8 noundef %i.ay) #32, !noalias !2609 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_RINvNtCslbrwWrVtb7E_5uu_tr4simd18find_single_changehNCNvXs9_NtB4_9operationNtBW_18TranslateOperationNtBW_14ChunkProcessor13process_chunk0EB4_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !2611, !noalias !2608, !noundef !11 ; 5 uses
  %i.bi = load i64, ptr %3, align 8, !range !12, !alias.scope !2611, !noalias !2608, !noundef !11
  %i.bj = sub i64 %i.bi, %i.bh
  %i.bk = icmp ugt i64 %2, %i.bj
  br i1 %i.bk, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i, !prof !24

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.thread.i.i: ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bh, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef 1, i64 noundef 1) #32
  %i.bl = load i64, ptr %i.bg, align 8, !alias.scope !2612, !noalias !2608, !noundef !11 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, -1
  tail call void @llvm.assume(i1 %i.bm)
  br label %bb.c

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i: ; preds = %bb.b
  %i.bn = icmp sgt i64 %i.bh, -1
  tail call void @llvm.assume(i1 %i.bn)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCslbrwWrVtb7E_5uu_tr.exit.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.thread.i.i
  %i.bo = phi i64 [ %i.bl, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.thread.i.i ], [ %i.bh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !2612, !noalias !2608, !nonnull !11, !noundef !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !2612
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCslbrwWrVtb7E_5uu_tr.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCslbrwWrVtb7E_5uu_tr.exit.i: ; preds = %bb.c, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i
  %i.bs = phi i64 [ %i.bo, %bb.c ], [ %i.bh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ]
  %i.bt = add nuw i64 %i.bs, %2
  store i64 %i.bt, ptr %i.bg, align 8, !alias.scope !2612, !noalias !2608
  br label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd27process_single_char_replace.exit

bb.d:                                             ; preds = %_RINvNtCslbrwWrVtb7E_5uu_tr4simd18find_single_changehNCNvXs9_NtB4_9operationNtBW_18TranslateOperationNtBW_14ChunkProcessor13process_chunk0EB4_.exit
  %i.bu = icmp eq i64 %i.be, %2
  br i1 %i.bu, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !2614, !noalias !2615, !noundef !11 ; 4 uses
  %i.bx = load i64, ptr %3, align 8, !range !12, !alias.scope !2614, !noalias !2615, !noundef !11
  %i.by = sub i64 %i.bx, %i.bw
  %i.bz = icmp ugt i64 %2, %i.by
  br i1 %i.bz, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.i, !prof !24

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.thread.i: ; preds = %bb.e
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bw, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef 1, i64 noundef 1) #32, !noalias !2616
  %.pre.i.i = load i64, ptr %i.bv, align 8, !alias.scope !2617, !noalias !2615
  br label %iter.check

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.i: ; preds = %bb.e
  %i.ca = icmp samesign eq i64 %2, 0
  br i1 %i.ca, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtCslbrwWrVtb7E_5uu_tr4simd27process_single_char_replace0EEB2l_.exit.i, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.thread.i
  %i.cb = phi i64 [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.thread.i ], [ %i.bw, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.i ] ; 7 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = load ptr, ptr %.in.i, align 8, !alias.scope !2617, !noalias !2615, !nonnull !11, !noundef !11 ; 6 uses
  %min.iters.check = icmp samesign ult i64 %2, 8
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cd = ptrtoaddr ptr %i.cc to i64
  %i.ce = add i64 %i.cb, %i.cd
  %i.cf = sub i64 %i.a, %i.ce
  %diff.check = icmp ugt i64 %i.cf, -32
  br i1 %diff.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check25 = icmp samesign ult i64 %2, 32
  br i1 %min.iters.check25, label %vec.epilog.ph, label %vector.ph26

vector.ph26:                                      ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %2, 24
  %n.vec = and i64 %2, 9223372036854775776        ; 5 uses
  %i.ch = add i64 %i.cb, %n.vec                   ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.ay, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert27 = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %broadcast.splat28 = shufflevector <16 x i8> %broadcast.splatinsert27, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cc, i64 %i.cb
  br label %vector.body29

vector.body29:                                    ; preds = %vector.ph26, %vector.body29
  %index30 = phi i64 [ 0, %vector.ph26 ], [ %index.next33, %vector.body29 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %index30 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load31 = load <16 x i8>, ptr %i.cj, align 1, !alias.scope !2608, !noalias !2618 ; 2 uses
  %wide.load32 = load <16 x i8>, ptr %i.ck, align 1, !alias.scope !2608, !noalias !2618 ; 2 uses
  %i.cl = icmp eq <16 x i8> %wide.load31, %broadcast.splat
  %i.cm = icmp eq <16 x i8> %wide.load32, %broadcast.splat
  %i.cn = select <16 x i1> %i.cl, <16 x i8> %broadcast.splat28, <16 x i8> %wide.load31
  %i.co = select <16 x i1> %i.cm, <16 x i8> %broadcast.splat28, <16 x i8> %wide.load32
  %i.cp = getelementptr i8, ptr %i.ci, i64 %index30 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <16 x i8> %i.cn, ptr %i.cp, align 1, !noalias !2619
  store <16 x i8> %i.co, ptr %i.cq, align 1, !noalias !2619
  %index.next33 = add nuw i64 %index30, 32        ; 2 uses
  %i.cr = icmp eq i64 %index.next33, %n.vec
  br i1 %i.cr, label %middle.block34, label %vector.body29, !llvm.loop !2575

middle.block34:                                   ; preds = %vector.body29
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtCslbrwWrVtb7E_5uu_tr4simd27process_single_char_replace0EEB2l_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block34
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !2620

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %2, 9223372036854775800      ; 4 uses
  %i.cs = add i64 %i.cb, %n.vec35                 ; 2 uses
  %broadcast.splatinsert36.a = insertelement <8 x i8> poison, i8 %i.ay, i64 0
  %broadcast.splat37.a = shufflevector <8 x i8> %broadcast.splatinsert36.a, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert38 = insertelement <8 x i8> poison, i8 %i.ax, i64 0
  %broadcast.splat39 = shufflevector <8 x i8> %broadcast.splatinsert38, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ct = getelementptr i8, ptr %i.cc, i64 %i.cb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %index40
  %wide.load41 = load <8 x i8>, ptr %i.cu, align 1, !alias.scope !2608, !noalias !2618 ; 2 uses
  %i.cv = icmp eq <8 x i8> %wide.load41, %broadcast.splat37.a
  %i.cw = select <8 x i1> %i.cv, <8 x i8> %broadcast.splat39, <8 x i8> %wide.load41
  %i.cx = getelementptr i8, ptr %i.ct, i64 %index40
  store <8 x i8> %i.cw, ptr %i.cx, align 1, !noalias !2619
  %index.next42 = add nuw i64 %index40, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2576

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %2, %n.vec35
  br i1 %cmp.n43, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtCslbrwWrVtb7E_5uu_tr4simd27process_single_char_replace0EEB2l_.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.cb, %iter.check ], [ %i.cb, %vector.memcheck ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec35, %vec.epilog.middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.i.i.i.i.i.ph
  %.val11.i.i.i.i.i.prol = load i8, ptr %i.cz, align 1, !alias.scope !2608, !noalias !2618, !noundef !11 ; 2 uses
  %i.da = icmp eq i8 %.val11.i.i.i.i.i.prol, %i.ay
  %spec.select.i.prol = select i1 %i.da, i8 %i.ax, i8 %.val11.i.i.i.i.i.prol
  %i.db = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.ph
  store i8 %spec.select.i.prol, ptr %i.db, align 1, !noalias !2619
  %i.dc = add i64 %.ph, 1                         ; 2 uses
  %i.dd = or disjoint i64 %.sroa.01.0.i.i.i.i.i.ph, 1
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa46.unr = phi i64 [ poison, %.preheader.i.i.preheader ], [ %i.dc, %.preheader.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.preheader.i.i.preheader ], [ %i.dc, %.preheader.i.i.prol ]
  %.sroa.01.0.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.i.ph, %.preheader.i.i.preheader ], [ %i.dd, %.preheader.i.i.prol ]
  %i.de = icmp eq i64 %2, %.neg
  br i1 %i.de, label %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtCslbrwWrVtb7E_5uu_tr4simd27process_single_char_replace0EEB2l_.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %i.df = phi i64 [ %i.do, %.preheader.i.i ], [ %.unr, %.preheader.i.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.dp, %.preheader.i.i ], [ %.sroa.01.0.i.i.i.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.i.i.i.i.i
  %.val11.i.i.i.i.i = load i8, ptr %i.dg, align 1, !alias.scope !2608, !noalias !2618, !noundef !11 ; 2 uses
  %i.dh = icmp eq i8 %.val11.i.i.i.i.i, %i.ay
  %spec.select.i = select i1 %i.dh, i8 %i.ax, i8 %.val11.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.df
end_hunk_0
