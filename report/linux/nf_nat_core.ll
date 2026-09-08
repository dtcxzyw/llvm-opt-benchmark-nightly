Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nf_nat_core?download=true
inline.NumInlined: 134
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@nf_ct_nat_ext_add:bb.a
  %i.i = tail call ptr @nf_ct_ext_add(ptr noundef %0, i32 noundef 1, i32 noundef 2080) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %nfct_nat.exit.thread, %bb.c
  %.07 = phi ptr [ %i.e, %bb.b ], [ null, %nfct_nat.exit.thread ], [ %i.i, %bb.c ]
  ret ptr %.07
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @nf_ct_ext_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @nf_nat_setup_info(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 align 16 prefalign(16) {
nf_ct_is_confirmed.exit:
  %3 = alloca %struct.nf_conntrack_tuple, align 4 ; 7 uses
  %4 = alloca %struct.nf_conntrack_tuple, align 4 ; 5 uses
  %5 = alloca %struct.nf_conntrack_tuple, align 4 ; 5 uses
  %6 = alloca %struct.nf_conntrack_tuple, align 4 ; 5 uses
  %7 = alloca %struct.nf_conntrack_tuple, align 4 ; 22 uses
  %8 = alloca %struct.nf_conntrack_tuple, align 4 ; 41 uses
  %9 = alloca %struct.nf_conntrack_tuple, align 4 ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %.val = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.b = getelementptr i8, ptr %0, i64 128        ; 9 uses
  %i.c = load volatile i64, ptr %i.b, align 8     ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.a, label %bb.by

bb.a:                                             ; preds = %nf_ct_is_confirmed.exit
  %i.e = icmp ugt i32 %2, 1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1041: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1041b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1041) #13, !srcloc !19
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 777, i32 2305, i64 16) #13, !srcloc !20
  tail call void asm sideeffect "1042: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1042b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1042) #13, !srcloc !21
  %.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i64 [ %.pre, %bb.b ], [ %i.c, %bb.a ]
  %i.g = icmp eq i32 %2, 0                        ; 12 uses
  %i.h = trunc i64 %i.f to i32
  %..i = select i1 %i.g, i32 128, i32 256
  %i.i = and i32 %..i, %i.h
  %.not38 = icmp eq i32 %i.i, 0
  br i1 %.not38, label %.critedge, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "1043: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1043b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1043) #13, !srcloc !22
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 779, i32 2305, i64 16) #13, !srcloc !23
  tail call void asm sideeffect "1044: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1044b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1044) #13, !srcloc !24
  br label %bb.by

.critedge:                                        ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %7, i8 0, i64 40, i1 false), !annotation !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %8, i8 0, i64 40, i1 false), !annotation !12
  %i.j = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.k = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %7, ptr noundef %i.j) #12 ; 0 uses
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  br i1 %i.g, label %bb.e, label %find_appropriate_src.exit.thread.i

bb.e:                                             ; preds = %.critedge
  %i.l = load i32, ptr %1, align 4
  %i.m = and i32 %i.l, 20
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %find_appropriate_src.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.n = call fastcc i32 @nf_in_range(ptr noundef nonnull %7, ptr noundef readonly %1) #14, !srcloc !25
  %.not40.i = icmp eq i32 %i.n, 0
  br i1 %.not40.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call fastcc zeroext i1 @nf_nat_used_tuple_new(ptr noundef nonnull %7, ptr noundef %0) #14, !srcloc !26
  br i1 %i.o, label %find_appropriate_src.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %8, ptr noundef nonnull align 4 dereferenceable(40) %7, i64 40, i1 false)
  br label %get_unique_tuple.exit

bb.i:                                             ; preds = %bb.f
  %i.p = call fastcc i32 @hash_by_src(ptr noundef readonly %.val.i, ptr noundef nonnull readonly %7) #14
  %i.q = load ptr, ptr @nf_nat_bysource, align 8
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load volatile ptr, ptr %i.s, align 8     ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr i8, ptr %i.t, i64 -144     ; 2 uses
  %.not3769.i.i = icmp eq ptr %i.u, null
  %.not376.i.i = or i1 %.not.i.i, %.not3769.i.i
  br i1 %.not376.i.i, label %find_appropriate_src.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 38
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 20
  br label %bb.j

bb.j:                                             ; preds = %same_src.exit.thread.i.i, %.lr.ph.i.i
  %.0347.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.ar, %same_src.exit.thread.i.i ] ; 7 uses
  %i.aa = getelementptr i8, ptr %.0347.i.i, i64 70
  %i.ab = load i8, ptr %i.aa, align 2
  %i.ac = load i8, ptr %i.v, align 2
  %i.ad = icmp eq i8 %i.ab, %i.ac
  br i1 %i.ad, label %bb.k, label %same_src.exit.thread.i.i

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %.0347.i.i, i64 32
  %.val.i.i.i = load i64, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %.0347.i.i, i64 40
  %.val7.i.i.i = load i64, ptr %i.af, align 8
  %.val8.i.i.i = load i64, ptr %7, align 8
  %.val9.i.i.i = load i64, ptr %i.w, align 8
  %i.ag = icmp ne i64 %.val.i.i.i, %.val8.i.i.i
  %i.ah = icmp ne i64 %.val7.i.i.i, %.val9.i.i.i
  %.not12.i.i.i = or i1 %i.ag, %i.ah
  br i1 %.not12.i.i.i, label %same_src.exit.thread.i.i, label %same_src.exit.i.i

same_src.exit.i.i:                                ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %.0347.i.i, i64 48
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = load i16, ptr %i.x, align 8
  %.not4.i.i = icmp eq i16 %i.aj, %i.ak
  br i1 %.not4.i.i, label %bb.l, label %same_src.exit.thread.i.i

bb.l:                                             ; preds = %same_src.exit.i.i
  %i.al = getelementptr i8, ptr %.0347.i.i, i64 136
  %.034.val.i.i = load ptr, ptr %i.al, align 8
  %.not5.i.i = icmp eq ptr %.val.i, %.034.val.i.i
  br i1 %.not5.i.i, label %bb.m, label %same_src.exit.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %.0347.i.i, i64 88
  %i.an = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %8, ptr noundef %i.am) #12 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.y, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.z, i64 20, i1 false)
  %i.ao = call fastcc i32 @nf_in_range(ptr noundef nonnull %8, ptr noundef readonly %1) #14, !srcloc !27
  %.not40.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not40.i.i, label %same_src.exit.thread.i.i, label %find_appropriate_src.exit.i

same_src.exit.thread.i.i:                         ; preds = %bb.m, %bb.l, %same_src.exit.i.i, %bb.k, %bb.j
  %i.ap = getelementptr i8, ptr %.0347.i.i, i64 144
  %i.aq = load volatile ptr, ptr %i.ap, align 8   ; 2 uses
  %.not41.i.i = icmp eq ptr %i.aq, null
  %i.ar = getelementptr i8, ptr %i.aq, i64 -144   ; 2 uses
  %.not3711.i.i = icmp eq ptr %i.ar, null
  %.not37.i.i = or i1 %.not41.i.i, %.not3711.i.i
  br i1 %.not37.i.i, label %find_appropriate_src.exit.thread.i, label %bb.j

find_appropriate_src.exit.i:                      ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %6, i8 0, i64 40, i1 false), !annotation !12
  %i.as = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %6, ptr noundef nonnull %8) #12 ; 0 uses
  %i.at = call i32 @nf_conntrack_tuple_taken(ptr noundef nonnull %6, ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.not42.i = icmp eq i32 %i.at, 0
  br i1 %.not42.i, label %get_unique_tuple.exit, label %find_appropriate_src.exit.thread.i

find_appropriate_src.exit.thread.i:               ; preds = %same_src.exit.thread.i.i, %find_appropriate_src.exit.i, %bb.i, %bb.g, %bb.e, %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %8, ptr noundef nonnull align 4 dereferenceable(40) %7, i64 40, i1 false)
  %i.au = load i32, ptr %1, align 4               ; 5 uses
  %i.av = and i32 %i.au, 1
  %.not.i48.i = icmp eq i32 %i.av, 0
  br i1 %.not.i48.i, label %find_best_ips_proto.exit.i, label %bb.n

bb.n:                                             ; preds = %find_appropriate_src.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 3 uses
  %.042.i.i = select i1 %i.g, ptr %8, ptr %i.aw   ; 3 uses
  %i.ax = getelementptr i8, ptr %1, i64 4         ; 4 uses
  %i.ay = getelementptr i8, ptr %1, i64 20        ; 3 uses
  %.val.i.i = load i64, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %1, i64 12
  %.val48.i.i = load i64, ptr %i.az, align 8
  %.val49.i.i = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %1, i64 28
  %.val50.i.i = load i64, ptr %i.ba, align 8
  %i.bb = icmp ne i64 %.val.i.i, %.val49.i.i
  %i.bc = icmp ne i64 %.val48.i.i, %.val50.i.i
  %.not3.i.i = or i1 %i.bb, %i.bc
  br i1 %.not3.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.042.i.i, ptr noundef readonly align 4 dereferenceable(16) %i.ax, i64 16, i1 false)
  br label %find_best_ips_proto.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %0, i64 50
  %.val51.i.i = load i16, ptr %i.bd, align 2
  %i.be = icmp eq i16 %.val51.i.i, 2              ; 3 uses
  %..i.i = select i1 %i.be, i32 0, i32 3          ; 2 uses
  %i.bf = and i32 %i.au, 8
  %.not44.i.i = icmp eq i32 %i.bf, 0              ; 2 uses
  br i1 %.not44.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %10 = zext nneg i32 %..i.i to i64
  %i.bg = getelementptr [4 x i8], ptr %i.aw, i64 %10
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = load i16, ptr @nf_ct_zone_dflt, align 2
  %i.bj = zext i16 %i.bi to i32
  %i.bk = xor i32 %i.bh, %i.bj
  %i.bl = add i32 %i.bk, -559038721
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bm = phi i32 [ %i.bl, %bb.q ], [ -559038721, %bb.p ] ; 2 uses
  %i.bn = load i32, ptr %8, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = add i32 %i.bp, %i.bm                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %i.bt = add i32 %i.bs, %i.bm                    ; 3 uses
  %i.bu = sub i32 %i.bn, %i.bs
  %i.bv = call noundef i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 4)
  %i.bw = xor i32 %i.bv, %i.bu                    ; 4 uses
  %i.bx = add i32 %i.bt, %i.bq                    ; 2 uses
  %i.by = sub i32 %i.bq, %i.bw
  %i.bz = call noundef i32 @llvm.fshl.i32(i32 %i.bw, i32 %i.bw, i32 6)
  %i.ca = xor i32 %i.by, %i.bz                    ; 4 uses
  %i.cb = add i32 %i.bw, %i.bx                    ; 2 uses
  %i.cc = sub i32 %i.bx, %i.ca
  %i.cd = call noundef i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 8)
  %i.ce = xor i32 %i.cc, %i.cd                    ; 4 uses
  %i.cf = add i32 %i.ca, %i.cb                    ; 2 uses
  %i.cg = sub i32 %i.cb, %i.ce
  %i.ch = call noundef i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 16)
  %i.ci = xor i32 %i.cg, %i.ch                    ; 4 uses
  %i.cj = add i32 %i.ce, %i.cf                    ; 2 uses
  %i.ck = sub i32 %i.cf, %i.ci
  %i.cl = call noundef i32 @llvm.fshl.i32(i32 %i.ci, i32 %i.ci, i32 19)
  %i.cm = xor i32 %i.ck, %i.cl                    ; 4 uses
  %i.cn = add i32 %i.ci, %i.cj                    ; 2 uses
  %i.co = sub i32 %i.cj, %i.cm
  %i.cp = call noundef i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 4)
  %i.cq = xor i32 %i.co, %i.cp
  %i.cr = add i32 %i.cm, %i.cn                    ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = add i32 %i.cn, %i.ct
  %i.cv = xor i32 %i.cq, %i.cr
  %i.cw = call noundef i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 14)
  %i.cx = sub i32 %i.cv, %i.cw                    ; 4 uses
  %i.cy = xor i32 %i.cx, %i.cu
  %i.cz = call noundef i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.cx, i32 11)
  %i.da = sub i32 %i.cy, %i.cz                    ; 4 uses
  %i.db = xor i32 %i.da, %i.cr
  %i.dc = call noundef i32 @llvm.fshl.i32(i32 %i.da, i32 %i.da, i32 25)
  %i.dd = sub i32 %i.db, %i.dc                    ; 4 uses
  %i.de = xor i32 %i.dd, %i.cx
  %i.df = call noundef i32 @llvm.fshl.i32(i32 %i.dd, i32 %i.dd, i32 16)
  %i.dg = sub i32 %i.de, %i.df                    ; 4 uses
  %i.dh = xor i32 %i.dg, %i.da
  %i.di = call noundef i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 4)
  %i.dj = sub i32 %i.dh, %i.di                    ; 3 uses
  %i.dk = xor i32 %i.dj, %i.dd
  %i.dl = call noundef i32 @llvm.fshl.i32(i32 %i.dj, i32 %i.dj, i32 14)
  %i.dm = sub i32 %i.dk, %i.dl                    ; 3 uses
  %i.dn = call noundef i32 @llvm.fshl.i32(i32 %i.dm, i32 %i.dm, i32 24)
  %i.do = xor i32 %i.dm, %i.dg
  %i.dp = sub i32 %i.do, %i.dn                    ; 3 uses
  %11 = add nuw nsw i32 %..i.i, 1                 ; 4 uses
  br i1 %.not44.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.r
  %i.dq = load i32, ptr %i.ax, align 4
  %i.dr = call i32 @llvm.bswap.i32(i32 %i.dq)     ; 2 uses
  %i.ds = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.dt = call i32 @llvm.bswap.i32(i32 %i.ds)
  %reass.sub67 = sub i32 %i.dt, %i.dr
  %i.du = add i32 %reass.sub67, 1
  %i.dv = zext i32 %i.du to i64
  %i.dw = zext i32 %i.dp to i64
  %i.dx = mul nuw i64 %i.dv, %i.dw
  %i.dy = lshr i64 %i.dx, 32
  %i.dz = trunc nuw i64 %i.dy to i32
  %i.ea = add i32 %i.dr, %i.dz
  %i.eb = call i32 @llvm.bswap.i32(i32 %i.ea)     ; 2 uses
  store i32 %i.eb, ptr %.042.i.i, align 4
  %.not46.i.i.us = icmp ne i32 %i.eb, %i.ds       ; 2 uses
  %i.ec = load i32, ptr %i.aw, align 4
  %i.ed = xor i32 %i.ec, %i.dp                    ; 2 uses
  br i1 %i.be, label %find_best_ips_proto.exit.i, label %.split.us.1

.split.us.1:                                      ; preds = %.split.us
  br i1 %.not46.i.i.us, label %.split.us._crit_edge.1, label %bb.s

bb.s:                                             ; preds = %.split.us.1
  %i.ee = getelementptr i8, ptr %1, i64 8
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = call i32 @llvm.bswap.i32(i32 %i.ef)     ; 2 uses
  %i.eh = getelementptr i8, ptr %1, i64 24
  %i.ei = load i32, ptr %i.eh, align 4            ; 2 uses
  %i.ej = call i32 @llvm.bswap.i32(i32 %i.ei)
  %reass.sub67.1 = sub i32 %i.ej, %i.eg
  %i.ek = add i32 %reass.sub67.1, 1
  %i.el = zext i32 %i.ek to i64
  br label %.split.us.2.a

.split.us._crit_edge.1:                           ; preds = %.split.us.1
  %.phi.trans.insert76.1 = getelementptr i8, ptr %1, i64 24
  %.pre77.1 = load i32, ptr %.phi.trans.insert76.1, align 4
  br label %.split.us.2.a

.split.us.2.a:                                    ; preds = %.split.us._crit_edge.1, %bb.s
  %i.em = phi i32 [ %i.ei, %bb.s ], [ %.pre77.1, %.split.us._crit_edge.1 ]
  %.039.i.i.us.1 = phi i32 [ %i.eg, %bb.s ], [ 0, %.split.us._crit_edge.1 ]
  %.036.i.i.us.1 = phi i64 [ %i.el, %bb.s ], [ 4294967295, %.split.us._crit_edge.1 ]
  %i.en = zext i32 %i.ed to i64
  %i.eo = mul nuw i64 %.036.i.i.us.1, %i.en
  %i.ep = lshr i64 %i.eo, 32
  %i.eq = trunc nuw i64 %i.ep to i32
  %i.er = add i32 %.039.i.i.us.1, %i.eq
  %i.es = call i32 @llvm.bswap.i32(i32 %i.er)     ; 2 uses
  %.042.i.i.sroa.sel105.v = select i1 %i.g, i64 4, i64 24
  %.042.i.i.sroa.sel105 = getelementptr inbounds nuw i8, ptr %8, i64 %.042.i.i.sroa.sel105.v
  store i32 %i.es, ptr %.042.i.i.sroa.sel105, align 4
  %.not46.i.i.us.1 = icmp ne i32 %i.es, %i.em
  %spec.select.i.i.us.1 = or i1 %.not46.i.i.us, %.not46.i.i.us.1 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = xor i32 %i.eu, %i.ed                    ; 2 uses
  %exitcond.not.i.i.us.1 = icmp eq i32 %11, 2
  br i1 %exitcond.not.i.i.us.1, label %find_best_ips_proto.exit.i, label %.split.us.2

.split.us.2:                                      ; preds = %.split.us.2.a
  br i1 %spec.select.i.i.us.1, label %.split.us._crit_edge.2, label %bb.t

bb.t:                                             ; preds = %.split.us.2
  %i.ew = getelementptr i8, ptr %1, i64 12
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = call i32 @llvm.bswap.i32(i32 %i.ex)     ; 2 uses
  %i.ez = getelementptr i8, ptr %1, i64 28
  %i.fa = load i32, ptr %i.ez, align 4            ; 2 uses
  %i.fb = call i32 @llvm.bswap.i32(i32 %i.fa)
  %reass.sub67.2 = sub i32 %i.fb, %i.ey
  %i.fc = add i32 %reass.sub67.2, 1
  %i.fd = zext i32 %i.fc to i64
  br label %.split.us.3.a

.split.us._crit_edge.2:                           ; preds = %.split.us.2
  %.phi.trans.insert76.2 = getelementptr i8, ptr %1, i64 28
  %.pre77.2 = load i32, ptr %.phi.trans.insert76.2, align 4
  br label %.split.us.3.a

.split.us.3.a:                                    ; preds = %.split.us._crit_edge.2, %bb.t
  %i.fe = phi i32 [ %i.fa, %bb.t ], [ %.pre77.2, %.split.us._crit_edge.2 ]
  %.039.i.i.us.2 = phi i32 [ %i.ey, %bb.t ], [ 0, %.split.us._crit_edge.2 ]
  %.036.i.i.us.2 = phi i64 [ %i.fd, %bb.t ], [ 4294967295, %.split.us._crit_edge.2 ]
  %i.ff = zext i32 %i.ev to i64
  %i.fg = mul nuw i64 %.036.i.i.us.2, %i.ff
  %i.fh = lshr i64 %i.fg, 32
  %i.fi = trunc nuw i64 %i.fh to i32
  %i.fj = add i32 %.039.i.i.us.2, %i.fi
  %i.fk = call i32 @llvm.bswap.i32(i32 %i.fj)     ; 2 uses
  %.042.i.i.sroa.sel108.v = select i1 %i.g, i64 8, i64 28
  %.042.i.i.sroa.sel108 = getelementptr inbounds nuw i8, ptr %8, i64 %.042.i.i.sroa.sel108.v
  store i32 %i.fk, ptr %.042.i.i.sroa.sel108, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = xor i32 %i.fm, %i.ev
  %exitcond.not.i.i.us.2 = icmp eq i32 %11, 3
  br i1 %exitcond.not.i.i.us.2, label %find_best_ips_proto.exit.i, label %.split.us.3

.split.us.3:                                      ; preds = %.split.us.3.a
  %.not46.i.i.us.2 = icmp ne i32 %i.fk, %i.fe
  %spec.select.i.i.us.2 = or i1 %spec.select.i.i.us.1, %.not46.i.i.us.2
  br i1 %spec.select.i.i.us.2, label %.split.us._crit_edge.3, label %bb.u

bb.u:                                             ; preds = %.split.us.3
  %i.fo = getelementptr i8, ptr %1, i64 16
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = call i32 @llvm.bswap.i32(i32 %i.fp)     ; 2 uses
  %i.fr = getelementptr i8, ptr %1, i64 32
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = call i32 @llvm.bswap.i32(i32 %i.fs)
  %reass.sub67.3 = sub i32 %i.ft, %i.fq
  %i.fu = add i32 %reass.sub67.3, 1
  %i.fv = zext i32 %i.fu to i64
  br label %.split.us._crit_edge.3

.split.us._crit_edge.3:                           ; preds = %.split.us.3, %bb.u
  %.039.i.i.us.3 = phi i32 [ %i.fq, %bb.u ], [ 0, %.split.us.3 ]
  %.036.i.i.us.3 = phi i64 [ %i.fv, %bb.u ], [ 4294967295, %.split.us.3 ]
  %i.fw = zext i32 %i.fn to i64
  %i.fx = mul nuw i64 %.036.i.i.us.3, %i.fw
  %i.fy = lshr i64 %i.fx, 32
  %i.fz = trunc nuw i64 %i.fy to i32
  %i.ga = add i32 %.039.i.i.us.3, %i.fz
  %i.gb = call i32 @llvm.bswap.i32(i32 %i.ga)
  %.042.i.i.sroa.sel111.v = select i1 %i.g, i64 12, i64 32
  %.042.i.i.sroa.sel111 = getelementptr inbounds nuw i8, ptr %8, i64 %.042.i.i.sroa.sel111.v
  store i32 %i.gb, ptr %.042.i.i.sroa.sel111, align 4
  br label %find_best_ips_proto.exit.i

.split:                                           ; preds = %bb.r
  %i.gc = zext i32 %i.dp to i64                   ; 4 uses
  %i.gd = load i32, ptr %i.ax, align 4
  %i.ge = call i32 @llvm.bswap.i32(i32 %i.gd)     ; 2 uses
  %i.gf = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.gg = call i32 @llvm.bswap.i32(i32 %i.gf)
  %reass.sub = sub i32 %i.gg, %i.ge
  %i.gh = add i32 %reass.sub, 1
  %i.gi = zext i32 %i.gh to i64
  %i.gj = mul nuw i64 %i.gi, %i.gc
  %i.gk = lshr i64 %i.gj, 32
  %i.gl = trunc nuw i64 %i.gk to i32
  %i.gm = add i32 %i.ge, %i.gl
  %i.gn = call i32 @llvm.bswap.i32(i32 %i.gm)     ; 2 uses
  %i.go = icmp ne i32 %i.gn, %i.gf                ; 2 uses
  store i32 %i.gn, ptr %.042.i.i, align 4
  br i1 %i.be, label %find_best_ips_proto.exit.i, label %bb.v

bb.v:                                             ; preds = %.split
  br i1 %i.go, label %._crit_edge.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gp = getelementptr i8, ptr %1, i64 8
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = call i32 @llvm.bswap.i32(i32 %i.gq)     ; 2 uses
  %i.gs = getelementptr i8, ptr %1, i64 24
  %i.gt = load i32, ptr %i.gs, align 4            ; 2 uses
  %i.gu = call i32 @llvm.bswap.i32(i32 %i.gt)
  %reass.sub.1 = sub i32 %i.gu, %i.gr
  %i.gv = add i32 %reass.sub.1, 1
  %i.gw = zext i32 %i.gv to i64
  br label %bb.x

._crit_edge.1:                                    ; preds = %bb.v
  %.phi.trans.insert.1 = getelementptr i8, ptr %1, i64 24
  %.pre75.1 = load i32, ptr %.phi.trans.insert.1, align 4
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.1, %bb.w
  %i.gx = phi i32 [ %i.gt, %bb.w ], [ %.pre75.1, %._crit_edge.1 ]
  %.039.i.i.1 = phi i32 [ %i.gr, %bb.w ], [ 0, %._crit_edge.1 ]
  %.036.i.i.1 = phi i64 [ %i.gw, %bb.w ], [ 4294967295, %._crit_edge.1 ]
  %i.gy = mul nuw i64 %.036.i.i.1, %i.gc
  %i.gz = lshr i64 %i.gy, 32
  %i.ha = trunc nuw i64 %i.gz to i32
  %i.hb = add i32 %.039.i.i.1, %i.ha
  %i.hc = call i32 @llvm.bswap.i32(i32 %i.hb)     ; 2 uses
  %.042.i.i.sroa.sel.v = select i1 %i.g, i64 4, i64 24
  %.042.i.i.sroa.sel = getelementptr inbounds nuw i8, ptr %8, i64 %.042.i.i.sroa.sel.v
  store i32 %i.hc, ptr %.042.i.i.sroa.sel, align 4
  %.not46.i.i.1 = icmp ne i32 %i.hc, %i.gx
  %spec.select.i.i.1 = or i1 %i.go, %.not46.i.i.1 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i32 %11, 2
  br i1 %exitcond.not.i.i.1, label %find_best_ips_proto.exit.i, label %12

12:                                               ; preds = %bb.x
  br i1 %spec.select.i.i.1, label %._crit_edge.2, label %bb.y

bb.y:                                             ; preds = %12
  %i.hd = getelementptr i8, ptr %1, i64 12
  %i.he = load i32, ptr %i.hd, align 4
  %i.hf = call i32 @llvm.bswap.i32(i32 %i.he)     ; 2 uses
  %i.hg = getelementptr i8, ptr %1, i64 28
  %i.hh = load i32, ptr %i.hg, align 4            ; 2 uses
  %i.hi = call i32 @llvm.bswap.i32(i32 %i.hh)
  %reass.sub.2 = sub i32 %i.hi, %i.hf
  %i.hj = add i32 %reass.sub.2, 1
  %i.hk = zext i32 %i.hj to i64
  br label %bb.z

._crit_edge.2:                                    ; preds = %12
  %.phi.trans.insert.2 = getelementptr i8, ptr %1, i64 28
  %.pre75.2 = load i32, ptr %.phi.trans.insert.2, align 4
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.2, %bb.y
  %i.hl = phi i32 [ %i.hh, %bb.y ], [ %.pre75.2, %._crit_edge.2 ]
  %.039.i.i.2 = phi i32 [ %i.hf, %bb.y ], [ 0, %._crit_edge.2 ]
  %.036.i.i.2 = phi i64 [ %i.hk, %bb.y ], [ 4294967295, %._crit_edge.2 ]
  %i.hm = mul nuw i64 %.036.i.i.2, %i.gc
  %i.hn = lshr i64 %i.hm, 32
  %i.ho = trunc nuw i64 %i.hn to i32
  %i.hp = add i32 %.039.i.i.2, %i.ho
  %i.hq = call i32 @llvm.bswap.i32(i32 %i.hp)     ; 2 uses
  %.042.i.i.sroa.sel99.v = select i1 %i.g, i64 8, i64 28
  %.042.i.i.sroa.sel99 = getelementptr inbounds nuw i8, ptr %8, i64 %.042.i.i.sroa.sel99.v
  store i32 %i.hq, ptr %.042.i.i.sroa.sel99, align 4
  %exitcond.not.i.i.2 = icmp eq i32 %11, 3
  br i1 %exitcond.not.i.i.2, label %find_best_ips_proto.exit.i, label %13

13:                                               ; preds = %bb.z
  %.not46.i.i.2 = icmp ne i32 %i.hq, %i.hl
  %spec.select.i.i.2 = or i1 %spec.select.i.i.1, %.not46.i.i.2
  br i1 %spec.select.i.i.2, label %._crit_edge.3, label %bb.aa

bb.aa:                                            ; preds = %13
  %i.hr = getelementptr i8, ptr %1, i64 16
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = call i32 @llvm.bswap.i32(i32 %i.hs)     ; 2 uses
  %i.hu = getelementptr i8, ptr %1, i64 32
  %i.hv = load i32, ptr %i.hu, align 4
  %i.hw = call i32 @llvm.bswap.i32(i32 %i.hv)
  %reass.sub.3 = sub i32 %i.hw, %i.ht
  %i.hx = add i32 %reass.sub.3, 1
  %i.hy = zext i32 %i.hx to i64
  br label %._crit_edge.3

._crit_edge.3:                                    ; preds = %13, %bb.aa
  %.039.i.i.3 = phi i32 [ %i.ht, %bb.aa ], [ 0, %13 ]
  %.036.i.i.3 = phi i64 [ %i.hy, %bb.aa ], [ 4294967295, %13 ]
  %i.hz = mul nuw i64 %.036.i.i.3, %i.gc
  %i.ia = lshr i64 %i.hz, 32
  %i.ib = trunc nuw i64 %i.ia to i32
  %i.ic = add i32 %.039.i.i.3, %i.ib
  %i.id = call i32 @llvm.bswap.i32(i32 %i.ic)
  %.042.i.i.sroa.sel102.v = select i1 %i.g, i64 12, i64 32
  %.042.i.i.sroa.sel102 = getelementptr inbounds nuw i8, ptr %8, i64 %.042.i.i.sroa.sel102.v
  store i32 %i.id, ptr %.042.i.i.sroa.sel102, align 4
  br label %find_best_ips_proto.exit.i

find_best_ips_proto.exit.i:                       ; preds = %.split, %bb.x, %bb.z, %._crit_edge.3, %.split.us, %.split.us.2.a, %.split.us.3.a, %.split.us._crit_edge.3, %bb.o, %find_appropriate_src.exit.thread.i
  %i.ie = and i32 %i.au, 20
  %.not43.i = icmp eq i32 %i.ie, 0
  br i1 %.not43.i, label %bb.ab, label %l4proto_in_range.exit.thread.i

bb.ab:                                            ; preds = %find_best_ips_proto.exit.i
  %i.if = and i32 %i.au, 2
  %.not44.i = icmp eq i32 %i.if, 0
  br i1 %.not44.i, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ig = and i32 %i.au, 32
  %.not46.i = icmp eq i32 %i.ig, 0
  br i1 %.not46.i, label %bb.ad, label %l4proto_in_range.exit.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.ih = getelementptr i8, ptr %1, i64 36        ; 3 uses
  %i.ii = getelementptr i8, ptr %1, i64 38        ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %8, i64 38
  %i.ik = load i8, ptr %i.ij, align 2
  switch i8 %i.ik, label %.l4proto_in_range.exit.thread61_crit_edge.i [
    i8 1, label %bb.ae
    i8 58, label %bb.ae
    i8 47, label %bb.af
    i8 6, label %bb.af
    i8 17, label %bb.af
    i8 -124, label %bb.af
  ]

.l4proto_in_range.exit.thread61_crit_edge.i:      ; preds = %bb.ad
  %.pre72.i = load i16, ptr %i.ih, align 4
  %.pre73.i = load i16, ptr %i.ii, align 2
  br label %l4proto_in_range.exit.thread61.i

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.il = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.im = load i16, ptr %i.il, align 4
  %i.in = call i16 @llvm.bswap.i16(i16 %i.im)     ; 2 uses
  %i.io = load i16, ptr %i.ih, align 4            ; 2 uses
  %i.ip = call i16 @llvm.bswap.i16(i16 %i.io)
  %.not15.i.i = icmp ult i16 %i.in, %i.ip
  br i1 %.not15.i.i, label %l4proto_in_range.exit.thread.i, label %l4proto_in_range.exit.i

bb.af:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %.0.in.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, i64 16, i64 36
  %.0.in.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %8, i64 %.0.in.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.0.i49.i = load i16, ptr %.0.in.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.iq = call i16 @llvm.bswap.i16(i16 %.0.i49.i) ; 2 uses
  %i.ir = load i16, ptr %i.ih, align 4            ; 2 uses
  %i.is = call i16 @llvm.bswap.i16(i16 %i.ir)
  %.not.i50.i = icmp ult i16 %i.iq, %i.is
  br i1 %.not.i50.i, label %l4proto_in_range.exit.thread.i, label %l4proto_in_range.exit.i

l4proto_in_range.exit.i:                          ; preds = %bb.af, %bb.ae
  %i.it = phi i16 [ %i.io, %bb.ae ], [ %i.ir, %bb.af ]
  %.sink.i.i = phi i16 [ %i.in, %bb.ae ], [ %i.iq, %bb.af ]
  %i.iu = load i16, ptr %i.ii, align 2            ; 2 uses
  %i.iv = call i16 @llvm.bswap.i16(i16 %i.iu)
  %.not63.i = icmp ugt i16 %.sink.i.i, %i.iv
  br i1 %.not63.i, label %l4proto_in_range.exit.thread.i, label %l4proto_in_range.exit.thread61.i

l4proto_in_range.exit.thread61.i:                 ; preds = %l4proto_in_range.exit.i, %.l4proto_in_range.exit.thread61_crit_edge.i
  %i.iw = phi i16 [ %.pre73.i, %.l4proto_in_range.exit.thread61_crit_edge.i ], [ %i.iu, %l4proto_in_range.exit.i ]
  %i.ix = phi i16 [ %.pre72.i, %.l4proto_in_range.exit.thread61_crit_edge.i ], [ %i.it, %l4proto_in_range.exit.i ]
  %i.iy = icmp eq i16 %i.ix, %i.iw
  br i1 %i.iy, label %get_unique_tuple.exit, label %bb.ag

bb.ag:                                            ; preds = %l4proto_in_range.exit.thread61.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !12
  %i.iz = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %5, ptr noundef nonnull %8) #12 ; 0 uses
  %i.ja = call i32 @nf_conntrack_tuple_taken(ptr noundef nonnull %5, ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.not47.i = icmp eq i32 %i.ja, 0
  br i1 %.not47.i, label %get_unique_tuple.exit, label %l4proto_in_range.exit.thread.i

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !12
  %i.jb = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %4, ptr noundef nonnull %8) #12 ; 0 uses
  %i.jc = call i32 @nf_conntrack_tuple_taken(ptr noundef nonnull %4, ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.not45.i = icmp eq i32 %i.jc, 0
  br i1 %.not45.i, label %get_unique_tuple.exit, label %l4proto_in_range.exit.thread.i

l4proto_in_range.exit.thread.i:                   ; preds = %bb.ah, %bb.ag, %l4proto_in_range.exit.i, %bb.af, %bb.ae, %bb.ac, %find_best_ips_proto.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %8, i64 38 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 2
  switch i8 %i.je, label %get_unique_tuple.exit [
    i8 1, label %bb.ai
    i8 58, label %bb.ai
    i8 17, label %bb.ak
    i8 6, label %bb.ak
    i8 -124, label %bb.ak
  ]

bb.ai:                                            ; preds = %l4proto_in_range.exit.thread.i, %l4proto_in_range.exit.thread.i
  %i.jf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.jg = load i32, ptr %1, align 4               ; 3 uses
  %i.jh = and i32 %i.jg, 2
  %.not62.i.i = icmp eq i32 %i.jh, 0
  br i1 %.not62.i.i, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ji = getelementptr i8, ptr %1, i64 36
  %i.jj = load i16, ptr %i.ji, align 4
  %i.jk = call i16 @llvm.bswap.i16(i16 %i.jj)
  %i.jl = zext i16 %i.jk to i32                   ; 2 uses
  %i.jm = getelementptr i8, ptr %1, i64 38
  %i.jn = load i16, ptr %i.jm, align 2
  %i.jo = call i16 @llvm.bswap.i16(i16 %i.jn)
  %i.jp = zext i16 %i.jo to i32
  %reass.sub69 = sub nsw i32 %i.jp, %i.jl
  %i.jq = add nsw i32 %reass.sub69, 1
  br label %bb.ar

bb.ak:                                            ; preds = %l4proto_in_range.exit.thread.i, %l4proto_in_range.exit.thread.i, %l4proto_in_range.exit.thread.i
  %.050.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, i64 16, i64 36
  %.050.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %8, i64 %.050.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v ; 4 uses
  %i.jr = load i32, ptr %1, align 4               ; 4 uses
  %i.js = and i32 %i.jr, 2
  %.not.i51.i = icmp eq i32 %i.js, 0
  br i1 %.not.i51.i, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.jt = icmp eq i32 %2, 1
  br i1 %i.jt, label %get_unique_tuple.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ju = load i16, ptr %.050.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.jv = call i16 @llvm.bswap.i16(i16 %i.ju)     ; 2 uses
  %i.jw = icmp ult i16 %i.jv, 1024
  br i1 %i.jw, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.jx = icmp samesign ult i16 %i.jv, 512        ; 2 uses
  %..i57.i = select i1 %i.jx, i32 1, i32 600
  %.65.i.i = select i1 %i.jx, i32 511, i32 424
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ak
  %i.jy = getelementptr i8, ptr %1, i64 36
  %i.jz = load i16, ptr %i.jy, align 4
  %i.ka = call i16 @llvm.bswap.i16(i16 %i.jz)     ; 2 uses
  %i.kb = zext i16 %i.ka to i32                   ; 2 uses
  %i.kc = getelementptr i8, ptr %1, i64 38
  %i.kd = load i16, ptr %i.kc, align 2
  %i.ke = call i16 @llvm.bswap.i16(i16 %i.kd)     ; 2 uses
  %i.kf = zext i16 %i.ke to i32                   ; 2 uses
  %i.kg = icmp ult i16 %i.ke, %i.ka
  br i1 %i.kg, label %bb.ap, label %bb.aq, !prof !10

bb.ap:                                            ; preds = %bb.ao
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.055.i.i = phi i32 [ %i.kf, %bb.ap ], [ %i.kb, %bb.ao ] ; 2 uses
  %.054.i.i = phi i32 [ %i.kb, %bb.ap ], [ %i.kf, %bb.ao ]
  %reass.sub68 = sub nsw i32 %.054.i.i, %.055.i.i
  %i.kh = add nsw i32 %reass.sub68, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am, %bb.aj, %bb.ai
  %i.ki = phi i32 [ %i.jg, %bb.aj ], [ %i.jg, %bb.ai ], [ %i.jr, %bb.aq ], [ %i.jr, %bb.an ], [ %i.jr, %bb.am ] ; 2 uses
  %.156.i.i = phi i32 [ %i.jl, %bb.aj ], [ 0, %bb.ai ], [ %.055.i.i, %bb.aq ], [ %..i57.i, %bb.an ], [ 1024, %bb.am ]
  %.151.i.i = phi ptr [ %i.jf, %bb.aj ], [ %i.jf, %bb.ai ], [ %.050.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.aq ], [ %.050.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.an ], [ %.050.v.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, %bb.am ] ; 2 uses
  %.0.i53.i = phi i32 [ %i.jq, %bb.aj ], [ 65536, %bb.ai ], [ %i.kh, %bb.aq ], [ %.65.i.i, %bb.an ], [ 64512, %bb.am ] ; 4 uses
  %i.kj = and i32 %i.ki, 32
  %.not63.i.i = icmp eq i32 %i.kj, 0
  br i1 %.not63.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kk = load i16, ptr %.151.i.i, align 2
  %i.kl = call i16 @llvm.bswap.i16(i16 %i.kk)
  %i.km = getelementptr i8, ptr %1, i64 40
  %i.kn = load i16, ptr %i.km, align 4
  %i.ko = call i16 @llvm.bswap.i16(i16 %i.kn)
  %i.kp = sub i16 %i.kl, %i.ko
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.kq = and i32 %i.ki, 20
  %i.kr = icmp ne i32 %i.kq, 0
  %i.ks = icmp ne i32 %2, 1
  %or.cond.i.i = or i1 %i.ks, %i.kr
  br i1 %or.cond.i.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.kt = call zeroext i16 @get_random_u16() #12
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.049.i.i = phi i16 [ %i.kp, %bb.as ], [ %i.kt, %bb.au ], [ 0, %bb.at ]
  %i.ku = getelementptr i8, ptr %0, i64 224
  %i.kv = getelementptr i8, ptr %0, i64 184
  %.not72.i66.i = icmp eq i32 %.0.i53.i, 0
  br i1 %.not72.i66.i, label %get_unique_tuple.exit, label %.lr.ph.i54.preheader.preheader.i

.lr.ph.i54.preheader.preheader.i:                 ; preds = %bb.av
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %.0.i53.i, i32 128)
  br label %.lr.ph.i54.preheader.i
end_hunk_0
