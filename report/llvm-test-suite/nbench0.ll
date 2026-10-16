Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/nbench0?download=true
inline.NumInlined: 93
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a
  %fwrite166 = call i64 @fwrite(ptr nonnull @.str.59, i64 36, i64 1, ptr %i.ji) ; 0 uses
  br label %output_string.exit92

output_string.exit92:                             ; preds = %output_string.exit89, %bb.bi
  %puts167 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %i.jj = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i93 = icmp eq i32 %i.jj, 0
  br i1 %.not.i93, label %output_string.exit95, label %bb.bj

bb.bj:                                            ; preds = %output_string.exit92
  %i.jk = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fwrite168 = call i64 @fwrite(ptr nonnull @.str.60, i64 52, i64 1, ptr %i.jk) ; 0 uses
  br label %output_string.exit95

output_string.exit95:                             ; preds = %output_string.exit92, %bb.bj
  %i.jl = load i32, ptr @global_allstats, align 4, !tbaa !7
  %.not = icmp eq i32 %i.jl, 0
  br i1 %.not, label %output_string.exit119, label %bb.bk

bb.bk:                                            ; preds = %output_string.exit95
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.jm = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i96 = icmp eq i32 %i.jm, 0
  br i1 %.not.i96, label %output_string.exit98, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jn = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputc = call i32 @fputc(i32 10, ptr %i.jn)     ; 0 uses
  br label %output_string.exit98

output_string.exit98:                             ; preds = %bb.bk, %bb.bl
  %puts170 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.jo = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i99 = icmp eq i32 %i.jo, 0
  br i1 %.not.i99, label %output_string.exit101, label %bb.bm

bb.bm:                                            ; preds = %output_string.exit98
  %i.jp = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fwrite171 = call i64 @fwrite(ptr nonnull @.str.62, i64 78, i64 1, ptr %i.jp) ; 0 uses
  br label %output_string.exit101

output_string.exit101:                            ; preds = %output_string.exit98, %bb.bm
  %i.jq = call i64 @time(ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.jr = call ptr @localtime(ptr noundef nonnull %i.c) #12
  %i.js = call ptr @asctime(ptr noundef %i.jr) #12
  %i.jt = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) @.str.63, ptr noundef %i.js) #12 ; 0 uses
  %i.ju = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull @buffer) ; 0 uses
  %i.jv = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i102 = icmp eq i32 %i.jv, 0
  br i1 %.not.i102, label %output_string.exit104, label %bb.bn

bb.bn:                                            ; preds = %output_string.exit101
  %i.jw = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i103 = call i32 @fputs(ptr nonnull @buffer, ptr %i.jw) ; 0 uses
  br label %output_string.exit104

output_string.exit104:                            ; preds = %output_string.exit101, %bb.bn
  %i.jx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef 1, i32 noundef 2, i32 noundef 4, i32 noundef 8, i32 noundef 1, i32 noundef 2, i32 noundef 4, i32 noundef 4) #12 ; 0 uses
  %i.jy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull @buffer) ; 0 uses
  %i.jz = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i105 = icmp eq i32 %i.jz, 0
  br i1 %.not.i105, label %output_string.exit107, label %bb.bo

bb.bo:                                            ; preds = %output_string.exit104
  %i.ka = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i106 = call i32 @fputs(ptr nonnull @buffer, ptr %i.ka) ; 0 uses
  br label %output_string.exit107

output_string.exit107:                            ; preds = %output_string.exit104, %bb.bo
  %i.kb = load ptr, ptr @sysname, align 8, !tbaa !36
  %i.kc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef %i.kb) #12 ; 0 uses
  %i.kd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull @buffer) ; 0 uses
  %i.ke = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i108 = icmp eq i32 %i.ke, 0
  br i1 %.not.i108, label %output_string.exit110, label %bb.bp

bb.bp:                                            ; preds = %output_string.exit107
  %i.kf = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i109 = call i32 @fputs(ptr nonnull @buffer, ptr %i.kf) ; 0 uses
  br label %output_string.exit110

output_string.exit110:                            ; preds = %output_string.exit107, %bb.bp
  %i.kg = load ptr, ptr @compilername, align 8, !tbaa !36
  %i.kh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef %i.kg) #12 ; 0 uses
  %i.ki = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull @buffer) ; 0 uses
  %i.kj = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i111 = icmp eq i32 %i.kj, 0
  br i1 %.not.i111, label %output_string.exit113, label %bb.bq

bb.bq:                                            ; preds = %output_string.exit110
  %i.kk = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i112 = call i32 @fputs(ptr nonnull @buffer, ptr %i.kk) ; 0 uses
  br label %output_string.exit113

output_string.exit113:                            ; preds = %output_string.exit110, %bb.bq
  %i.kl = load ptr, ptr @compilerversion, align 8, !tbaa !36
  %i.km = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef %i.kl) #12 ; 0 uses
  %i.kn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull @buffer) ; 0 uses
  %i.ko = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i114 = icmp eq i32 %i.ko, 0
  br i1 %.not.i114, label %output_string.exit116, label %bb.br

bb.br:                                            ; preds = %output_string.exit113
  %i.kp = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i115 = call i32 @fputs(ptr nonnull @buffer, ptr %i.kp) ; 0 uses
  br label %output_string.exit116

output_string.exit116:                            ; preds = %output_string.exit113, %bb.br
  %puts172 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %i.kq = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i117 = icmp eq i32 %i.kq, 0
  br i1 %.not.i117, label %output_string.exit119, label %bb.bs

bb.bs:                                            ; preds = %output_string.exit116
  %i.kr = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fwrite173 = call i64 @fwrite(ptr nonnull @.str.66, i64 78, i64 1, ptr %i.kr) ; 0 uses
  br label %output_string.exit119

output_string.exit119:                            ; preds = %bb.bs, %output_string.exit116, %output_string.exit95
  %puts174 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.ks = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i120 = icmp eq i32 %i.ks, 0
  br i1 %.not.i120, label %output_string.exit122.preheader, label %bb.bt

bb.bt:                                            ; preds = %output_string.exit119
  %i.kt = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fwrite175 = call i64 @fwrite(ptr nonnull @.str.67, i64 67, i64 1, ptr %i.kt) ; 0 uses
  br label %output_string.exit122.preheader

output_string.exit122.preheader:                  ; preds = %output_string.exit119, %bb.bt
  br label %output_string.exit122

output_string.exit122:                            ; preds = %output_string.exit122.preheader, %output_string.exit138
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %output_string.exit138 ], [ 0, %output_string.exit122.preheader ] ; 5 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr @tests_to_do, i64 %indvars.iv189
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !7
  %.not72 = icmp eq i32 %i.kv, 0
  br i1 %.not72, label %output_string.exit138, label %bb.bu

bb.bu:                                            ; preds = %output_string.exit122
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr @ftestnames, i64 %indvars.iv189 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !36
  %i.ky = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) @.str.68, ptr noundef %i.kx) #12 ; 0 uses
  %i.kz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull @buffer) ; 0 uses
  %i.la = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i123 = icmp eq i32 %i.la, 0
  br i1 %.not.i123, label %output_string.exit125, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lb = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i124 = call i32 @fputs(ptr nonnull @buffer, ptr %i.lb) ; 0 uses
  br label %output_string.exit125

output_string.exit125:                            ; preds = %bb.bu, %bb.bv
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr @funcpointer, i64 %indvars.iv189
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !47
  call void %i.ld() #12
  %i.le = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) @.str.69, double noundef 0.000000e+00, double noundef 0.000000e+00) #12 ; 0 uses
  %i.lf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull @buffer) ; 0 uses
  %i.lg = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i126 = icmp eq i32 %i.lg, 0
  br i1 %.not.i126, label %output_string.exit128, label %bb.bw

bb.bw:                                            ; preds = %output_string.exit125
  %i.lh = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i127 = call i32 @fputs(ptr nonnull @buffer, ptr %i.lh) ; 0 uses
  br label %output_string.exit128

output_string.exit128:                            ; preds = %output_string.exit125, %bb.bw
  %i.li = load i32, ptr @global_allstats, align 4, !tbaa !7
  %.not73 = icmp eq i32 %i.li, 0
  br i1 %.not73, label %output_string.exit138, label %bb.bx

bb.bx:                                            ; preds = %output_string.exit128
  %i.lj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) @.str.70, double noundef undef) #12 ; 0 uses
  %i.lk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull @buffer) ; 0 uses
  %i.ll = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i129 = icmp eq i32 %i.ll, 0
  br i1 %.not.i129, label %output_string.exit131, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lm = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i130 = call i32 @fputs(ptr nonnull @buffer, ptr %i.lm) ; 0 uses
  br label %output_string.exit131

output_string.exit131:                            ; preds = %bb.bx, %bb.by
  %i.ln = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) @.str.72, i64 noundef undef) #12 ; 0 uses
  %i.lo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull @buffer) ; 0 uses
  %i.lp = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i132 = icmp eq i32 %i.lp, 0
  br i1 %.not.i132, label %output_string.exit134, label %bb.bz

bb.bz:                                            ; preds = %output_string.exit131
  %i.lq = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i133 = call i32 @fputs(ptr nonnull @buffer, ptr %i.lq) ; 0 uses
  br label %output_string.exit134

output_string.exit134:                            ; preds = %output_string.exit131, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.lr = trunc nuw nsw i64 %indvars.iv189 to i32
  switch i32 %i.lr, label %default.unreachable [
    i32 0, label %bb.ca
    i32 1, label %bb.cc
    i32 2, label %bb.ce
    i32 3, label %bb.cg
    i32 4, label %bb.ci
    i32 5, label %bb.cj
    i32 6, label %bb.ck
    i32 7, label %bb.cm
    i32 8, label %bb.co
    i32 9, label %bb.cp
  ]

bb.ca:                                            ; preds = %output_string.exit134
  %i.ls = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 24), align 8, !tbaa !43
  %i.lt = zext i16 %i.ls to i32
  %i.lu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.89, i32 noundef %i.lt) #12 ; 0 uses
  %i.lv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.lw = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i.i135 = icmp eq i32 %i.lw, 0
  br i1 %.not.i.i135, label %output_string.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lx = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i.i = call i32 @fputs(ptr nonnull %i.a, ptr %i.lx) ; 0 uses
  br label %output_string.exit.i

output_string.exit.i:                             ; preds = %bb.cb, %bb.ca
  %i.ly = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 32), align 8, !tbaa !28
  %i.lz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.90, i64 noundef %i.ly) #12 ; 0 uses
  %i.ma = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.mb = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i1.i = icmp eq i32 %i.mb, 0
  br i1 %.not.i1.i, label %show_stats.exit, label %output_string.exit3.sink.split.i

bb.cc:                                            ; preds = %output_string.exit134
  %i.mc = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !43
  %i.md = zext i16 %i.mc to i32
  %i.me = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.89, i32 noundef %i.md) #12 ; 0 uses
  %i.mf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.mg = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i4.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i4.i, label %output_string.exit6.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mh = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i5.i = call i32 @fputs(ptr nonnull %i.a, ptr %i.mh) ; 0 uses
  br label %output_string.exit6.i

output_string.exit6.i:                            ; preds = %bb.cd, %bb.cc
  %i.mi = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 32), align 8, !tbaa !28
  %i.mj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.90, i64 noundef %i.mi) #12 ; 0 uses
  %i.mk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.ml = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i7.i = icmp eq i32 %i.ml, 0
  br i1 %.not.i7.i, label %show_stats.exit, label %output_string.exit3.sink.split.i

bb.ce:                                            ; preds = %output_string.exit134
  %i.mm = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 24), align 8, !tbaa !44
  %i.mn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.91, i64 noundef %i.mm) #12 ; 0 uses
  %i.mo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.mp = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i10.i = icmp eq i32 %i.mp, 0
  br i1 %.not.i10.i, label %output_string.exit12.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mq = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i11.i = call i32 @fputs(ptr nonnull %i.a, ptr %i.mq) ; 0 uses
  br label %output_string.exit12.i

output_string.exit12.i:                           ; preds = %bb.cf, %bb.ce
  %i.mr = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_bitopstruct, i64 32), align 8, !tbaa !30
  %i.ms = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.92, i64 noundef %i.mr) #12 ; 0 uses
  %i.mt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.mu = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i13.i = icmp eq i32 %i.mu, 0
  br i1 %.not.i13.i, label %show_stats.exit, label %output_string.exit3.sink.split.i

bb.cg:                                            ; preds = %output_string.exit134
  %i.mv = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 24), align 8, !tbaa !45
  %i.mw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.93, i64 noundef %i.mv) #12 ; 0 uses
  %i.mx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.my = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i16.i = icmp eq i32 %i.my, 0
  br i1 %.not.i16.i, label %output_string.exit18.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mz = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i17.i = call i32 @fputs(ptr nonnull %i.a, ptr %i.mz) ; 0 uses
  br label %output_string.exit18.i

output_string.exit18.i:                           ; preds = %bb.ch, %bb.cg
  %i.na = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_emfloatstruct, i64 16), align 8, !tbaa !32
  %i.nb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.94, i64 noundef %i.na) #12 ; 0 uses
  %i.nc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.nd = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i19.i = icmp eq i32 %i.nd, 0
  br i1 %.not.i19.i, label %show_stats.exit, label %output_string.exit3.sink.split.i

bb.ci:                                            ; preds = %output_string.exit134
  %i.ne = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_fourierstruct, i64 16), align 8, !tbaa !46
  %i.nf = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.95, i64 noundef %i.ne) #12 ; 0 uses
  %i.ng = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.nh = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i22.i = icmp eq i32 %i.nh, 0
  br i1 %.not.i22.i, label %show_stats.exit, label %output_string.exit3.sink.split.i

bb.cj:                                            ; preds = %output_string.exit134
  %i.ni = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_assignstruct, i64 16), align 8, !tbaa !46
  %i.nj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.96, i64 noundef %i.ni) #12 ; 0 uses
  %i.nk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.nl = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i25.i = icmp eq i32 %i.nl, 0
  br i1 %.not.i25.i, label %show_stats.exit, label %output_string.exit3.sink.split.i

bb.ck:                                            ; preds = %output_string.exit134
  %i.nm = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 16), align 8, !tbaa !32
  %i.nn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.94, i64 noundef %i.nm) #12 ; 0 uses
  %i.no = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.np = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i28.i = icmp eq i32 %i.np, 0
  br i1 %.not.i28.i, label %output_string.exit30.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nq = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i29.i = call i32 @fputs(ptr nonnull %i.a, ptr %i.nq) ; 0 uses
  br label %output_string.exit30.i

output_string.exit30.i:                           ; preds = %bb.cl, %bb.ck
  %i.nr = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 24), align 8, !tbaa !45
  %i.ns = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.97, i64 noundef %i.nr) #12 ; 0 uses
  %i.nt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.nu = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i31.i = icmp eq i32 %i.nu, 0
  br i1 %.not.i31.i, label %show_stats.exit, label %output_string.exit3.sink.split.i

bb.cm:                                            ; preds = %output_string.exit134
  %i.nv = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 16), align 8, !tbaa !32
  %i.nw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.94, i64 noundef %i.nv) #12 ; 0 uses
  %i.nx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.ny = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i34.i = icmp eq i32 %i.ny, 0
  br i1 %.not.i34.i, label %output_string.exit36.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nz = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i35.i = call i32 @fputs(ptr nonnull %i.a, ptr %i.nz) ; 0 uses
  br label %output_string.exit36.i

output_string.exit36.i:                           ; preds = %bb.cn, %bb.cm
  %i.oa = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 24), align 8, !tbaa !45
  %i.ob = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.93, i64 noundef %i.oa) #12 ; 0 uses
  %i.oc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.od = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i37.i = icmp eq i32 %i.od, 0
  br i1 %.not.i37.i, label %show_stats.exit, label %output_string.exit3.sink.split.i

bb.co:                                            ; preds = %output_string.exit134
  %i.oe = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_nnetstruct, i64 16), align 8, !tbaa !46
  %i.of = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.93, i64 noundef %i.oe) #12 ; 0 uses
  %i.og = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.oh = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i40.i = icmp eq i32 %i.oh, 0
  br i1 %.not.i40.i, label %show_stats.exit, label %output_string.exit3.sink.split.i

bb.cp:                                            ; preds = %output_string.exit134
  %i.oi = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_lustruct, i64 16), align 8, !tbaa !46
  %i.oj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.96, i64 noundef %i.oi) #12 ; 0 uses
  %i.ok = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %i.a) ; 0 uses
  %i.ol = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i43.i = icmp eq i32 %i.ol, 0
  br i1 %.not.i43.i, label %show_stats.exit, label %output_string.exit3.sink.split.i

output_string.exit3.sink.split.i:                 ; preds = %bb.cp, %bb.co, %output_string.exit36.i, %output_string.exit30.i, %bb.cj, %bb.ci, %output_string.exit18.i, %output_string.exit12.i, %output_string.exit6.i, %output_string.exit.i
  %i.om = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i44.i = call i32 @fputs(ptr nonnull %i.a, ptr %i.om) ; 0 uses
  br label %show_stats.exit

default.unreachable:                              ; preds = %output_string.exit134
  unreachable

show_stats.exit:                                  ; preds = %output_string.exit.i, %output_string.exit6.i, %output_string.exit12.i, %output_string.exit18.i, %bb.ci, %bb.cj, %output_string.exit30.i, %output_string.exit36.i, %bb.co, %bb.cp, %output_string.exit3.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.on = load ptr, ptr %i.kw, align 8, !tbaa !36
  %i.oo = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) @.str.73, ptr noundef %i.on) #12 ; 0 uses
  %i.op = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull @buffer) ; 0 uses
  %i.oq = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i136 = icmp eq i32 %i.oq, 0
  br i1 %.not.i136, label %output_string.exit138, label %bb.cq

bb.cq:                                            ; preds = %show_stats.exit
  %i.or = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i137 = call i32 @fputs(ptr nonnull @buffer, ptr %i.or) ; 0 uses
  br label %output_string.exit138

output_string.exit138:                            ; preds = %bb.cq, %show_stats.exit, %output_string.exit122, %output_string.exit128
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next190, 10
  br i1 %exitcond192.not, label %bb.cr, label %output_string.exit122, !llvm.loop !14

bb.cr:                                            ; preds = %output_string.exit138
  %i.os = load i32, ptr @global_custrun, align 4, !tbaa !7
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %bb.cs, label %output_string.exit153

bb.cs:                                            ; preds = %bb.cr
  %puts176 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %i.ou = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i139 = icmp eq i32 %i.ou, 0
  br i1 %.not.i139, label %output_string.exit141, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ov = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fwrite177 = call i64 @fwrite(ptr nonnull @.str.74, i64 78, i64 1, ptr %i.ov) ; 0 uses
  br label %output_string.exit141

output_string.exit141:                            ; preds = %bb.cs, %bb.ct
  %i.ow = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) @.str.75, double noundef 0.000000e+00) #12 ; 0 uses
  %i.ox = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull @buffer) ; 0 uses
  %i.oy = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i142 = icmp eq i32 %i.oy, 0
  br i1 %.not.i142, label %output_string.exit144, label %bb.cu

bb.cu:                                            ; preds = %output_string.exit141
  %i.oz = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i143 = call i32 @fputs(ptr nonnull @buffer, ptr %i.oz) ; 0 uses
  br label %output_string.exit144

output_string.exit144:                            ; preds = %output_string.exit141, %bb.cu
  %i.pa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) @.str.76, double noundef 0.000000e+00) #12 ; 0 uses
  %i.pb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull @buffer) ; 0 uses
  %i.pc = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i145 = icmp eq i32 %i.pc, 0
  br i1 %.not.i145, label %output_string.exit147, label %bb.cv

bb.cv:                                            ; preds = %output_string.exit144
  %i.pd = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fputs.i146 = call i32 @fputs(ptr nonnull @buffer, ptr %i.pd) ; 0 uses
  br label %output_string.exit147

output_string.exit147:                            ; preds = %output_string.exit144, %bb.cv
  %puts178 = call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %i.pe = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i148 = icmp eq i32 %i.pe, 0
  br i1 %.not.i148, label %output_string.exit150, label %bb.cw

bb.cw:                                            ; preds = %output_string.exit147
  %i.pf = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fwrite179 = call i64 @fwrite(ptr nonnull @.str.77, i64 74, i64 1, ptr %i.pf) ; 0 uses
  br label %output_string.exit150

output_string.exit150:                            ; preds = %output_string.exit147, %bb.cw
  %puts180 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  %i.pg = load i32, ptr @write_to_file, align 4, !tbaa !7
  %.not.i151 = icmp eq i32 %i.pg, 0
  br i1 %.not.i151, label %output_string.exit153, label %bb.cx

bb.cx:                                            ; preds = %output_string.exit150
  %i.ph = load ptr, ptr @global_ofile, align 8, !tbaa !42
  %fwrite181 = call i64 @fwrite(ptr nonnull @.str.78, i64 54, i64 1, ptr %i.ph) ; 0 uses
  br label %output_string.exit153

output_string.exit153:                            ; preds = %bb.cx, %output_string.exit150, %bb.cr
  call void @exit(i32 noundef 0) #15
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree noreturn nounwind uwtable
define internal fastcc void @display_help(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef %0) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  tail call void @exit(i32 noundef 0) #15
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @asctime(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #9

declare void @ErrorExit() local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !40}
!9 = distinct !{!9, !40}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{!12, !40}
!13 = distinct !{!13, !40}
!14 = distinct !{!14, !40}
!15 = !{!"long", !5, i64 0}
end_hunk_0
