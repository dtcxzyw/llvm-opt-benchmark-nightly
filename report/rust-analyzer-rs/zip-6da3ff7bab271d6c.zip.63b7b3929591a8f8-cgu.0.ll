Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/zip-6da3ff7bab271d6c.zip.63b7b3929591a8f8-cgu.0?download=true
inline.NumInlined: 145
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs8_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTime8is_valid:bb.a
default.unreachable.i.i:                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.r = and i16 %i.a, 1536
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.b, %bb.b, %bb.b
  %.sroa.03.0.i.i = phi i8 [ %spec.select.i.i, %bb.e ], [ 28, %bb.c ], [ 30, %bb.b ], [ 30, %bb.b ], [ 30, %bb.b ], [ 30, %bb.b ]
  %i.t = icmp samesign ugt i8 %i.h, %.sroa.03.0.i.i
  br i1 %i.t, label %_RNvMs8_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTime14try_from_msdos.exit, label %.thread.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = urem i16 %i.d, 25
  %i.v = icmp ne i16 %i.u, 0
  %i.w = and i16 %i.d, 12
  %i.x = icmp eq i16 %i.w, 0
  %or.cond8.i.i = or i1 %i.v, %i.x
  %spec.select.i.i = select i1 %or.cond8.i.i, i8 29, i8 28
  br label %bb.d

.thread.i.i:                                      ; preds = %bb.d, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %_RNvMs8_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTime14try_from_msdos.exit

_RNvMs8_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTime14try_from_msdos.exit: ; preds = %bb.a, %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs8yNfvVM1dno_3zip.exit13.i.i, %bb.d, %.thread.i.i
  %i.y = phi i1 [ false, %bb.a ], [ true, %.thread.i.i ], [ false, %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range14RangeInclusivehEINtB6_11RangeBoundshE8containshECs8yNfvVM1dno_3zip.exit13.i.i ], [ false, %bb.d ]
  ret i1 %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define range(i48 0, -65534) i48 @_RNvMs8_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTime9from_time(ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #3 !guid !38 {
bb.a:
  %i.a = tail call range(i48 0, -65534) i48 @_RNvXsa_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTimeINtNtCshzWfHUSfYae_4core7convert7TryFromNtNtCsjsYc2335iSi_4time19primitive_date_time17PrimitiveDateTimeE8try_from(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0)
  ret i48 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData11local_block(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !57 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !range !10, !noundef !6
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %i.h = getelementptr i8, ptr %1, i64 205
  %.val59 = load i8, ptr %i.h, align 1, !range !10, !noundef !6
  %i.i = trunc nuw i8 %.val59 to i1               ; 2 uses
  %..i.i = tail call range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %i.g, i64 4294967295)
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %..i.i to i32
  %.sroa.0.0.i = select i1 %i.i, i32 -1, i32 %.sroa.6.0.extract.trunc.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  %..i.i60 = tail call range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %i.k, i64 4294967295)
  %.sroa.6.0.extract.trunc.i.i61 = trunc nuw i64 %..i.i60 to i32
  %.sroa.0.0.i62 = select i1 %i.i, i32 -1, i32 %.sroa.6.0.extract.trunc.i.i61
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.01.0 = phi i32 [ %.sroa.0.0.i62, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.i, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !noundef !6 ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ugt i64 %i.o, 65535
  br i1 %i.q, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.sroa.035.069 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %i.r = trunc nuw i64 %.sroa.035.069 to i16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.020.0.copyload = load i16, ptr %i.s, align 4
  %i.t = trunc i16 %.sroa.020.0.copyload to i1
  br i1 %i.t, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.sroa.442.2.extract.shift = lshr i64 ptrtoint (ptr @10 to i64), 16
  %.sroa.442.2.extract.trunc = trunc nuw i64 %.sroa.442.2.extract.shift to i48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.u, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 ptrtoint (ptr @10 to i16), ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i48 %.sroa.442.2.extract.trunc, ptr %.sroa.5.0..sroa_idx54, align 2
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 29, ptr %.sroa.655.0..sroa_idx, align 8
  br label %bb.ae

bb.f:                                             ; preds = %.thread
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.522.0.copyload = load i16, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 198
  %.sroa.421.0.copyload = load i16, ptr %.sroa.421.0..sroa_idx, align 2
  br label %switch.lookup

bb.g:                                             ; preds = %.thread
  %i.v = tail call { i16, i16 } @_RNvMs3_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTime17default_for_write() ; 2 uses
  %i.w = extractvalue { i16, i16 } %i.v, 0
  %i.x = extractvalue { i16, i16 } %i.v, 1
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.g, %bb.f
  %.sroa.519.0 = phi i16 [ %.sroa.522.0.copyload, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.018.0 = phi i16 [ %.sroa.421.0.copyload, %bb.f ], [ %i.w, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load i16, ptr %i.z, align 8, !range !11, !noundef !6
  %.not.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i, label %bb.h, label %bb.i

default.unreachable84:                            ; preds = %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit
  unreachable

bb.h:                                             ; preds = %switch.lookup
  %i.ab = load i16, ptr %i.y, align 8, !range !11, !noundef !6
  %i.ac = shl nuw nsw i16 %i.ab, 4
  %switch.shiftamt = zext nneg i16 %i.ac to i48
  %switch.downshift = lshr i48 193274839050, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 202
  %i.ae = load i8, ptr %i.ad, align 2, !range !10, !noundef !6
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = tail call i16 @llvm.umax.i16(i16 %switch.masked, i16 20)
  %i.ah = select i1 %i.af, i16 %i.ag, i16 %switch.masked
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %switch.lookup
  %.sroa.01.0.i = phi i16 [ %i.ah, %bb.h ], [ 51, %switch.lookup ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 205
  %i.aj = load i8, ptr %i.ai, align 1, !range !10, !noundef !6
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.am = load i32, ptr %i.al, align 8, !noundef !6 ; 4 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 206
  %i.ap = load i8, ptr %i.ao, align 2, !range !12, !noundef !6
  switch i8 %i.ap, label %bb.l [
    i8 0, label %bb.m
    i8 3, label %bb.n
    i8 4, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aq = and i32 %i.am, 16
  %.not.i.i = icmp eq i32 %i.aq, 0
  %..i.i64 = select i1 %.not.i.i, i32 33204, i32 16893
  %i.ar = and i32 %i.am, 1
  %.not3.i.i = icmp eq i32 %i.ar, 0
  %.sroa.01.1.i.i = select i1 %.not3.i.i, i32 %..i.i64, i32 0
  br label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i

bb.n:                                             ; preds = %bb.k
  %i.as = lshr i32 %i.am, 16
  br label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i

_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.sroa.5.0.i.i = phi i32 [ undef, %bb.j ], [ %.sroa.01.1.i.i, %bb.m ], [ %i.as, %bb.n ], [ undef, %bb.k ]
  %.not6.i = phi i1 [ true, %bb.j ], [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.k ]
  %i.at = and i32 %.sroa.5.0.i.i, 16384
  %.not5.i = icmp eq i32 %i.at, 0
  %or.cond.i = or i1 %.not6.i, %.not5.i
  %spec.select.i = select i1 %or.cond.i, i16 10, i16 20
  br label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed.exit

_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed.exit: ; preds = %bb.i, %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i
  %.sroa.02.0.i = phi i16 [ 45, %bb.i ], [ %spec.select.i, %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i ]
  %..i9.i = tail call noundef range(i16 10, 52) i16 @llvm.umax.i16(i16 %.sroa.02.0.i, i16 %.sroa.01.0.i)
  %i.au = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %.val.i = load ptr, ptr %i.au, align 8, !nonnull !6, !noundef !6
  %i.av = getelementptr i8, ptr %1, i64 88        ; 3 uses
  %.val3.i = load i64, ptr %i.av, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCshzWfHUSfYae_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val3.i)
  %i.aw = load i64, ptr %i.a, align 8, !range !5, !noundef !6
  %i.ax = icmp eq i64 %i.aw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ax, label %bb.o, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.o:                                             ; preds = %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed.exit
  %.val4.i = load ptr, ptr %i.au, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %.val5.i = load i64, ptr %i.av, align 8, !noundef !6 ; 5 uses
  %i.ay = icmp samesign ult i64 %.val5.i, 64
  br i1 %i.ay, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = and i64 %.val5.i, 9223372036854775744
  %i.ba = getelementptr inbounds nuw i8, ptr %.val4.i, i64 %i.az ; 3 uses
  %i.bb = and i64 %.val5.i, 63                    ; 2 uses
  br label %.lr.ph.i.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i, i64 64 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ba
  br i1 %i.bd, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %bb.p
  %.sroa.01.028.i.i.i.i = phi ptr [ %i.bc, %bb.q ], [ %.val4.i, %bb.p ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i.i.i, align 1, !alias.scope !58, !noalias !59
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i.i.i = load <2 x i64>, ptr %i.be, align 1, !alias.scope !58, !noalias !60
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i.i.i = load <2 x i64>, ptr %i.bf, align 1, !alias.scope !58, !noalias !61
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i.i.i = load <2 x i64>, ptr %i.bg, align 1, !alias.scope !58, !noalias !62
  %i.bh = or <2 x i64> %.sroa.0.0.copyload.i9.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  %i.bi = or <2 x i64> %i.bh, %.sroa.0.0.copyload.i10.i.i.i.i
  %i.bj = or <2 x i64> %i.bi, %.sroa.0.0.copyload.i11.i.i.i.i
  %i.bk = bitcast <2 x i64> %i.bj to <16 x i8>
  %i.bl = icmp slt <16 x i8> %i.bk, zeroinitializer
  %i.bm = bitcast <16 x i1> %i.bl to i16
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

._crit_edge.i.i.i.i:                              ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  %i.bp = icmp samesign eq i64 %i.bb, 0
  br i1 %i.bp, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph

bb.r:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bo
  br i1 %i.br, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i.i.i, %bb.r
  %i.bs = phi ptr [ %i.bq, %bb.r ], [ %i.ba, %._crit_edge.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i = load i8, ptr %i.bs, align 1, !alias.scope !58, !noalias !63, !noundef !6
  %i.bt = icmp sgt i8 %.val.i.i.i.i.i, -1
  br i1 %i.bt, label %bb.r, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.s:                                             ; preds = %bb.o
  %i.bu = and i64 %.val5.i, 56                    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val4.i, i64 %i.bu ; 7 uses
  %i.bw = and i64 %.val5.i, 7                     ; 7 uses
  %.not.i.i.i95 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i95, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yNfvVM1dno_3zip.exit.i.i.i

bb.t:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yNfvVM1dno_3zip.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i97, i64 8
  %2 = add nsw i64 %.sroa.6.0.i.i.i96, -8         ; 2 uses
  %.not.i.i.i.a = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.a, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yNfvVM1dno_3zip.exit.i.i.i

._crit_edge:                                      ; preds = %bb.t, %bb.s
  %i.by = icmp samesign eq i64 %i.bw, 0
  br i1 %i.by, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph99

bb.u:                                             ; preds = %.lr.ph99
  %i.bz = icmp samesign eq i64 %i.bw, 1
  br i1 %i.bz, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph99.1

.lr.ph99.1:                                       ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %.val.i.i.i.i.1 = load i8, ptr %i.ca, align 1, !alias.scope !64, !noalias !65, !noundef !6
  %i.cb = icmp sgt i8 %.val.i.i.i.i.1, -1
  br i1 %i.cb, label %bb.v, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.v:                                             ; preds = %.lr.ph99.1
  %i.cc = icmp samesign eq i64 %i.bw, 2
  br i1 %i.cc, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph99.2

.lr.ph99.2:                                       ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %.val.i.i.i.i.2 = load i8, ptr %i.cd, align 1, !alias.scope !64, !noalias !65, !noundef !6
  %i.ce = icmp sgt i8 %.val.i.i.i.i.2, -1
  br i1 %i.ce, label %bb.w, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.w:                                             ; preds = %.lr.ph99.2
  %i.cf = icmp samesign eq i64 %i.bw, 3
  br i1 %i.cf, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph99.3

.lr.ph99.3:                                       ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %.val.i.i.i.i.3 = load i8, ptr %i.cg, align 1, !alias.scope !64, !noalias !65, !noundef !6
  %i.ch = icmp sgt i8 %.val.i.i.i.i.3, -1
  br i1 %i.ch, label %bb.x, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.x:                                             ; preds = %.lr.ph99.3
  %i.ci = icmp samesign eq i64 %i.bw, 4
  br i1 %i.ci, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph99.4

.lr.ph99.4:                                       ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.val.i.i.i.i.4 = load i8, ptr %i.cj, align 1, !alias.scope !64, !noalias !65, !noundef !6
  %i.ck = icmp sgt i8 %.val.i.i.i.i.4, -1
  br i1 %i.ck, label %bb.y, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.y:                                             ; preds = %.lr.ph99.4
  %i.cl = icmp samesign eq i64 %i.bw, 5
  br i1 %i.cl, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph99.5

.lr.ph99.5:                                       ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 5
  %.val.i.i.i.i.5 = load i8, ptr %i.cm, align 1, !alias.scope !64, !noalias !65, !noundef !6
  %i.cn = icmp sgt i8 %.val.i.i.i.i.5, -1
  br i1 %i.cn, label %bb.z, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.z:                                             ; preds = %.lr.ph99.5
  %i.co = icmp samesign eq i64 %i.bw, 6
  br i1 %i.co, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph99.6

.lr.ph99.6:                                       ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bv, i64 6
  %.val.i.i.i.i.6 = load i8, ptr %i.cp, align 1, !alias.scope !64, !noalias !65, !noundef !6
  %i.cq = icmp sgt i8 %.val.i.i.i.i.6, -1
  %spec.select = select i1 %i.cq, i16 0, i16 2048
  br label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

.lr.ph99:                                         ; preds = %._crit_edge
  %.val.i.i.i.i = load i8, ptr %i.bv, align 1, !alias.scope !64, !noalias !65, !noundef !6
  %i.cr = icmp sgt i8 %.val.i.i.i.i, -1
  br i1 %i.cr, label %bb.u, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yNfvVM1dno_3zip.exit.i.i.i: ; preds = %bb.s, %bb.t
  %.sroa.0.017.i.i.i97 = phi ptr [ %i.bx, %bb.t ], [ %.val4.i, %bb.s ] ; 2 uses
  %.sroa.6.0.i.i.i96 = phi i64 [ %2, %bb.t ], [ %i.bu, %bb.s ]
  %.sroa.012.0.copyload.i.i.i = load i64, ptr %.sroa.0.017.i.i.i97, align 1, !alias.scope !64
  %i.cs = and i64 %.sroa.012.0.copyload.i.i.i, -9187201950435737472
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.t, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit: ; preds = %.lr.ph99.6, %.lr.ph.i.i.i.i, %.lr.ph, %bb.r, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yNfvVM1dno_3zip.exit.i.i.i, %.lr.ph99, %bb.u, %.lr.ph99.1, %bb.v, %.lr.ph99.2, %bb.w, %.lr.ph99.3, %bb.x, %.lr.ph99.4, %bb.y, %.lr.ph99.5, %bb.z, %._crit_edge.i.i.i.i, %._crit_edge, %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed.exit
  %.sroa.0.0.i65 = phi i16 [ 0, %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed.exit ], [ 0, %bb.r ], [ 2048, %.lr.ph.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i ], [ 0, %._crit_edge ], [ 2048, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yNfvVM1dno_3zip.exit.i.i.i ], [ 2048, %.lr.ph99 ], [ 0, %bb.u ], [ 2048, %.lr.ph99.1 ], [ 0, %bb.v ], [ 2048, %.lr.ph99.2 ], [ 0, %bb.w ], [ 2048, %.lr.ph99.3 ], [ 0, %bb.x ], [ 2048, %.lr.ph99.4 ], [ 0, %bb.y ], [ 2048, %.lr.ph99.5 ], [ 0, %bb.z ], [ %spec.select, %.lr.ph99.6 ], [ 2048, %.lr.ph ]
  %i.cu = load i8, ptr %i.c, align 4, !range !10, !noundef !6
  %i.cv = shl nuw nsw i8 %i.cu, 3
  %i.cw = zext nneg i8 %i.cv to i16
  %.sroa.01.0.i66 = or disjoint i16 %.sroa.0.0.i65, %i.cw
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 202
  %i.cy = load i8, ptr %i.cx, align 2, !range !10, !noundef !6
  %i.cz = zext nneg i8 %i.cy to i16
  %.sroa.02.0.i67 = or disjoint i16 %.sroa.01.0.i66, %i.cz
  %i.da = load i16, ptr %i.y, align 8, !range !11, !noundef !6 ; 2 uses
  switch i16 %i.da, label %default.unreachable84 [
    i16 0, label %bb.ac
    i16 1, label %bb.aa
    i16 2, label %bb.ab
  ]

bb.aa:                                            ; preds = %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit
  br label %bb.ac

bb.ab:                                            ; preds = %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.dc = load i16, ptr %i.db, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, %bb.ab, %bb.aa
  %.sroa.028.0 = phi i16 [ %i.dc, %bb.ab ], [ 8, %bb.aa ], [ %i.da, %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit ]
  %i.dd = load i64, ptr %i.av, align 8, !noundef !6 ; 2 uses
  %i.de = icmp ugt i64 %i.dd, 65535
  %i.df = trunc nuw nsw i64 %i.dd to i32
  %i.dg = shl nuw i32 %i.df, 16
  %.sroa.056.0.insert.insert = select i1 %i.de, i32 513, i32 %i.dg ; 2 uses
  %i.dh = trunc i32 %.sroa.056.0.insert.insert to i1
  br i1 %i.dh, label %bb.ad, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit, !prof !8

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66
  store i8 2, ptr %i.b, align 1, !noalias !66
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #16
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit: ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.dj = load i32, ptr %i.di, align 4, !noundef !6
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.056.0.insert.insert, 16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 67324752, ptr %i.dk, align 1
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i16 %..i9.i, ptr %.sroa.424.0..sroa_idx, align 1
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i16 %.sroa.02.0.i67, ptr %.sroa.525.0..sroa_idx, align 1
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i16 %.sroa.028.0, ptr %.sroa.626.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i16 %.sroa.519.0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i16 %.sroa.018.0, ptr %.sroa.827.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i32 %i.dj, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i32 %.sroa.0.0, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i32 %.sroa.01.0, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i16 %.sroa.5.0.extract.trunc.i, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i16 %i.r, ptr %.sroa.13.0..sroa_idx, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit, %bb.e
  %storemerge = phi i8 [ 0, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit ], [ 1, %bb.e ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData13enclosed_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !74 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i64, ptr %i.j, align 8, !noundef !6 ; 4 uses
  %i.l = icmp samesign ult i64 %i.k, 16
  br i1 %i.l, label %.preheader.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit

.preheader.i.i:                                   ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.b
  %.sroa.01.05.i.i = phi i64 [ %i.p, %bb.b ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.05.i.i
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !75, !noundef !6
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread10, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.p = add nuw nsw i64 %.sroa.01.05.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.p, %i.k
  br i1 %exitcond.not.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %bb.a
  %i.q = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.k)
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread10, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread: ; preds = %bb.b, %.preheader.i.i, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !76
  store i64 0, ptr %i.c, align 8, !noalias !76
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !76
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.t, align 8, !noalias !76
  store ptr %i.c, ptr %i.b, align 8, !noalias !76
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @25, ptr %i.u, align 8, !noalias !76
  %i.v = invoke noundef zeroext i1 @_RNvXsm_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !77

bb.c:                                             ; preds = %bb.e, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #17
          to label %common.resume unwind label %bb.f, !noalias !77

bb.d:                                             ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
  br i1 %i.v, label %bb.e, label %_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtB7_5boxed3BoxeENtB5_12SpecToString14spec_to_stringCs8yNfvVM1dno_3zip.exit, !prof !8

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #16
          to label %.noexc.i unwind label %bb.c, !noalias !77

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #15, !noalias !77
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.q, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %bb.c ], [ %lpad.loopexit.split-lp16, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtB7_5boxed3BoxeENtB5_12SpecToString14spec_to_stringCs8yNfvVM1dno_3zip.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !76
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !6, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  invoke void @_RNvMs16_NtCscAsMj0W7j8b_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread10: ; preds = %.lr.ph.i.i, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  store i64 -1, ptr %0, align 8
  br label %bb.l

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtB7_5boxed3BoxeENtB5_12SpecToString14spec_to_stringCs8yNfvVM1dno_3zip.exit
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECs8yNfvVM1dno_3zip(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #17
          to label %common.resume unwind label %bb.t

bb.g:                                             ; preds = %_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringINtNtB7_5boxed3BoxeENtB5_12SpecToString14spec_to_stringCs8yNfvVM1dno_3zip.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %bb.g
  %.sroa.04.0 = phi i64 [ 0, %bb.g ], [ %.sroa.04.1, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXsi_NtCscAsMj0W7j8b_3std4pathNtB5_10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %i.d, align 8, !range !13, !noundef !6 ; 2 uses
  %.not = icmp eq i8 %i.ac, -1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %narrow12 = call i8 @llvm.usub.sat.i8(i8 %i.ac, i8 5)
  switch i8 %narrow12, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.p
    i8 2, label %bb.m
    i8 3, label %bb.n
end_hunk_0
begin_hunk_1_@_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData23zip64_extra_field_block:bb.a
  br i1 %i.o, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.011.0.i = phi i64 [ 1, %bb.f ], [ 0, %bb.h ]
  %.sroa.07.2.i = phi i64 [ %.sroa.07.0.i, %bb.f ], [ %.sroa.07.1.i, %bb.h ]
  %.sroa.06.3.i = phi i64 [ %.sroa.06.1.i, %bb.f ], [ %.sroa.06.2.i, %bb.h ]
  %.sroa.0.3.i = phi i16 [ %i.n, %bb.f ], [ %.sroa.0.2.i, %bb.h ]
  store i64 %.sroa.06.3.i, ptr %0, align 8, !alias.scope !179
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.416.0..sroa_idx.i, align 8, !alias.scope !179
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.07.2.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !179
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.g, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !179
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.011.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !179
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !179
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 1, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !179
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i16 %.sroa.0.3.i, ptr %.sroa.10.0..sroa_idx.i, align 2, !alias.scope !179
  br label %_RNvMsi_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9maybe_new.exit

_RNvMsi_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9maybe_new.exit: ; preds = %bb.g, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5block(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !204 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit134, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ugt i64 %i.i, 65535
  br i1 %i.k, label %.thread144, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = trunc nuw i64 %i.i to i16
  br label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit134

.thread144:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !205
  store i8 2, ptr %i.b, align 1, !noalias !205
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit134: ; preds = %bb.a, %bb.c
  %.sroa.5.0.extract.shift.i130 = phi i16 [ %i.l, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !noundef !6 ; 2 uses
  %.not107 = icmp eq ptr %i.n, null
  br i1 %.not107, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit129, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit134
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noundef !6 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp samesign ugt i64 %i.p, 65535
  br i1 %i.r, label %.thread150, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = trunc nuw i64 %i.p to i16
  br label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit129

.thread150:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !206
  store i8 2, ptr %i.c, align 1, !noalias !206
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #16
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit129: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit134, %bb.e
  %.sroa.5.0.extract.shift.i125 = phi i16 [ %i.s, %bb.e ], [ 0, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit134 ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.06.0.copyload = load i16, ptr %i.t, align 4
  %i.u = trunc i16 %.sroa.06.0.copyload to i1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit129
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.57.0.copyload = load i16, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 198
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 2
  br label %switch.lookup

bb.g:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit129
  %i.v = tail call { i16, i16 } @_RNvMs3_NtCs8yNfvVM1dno_3zip5typesNtB5_8DateTime17default_for_write() ; 2 uses
  %i.w = extractvalue { i16, i16 } %i.v, 0
  %i.x = extractvalue { i16, i16 } %i.v, 1
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.g, %bb.f
  %.sroa.65.0 = phi i16 [ %.sroa.57.0.copyload, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.04.0 = phi i16 [ %.sroa.4.0.copyload, %bb.f ], [ %i.w, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load i16, ptr %i.z, align 8, !range !11, !noundef !6
  %.not.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i, label %bb.h, label %bb.i

default.unreachable169:                           ; preds = %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit
  unreachable

bb.h:                                             ; preds = %switch.lookup
  %i.ab = load i16, ptr %i.y, align 8, !range !11, !noundef !6
  %i.ac = shl nuw nsw i16 %i.ab, 4
  %switch.shiftamt = zext nneg i16 %i.ac to i48
  %switch.downshift = lshr i48 193274839050, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 202
  %i.ae = load i8, ptr %i.ad, align 2, !range !10, !noundef !6
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = tail call i16 @llvm.umax.i16(i16 %switch.masked, i16 20)
  %i.ah = select i1 %i.af, i16 %i.ag, i16 %switch.masked
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %switch.lookup
  %.sroa.01.0.i = phi i16 [ %i.ah, %bb.h ], [ 51, %switch.lookup ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 205
  %i.aj = load i8, ptr %i.ai, align 1, !range !10, !noundef !6
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.am = load i32, ptr %i.al, align 8, !noundef !6 ; 4 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 206
  %i.ap = load i8, ptr %i.ao, align 2, !range !12, !noundef !6
  switch i8 %i.ap, label %bb.l [
    i8 0, label %bb.m
    i8 3, label %bb.n
    i8 4, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aq = and i32 %i.am, 16
  %.not.i.i = icmp eq i32 %i.aq, 0
  %..i.i = select i1 %.not.i.i, i32 33204, i32 16893
  %i.ar = and i32 %i.am, 1
  %.not3.i.i = icmp eq i32 %i.ar, 0
  %.sroa.01.1.i.i = select i1 %.not3.i.i, i32 %..i.i, i32 0
  br label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i

bb.n:                                             ; preds = %bb.k
  %i.as = lshr i32 %i.am, 16
  br label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i

_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.sroa.5.0.i.i = phi i32 [ undef, %bb.j ], [ %.sroa.01.1.i.i, %bb.m ], [ %i.as, %bb.n ], [ undef, %bb.k ]
  %.not6.i = phi i1 [ true, %bb.j ], [ false, %bb.m ], [ false, %bb.n ], [ true, %bb.k ]
  %i.at = and i32 %.sroa.5.0.i.i, 16384
  %.not5.i = icmp eq i32 %i.at, 0
  %or.cond.i = or i1 %.not6.i, %.not5.i
  %spec.select.i = select i1 %or.cond.i, i16 10, i16 20
  br label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed.exit

_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed.exit: ; preds = %bb.i, %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i
  %.sroa.02.0.i = phi i16 [ 45, %bb.i ], [ %spec.select.i, %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData9unix_mode.exit.i ]
  %..i9.i = tail call noundef range(i16 10, 52) i16 @llvm.umax.i16(i16 %.sroa.02.0.i, i16 %.sroa.01.0.i) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 207
  %i.av = load i8, ptr %i.au, align 1, !noundef !6
  %i.aw = zext i8 %i.av to i16
  %..i = tail call noundef i16 @llvm.umax.i16(i16 %..i9.i, i16 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 206
  %i.ay = load i8, ptr %i.ax, align 2, !range !12, !noundef !6
  %i.az = zext nneg i8 %i.ay to i16
  %i.ba = shl nuw nsw i16 %i.az, 8
  %i.bb = or i16 %i.ba, %..i
  %i.bc = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %.val.i = load ptr, ptr %i.bc, align 8, !nonnull !6, !noundef !6
  %i.bd = getelementptr i8, ptr %1, i64 88        ; 3 uses
  %.val3.i = load i64, ptr %i.bd, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCshzWfHUSfYae_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val3.i)
  %i.be = load i64, ptr %i.a, align 8, !range !5, !noundef !6
  %i.bf = icmp eq i64 %i.be, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bf, label %bb.o, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.o:                                             ; preds = %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed.exit
  %.val4.i = load ptr, ptr %i.bc, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %.val5.i = load i64, ptr %i.bd, align 8, !noundef !6 ; 5 uses
  %i.bg = icmp samesign ult i64 %.val5.i, 64
  br i1 %i.bg, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = and i64 %.val5.i, 9223372036854775744
  %i.bi = getelementptr inbounds nuw i8, ptr %.val4.i, i64 %i.bh ; 3 uses
  %i.bj = and i64 %.val5.i, 63                    ; 2 uses
  br label %.lr.ph.i.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i, i64 64 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bi
  br i1 %i.bl, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %bb.p
  %.sroa.01.028.i.i.i.i = phi ptr [ %i.bk, %bb.q ], [ %.val4.i, %bb.p ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i.i.i, align 1, !alias.scope !207, !noalias !208
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i.i.i = load <2 x i64>, ptr %i.bm, align 1, !alias.scope !207, !noalias !209
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i.i.i = load <2 x i64>, ptr %i.bn, align 1, !alias.scope !207, !noalias !210
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i.i.i = load <2 x i64>, ptr %i.bo, align 1, !alias.scope !207, !noalias !211
  %i.bp = or <2 x i64> %.sroa.0.0.copyload.i9.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  %i.bq = or <2 x i64> %i.bp, %.sroa.0.0.copyload.i10.i.i.i.i
  %i.br = or <2 x i64> %i.bq, %.sroa.0.0.copyload.i11.i.i.i.i
  %i.bs = bitcast <2 x i64> %i.br to <16 x i8>
  %i.bt = icmp slt <16 x i8> %i.bs, zeroinitializer
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %i.bv = icmp eq i16 %i.bu, 0
  br i1 %i.bv, label %bb.q, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

._crit_edge.i.i.i.i:                              ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %i.bx = icmp samesign eq i64 %i.bj, 0
  br i1 %i.bx, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph

bb.r:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bw
  br i1 %i.bz, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i.i.i, %bb.r
  %i.ca = phi ptr [ %i.by, %bb.r ], [ %i.bi, %._crit_edge.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i = load i8, ptr %i.ca, align 1, !alias.scope !207, !noalias !212, !noundef !6
  %i.cb = icmp sgt i8 %.val.i.i.i.i.i, -1
  br i1 %i.cb, label %bb.r, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.s:                                             ; preds = %bb.o
  %i.cc = and i64 %.val5.i, 56                    ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val4.i, i64 %i.cc ; 7 uses
  %i.ce = and i64 %.val5.i, 7                     ; 7 uses
  %.not.i.i.i180 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i180, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yNfvVM1dno_3zip.exit.i.i.i

bb.t:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yNfvVM1dno_3zip.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i182, i64 8
  %2 = add nsw i64 %.sroa.6.0.i.i.i181, -8        ; 2 uses
  %.not.i.i.i.a = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.a, label %._crit_edge, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yNfvVM1dno_3zip.exit.i.i.i

._crit_edge:                                      ; preds = %bb.t, %bb.s
  %i.cg = icmp samesign eq i64 %i.ce, 0
  br i1 %i.cg, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph184

bb.u:                                             ; preds = %.lr.ph184
  %i.ch = icmp samesign eq i64 %i.ce, 1
  br i1 %i.ch, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph184.1

.lr.ph184.1:                                      ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %.val.i.i.i.i.1 = load i8, ptr %i.ci, align 1, !alias.scope !213, !noalias !214, !noundef !6
  %i.cj = icmp sgt i8 %.val.i.i.i.i.1, -1
  br i1 %i.cj, label %bb.v, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.v:                                             ; preds = %.lr.ph184.1
  %i.ck = icmp samesign eq i64 %i.ce, 2
  br i1 %i.ck, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph184.2

.lr.ph184.2:                                      ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %.val.i.i.i.i.2 = load i8, ptr %i.cl, align 1, !alias.scope !213, !noalias !214, !noundef !6
  %i.cm = icmp sgt i8 %.val.i.i.i.i.2, -1
  br i1 %i.cm, label %bb.w, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.w:                                             ; preds = %.lr.ph184.2
  %i.cn = icmp samesign eq i64 %i.ce, 3
  br i1 %i.cn, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph184.3

.lr.ph184.3:                                      ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %.val.i.i.i.i.3 = load i8, ptr %i.co, align 1, !alias.scope !213, !noalias !214, !noundef !6
  %i.cp = icmp sgt i8 %.val.i.i.i.i.3, -1
  br i1 %i.cp, label %bb.x, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.x:                                             ; preds = %.lr.ph184.3
  %i.cq = icmp samesign eq i64 %i.ce, 4
  br i1 %i.cq, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph184.4

.lr.ph184.4:                                      ; preds = %bb.x
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %.val.i.i.i.i.4 = load i8, ptr %i.cr, align 1, !alias.scope !213, !noalias !214, !noundef !6
  %i.cs = icmp sgt i8 %.val.i.i.i.i.4, -1
  br i1 %i.cs, label %bb.y, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.y:                                             ; preds = %.lr.ph184.4
  %i.ct = icmp samesign eq i64 %i.ce, 5
  br i1 %i.ct, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph184.5

.lr.ph184.5:                                      ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 5
  %.val.i.i.i.i.5 = load i8, ptr %i.cu, align 1, !alias.scope !213, !noalias !214, !noundef !6
  %i.cv = icmp sgt i8 %.val.i.i.i.i.5, -1
  br i1 %i.cv, label %bb.z, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

bb.z:                                             ; preds = %.lr.ph184.5
  %i.cw = icmp samesign eq i64 %i.ce, 6
  br i1 %i.cw, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, label %.lr.ph184.6

.lr.ph184.6:                                      ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  %.val.i.i.i.i.6 = load i8, ptr %i.cx, align 1, !alias.scope !213, !noalias !214, !noundef !6
  %i.cy = icmp sgt i8 %.val.i.i.i.i.6, -1
  %spec.select = select i1 %i.cy, i16 0, i16 2048
  br label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

.lr.ph184:                                        ; preds = %._crit_edge
  %.val.i.i.i.i = load i8, ptr %i.cd, align 1, !alias.scope !213, !noalias !214, !noundef !6
  %i.cz = icmp sgt i8 %.val.i.i.i.i, -1
  br i1 %i.cz, label %bb.u, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yNfvVM1dno_3zip.exit.i.i.i: ; preds = %bb.s, %bb.t
  %.sroa.0.017.i.i.i182 = phi ptr [ %i.cf, %bb.t ], [ %.val4.i, %bb.s ] ; 2 uses
  %.sroa.6.0.i.i.i181 = phi i64 [ %2, %bb.t ], [ %i.cc, %bb.s ]
  %.sroa.012.0.copyload.i.i.i = load i64, ptr %.sroa.0.017.i.i.i182, align 1, !alias.scope !213
  %i.da = and i64 %.sroa.012.0.copyload.i.i.i, -9187201950435737472
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.t, label %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit

_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit: ; preds = %.lr.ph184.6, %.lr.ph.i.i.i.i, %.lr.ph, %bb.r, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yNfvVM1dno_3zip.exit.i.i.i, %.lr.ph184, %bb.u, %.lr.ph184.1, %bb.v, %.lr.ph184.2, %bb.w, %.lr.ph184.3, %bb.x, %.lr.ph184.4, %bb.y, %.lr.ph184.5, %bb.z, %._crit_edge.i.i.i.i, %._crit_edge, %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed.exit
  %.sroa.0.0.i135 = phi i16 [ 0, %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData14version_needed.exit ], [ 0, %bb.r ], [ 2048, %.lr.ph.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i ], [ 0, %._crit_edge ], [ 2048, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8yNfvVM1dno_3zip.exit.i.i.i ], [ 2048, %.lr.ph184 ], [ 0, %bb.u ], [ 2048, %.lr.ph184.1 ], [ 0, %bb.v ], [ 2048, %.lr.ph184.2 ], [ 0, %bb.w ], [ 2048, %.lr.ph184.3 ], [ 0, %bb.x ], [ 2048, %.lr.ph184.4 ], [ 0, %bb.y ], [ 2048, %.lr.ph184.5 ], [ 0, %bb.z ], [ %spec.select, %.lr.ph184.6 ], [ 2048, %.lr.ph ]
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.dd = load i8, ptr %i.dc, align 4, !range !10, !noundef !6
  %i.de = shl nuw nsw i8 %i.dd, 3
  %i.df = zext nneg i8 %i.de to i16
  %.sroa.01.0.i136 = or disjoint i16 %.sroa.0.0.i135, %i.df
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 202
  %i.dh = load i8, ptr %i.dg, align 2, !range !10, !noundef !6
  %i.di = zext nneg i8 %i.dh to i16
  %.sroa.02.0.i137 = or disjoint i16 %.sroa.01.0.i136, %i.di
  %i.dj = load i16, ptr %i.y, align 8, !range !11, !noundef !6 ; 2 uses
  switch i16 %i.dj, label %default.unreachable169 [
    i16 0, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit117
    i16 1, label %bb.aa
    i16 2, label %bb.ab
  ]

bb.aa:                                            ; preds = %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit
  br label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit117

bb.ab:                                            ; preds = %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.dl = load i16, ptr %i.dk, align 2
  br label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit117

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit117: ; preds = %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit, %bb.ab, %bb.aa
  %.sroa.011.0 = phi i16 [ %i.dl, %bb.ab ], [ 8, %bb.aa ], [ %i.dj, %_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData5flags.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.dn = load i32, ptr %i.dm, align 4, !noundef !6
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dp = load i64, ptr %i.do, align 8, !noundef !6
  %..i138 = tail call noundef range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %i.dp, i64 4294967295)
  %.sroa.6.0.extract.trunc.i114 = trunc nuw i64 %..i138 to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !6
  %..i139 = tail call noundef range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %i.dr, i64 4294967295)
  %.sroa.6.0.extract.trunc.i109 = trunc nuw i64 %..i139 to i32
  %i.ds = load i64, ptr %i.bd, align 8, !noundef !6 ; 2 uses
  %i.dt = icmp ugt i64 %i.ds, 65535
  %i.du = trunc nuw nsw i64 %i.ds to i32
  %i.dv = shl nuw i32 %i.du, 16
  %.sroa.092.0.insert.insert = select i1 %i.dt, i32 513, i32 %i.dv ; 2 uses
  %i.dw = trunc i32 %.sroa.092.0.insert.insert to i1
  br i1 %i.dw, label %bb.ac, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit124, !prof !8

bb.ac:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !215
  store i8 2, ptr %i.d, align 1, !noalias !215
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #16
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit124: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit117
  %.sroa.5.0.extract.shift.i120 = lshr i32 %.sroa.092.0.insert.insert, 16
  %.sroa.5.0.extract.trunc.i121 = trunc nuw i32 %.sroa.5.0.extract.shift.i120 to i16
  %i.dx = add i16 %.sroa.5.0.extract.shift.i125, %.sroa.5.0.extract.shift.i130 ; 2 uses
  %i.dy = icmp ult i16 %i.dx, %.sroa.5.0.extract.shift.i130
  br i1 %i.dy, label %bb.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yNfvVM1dno_3zip6result8ZipErrorEBF_.exit, !prof !8

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yNfvVM1dno_3zip6result8ZipErrorEBF_.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit124
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !6 ; 2 uses
  %i.eb = icmp ugt i64 %i.ea, 65535
  %i.ec = trunc nuw nsw i64 %i.ea to i32
  %i.ed = shl nuw i32 %i.ec, 16
  %.sroa.095.0.insert.insert = select i1 %i.eb, i32 513, i32 %i.ed ; 2 uses
  %i.ee = trunc i32 %.sroa.095.0.insert.insert to i1
  br i1 %i.ee, label %bb.ad, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit, !prof !8

bb.ad:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yNfvVM1dno_3zip6result8ZipErrorEBF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !216
  store i8 2, ptr %i.e, align 1, !noalias !216
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #16
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yNfvVM1dno_3zip6result8ZipErrorEBF_.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !6
  %..i141 = tail call noundef range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %i.eg, i64 4294967295)
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ei = load i32, ptr %i.eh, align 8, !noundef !6
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.095.0.insert.insert, 16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %..i141 to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 33639248, ptr %i.ej, align 1
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i16 %i.bb, ptr %.sroa.59.0..sroa_idx, align 1
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i16 %..i9.i, ptr %.sroa.610.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i16 %.sroa.02.0.i137, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i16 %.sroa.011.0, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i16 %.sroa.65.0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i16 %.sroa.04.0, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i32 %i.dn, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i32 %.sroa.6.0.extract.trunc.i114, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i32 %.sroa.6.0.extract.trunc.i109, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i16 %.sroa.5.0.extract.trunc.i121, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i16 %i.dx, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i16 %.sroa.5.0.extract.trunc.i, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i16 0, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i32 %i.ei, ptr %.sroa.19.0..sroa_idx, align 1
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i32 %.sroa.6.0.extract.trunc.i, ptr %.sroa.20.0..sroa_idx, align 1
  br label %bb.af

bb.ae:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit124
  %.sroa.6.2.extract.shift = lshr i64 ptrtoint (ptr @15 to i64), 16
  %.sroa.6.2.extract.trunc = trunc nuw i64 %.sroa.6.2.extract.shift to i48
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.ek, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 ptrtoint (ptr @15 to i16), ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i48 %.sroa.6.2.extract.trunc, ptr %.sroa.577.0..sroa_idx, align 2
  %.sroa.577.sroa.4.0..sroa.577.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 53, ptr %.sroa.577.sroa.4.0..sroa.577.0..sroa_idx.sroa_idx, align 8
  br label %bb.af

bb.af:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit, %bb.ae
  %storemerge = phi i8 [ 0, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8yNfvVM1dno_3zip.exit ], [ 1, %bb.ae ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsd_NtCs8yNfvVM1dno_3zip5typesNtB5_11ZipFileData6is_dir(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 !guid !217 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvNtCs8yNfvVM1dno_3zip4spec6is_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMsj_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9serialize(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !218 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i16, ptr %i.i, align 8, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.l = load i16, ptr %i.k, align 2, !noundef !6 ; 3 uses
  %i.m = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !5, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !range !5, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8
  %.not.i = icmp eq i16 %i.l, 0
  br i1 %.not.i, label %bb.b, label %_RNvMsj_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9full_size.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #16
  unreachable

_RNvMsj_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9full_size.exit: ; preds = %bb.a
  %i.x = zext i16 %i.l to i64
  %i.y = add nuw nsw i64 %i.x, 4                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8yNfvVM1dno_3zip(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.y, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.z = load i64, ptr %i.f, align 8, !range !5, !noundef !6
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !14, !noundef !6 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %_RNvMsj_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9full_size.exit
  %i.ae = load i64, ptr %i.ad, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #18
  unreachable

bb.d:                                             ; preds = %_RNvMsj_NtCs8yNfvVM1dno_3zip5typesNtB5_20Zip64ExtraFieldBlock9full_size.exit
end_hunk_1
