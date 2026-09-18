Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMDisassembler?download=true
inline.NumInlined: 11263
inline.NumDeleted: 275
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL18DecodeCCOutOperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 1, 4) i32 @_ZL21DecodeSORegImmOperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 15                           ; 2 uses
  %i.b = lshr i32 %1, 5
  %i.c = and i32 %i.b, 3
  %i.d = lshr i32 %1, 7
  %i.e = and i32 %i.d, 31                         ; 2 uses
  switch i32 %i.a, label %.thread.i [
    i32 13, label %bb.b
    i32 15, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56, !nonnull !57, !align !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %i.j = and i64 %i.i, 8796093022208
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %.thread.i

.thread.i:                                        ; preds = %bb.a, %bb.c, %bb.b
  %.011.i = phi i32 [ 3, %bb.b ], [ 1, %bb.c ], [ 3, %bb.a ]
  %i.k = zext nneg i32 %i.a to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !102
  %.sroa.3.8.insert.ext.i.i.i = zext i16 %i.m to i64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !83   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !89
  %.not.i.i.i.i = icmp ult i32 %i.p, %i.r
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d, !prof !96

bb.d:                                             ; preds = %.thread.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i)
  br label %bb.f

bb.e:                                             ; preds = %.thread.i
  %i.s = zext i32 %i.p to i64
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.s ; 2 uses
  store i8 1, ptr %i.u, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1
  %i.v = load i32, ptr %i.o, align 8, !tbaa !83
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.o, align 8, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  switch i32 %i.c, label %default.unreachable [
    i32 3, label %bb.i
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 0, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  br label %bb.j

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.g
  %i.x = phi i1 [ false, %bb.f ], [ true, %bb.i ], [ false, %bb.g ], [ false, %bb.h ]
  %.012 = phi i32 [ 2, %bb.f ], [ 4, %bb.i ], [ 3, %bb.g ], [ 1, %bb.h ]
  %i.y = icmp eq i32 %i.e, 0
  %or.cond = and i1 %i.y, %i.x
  %spec.store.select = select i1 %or.cond, i32 5, i32 %.012
  %i.z = shl nuw nsw i32 %i.e, 3
  %i.aa = or disjoint i32 %spec.store.select, %i.z
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = load i32, ptr %i.o, align 8, !tbaa !83  ; 2 uses
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !89
  %.not.i.i = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i.i, label %bb.l, label %bb.k, !prof !96

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 2, i64 %i.ab)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.l:                                             ; preds = %bb.j
  %i.ae = zext i32 %i.ac to i64
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  store i8 2, ptr %i.ag, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.ah = load i32, ptr %i.o, align 8, !tbaa !83
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.o, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.l, %bb.k
  ret i32 %.011.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 1, 4) i32 @_ZL21DecodeSORegRegOperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 15                           ; 2 uses
  %i.b = lshr i32 %1, 5
  %i.c = and i32 %i.b, 3
  %i.d = lshr i32 %1, 8
  %i.e = and i32 %i.d, 15                         ; 2 uses
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !102
  %.sroa.3.8.insert.ext.i.i.i = zext i16 %i.h to i64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !83   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !89
  %.not.i.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b, !prof !96

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i)
  %.pre = load i32, ptr %i.j, align 8, !tbaa !83
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.n ; 2 uses
  store i8 1, ptr %i.p, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1
  %i.q = load i32, ptr %i.j, align 8, !tbaa !83
  %i.r = add i32 %i.q, 1                          ; 2 uses
  store i32 %i.r, ptr %i.j, align 8, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i32 [ %i.r, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %i.t = zext nneg i32 %i.e to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !102
  %.sroa.3.8.insert.ext.i.i.i12 = zext i16 %i.v to i64 ; 2 uses
  %i.w = load i32, ptr %i.l, align 4, !tbaa !89
  %.not.i.i.i.i13 = icmp ult i32 %i.s, %i.w
  br i1 %.not.i.i.i.i13, label %bb.f, label %bb.e, !prof !96

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i12)
  br label %switch.lookup

bb.f:                                             ; preds = %bb.d
  %i.x = zext i32 %i.s to i64
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.x ; 2 uses
  store i8 1, ptr %i.z, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i12, ptr %.sroa.4.0..sroa_idx.i.i.i.i15, align 1
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !83
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.j, align 8, !tbaa !83
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.e, %bb.f
  %i.ac = zext nneg i32 %i.c to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL21DecodeSORegRegOperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE, i64 %i.ac
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 2 uses
  %i.ad = load i32, ptr %i.j, align 8, !tbaa !83  ; 2 uses
  %i.ae = load i32, ptr %i.l, align 4, !tbaa !89
  %.not.i.i = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !96

bb.g:                                             ; preds = %switch.lookup
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 2, i64 %switch.ext)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.h:                                             ; preds = %switch.lookup
  %i.af = zext i32 %i.ad to i64
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.af ; 2 uses
  store i8 2, ptr %i.ah, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %switch.ext, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !83
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.j, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.h, %bb.g
  %i.ak = icmp eq i32 %i.e, 15
  %i.al = icmp eq i32 %i.a, 15
  %i.am = or i1 %i.al, %i.ak
  %i.an = select i1 %i.am, i32 1, i32 3
  ret i32 %i.an
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 4) i32 @_ZL26DecodeAddrMode3InstructionRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %1, 12
  %i.b = and i32 %i.a, 15                         ; 13 uses
  %i.c = lshr i32 %1, 16
  %i.d = and i32 %i.c, 15                         ; 16 uses
  %i.e = and i32 %1, 15                           ; 9 uses
  %i.f = lshr i32 %1, 22                          ; 5 uses
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = lshr i32 %1, 8
  %i.i = and i32 %i.h, 15                         ; 2 uses
  %i.j = lshr i32 %1, 15
  %i.k = and i32 %i.j, 256
  %i.l = xor i32 %i.k, 256                        ; 3 uses
  %i.m = lshr i32 %1, 28
  %i.n = add nuw nsw i32 %i.b, 1                  ; 7 uses
  %i.o = and i32 %1, 16777216
  %i.p = icmp eq i32 %i.o, 0
  %i.q = and i32 %1, 18874368                     ; 3 uses
  %i.r = icmp ne i32 %i.q, 16777216               ; 9 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !67     ; 3 uses
  switch i32 %i.s, label %bb.c [
    i32 2035, label %bb.b
    i32 2037, label %bb.b
    i32 2036, label %bb.b
    i32 966, label %bb.b
    i32 968, label %bb.b
    i32 967, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.t = and i32 %1, 4096
  %.not = icmp eq i32 %i.t, 0
  %spec.select = select i1 %.not, i32 3, i32 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0213 = phi i32 [ 3, %bb.a ], [ %spec.select, %bb.b ] ; 10 uses
  switch i32 %i.s, label %.thread218 [
    i32 2035, label %bb.d
    i32 2037, label %bb.d
    i32 2036, label %bb.d
    i32 2042, label %bb.g
    i32 2046, label %bb.g
    i32 2045, label %bb.g
    i32 966, label %bb.h
    i32 968, label %bb.h
    i32 967, label %bb.h
    i32 973, label %bb.m
    i32 977, label %bb.m
    i32 976, label %bb.m
    i32 983, label %bb.o
    i32 987, label %bb.o
    i32 986, label %bb.o
    i32 978, label %bb.o
    i32 982, label %bb.o
    i32 981, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %or.cond = icmp eq i32 %i.q, 2097152
  %spec.select227 = select i1 %or.cond, i32 1, i32 %.0213 ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.d, 15
  %i.v = icmp eq i32 %i.d, %i.b
  %or.cond155 = or i1 %i.u, %i.v
  %i.w = icmp eq i32 %i.d, %i.n
  %or.cond156 = or i1 %or.cond155, %i.w
  %spec.select228 = select i1 %or.cond156, i32 1, i32 %spec.select227
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %spec.select227, %bb.d ], [ %spec.select228, %bb.e ]
  %i.x = trunc i32 %i.f to i1                     ; 2 uses
  %i.y = icmp eq i32 %i.e, 15
  %or.cond3 = and i1 %i.y, %i.x
  %i.z = icmp eq i32 %i.n, 15
  %i.aa = or i1 %or.cond3, %i.z
  %.not152 = icmp eq i32 %i.i, 0
  %or.cond230 = or i1 %.not152, %i.x
  %i.ab = xor i1 %i.aa, true
  %i.ac = select i1 %or.cond230, i1 %i.ab, i1 false
  %spec.select243 = select i1 %i.ac, i32 %.2, i32 1
  br label %.thread218

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.ad = icmp eq i32 %i.b, 15
  %i.ae = icmp eq i32 %i.d, 15
  %i.af = icmp eq i32 %i.d, %i.b
  %or.cond157 = or i1 %i.ae, %i.af
  %i.ag = and i1 %i.r, %or.cond157
  %i.ah = or i1 %i.ad, %i.ag
  %i.ai = icmp eq i32 %i.g, 0
  %i.aj = icmp eq i32 %i.e, 15
  %or.cond5 = and i1 %i.aj, %i.ai
  %i.ak = or i1 %or.cond5, %i.ah
  %spec.select233 = select i1 %i.ak, i32 1, i32 %.0213
  br label %.thread218

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.al = trunc i32 %i.f to i1                    ; 2 uses
  %i.am = icmp eq i32 %i.d, 15                    ; 2 uses
  %or.cond7 = and i1 %i.am, %i.al
  br i1 %or.cond7, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = icmp eq i32 %i.n, 15
  %spec.select234 = select i1 %i.an, i32 1, i32 %.0213
  br label %.thread218

bb.j:                                             ; preds = %bb.h
  %or.cond9 = icmp eq i32 %i.q, 2097152
  %spec.select235 = select i1 %or.cond9, i32 1, i32 %.0213 ; 2 uses
  br i1 %i.al, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp eq i32 %i.n, 15
  %i.ap = icmp eq i32 %i.e, 15
  %or.cond11 = or i1 %i.ap, %i.ao
  %i.aq = icmp eq i32 %i.e, %i.b
  %or.cond158 = or i1 %i.aq, %or.cond11
  %i.ar = icmp eq i32 %i.e, %i.n
  %or.cond159 = or i1 %i.ar, %or.cond158
  %or.cond15 = and i1 %i.r, %i.am
  %i.as = select i1 %or.cond15, i1 true, i1 %or.cond159
  %spec.select244 = select i1 %i.as, i32 1, i32 %spec.select235
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.j
  %.8 = phi i32 [ %spec.select235, %bb.j ], [ %spec.select244, %bb.k ] ; 2 uses
  br i1 %i.r, label %bb.l, label %.critedge165

bb.l:                                             ; preds = %.thread
  %i.at = icmp eq i32 %i.d, %i.b
  %i.au = icmp eq i32 %i.d, %i.n
  %or.cond160 = or i1 %i.at, %i.au
  %spec.select237 = select i1 %or.cond160, i32 1, i32 %.8
  br label %.thread224

bb.m:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.av = trunc i32 %i.f to i1
  %i.aw = icmp eq i32 %i.d, 15                    ; 2 uses
  %or.cond17 = and i1 %i.aw, %i.av
  %i.ax = icmp eq i32 %i.b, 15                    ; 2 uses
  br i1 %or.cond17, label %bb.n, label %condstore.split

bb.n:                                             ; preds = %bb.m
  %spec.select238 = select i1 %i.ax, i32 1, i32 %.0213
  br label %.thread218

condstore.split:                                  ; preds = %bb.m
  %i.ay = icmp eq i32 %i.g, 0
  %i.az = icmp eq i32 %i.e, 15
  %i.ba = icmp eq i32 %i.d, %i.b
  %or.cond161 = or i1 %i.aw, %i.ba
  %i.bb = and i1 %i.r, %or.cond161
  %i.bc = or i1 %i.az, %i.bb
  %i.bd = and i1 %i.ay, %i.bc
  %i.be = or i1 %i.ax, %i.bd
  %spec.select239 = select i1 %i.be, i32 1, i32 %.0213
  br label %.thread218

bb.o:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bf = trunc i32 %i.f to i1                    ; 2 uses
  %i.bg = icmp eq i32 %i.d, 15                    ; 2 uses
  %or.cond23 = and i1 %i.bg, %i.bf
  %i.bh = icmp eq i32 %i.b, 15                    ; 3 uses
  br i1 %or.cond23, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %spec.select240 = select i1 %i.bh, i32 1, i32 %.0213
  br label %.thread218

bb.q:                                             ; preds = %bb.o
  br i1 %i.bf, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp eq i32 %i.d, %i.b
  %or.cond162 = and i1 %i.r, %i.bi
  %or.cond167 = or i1 %i.bh, %or.cond162
  %spec.select241 = select i1 %or.cond167, i32 1, i32 %.0213
  br label %.thread218

.critedge:                                        ; preds = %bb.q
  %i.bj = icmp eq i32 %i.e, 15
  %i.bk = icmp eq i32 %i.d, %i.b
  %or.cond163 = or i1 %i.bg, %i.bk
  %or.cond168 = and i1 %i.r, %or.cond163
  %i.bl = or i1 %i.bj, %or.cond168
  %i.bm = or i1 %i.bl, %i.bh
  %spec.select245 = select i1 %i.bm, i32 1, i32 %.0213
  br label %.thread218

end_hunk_0
begin_hunk_1_@_ZL16DecodePostIdxRegRN4llvm6MCInstEjmPKNS_14MCDisassemblerE:bb.a
  %i.b = lshr i32 %1, 4
  %i.c = and i32 %i.b, 1
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !102
  %.sroa.3.8.insert.ext.i.i.i = zext i16 %i.f to i64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !89
  %.not.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b, !prof !96

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i)
  %.pre = load i32, ptr %i.h, align 8, !tbaa !83
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store i8 1, ptr %i.n, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !83
  %i.p = add i32 %i.o, 1                          ; 2 uses
  store i32 %i.p, ptr %i.h, align 8, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i32 [ %i.p, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %i.r = zext nneg i32 %i.c to i64                ; 2 uses
  %i.s = load i32, ptr %i.j, align 4, !tbaa !89
  %.not.i.i = icmp ult i32 %i.q, %i.s
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !96

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 2, i64 %i.r)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.f:                                             ; preds = %bb.d
  %i.t = zext i32 %i.q to i64
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.t ; 2 uses
  store i8 2, ptr %i.v, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.w = load i32, ptr %i.h, align 8, !tbaa !83
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.h, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.f, %bb.e
  %i.y = icmp eq i32 %i.a, 15
  %i.z = select i1 %i.y, i32 1, i32 3
  ret i32 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 4) i32 @_ZL9DecodeLDRRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = and i32 %i.a, 15                         ; 3 uses
  %i.c = lshr i32 %1, 12
  %i.d = and i32 %i.c, 15                         ; 3 uses
  %i.e = and i32 %1, 15                           ; 2 uses
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !102
  %.sroa.3.8.insert.ext.i.i.i = zext i16 %i.h to i64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 15 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !83   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !89
  %.not.i.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b, !prof !96

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i)
  %.pre = load i32, ptr %i.j, align 8, !tbaa !83
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.n ; 2 uses
  store i8 1, ptr %i.p, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1
  %i.q = load i32, ptr %i.j, align 8, !tbaa !83
  %i.r = add i32 %i.q, 1                          ; 2 uses
  store i32 %i.r, ptr %i.j, align 8, !tbaa !83
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i32 [ %i.r, %bb.c ], [ %.pre, %bb.b ] ; 2 uses
  %i.t = zext nneg i32 %i.b to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !102
  %.sroa.3.8.insert.ext.i.i.i23 = zext i16 %i.v to i64 ; 4 uses
  %i.w = load i32, ptr %i.l, align 4, !tbaa !89
  %.not.i.i.i.i24 = icmp ult i32 %i.s, %i.w
  br i1 %.not.i.i.i.i24, label %bb.f, label %bb.e, !prof !96

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i23)
  %.pre43 = load i32, ptr %i.j, align 8, !tbaa !83
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = zext i32 %i.s to i64
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.x ; 2 uses
  store i8 1, ptr %i.z, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i26 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i23, ptr %.sroa.4.0..sroa_idx.i.i.i.i26, align 1
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !83
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %i.j, align 8, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = phi i32 [ %i.ab, %bb.f ], [ %.pre43, %bb.e ] ; 2 uses
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !89
  %.not.i.i.i.i29 = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i.i.i.i29, label %bb.i, label %bb.h, !prof !96

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i23)
  %.pre44 = load i32, ptr %i.j, align 8, !tbaa !83
  br label %_ZL22DecodeAddrMode7OperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = zext i32 %i.ac to i64
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  store i8 1, ptr %i.ag, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i30 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i23, ptr %.sroa.4.0..sroa_idx.i.i.i.i30, align 1
  %i.ah = load i32, ptr %i.j, align 8, !tbaa !83
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  store i32 %i.ai, ptr %i.j, align 8, !tbaa !83
  br label %_ZL22DecodeAddrMode7OperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit

_ZL22DecodeAddrMode7OperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit: ; preds = %bb.i, %bb.h
  %i.aj = phi i32 [ %i.ai, %bb.i ], [ %.pre44, %bb.h ] ; 2 uses
  %i.ak = lshr i32 %1, 23
  %i.al = and i32 %i.ak, 1
  %i.am = zext nneg i32 %i.e to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !102
  %.sroa.3.8.insert.ext.i.i.i.i = zext i16 %i.ao to i64 ; 2 uses
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !89
  %.not.i.i.i.i.i = icmp ult i32 %i.aj, %i.ap
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j, !prof !96

bb.j:                                             ; preds = %_ZL22DecodeAddrMode7OperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i.i)
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !83
  br label %bb.l

bb.k:                                             ; preds = %_ZL22DecodeAddrMode7OperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit
  %i.aq = zext i32 %i.aj to i64
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  store i8 1, ptr %i.as, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 1
  %i.at = load i32, ptr %i.j, align 8, !tbaa !83
  %i.au = add i32 %i.at, 1                        ; 2 uses
  store i32 %i.au, ptr %i.j, align 8, !tbaa !83
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = phi i32 [ %i.au, %bb.k ], [ %.pre.i, %bb.j ] ; 2 uses
  %i.aw = zext nneg i32 %i.al to i64              ; 2 uses
  %i.ax = load i32, ptr %i.l, align 4, !tbaa !89
  %.not.i.i.i = icmp ult i32 %i.av, %i.ax
  br i1 %.not.i.i.i, label %bb.n, label %bb.m, !prof !96

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 2, i64 %i.aw)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ay = zext i32 %i.av to i64
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ay ; 2 uses
  store i8 2, ptr %i.ba, align 1
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.aw, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1
  %i.bb = load i32, ptr %i.j, align 8, !tbaa !83
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.j, align 8, !tbaa !83
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %3 = icmp eq i32 %i.b, 15
  %i.bd = and i32 %1, 3840
  %.not = icmp ne i32 %i.bd, 0
  %i.be = icmp eq i32 %i.b, %i.d
  %or.cond = or i1 %.not, %i.be
  %i.bf = icmp eq i32 %i.d, 15
  %i.bg = or i1 %i.bf, %or.cond
  %i.bh = or i1 %3, %i.bg
  %i.bi = lshr i32 %1, 28
  %i.bj = icmp eq i32 %i.e, 15
  %i.bk = or i1 %i.bj, %i.bh
  %i.bl = select i1 %i.bk, i32 1, i32 3
  %i.bm = tail call fastcc noundef i32 @_ZL22DecodePredicateOperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.bi, ptr noundef %2)
  %i.bn = and i32 %i.bm, %i.bl
  ret i32 %i.bn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 4) i32 @_ZL25DecodeArmMOVTWInstructionRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %1, 12
  %i.b = and i32 %i.a, 15                         ; 3 uses
  %i.c = and i32 %1, 4095
  %i.d = lshr i32 %1, 4
  %i.e = and i32 %i.d, 61440
  %i.f = or disjoint i32 %i.e, %i.c
  %i.g = load i32, ptr %0, align 8, !tbaa !67
  %i.h = icmp eq i32 %i.g, 1004
  %i.i = zext nneg i32 %i.b to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !102
  %.sroa.3.8.insert.ext.i.i.i = zext i16 %i.k to i64 ; 4 uses
  br i1 %i.h, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !83   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !89
  %.not.i.i.i.i = icmp ult i32 %i.n, %i.p
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !prof !96

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i)
  br label %_ZL26DecodeGPRnopcRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit

bb.d:                                             ; preds = %bb.b
  %i.q = zext i32 %i.n to i64
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 2 uses
  store i8 1, ptr %i.s, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1
  %i.t = load i32, ptr %i.m, align 8, !tbaa !83
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.m, align 8, !tbaa !83
  br label %_ZL26DecodeGPRnopcRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit

_ZL26DecodeGPRnopcRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit: ; preds = %bb.c, %bb.d
  %i.v = icmp eq i32 %i.b, 15
  %i.w = select i1 %i.v, i32 1, i32 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %_ZL26DecodeGPRnopcRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit
  %.033 = phi i32 [ %i.w, %_ZL26DecodeGPRnopcRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit ], [ 3, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !83   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !89
  %.not.i.i.i.i22 = icmp ult i32 %i.z, %i.ab
  br i1 %.not.i.i.i.i22, label %bb.f, label %bb.e, !prof !96

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i)
  br label %_ZL26DecodeGPRnopcRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit25

bb.f:                                             ; preds = %._crit_edge
  %i.ac = zext i32 %i.z to i64
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ac ; 2 uses
  store i8 1, ptr %i.ae, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i24, align 1
  %i.af = load i32, ptr %i.y, align 8, !tbaa !83
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.y, align 8, !tbaa !83
  br label %_ZL26DecodeGPRnopcRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit25

_ZL26DecodeGPRnopcRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit25: ; preds = %bb.e, %bb.f
  %i.ah = zext nneg i32 %i.f to i64               ; 3 uses
  %i.ai = tail call noundef zeroext i1 @_ZNK4llvm14MCDisassembler24tryAddingSymbolicOperandERNS_6MCInstElmbmmm(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ah, i64 noundef %2, i1 noundef zeroext false, i64 noundef 0, i64 noundef 0, i64 noundef 4) #19
  br i1 %i.ai, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit, label %bb.g

bb.g:                                             ; preds = %_ZL26DecodeGPRnopcRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit25
  %i.aj = load i32, ptr %i.y, align 8, !tbaa !83  ; 2 uses
  %i.ak = load i32, ptr %i.aa, align 4, !tbaa !89
  %.not.i.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.i, label %bb.h, !prof !96

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 2, i64 %i.ah)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.i:                                             ; preds = %bb.g
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.al ; 2 uses
  store i8 2, ptr %i.an, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !83
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.y, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.i, %bb.h, %_ZL26DecodeGPRnopcRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit25
  %i.aq = icmp eq i32 %i.b, 15
  %i.ar = select i1 %i.aq, i32 1, i32 15
  %i.as = and i32 %.033, %i.ar
  %i.at = lshr i32 %1, 28
  %i.au = tail call fastcc noundef i32 @_ZL22DecodePredicateOperandRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.at, ptr noundef %3)
  %i.av = and i32 %i.as, %i.au
  ret i32 %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 4) i32 @_ZL20DecodeTSBInstructionRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !67
  switch i32 %i.a, label %_ZL22DecodePredicateOperandRN4llvm6MCInstEPKNS_14MCDisassemblerE.exit [
    i32 2073, label %bb.b
    i32 4400, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !83   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89
  %.not.i.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !96

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 2, i64 0)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.d:                                             ; preds = %bb.b
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g ; 2 uses
  store i8 2, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.j = load i32, ptr %i.c, align 8, !tbaa !83
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.c, %bb.d
  %i.l = load i32, ptr %0, align 8, !tbaa !67
  %i.m = icmp eq i32 %i.l, 4400
  br i1 %i.m, label %bb.e, label %_ZL22DecodePredicateOperandRN4llvm6MCInstEPKNS_14MCDisassemblerE.exit

bb.e:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56, !nonnull !57, !align !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25
  %i.r = and i64 %i.q, 4
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %_ZN12_GLOBAL__N_18ITStatus7getITCCEv.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.t = getelementptr i8, ptr %1, i64 56
  %.val9.i = load ptr, ptr %i.t, align 8, !tbaa !68 ; 2 uses
  %.not.i.i7 = icmp eq ptr %.val.i, %.val9.i
  br i1 %.not.i.i7, label %_ZN12_GLOBAL__N_18ITStatus7getITCCEv.exit.thread.i, label %_ZN12_GLOBAL__N_18ITStatus7getITCCEv.exit.i

_ZN12_GLOBAL__N_18ITStatus7getITCCEv.exit.i:      ; preds = %bb.f
  %i.u = getelementptr inbounds i8, ptr %.val9.i, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !72
  %.fr.i = freeze i8 %i.v                         ; 2 uses
  %i.w = icmp eq i8 %.fr.i, 14
  %i.x = zext i8 %.fr.i to i64
  %i.y = select i1 %i.w, i64 0, i64 3
  br label %_ZN12_GLOBAL__N_18ITStatus7getITCCEv.exit.thread.i

_ZN12_GLOBAL__N_18ITStatus7getITCCEv.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_18ITStatus7getITCCEv.exit.i, %bb.f, %bb.e
  %.016.i = phi i64 [ %i.x, %_ZN12_GLOBAL__N_18ITStatus7getITCCEv.exit.i ], [ 14, %bb.f ], [ 14, %bb.e ] ; 2 uses
  %.sroa.3.8.insert.ext.i.i = phi i64 [ %i.y, %_ZN12_GLOBAL__N_18ITStatus7getITCCEv.exit.i ], [ 0, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.z = load i32, ptr %i.c, align 8, !tbaa !83   ; 2 uses
  %i.aa = load i32, ptr %i.e, align 4, !tbaa !89
  %.not.i.i.i = icmp ult i32 %i.z, %i.aa
  br i1 %.not.i.i.i, label %bb.h, label %bb.g, !prof !96

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_18ITStatus7getITCCEv.exit.thread.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 2, i64 %.016.i)
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !83
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_18ITStatus7getITCCEv.exit.thread.i
  %i.ab = zext i32 %i.z to i64
end_hunk_1
