Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tr-4ec185560a9f7532.uu_tr.f6bffaffa43728d0-cgu.0?download=true
inline.NumInlined: 1207
inline.NumDeleted: 660
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXs2_NtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_nINtB5_7RepeatNhENtNtNtB9_6traits8iterator8Iterator10advance_byCslbrwWrVtb7E_5uu_tr:bb.a

bb.e:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %i.c = sub nuw i64 %1, %i.a
  br label %bb.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal { i1, i8 } @_RNvXs2_NtNtNtCs6JMX4GRUq9U_4core4iter7sources8repeat_nINtB5_7RepeatNhENtNtNtB9_6traits8iterator8Iterator4nextCslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4   ; 2 uses
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
  %.val = load i64, ptr %1, align 8, !noundef !4  ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2433)
  %wide.load = load <16 x i8>, ptr %0, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr = freeze <16 x i8> %wide.load
  %i.a = icmp ne <16 x i8> %wide.load.fr, zeroinitializer ; 2 uses
  %i.b = bitcast <16 x i1> %i.a to i16
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.ph
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.c, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.1 = freeze <16 x i8> %wide.load.1
  %i.d = icmp ne <16 x i8> %wide.load.fr.1, zeroinitializer ; 2 uses
  %i.e = bitcast <16 x i1> %i.d to i16
  %.not.1 = icmp eq i16 %i.e, 0
  br i1 %.not.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.f, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.2 = freeze <16 x i8> %wide.load.2
  %i.g = icmp ne <16 x i8> %wide.load.fr.2, zeroinitializer ; 2 uses
  %i.h = bitcast <16 x i1> %i.g to i16
  %.not.2 = icmp eq i16 %i.h, 0
  br i1 %.not.2, label %vector.body.interim.2, label %vector.early.exit

vector.body.interim.2:                            ; preds = %vector.body.interim.1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.load.3 = load <16 x i8>, ptr %i.i, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.3 = freeze <16 x i8> %wide.load.3
  %i.j = icmp ne <16 x i8> %wide.load.fr.3, zeroinitializer ; 2 uses
  %i.k = bitcast <16 x i1> %i.j to i16
  %.not.3 = icmp eq i16 %i.k, 0
  br i1 %.not.3, label %vector.body.interim.3, label %vector.early.exit

vector.body.interim.3:                            ; preds = %vector.body.interim.2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.load.4 = load <16 x i8>, ptr %i.l, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.4 = freeze <16 x i8> %wide.load.4
  %i.m = icmp ne <16 x i8> %wide.load.fr.4, zeroinitializer ; 2 uses
  %i.n = bitcast <16 x i1> %i.m to i16
  %.not.4 = icmp eq i16 %i.n, 0
  br i1 %.not.4, label %vector.body.interim.4, label %vector.early.exit

vector.body.interim.4:                            ; preds = %vector.body.interim.3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.load.5 = load <16 x i8>, ptr %i.o, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.5 = freeze <16 x i8> %wide.load.5
  %i.p = icmp ne <16 x i8> %wide.load.fr.5, zeroinitializer ; 2 uses
  %i.q = bitcast <16 x i1> %i.p to i16
  %.not.5 = icmp eq i16 %i.q, 0
  br i1 %.not.5, label %vector.body.interim.5, label %vector.early.exit

vector.body.interim.5:                            ; preds = %vector.body.interim.4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %wide.load.6 = load <16 x i8>, ptr %i.r, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.6 = freeze <16 x i8> %wide.load.6
  %i.s = icmp ne <16 x i8> %wide.load.fr.6, zeroinitializer ; 2 uses
  %i.t = bitcast <16 x i1> %i.s to i16
  %.not.6 = icmp eq i16 %i.t, 0
  br i1 %.not.6, label %vector.body.interim.6, label %vector.early.exit

vector.body.interim.6:                            ; preds = %vector.body.interim.5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %wide.load.7 = load <16 x i8>, ptr %i.u, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.7 = freeze <16 x i8> %wide.load.7
  %i.v = icmp ne <16 x i8> %wide.load.fr.7, zeroinitializer ; 2 uses
  %i.w = bitcast <16 x i1> %i.v to i16
  %.not.7 = icmp eq i16 %i.w, 0
  br i1 %.not.7, label %vector.body.interim.7, label %vector.early.exit

vector.body.interim.7:                            ; preds = %vector.body.interim.6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %wide.load.8 = load <16 x i8>, ptr %i.x, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.8 = freeze <16 x i8> %wide.load.8
  %i.y = icmp ne <16 x i8> %wide.load.fr.8, zeroinitializer ; 2 uses
  %i.z = bitcast <16 x i1> %i.y to i16
  %.not.8 = icmp eq i16 %i.z, 0
  br i1 %.not.8, label %vector.body.interim.8, label %vector.early.exit

vector.body.interim.8:                            ; preds = %vector.body.interim.7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %wide.load.9 = load <16 x i8>, ptr %i.aa, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.9 = freeze <16 x i8> %wide.load.9
  %i.ab = icmp ne <16 x i8> %wide.load.fr.9, zeroinitializer ; 2 uses
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %.not.9 = icmp eq i16 %i.ac, 0
  br i1 %.not.9, label %vector.body.interim.9, label %vector.early.exit

vector.body.interim.9:                            ; preds = %vector.body.interim.8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %wide.load.10 = load <16 x i8>, ptr %i.ad, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.10 = freeze <16 x i8> %wide.load.10
  %i.ae = icmp ne <16 x i8> %wide.load.fr.10, zeroinitializer ; 2 uses
  %i.af = bitcast <16 x i1> %i.ae to i16
  %.not.10 = icmp eq i16 %i.af, 0
  br i1 %.not.10, label %vector.body.interim.10, label %vector.early.exit

vector.body.interim.10:                           ; preds = %vector.body.interim.9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %wide.load.11 = load <16 x i8>, ptr %i.ag, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.11 = freeze <16 x i8> %wide.load.11
  %i.ah = icmp ne <16 x i8> %wide.load.fr.11, zeroinitializer ; 2 uses
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not.11 = icmp eq i16 %i.ai, 0
  br i1 %.not.11, label %vector.body.interim.11, label %vector.early.exit

vector.body.interim.11:                           ; preds = %vector.body.interim.10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %wide.load.12 = load <16 x i8>, ptr %i.aj, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.12 = freeze <16 x i8> %wide.load.12
  %i.ak = icmp ne <16 x i8> %wide.load.fr.12, zeroinitializer ; 2 uses
  %i.al = bitcast <16 x i1> %i.ak to i16
  %.not.12 = icmp eq i16 %i.al, 0
  br i1 %.not.12, label %vector.body.interim.12, label %vector.early.exit

vector.body.interim.12:                           ; preds = %vector.body.interim.11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %wide.load.13 = load <16 x i8>, ptr %i.am, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.13 = freeze <16 x i8> %wide.load.13
  %i.an = icmp ne <16 x i8> %wide.load.fr.13, zeroinitializer ; 2 uses
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not.13 = icmp eq i16 %i.ao, 0
  br i1 %.not.13, label %vector.body.interim.13, label %vector.early.exit

vector.body.interim.13:                           ; preds = %vector.body.interim.12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224
  %wide.load.14 = load <16 x i8>, ptr %i.ap, align 1, !alias.scope !2433, !noalias !2436
  %wide.load.fr.14 = freeze <16 x i8> %wide.load.14
  %i.aq = icmp ne <16 x i8> %wide.load.fr.14, zeroinitializer ; 2 uses
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not.14 = icmp eq i16 %i.ar, 0
  br i1 %.not.14, label %vector.body.interim.14, label %vector.early.exit

vector.body.interim.14:                           ; preds = %vector.body.interim.13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %wide.load.15 = load <16 x i8>, ptr %i.as, align 1, !alias.scope !2433, !noalias !2436
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
  %i.av = extractelement <16 x i64> %vec.ind.lcssa, i64 %first.active.lane
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %i.ax = add i64 %index.lcssa, %first.active.lane
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2454
  %i.ay = trunc i64 %i.ax to i8                   ; 2 uses
  %i.az = icmp eq i64 %i.aw, 256
  br i1 %i.az, label %._crit_edge, label %.lr.ph

bb.a:                                             ; preds = %.lr.ph
  %.add27.i = add nuw i64 %.idx25.i45, 1          ; 2 uses
  %i.ba = icmp eq i64 %.add27.i, 256
  br i1 %i.ba, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %vector.early.exit, %bb.a
  %.idx25.i45 = phi i64 [ %.add27.i, %bb.a ], [ %i.aw, %vector.early.exit ] ; 2 uses
  %.ptr28.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx25.i45
  %.val8.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.ptr28.i, align 1, !range !1492, !alias.scope !2433, !noalias !2457, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.a, label %.loopexit

._crit_edge:                                      ; preds = %bb.a, %vector.early.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  %i.bb = tail call noundef i64 @_RNvCs4yUM5x5lkvE_9bytecount5count(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i8 noundef %i.ay) #32, !noalias !2478 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !2483, !noalias !2475, !noundef !4 ; 5 uses
  %i.bf = load i64, ptr %3, align 8, !range !40, !alias.scope !2483, !noalias !2475, !noundef !4
  %i.bg = sub i64 %i.bf, %i.be
  %i.bh = icmp ugt i64 %2, %i.bg
  br i1 %i.bh, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i, !prof !668

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.thread.i.i: ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.be, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef 1, i64 noundef 1) #32
  %i.bi = load i64, ptr %i.bd, align 8, !alias.scope !2486, !noalias !2475, !noundef !4 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, -1
  tail call void @llvm.assume(i1 %i.bj)
  br label %bb.c

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i: ; preds = %bb.b
  %i.bk = icmp sgt i64 %i.be, -1
  tail call void @llvm.assume(i1 %i.bk)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCslbrwWrVtb7E_5uu_tr.exit.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.thread.i.i
  %i.bl = phi i64 [ %i.bi, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.thread.i.i ], [ %i.be, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !2486, !noalias !2475, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !2486
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCslbrwWrVtb7E_5uu_tr.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCslbrwWrVtb7E_5uu_tr.exit.i: ; preds = %bb.c, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i
  %i.bp = phi i64 [ %i.bl, %bb.c ], [ %i.be, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ]
  %i.bq = add nuw i64 %i.bp, %2
  store i64 %i.bq, ptr %i.bd, align 8, !alias.scope !2486, !noalias !2475
  br label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit

bb.d:                                             ; preds = %._crit_edge
  %i.br = icmp ult i64 %i.bb, %2
  br i1 %i.br, label %.lr.ph48.lr.ph, label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit

.lr.ph48.lr.ph:                                   ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2487)
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.lr.ph48

bb.e:                                             ; preds = %.lr.ph48
  %.not.not.not.i.not.i.i = icmp eq ptr %i.bw, %i.bs
  br i1 %.not.not.not.i.not.i.i, label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit, label %.lr.ph48.backedge

.lr.ph48.backedge:                                ; preds = %bb.e, %bb.g
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.backedge, %.lr.ph48.lr.ph
  %i.bv = phi ptr [ %1, %.lr.ph48.lr.ph ], [ %i.bw, %.lr.ph48.backedge ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 3 uses
  %i.bx = load i8, ptr %i.bv, align 1, !alias.scope !2475, !noalias !2490, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.bx, %i.ay
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.f

bb.f:                                             ; preds = %.lr.ph48
  %i.by = load i64, ptr %i.bt, align 8, !alias.scope !2499, !noalias !2500, !noundef !4 ; 5 uses
  %i.bz = icmp sgt i64 %i.by, -1
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = load i64, ptr %3, align 8, !range !40, !alias.scope !2499, !noalias !2500, !noundef !4
  %i.cb = icmp eq i64 %i.by, %i.ca
  br i1 %i.cb, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.i, label %bb.g

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.i: ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.by, i64 noundef 1, i64 noundef 1, i64 noundef 1) #32, !noalias !2501
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i2.i, %bb.f
  %i.cc = load ptr, ptr %i.bu, align 8, !alias.scope !2499, !noalias !2500, !nonnull !4, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.by
  store i8 %i.bx, ptr %i.cd, align 1, !noalias !2502
  %i.ce = add nuw i64 %i.by, 1
  store i64 %i.ce, ptr %i.bt, align 8, !alias.scope !2499, !noalias !2500
  %.not.not.not.i.not.i.i46 = icmp eq ptr %i.bw, %i.bs
  br i1 %.not.not.not.i.not.i.i46, label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit, label %.lr.ph48.backedge

.loopexit:                                        ; preds = %.lr.ph, %vector.body.interim.14
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not.not.not.i.not.i5155 = icmp samesign eq i64 %2, 0
  br i1 %.not.not.not.i.not.i5155, label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit, label %.lr.ph53

bb.h:                                             ; preds = %.lr.ph53
  %.not.not.not.i.not.i = icmp eq ptr %i.cj, %i.cf
  br i1 %.not.not.not.i.not.i, label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit, label %.lr.ph53.backedge

.lr.ph53.backedge:                                ; preds = %bb.h, %bb.j
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.loopexit, %.lr.ph53.backedge
  %i.ci = phi ptr [ %i.cj, %.lr.ph53.backedge ], [ %1, %.loopexit ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 3 uses
  %i.ck = load i8, ptr %i.ci, align 1, !noalias !2506, !noundef !4 ; 2 uses
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !range !1492, !noalias !2506, !noundef !4
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.h, label %bb.i

bb.i:                                             ; preds = %.lr.ph53
  %i.cp = load i64, ptr %i.cg, align 8, !alias.scope !2503, !noalias !2515, !noundef !4 ; 5 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = load i64, ptr %3, align 8, !range !40, !alias.scope !2503, !noalias !2515, !noundef !4
  %i.cs = icmp eq i64 %i.cp, %i.cr
  br i1 %i.cs, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i, label %bb.j

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i: ; preds = %bb.i
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.cp, i64 noundef 1, i64 noundef 1, i64 noundef 1) #32, !noalias !2515
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i, %bb.i
  %i.ct = load ptr, ptr %i.ch, align 8, !alias.scope !2503, !noalias !2515, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cp
  store i8 %i.ck, ptr %i.cu, align 1, !noalias !2516
  %i.cv = add nuw i64 %i.cp, 1
  store i64 %i.cv, ptr %i.cg, align 8, !alias.scope !2503, !noalias !2515
  %.not.not.not.i.not.i51 = icmp eq ptr %i.cj, %i.cf
  br i1 %.not.not.not.i.not.i51, label %_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit, label %.lr.ph53.backedge

_RNvNtCslbrwWrVtb7E_5uu_tr4simd21process_single_delete.exit: ; preds = %bb.g, %bb.e, %bb.j, %bb.h, %.loopexit, %bb.d, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCslbrwWrVtb7E_5uu_tr.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs9_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_18TranslateOperationNtB5_14ChunkProcessor13process_chunk(ptr noalias nofree noundef readonly captures(none) dereferenceable(256) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
vector.ph:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  %wide.load = load <16 x i8>, ptr %0, align 1, !alias.scope !2517, !noalias !2520
  %wide.load.fr = freeze <16 x i8> %wide.load     ; 2 uses
  %i.b = icmp ne <16 x i8> %wide.load.fr, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15> ; 2 uses
  %i.c = bitcast <16 x i1> %i.b to i16
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.ph
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.d, align 1, !alias.scope !2517, !noalias !2520
  %wide.load.1.fr = freeze <16 x i8> %wide.load.1 ; 2 uses
  %i.e = icmp ne <16 x i8> %wide.load.1.fr, <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31> ; 2 uses
  %i.f = bitcast <16 x i1> %i.e to i16
  %.not.1 = icmp eq i16 %i.f, 0
  br i1 %.not.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.g, align 1, !alias.scope !2517, !noalias !2520
  %wide.load.2.fr = freeze <16 x i8> %wide.load.2 ; 2 uses
  %i.h = icmp ne <16 x i8> %wide.load.2.fr, <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47> ; 2 uses
  %i.i = bitcast <16 x i1> %i.h to i16
  %.not.2 = icmp eq i16 %i.i, 0
  br i1 %.not.2, label %vector.body.interim.2, label %vector.early.exit

vector.body.interim.2:                            ; preds = %vector.body.interim.1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.load.3 = load <16 x i8>, ptr %i.j, align 1, !alias.scope !2517, !noalias !2520
  %wide.load.3.fr = freeze <16 x i8> %wide.load.3 ; 2 uses
  %i.k = icmp ne <16 x i8> %wide.load.3.fr, <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63> ; 2 uses
  %i.l = bitcast <16 x i1> %i.k to i16
  %.not.3 = icmp eq i16 %i.l, 0
  br i1 %.not.3, label %vector.body.interim.3, label %vector.early.exit

vector.body.interim.3:                            ; preds = %vector.body.interim.2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %wide.load.4 = load <16 x i8>, ptr %i.m, align 1, !alias.scope !2517, !noalias !2520
  %wide.load.4.fr = freeze <16 x i8> %wide.load.4 ; 2 uses
  %i.n = icmp ne <16 x i8> %wide.load.4.fr, <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79> ; 2 uses
  %i.o = bitcast <16 x i1> %i.n to i16
  %.not.4 = icmp eq i16 %i.o, 0
  br i1 %.not.4, label %vector.body.interim.4, label %vector.early.exit

vector.body.interim.4:                            ; preds = %vector.body.interim.3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.load.5 = load <16 x i8>, ptr %i.p, align 1, !alias.scope !2517, !noalias !2520
end_hunk_0
