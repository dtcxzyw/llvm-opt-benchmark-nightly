Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/rust-demangle?download=true
inline.NumInlined: 217
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@rust_demangle_with_callback:sub_0
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jc
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !30
  %i.ji = add i8 %i.jh, -65
  %or.cond201 = icmp ult i8 %i.ji, 26
  br i1 %or.cond201, label %bb.bc, label %demangle_legacy_path.exit

bb.bc:                                            ; preds = %peek.exit
  store i8 1, ptr %i.h, align 1, !tbaa !25
  call fastcc void @demangle_path(ptr noundef %5, i1 noundef zeroext false)
  br label %demangle_legacy_path.exit

demangle_legacy_path.exit:                        ; preds = %eat.exit13.thread.i, %eat.exit.i, %bb.ba, %bb.bb, %peek.exit, %bb.bc
  %i.jj = load i8, ptr %i.g, align 8, !tbaa !24, !range !32, !noundef !33
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %demangle_legacy_path.exit
  %i.jl = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.jm = load i64, ptr %i.f, align 8, !tbaa !23  ; 3 uses
  %.not33 = icmp eq i64 %i.jl, %i.jm
  br i1 %.not33, label %.loopexit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jn = load ptr, ptr %5, align 8, !tbaa !28
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jm ; 3 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !30  ; 2 uses
  %.not34112 = icmp eq i8 %i.jp, 0
  br i1 %.not34112, label %._crit_edge, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.be, %bb.bg
  %i.jq = phi i8 [ %i.jw, %bb.bg ], [ %i.jp, %bb.be ] ; 3 uses
  %.0113 = phi ptr [ %i.jv, %bb.bg ], [ %i.jo, %bb.be ]
  %i.jr = and i8 %i.jq, -33
  %i.js = add i8 %i.jr, -65
  %or.cond87 = icmp ult i8 %i.js, 26
  br i1 %or.cond87, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph114
  %i.jt = add i8 %i.jq, -48
  %or.cond37 = icmp ult i8 %i.jt, 10
  %i.ju = icmp eq i8 %i.jq, 46
  %or.cond73 = or i1 %i.ju, %or.cond37
  br i1 %or.cond73, label %bb.bg, label %.loopexit

bb.bg:                                            ; preds = %bb.bf, %.lr.ph114
  %i.jv = getelementptr inbounds nuw i8, ptr %.0113, i64 1 ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !30  ; 2 uses
  %.not34 = icmp eq i8 %i.jw, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph114, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.bg, %bb.be
  %i.jx = load i8, ptr %i.h, align 1, !tbaa !25, !range !32, !noundef !33
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge
  %i.jz = sub i64 %i.jl, %i.jm
  %i.ka = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.kb = load ptr, ptr %i.d, align 8, !tbaa !21
  call void %i.ka(ptr noundef nonnull %i.jo, i64 noundef %i.jz, ptr noundef %i.kb) #12, !inline_history !0
  %.pre144 = load i8, ptr %i.g, align 8, !tbaa !24, !range !32
  %i.kc = trunc nuw i8 %.pre144 to i1
  %i.kd = xor i1 %i.kc, true
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.bf, %demangle_legacy_path.exit, %bb.bd, %._crit_edge, %bb.bh, %bb.a, %.tail83.thread
  %.2 = phi i1 [ false, %bb.bf ], [ false, %demangle_legacy_path.exit ], [ false, %bb.a ], [ false, %.tail83.thread ], [ %i.kd, %bb.bh ], [ true, %._crit_edge ], [ true, %bb.bd ], [ false, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
define internal fastcc void @demangle_path(ptr noundef nonnull %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 7 uses
  %2 = alloca %struct.rust_mangled_ident, align 8 ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %3 = alloca %struct.rust_mangled_ident, align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 25 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %common.ret304

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 29 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 13 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %peek.exit.i, label %next.exit.thread

peek.exit.i:                                      ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !28     ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30    ; 3 uses
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %next.exit.thread, label %next.exit

next.exit:                                        ; preds = %peek.exit.i
  %i.n = add nuw i64 %i.g, 1                      ; 11 uses
  store i64 %i.n, ptr %i.f, align 8, !tbaa !23
  switch i8 %i.m, label %next.exit.thread [
    i8 67, label %bb.d
    i8 78, label %bb.q
    i8 77, label %bb.aw
    i8 88, label %bb.aw
    i8 89, label %.thread
    i8 73, label %bb.bi
    i8 66, label %bb.ca
  ]

bb.d:                                             ; preds = %next.exit
  %i.o = icmp ult i64 %i.n, %i.i
  br i1 %i.o, label %peek.exit.i.i.i, label %parse_disambiguator.exit

peek.exit.i.i.i:                                  ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !tbaa !30
  %i.r = icmp eq i8 %i.q, 115
  br i1 %i.r, label %bb.e, label %parse_disambiguator.exit

bb.e:                                             ; preds = %peek.exit.i.i.i
  %i.s = add nuw i64 %i.g, 2                      ; 4 uses
  store i64 %i.s, ptr %i.f, align 8, !tbaa !23
  %i.t = icmp ult i64 %i.s, %i.i
  br i1 %i.t, label %peek.exit.i.i.i.i, label %eat.exit.i.i.i.preheader

eat.exit.i.i.i.preheader:                         ; preds = %peek.exit.i.i.i.i, %bb.e
  br label %eat.exit.i.i.i

peek.exit.i.i.i.i:                                ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %i.w = icmp eq i8 %i.v, 95
  br i1 %i.w, label %eat.exit.thread.i.i.i, label %eat.exit.i.i.i.preheader

eat.exit.thread.i.i.i:                            ; preds = %peek.exit.i.i.i.i
  %i.x = add nuw i64 %i.g, 3
  store i64 %i.x, ptr %i.f, align 8, !tbaa !23
  br label %parse_disambiguator.exit

eat.exit.i.i.i:                                   ; preds = %eat.exit.i.i.i.preheader, %bb.i
  %i.y = phi i64 [ %i.af, %bb.i ], [ %i.s, %eat.exit.i.i.i.preheader ] ; 6 uses
  %.027.i.i.i = phi i64 [ %.1.i.i.i, %bb.i ], [ 0, %eat.exit.i.i.i.preheader ] ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.i
  br i1 %i.z, label %peek.exit.i33.i.i.i, label %bb.f

peek.exit.i33.i.i.i:                              ; preds = %eat.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.y
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !30
  %i.ac = icmp eq i8 %i.ab, 95
  br i1 %i.ac, label %bb.j, label %bb.f

bb.f:                                             ; preds = %peek.exit.i33.i.i.i, %eat.exit.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %i.y, %i.i
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %peek.exit.i35.i.i.i

peek.exit.i35.i.i.i:                              ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.y
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !30  ; 5 uses
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i, label %next.exit.i.i.i

next.exit.i.i.i:                                  ; preds = %peek.exit.i35.i.i.i
  %i.af = add i64 %i.y, 1                         ; 2 uses
  store i64 %i.af, ptr %i.f, align 8, !tbaa !23
  %i.ag = mul i64 %.027.i.i.i, 62
  %i.ah = zext nneg i8 %i.ae to i64
  %i.ai = add i8 %i.ae, -48
  %or.cond.i.i.i = icmp ult i8 %i.ai, 10
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %next.exit.i.i.i
  %i.aj = add i8 %i.ae, -97
  %or.cond5.i.i.i = icmp ult i8 %i.aj, 26
  br i1 %or.cond5.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = add i8 %i.ae, -65
  %or.cond8.i.i.i = icmp ult i8 %i.ak, 26
  br i1 %or.cond8.i.i.i, label %bb.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.h, %peek.exit.i35.i.i.i, %bb.f
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %parse_disambiguator.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %next.exit.i.i.i
  %.sink.i.i.i = phi i64 [ 4294967248, %next.exit.i.i.i ], [ 4294967209, %bb.g ], [ 4294967267, %bb.h ]
  %i.al = add nuw nsw i64 %.sink.i.i.i, %i.ah
  %.pn.i.i.i = and i64 %i.al, 4294967295
  %.1.i.i.i = add i64 %.pn.i.i.i, %i.ag
  br label %eat.exit.i.i.i, !llvm.loop !1

bb.j:                                             ; preds = %peek.exit.i33.i.i.i
  %i.am = add nuw i64 %i.y, 1
  store i64 %i.am, ptr %i.f, align 8, !tbaa !23
  %i.an = add i64 %.027.i.i.i, 2
  br label %parse_disambiguator.exit

parse_disambiguator.exit:                         ; preds = %bb.d, %peek.exit.i.i.i, %eat.exit.thread.i.i.i, %.critedge.i.i.i, %bb.j
  %.0.i.i = phi i64 [ 0, %bb.d ], [ 0, %peek.exit.i.i.i ], [ 1, %eat.exit.thread.i.i.i ], [ 1, %.critedge.i.i.i ], [ %i.an, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call fastcc void @parse_ident(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0)
  tail call fastcc void @print_ident(ptr noundef %0, ptr noundef nonnull byval(%struct.rust_mangled_ident) align 8 %2)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !26, !range !32, !noundef !33
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.k, label %print_str.exit84

bb.k:                                             ; preds = %parse_disambiguator.exit
  %i.ar = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %print_str.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.au = load i8, ptr %i.at, align 1, !tbaa !25, !range !32, !noundef !33
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %print_str.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  tail call void %i.ax(ptr noundef nonnull @.str.28, i64 noundef 1, ptr noundef %i.az) #12, !inline_history !0
  br label %print_str.exit

print_str.exit:                                   ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ba = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.37, i64 noundef %.0.i.i) #12 ; 0 uses
  %i.bb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #13
  %i.bc = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %print_uint64_hex.exit.thread, label %bb.n

print_uint64_hex.exit.thread:                     ; preds = %print_str.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %print_str.exit84

bb.n:                                             ; preds = %print_str.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %print_uint64_hex.exit.thread238, label %print_uint64_hex.exit

print_uint64_hex.exit.thread238:                  ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

print_uint64_hex.exit:                            ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21
  call void %i.bi(ptr noundef nonnull %i.a, i64 noundef %i.bb, ptr noundef %i.bk) #12, !inline_history !53
  %.pre208 = load i8, ptr %i.c, align 8, !tbaa !24, !range !32
  %i.bl = trunc nuw i8 %.pre208 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %i.bl, label %print_str.exit84, label %bb.o

bb.o:                                             ; preds = %print_uint64_hex.exit.thread238, %print_uint64_hex.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %print_str.exit84, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !21
  call void %i.bq(ptr noundef nonnull @.str.29, i64 noundef 1, ptr noundef %i.bs) #12, !inline_history !0
  br label %print_str.exit84

print_str.exit84:                                 ; preds = %print_uint64_hex.exit.thread, %bb.p, %bb.o, %print_uint64_hex.exit, %parse_disambiguator.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %common.ret304

bb.q:                                             ; preds = %next.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bt = icmp ult i64 %i.n, %i.i
  br i1 %i.bt, label %peek.exit.i87, label %next.exit89.thread

peek.exit.i87:                                    ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !30  ; 5 uses
  %.not.i88 = icmp eq i8 %i.bv, 0
  br i1 %.not.i88, label %next.exit89.thread, label %next.exit89

next.exit89:                                      ; preds = %peek.exit.i87
  %i.bw = add nuw i64 %i.g, 2
  store i64 %i.bw, ptr %i.f, align 8, !tbaa !23
  store i8 %i.bv, ptr %i.b, align 1, !tbaa !30
  %i.bx = and i8 %i.bv, -33
  %i.by = add i8 %i.bx, -65
  %or.cond81 = icmp ult i8 %i.by, 26
  br i1 %or.cond81, label %bb.r, label %next.exit89.thread

next.exit89.thread:                               ; preds = %peek.exit.i87, %bb.q, %next.exit89
  store i8 1, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %common.ret304

bb.r:                                             ; preds = %next.exit89
  tail call fastcc void @demangle_path(ptr noundef %0, i1 noundef zeroext %1)
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !23  ; 4 uses
  %i.ca = load i64, ptr %i.h, align 8, !tbaa !20  ; 4 uses
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %peek.exit.i.i.i91, label %parse_disambiguator.exit108

peek.exit.i.i.i91:                                ; preds = %bb.r
  %i.cc = load ptr, ptr %0, align 8, !tbaa !28    ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bz
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !30
  %i.cf = icmp eq i8 %i.ce, 115
  br i1 %i.cf, label %bb.s, label %parse_disambiguator.exit108

bb.s:                                             ; preds = %peek.exit.i.i.i91
  %i.cg = add nuw i64 %i.bz, 1                    ; 4 uses
  store i64 %i.cg, ptr %i.f, align 8, !tbaa !23
  %i.ch = icmp ult i64 %i.cg, %i.ca
  br i1 %i.ch, label %peek.exit.i.i.i.i106, label %eat.exit.i.i.i92.preheader

eat.exit.i.i.i92.preheader:                       ; preds = %peek.exit.i.i.i.i106, %bb.s
  br label %eat.exit.i.i.i92

peek.exit.i.i.i.i106:                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cg
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !30
  %i.ck = icmp eq i8 %i.cj, 95
  br i1 %i.ck, label %eat.exit.thread.i.i.i107, label %eat.exit.i.i.i92.preheader

eat.exit.thread.i.i.i107:                         ; preds = %peek.exit.i.i.i.i106
  %i.cl = add nuw i64 %i.bz, 2
  store i64 %i.cl, ptr %i.f, align 8, !tbaa !23
  br label %parse_disambiguator.exit108

eat.exit.i.i.i92:                                 ; preds = %eat.exit.i.i.i92.preheader, %bb.w
  %i.cm = phi i64 [ %i.ct, %bb.w ], [ %i.cg, %eat.exit.i.i.i92.preheader ] ; 6 uses
  %.027.i.i.i93 = phi i64 [ %.1.i.i.i104, %bb.w ], [ 0, %eat.exit.i.i.i92.preheader ] ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.ca
  br i1 %i.cn, label %peek.exit.i33.i.i.i105, label %bb.t

peek.exit.i33.i.i.i105:                           ; preds = %eat.exit.i.i.i92
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cm
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !30
  %i.cq = icmp eq i8 %i.cp, 95
  br i1 %i.cq, label %bb.x, label %bb.t

bb.t:                                             ; preds = %peek.exit.i33.i.i.i105, %eat.exit.i.i.i92
  %exitcond.not.i.i.i94 = icmp eq i64 %i.cm, %i.ca
  br i1 %exitcond.not.i.i.i94, label %.critedge.i.i.i101, label %peek.exit.i35.i.i.i95

peek.exit.i35.i.i.i95:                            ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cm
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !30  ; 5 uses
  %.not.i.i.i.i96 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i96, label %.critedge.i.i.i101, label %next.exit.i.i.i97

next.exit.i.i.i97:                                ; preds = %peek.exit.i35.i.i.i95
  %i.ct = add i64 %i.cm, 1                        ; 2 uses
  store i64 %i.ct, ptr %i.f, align 8, !tbaa !23
  %i.cu = mul i64 %.027.i.i.i93, 62
  %i.cv = zext nneg i8 %i.cs to i64
  %i.cw = add i8 %i.cs, -48
  %or.cond.i.i.i98 = icmp ult i8 %i.cw, 10
  br i1 %or.cond.i.i.i98, label %bb.w, label %bb.u

bb.u:                                             ; preds = %next.exit.i.i.i97
  %i.cx = add i8 %i.cs, -97
  %or.cond5.i.i.i99 = icmp ult i8 %i.cx, 26
  br i1 %or.cond5.i.i.i99, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = add i8 %i.cs, -65
  %or.cond8.i.i.i100 = icmp ult i8 %i.cy, 26
  br i1 %or.cond8.i.i.i100, label %bb.w, label %.critedge.i.i.i101

.critedge.i.i.i101:                               ; preds = %bb.v, %peek.exit.i35.i.i.i95, %bb.t
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %parse_disambiguator.exit108

bb.w:                                             ; preds = %bb.v, %bb.u, %next.exit.i.i.i97
  %.sink.i.i.i102 = phi i64 [ 4294967248, %next.exit.i.i.i97 ], [ 4294967209, %bb.u ], [ 4294967267, %bb.v ]
  %i.cz = add nuw nsw i64 %.sink.i.i.i102, %i.cv
  %.pn.i.i.i103 = and i64 %i.cz, 4294967295
  %.1.i.i.i104 = add i64 %.pn.i.i.i103, %i.cu
  br label %eat.exit.i.i.i92, !llvm.loop !1

bb.x:                                             ; preds = %peek.exit.i33.i.i.i105
  %i.da = add nuw i64 %i.cm, 1
  store i64 %i.da, ptr %i.f, align 8, !tbaa !23
  %i.db = add i64 %.027.i.i.i93, 2
  br label %parse_disambiguator.exit108

parse_disambiguator.exit108:                      ; preds = %bb.r, %peek.exit.i.i.i91, %eat.exit.thread.i.i.i107, %.critedge.i.i.i101, %bb.x
  %.0.i.i90 = phi i64 [ 0, %bb.r ], [ 0, %peek.exit.i.i.i91 ], [ 1, %eat.exit.thread.i.i.i107 ], [ 1, %.critedge.i.i.i101 ], [ %i.db, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call fastcc void @parse_ident(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0)
  %i.dc = add i8 %i.bv, -65
  %or.cond8 = icmp ult i8 %i.dc, 26
  br i1 %or.cond8, label %bb.y, label %bb.as

bb.y:                                             ; preds = %parse_disambiguator.exit108
  %i.dd = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %print_str.exit109, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !25, !range !32, !noundef !33
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %print_str.exit109, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !21
  tail call void %i.dj(ptr noundef nonnull @.str.30, i64 noundef 3, ptr noundef %i.dl) #12, !inline_history !0
  br label %print_str.exit109

print_str.exit109:                                ; preds = %bb.y, %bb.z, %bb.aa
  %i.dm = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.dn = trunc nuw i8 %i.dm to i1                ; 3 uses
  switch i8 %i.bv, label %bb.ah [
    i8 67, label %bb.ab
    i8 83, label %bb.ae
  ]

bb.ab:                                            ; preds = %print_str.exit109
  br i1 %i.dn, label %print_str.exit110, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !25, !range !32, !noundef !33
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %print_str.exit110, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !22
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !21
  tail call void %i.ds(ptr noundef nonnull @.str.31, i64 noundef 7, ptr noundef %i.du) #12, !inline_history !0
  br label %print_str.exit110

bb.ae:                                            ; preds = %print_str.exit109
  br i1 %i.dn, label %print_str.exit110, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !25, !range !32, !noundef !33
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %print_str.exit110, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !22
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !21
  tail call void %i.dz(ptr noundef nonnull @.str.32, i64 noundef 4, ptr noundef %i.eb) #12, !inline_history !0
  br label %print_str.exit110

bb.ah:                                            ; preds = %print_str.exit109
  br i1 %i.dn, label %print_str.exit110, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %print_str.exit110, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !21
  call void %i.eg(ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef %i.ei) #12, !inline_history !0
  br label %print_str.exit110

print_str.exit110:                                ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.ej = load ptr, ptr %3, align 8, !tbaa !35
  %i.ek = icmp ne ptr %i.ej, null
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = icmp ne ptr %i.em, null
  %or.cond11 = select i1 %i.ek, i1 true, i1 %i.en
  %.pre207 = load i8, ptr %i.c, align 8, !tbaa !24, !range !32 ; 2 uses
  br i1 %or.cond11, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %print_str.exit110
  %i.eo = trunc nuw i8 %.pre207 to i1
  br i1 %i.eo, label %print_str.exit113, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !25, !range !32, !noundef !33
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %print_str.exit113, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !22
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !21
  call void %i.et(ptr noundef nonnull @.str.33, i64 noundef 1, ptr noundef %i.ev) #12, !inline_history !0
  br label %print_str.exit113

print_str.exit113:                                ; preds = %bb.ak, %bb.al, %bb.am
  call fastcc void @print_ident(ptr noundef %0, ptr noundef nonnull byval(%struct.rust_mangled_ident) align 8 %3)
  %.pre206 = load i8, ptr %i.c, align 8, !tbaa !24, !range !32
  br label %bb.an

bb.an:                                            ; preds = %print_str.exit110, %print_str.exit113
  %i.ew = phi i8 [ %.pre207, %print_str.exit110 ], [ %.pre206, %print_str.exit113 ]
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %print_str.exit114, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !25, !range !32, !noundef !33
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %print_str.exit114, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !22
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !21
  call void %i.fc(ptr noundef nonnull @.str.34, i64 noundef 1, ptr noundef %i.fe) #12, !inline_history !0
  br label %print_str.exit114

print_str.exit114:                                ; preds = %bb.an, %bb.ao, %bb.ap
  call fastcc void @print_uint64(ptr noundef %0, i64 noundef %.0.i.i90)
  %i.ff = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %.critedge83, label %bb.aq

bb.aq:                                            ; preds = %print_str.exit114
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !25, !range !32, !noundef !33
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.critedge83, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !22
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !21
  call void %i.fl(ptr noundef nonnull @.str.27, i64 noundef 1, ptr noundef %i.fn) #12, !inline_history !0
  br label %.critedge83

bb.as:                                            ; preds = %parse_disambiguator.exit108
  %i.fo = load ptr, ptr %3, align 8, !tbaa !35
  %i.fp = icmp ne ptr %i.fo, null
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = icmp ne ptr %i.fr, null
  %or.cond14 = select i1 %i.fp, i1 true, i1 %i.fs
  br i1 %or.cond14, label %bb.at, label %.critedge83

bb.at:                                            ; preds = %bb.as
  %i.ft = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %print_str.exit116, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !25, !range !32, !noundef !33
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %print_str.exit116, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !22
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !21
  tail call void %i.fz(ptr noundef nonnull @.str.7, i64 noundef 2, ptr noundef %i.gb) #12, !inline_history !0
  br label %print_str.exit116

print_str.exit116:                                ; preds = %bb.at, %bb.au, %bb.av
  tail call fastcc void @print_ident(ptr noundef %0, ptr noundef nonnull byval(%struct.rust_mangled_ident) align 8 %3)
  br label %.critedge83

.critedge83:                                      ; preds = %bb.ar, %bb.aq, %print_str.exit114, %print_str.exit116, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
end_hunk_0
begin_hunk_1_@demangle_path:bb.a
  tail call void %i.hp(ptr noundef nonnull @.str.35, i64 noundef 4, ptr noundef %i.hr) #12, !inline_history !0
  br label %print_str.exit137

print_str.exit137:                                ; preds = %bb.bc, %bb.bd, %bb.be
  tail call fastcc void @demangle_path(ptr noundef %0, i1 noundef zeroext false)
  br label %bb.bf

bb.bf:                                            ; preds = %print_str.exit137, %print_str.exit136
  %i.hs = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %common.ret304, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !25, !range !32, !noundef !33
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %common.ret304, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !22
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !21
  tail call void %i.hy(ptr noundef nonnull @.str.18, i64 noundef 1, ptr noundef %i.ia) #12, !inline_history !0
  br label %common.ret304

bb.bi:                                            ; preds = %next.exit
  tail call fastcc void @demangle_path(ptr noundef %0, i1 noundef zeroext %1)
  %.pre201 = load i8, ptr %i.c, align 8, !tbaa !24, !range !32 ; 2 uses
  br i1 %1, label %bb.bj, label %print_str.exit139

bb.bj:                                            ; preds = %bb.bi
  %i.ib = trunc nuw i8 %.pre201 to i1
  br i1 %i.ib, label %common.ret304, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %print_str.exit139.thread240, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !22
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !21
  tail call void %i.ig(ptr noundef nonnull @.str.7, i64 noundef 2, ptr noundef %i.ii) #12, !inline_history !0
  %.pre = load i8, ptr %i.c, align 8, !tbaa !24, !range !32
  br label %print_str.exit139

print_str.exit139:                                ; preds = %bb.bl, %bb.bi
  %i.ij = phi i8 [ %.pre, %bb.bl ], [ %.pre201, %bb.bi ]
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %common.ret304, label %print_str.exit139.thread240

print_str.exit139.thread240:                      ; preds = %bb.bk, %print_str.exit139
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.im = load i8, ptr %i.il, align 1, !tbaa !25, !range !32, !noundef !33
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %.lr.ph, label %print_str.exit140

print_str.exit140:                                ; preds = %print_str.exit139.thread240
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !22
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !21
  tail call void %i.ip(ptr noundef nonnull @.str.16, i64 noundef 1, ptr noundef %i.ir) #12, !inline_history !0
  %.pre202 = load i8, ptr %i.c, align 8, !tbaa !24, !range !32
  %i.is = trunc nuw i8 %.pre202 to i1
  br i1 %i.is, label %common.ret304, label %.lr.ph

.lr.ph:                                           ; preds = %print_str.exit139.thread240, %print_str.exit140
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph, %demangle_generic_arg.exit
  %.0185 = phi i64 [ 0, %.lr.ph ], [ %i.ku, %demangle_generic_arg.exit ] ; 2 uses
  %i.iw = load i64, ptr %i.f, align 8, !tbaa !23  ; 5 uses
  %i.ix = load i64, ptr %i.h, align 8, !tbaa !20  ; 3 uses
  %i.iy = icmp ult i64 %i.iw, %i.ix
  br i1 %i.iy, label %peek.exit.i142, label %bb.bp

peek.exit.i142:                                   ; preds = %bb.bm
  %i.iz = load ptr, ptr %0, align 8, !tbaa !28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iw
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !30
  %i.jc = icmp eq i8 %i.jb, 69
  br i1 %i.jc, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %peek.exit.i142
  %i.jd = add nuw i64 %i.iw, 1
  store i64 %i.jd, ptr %i.f, align 8, !tbaa !23
  %i.je = load i8, ptr %i.it, align 1, !tbaa !25, !range !32, !noundef !33
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %common.ret304, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jg = load ptr, ptr %i.iu, align 8, !tbaa !22
  %i.jh = load ptr, ptr %i.iv, align 8, !tbaa !21
  tail call void %i.jg(ptr noundef nonnull @.str.18, i64 noundef 1, ptr noundef %i.jh) #12, !inline_history !0
  br label %common.ret304

bb.bp:                                            ; preds = %peek.exit.i142, %bb.bm
  %.not = icmp eq i64 %.0185, 0
  br i1 %.not, label %print_str.exit144, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ji = load i8, ptr %i.it, align 1, !tbaa !25, !range !32, !noundef !33
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %print_str.exit144, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jk = load ptr, ptr %i.iu, align 8, !tbaa !22
  %i.jl = load ptr, ptr %i.iv, align 8, !tbaa !21
  tail call void %i.jk(ptr noundef nonnull @.str.36, i64 noundef 2, ptr noundef %i.jl) #12, !inline_history !0
  %.pre203 = load i64, ptr %i.f, align 8, !tbaa !23
  %.pre204 = load i64, ptr %i.h, align 8, !tbaa !20
  br label %print_str.exit144

print_str.exit144:                                ; preds = %bb.br, %bb.bq, %bb.bp
  %i.jm = phi i64 [ %.pre204, %bb.br ], [ %i.ix, %bb.bq ], [ %i.ix, %bb.bp ] ; 4 uses
  %i.jn = phi i64 [ %.pre203, %bb.br ], [ %i.iw, %bb.bq ], [ %i.iw, %bb.bp ] ; 6 uses
  %i.jo = icmp ult i64 %i.jn, %i.jm
  br i1 %i.jo, label %peek.exit.i168, label %bb.bz

peek.exit.i168:                                   ; preds = %print_str.exit144
  %i.jp = load ptr, ptr %0, align 8, !tbaa !28    ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jn
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !30
  %i.js = icmp eq i8 %i.jr, 76
  br i1 %i.js, label %bb.bs, label %peek.exit.i146

bb.bs:                                            ; preds = %peek.exit.i168
  %i.jt = add nuw i64 %i.jn, 1                    ; 4 uses
  store i64 %i.jt, ptr %i.f, align 8, !tbaa !23
  %i.ju = icmp ult i64 %i.jt, %i.jm
  br i1 %i.ju, label %peek.exit.i.i164, label %eat.exit.i148.preheader

eat.exit.i148.preheader:                          ; preds = %peek.exit.i.i164, %bb.bs
  br label %eat.exit.i148

peek.exit.i.i164:                                 ; preds = %bb.bs
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jt
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !30
  %i.jx = icmp eq i8 %i.jw, 95
  br i1 %i.jx, label %eat.exit.thread.i165, label %eat.exit.i148.preheader

eat.exit.thread.i165:                             ; preds = %peek.exit.i.i164
  %i.jy = add nuw i64 %i.jn, 2
  store i64 %i.jy, ptr %i.f, align 8, !tbaa !23
  br label %parse_integer_62.exit166

eat.exit.i148:                                    ; preds = %eat.exit.i148.preheader, %bb.bw
  %i.jz = phi i64 [ %i.kg, %bb.bw ], [ %i.jt, %eat.exit.i148.preheader ] ; 6 uses
  %.027.i150 = phi i64 [ %.1.i162, %bb.bw ], [ 0, %eat.exit.i148.preheader ] ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.jm
  br i1 %i.ka, label %peek.exit.i33.i163, label %bb.bt

peek.exit.i33.i163:                               ; preds = %eat.exit.i148
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jz
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !30
  %i.kd = icmp eq i8 %i.kc, 95
  br i1 %i.kd, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %peek.exit.i33.i163, %eat.exit.i148
  %exitcond.not.i151 = icmp eq i64 %i.jz, %i.jm
  br i1 %exitcond.not.i151, label %.critedge.i158, label %peek.exit.i35.i152

peek.exit.i35.i152:                               ; preds = %bb.bt
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jz
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !30  ; 5 uses
  %.not.i.i153 = icmp eq i8 %i.kf, 0
  br i1 %.not.i.i153, label %.critedge.i158, label %next.exit.i154

next.exit.i154:                                   ; preds = %peek.exit.i35.i152
  %i.kg = add i64 %i.jz, 1                        ; 2 uses
  store i64 %i.kg, ptr %i.f, align 8, !tbaa !23
  %i.kh = mul i64 %.027.i150, 62
  %i.ki = zext nneg i8 %i.kf to i64
  %i.kj = add i8 %i.kf, -48
  %or.cond.i155 = icmp ult i8 %i.kj, 10
  br i1 %or.cond.i155, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %next.exit.i154
  %i.kk = add i8 %i.kf, -97
  %or.cond5.i156 = icmp ult i8 %i.kk, 26
  br i1 %or.cond5.i156, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kl = add i8 %i.kf, -65
  %or.cond8.i157 = icmp ult i8 %i.kl, 26
  br i1 %or.cond8.i157, label %bb.bw, label %.critedge.i158

.critedge.i158:                                   ; preds = %bb.bv, %peek.exit.i35.i152, %bb.bt
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %parse_integer_62.exit166

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %next.exit.i154
  %.sink.i160 = phi i64 [ 4294967248, %next.exit.i154 ], [ 4294967209, %bb.bu ], [ 4294967267, %bb.bv ]
  %i.km = add nuw nsw i64 %.sink.i160, %i.ki
  %.pn.i161 = and i64 %i.km, 4294967295
  %.1.i162 = add i64 %.pn.i161, %i.kh
  br label %eat.exit.i148, !llvm.loop !1

bb.bx:                                            ; preds = %peek.exit.i33.i163
  %i.kn = add nuw i64 %i.jz, 1
  store i64 %i.kn, ptr %i.f, align 8, !tbaa !23
  %i.ko = add i64 %.027.i150, 1
  br label %parse_integer_62.exit166

parse_integer_62.exit166:                         ; preds = %eat.exit.thread.i165, %.critedge.i158, %bb.bx
  %.3.i159 = phi i64 [ 0, %eat.exit.thread.i165 ], [ 0, %.critedge.i158 ], [ %i.ko, %bb.bx ]
  tail call fastcc void @print_lifetime_from_index(ptr noundef nonnull %0, i64 noundef %.3.i159), !inline_history !2
  br label %demangle_generic_arg.exit

peek.exit.i146:                                   ; preds = %peek.exit.i168
  %i.kp = load ptr, ptr %0, align 8, !tbaa !28
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.jn
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !30
  %i.ks = icmp eq i8 %i.kr, 75
  br i1 %i.ks, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %peek.exit.i146
  %i.kt = add nuw i64 %i.jn, 1
  store i64 %i.kt, ptr %i.f, align 8, !tbaa !23
  tail call fastcc void @demangle_const(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !2
  br label %demangle_generic_arg.exit

bb.bz:                                            ; preds = %print_str.exit144, %peek.exit.i146
  tail call fastcc void @demangle_type(ptr noundef nonnull %0), !inline_history !2
  br label %demangle_generic_arg.exit

demangle_generic_arg.exit:                        ; preds = %parse_integer_62.exit166, %bb.by, %bb.bz
  %i.ku = add i64 %.0185, 1
  %i.kv = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %common.ret304, label %bb.bm, !llvm.loop !54

bb.ca:                                            ; preds = %next.exit
  %i.kx = icmp ult i64 %i.n, %i.i
  br i1 %i.kx, label %peek.exit.i.i, label %eat.exit.i

peek.exit.i.i:                                    ; preds = %bb.ca
  %i.ky = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !30
  %i.la = icmp eq i8 %i.kz, 95
  br i1 %i.la, label %eat.exit.thread.i, label %eat.exit.i

eat.exit.thread.i:                                ; preds = %peek.exit.i.i
  %i.lb = add nuw i64 %i.g, 2                     ; 2 uses
  store i64 %i.lb, ptr %i.f, align 8, !tbaa !23
  br label %parse_integer_62.exit

eat.exit.i:                                       ; preds = %peek.exit.i.i, %bb.ca
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i) ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cf, %eat.exit.i
  %i.lc = phi i64 [ %i.lj, %bb.cf ], [ %i.n, %eat.exit.i ] ; 7 uses
  %.027.i = phi i64 [ %.1.i, %bb.cf ], [ 0, %eat.exit.i ] ; 2 uses
  %i.ld = icmp ult i64 %i.lc, %i.i
  br i1 %i.ld, label %peek.exit.i33.i, label %bb.cc

peek.exit.i33.i:                                  ; preds = %bb.cb
  %i.le = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.lc
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !30
  %i.lg = icmp eq i8 %i.lf, 95
  br i1 %i.lg, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %peek.exit.i33.i, %bb.cb
  %exitcond.not.i = icmp eq i64 %i.lc, %umax.i
  br i1 %exitcond.not.i, label %.critedge.i, label %peek.exit.i35.i

peek.exit.i35.i:                                  ; preds = %bb.cc
  %i.lh = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.lc
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !30  ; 5 uses
  %.not.i.i = icmp eq i8 %i.li, 0
  br i1 %.not.i.i, label %.critedge.i, label %next.exit.i

next.exit.i:                                      ; preds = %peek.exit.i35.i
  %i.lj = add i64 %i.lc, 1                        ; 3 uses
  store i64 %i.lj, ptr %i.f, align 8, !tbaa !23
  %i.lk = mul i64 %.027.i, 62
  %i.ll = zext nneg i8 %i.li to i64
  %i.lm = add i8 %i.li, -48
  %or.cond.i = icmp ult i8 %i.lm, 10
  br i1 %or.cond.i, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %next.exit.i
  %i.ln = add i8 %i.li, -97
  %or.cond5.i = icmp ult i8 %i.ln, 26
  br i1 %or.cond5.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lo = add i8 %i.li, -65
  %or.cond8.i = icmp ult i8 %i.lo, 26
  br i1 %or.cond8.i, label %bb.cf, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ce, %peek.exit.i35.i, %bb.cc
  %i.lp = phi i64 [ %i.lj, %bb.ce ], [ %i.lc, %peek.exit.i35.i ], [ %umax.i, %bb.cc ]
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %parse_integer_62.exit

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %next.exit.i
  %.sink.i = phi i64 [ 4294967248, %next.exit.i ], [ 4294967209, %bb.cd ], [ 4294967267, %bb.ce ]
  %i.lq = add nuw nsw i64 %.sink.i, %i.ll
  %.pn.i = and i64 %i.lq, 4294967295
  %.1.i = add i64 %.pn.i, %i.lk
  br label %bb.cb, !llvm.loop !1

bb.cg:                                            ; preds = %peek.exit.i33.i
  %i.lr = add nuw i64 %i.lc, 1                    ; 2 uses
  store i64 %i.lr, ptr %i.f, align 8, !tbaa !23
  %i.ls = add i64 %.027.i, 1
  br label %parse_integer_62.exit

parse_integer_62.exit:                            ; preds = %eat.exit.thread.i, %.critedge.i, %bb.cg
  %i.lt = phi i64 [ %i.lb, %eat.exit.thread.i ], [ %i.lp, %.critedge.i ], [ %i.lr, %bb.cg ]
  %.3.i = phi i64 [ 0, %eat.exit.thread.i ], [ 0, %.critedge.i ], [ %i.ls, %bb.cg ]
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !25, !range !32, !noundef !33
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %common.ret304, label %bb.ch

common.ret304:                                    ; preds = %bb.bo, %bb.bn, %bb.bh, %bb.bg, %bb.bf, %next.exit.thread, %next.exit89.thread, %parse_integer_62.exit, %.critedge83, %print_str.exit84, %bb.b, %print_str.exit140, %print_str.exit139, %bb.bj, %demangle_generic_arg.exit, %bb.ch
  ret void

bb.ch:                                            ; preds = %parse_integer_62.exit
  store i64 %.3.i, ptr %i.f, align 8, !tbaa !23
  tail call fastcc void @demangle_path(ptr noundef %0, i1 noundef zeroext %1)
  store i64 %i.lt, ptr %i.f, align 8, !tbaa !23
  br label %common.ret304

next.exit.thread:                                 ; preds = %peek.exit.i, %bb.c, %next.exit
  store i8 1, ptr %i.c, align 8, !tbaa !24
  br label %common.ret304
}

; Function Attrs: nounwind
define dso_local ptr @rust_demangle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.str_buf, align 8            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %2, i8 0, i64 25, i1 false)
  %i.d = call zeroext i1 @rust_demangle_with_callback(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @str_buf_demangle_callback, ptr noundef nonnull %2)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !37
  call void @free(ptr noundef %i.e) #12
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 8, !tbaa !38, !range !32, !noundef !33
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %str_buf_append.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.b, align 8, !tbaa !39   ; 6 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, %i.i
  br i1 %.not.i.i, label %bb.e, label %.str_buf_reserve.exit.thread15.i_crit_edge

.str_buf_reserve.exit.thread15.i_crit_edge:       ; preds = %bb.d
  %.pre = load ptr, ptr %2, align 8, !tbaa !37
  br label %str_buf_reserve.exit.thread15.i

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %i.h, -1
  br i1 %i.j, label %str_buf_append.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp eq i64 %i.h, 0
  %spec.store.select.i.i = select i1 %i.k, i64 4, i64 %i.h
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.0.i.i = phi i64 [ %spec.store.select.i.i, %bb.f ], [ %i.l, %bb.h ] ; 3 uses
  %.not = icmp ugt i64 %.0.i.i, %i.h
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = shl i64 %.0.i.i, 1                       ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.h
  br i1 %i.m, label %str_buf_append.exit, label %bb.g, !llvm.loop !3

bb.i:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %2, align 8, !tbaa !37
  %i.o = call ptr @realloc(ptr noundef %i.n, i64 noundef %.0.i.i) #14 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %str_buf_reserve.exit.i

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %2, align 8, !tbaa !37
  call void @free(ptr noundef %i.q) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %str_buf_append.exit

str_buf_reserve.exit.i:                           ; preds = %bb.i
  store ptr %i.o, ptr %2, align 8, !tbaa !37
  %.pre.i = load i8, ptr %i.c, align 8, !tbaa !38, !range !32
  %i.r = trunc nuw i8 %.pre.i to i1
  br i1 %i.r, label %str_buf_append.exit, label %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge

str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge: ; preds = %str_buf_reserve.exit.i
  %.pre5 = load i64, ptr %i.a, align 8, !tbaa !40
  br label %str_buf_reserve.exit.thread15.i

str_buf_reserve.exit.thread15.i:                  ; preds = %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge, %.str_buf_reserve.exit.thread15.i_crit_edge
  %i.s = phi i64 [ %i.i, %.str_buf_reserve.exit.thread15.i_crit_edge ], [ %.pre5, %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge ]
  %i.t = phi ptr [ %.pre, %.str_buf_reserve.exit.thread15.i_crit_edge ], [ %i.o, %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 0, ptr %i.u, align 1
  br label %str_buf_append.exit

str_buf_append.exit:                              ; preds = %bb.h, %bb.e, %bb.c, %bb.j, %str_buf_reserve.exit.i, %str_buf_reserve.exit.thread15.i
  %i.v = load ptr, ptr %2, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %str_buf_append.exit, %bb.b
  %.0 = phi ptr [ %i.v, %str_buf_append.exit ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none)
define internal void @str_buf_demangle_callback(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %str_buf_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.h = sub i64 %i.e, %i.g                       ; 2 uses
  %.not.i.i = icmp ugt i64 %1, %i.h
  br i1 %.not.i.i, label %bb.c, label %.str_buf_reserve.exit.thread15.i_crit_edge

.str_buf_reserve.exit.thread15.i_crit_edge:       ; preds = %bb.b
  %.pre = load ptr, ptr %2, align 8, !tbaa !37
  br label %str_buf_reserve.exit.thread15.i

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw i64 %1, %i.h
  %i.j = add i64 %i.i, %i.e                       ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.e
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !38
  br label %str_buf_append.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %i.e, 0
  %spec.store.select.i.i = select i1 %i.l, i64 4, i64 %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.0.i.i = phi i64 [ %spec.store.select.i.i, %bb.e ], [ %i.n, %bb.g ] ; 4 uses
  %i.m = icmp ult i64 %.0.i.i, %i.j
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = shl i64 %.0.i.i, 1                       ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.e
  br i1 %i.o, label %bb.h, label %bb.f, !llvm.loop !3

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.a, align 8, !tbaa !38
  br label %str_buf_append.exit

bb.i:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %2, align 8, !tbaa !37
  %i.q = tail call ptr @realloc(ptr noundef %i.p, i64 noundef %.0.i.i) #14 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %str_buf_reserve.exit.i

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %2, align 8, !tbaa !37
  tail call void @free(ptr noundef %i.s) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !38
  br label %str_buf_append.exit

str_buf_reserve.exit.i:                           ; preds = %bb.i
  store ptr %i.q, ptr %2, align 8, !tbaa !37
  store i64 %.0.i.i, ptr %i.d, align 8, !tbaa !39
  %.pre.i = load i8, ptr %i.a, align 8, !tbaa !38, !range !32
  %i.t = trunc nuw i8 %.pre.i to i1
  br i1 %i.t, label %str_buf_append.exit, label %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge

str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge: ; preds = %str_buf_reserve.exit.i
  %.pre4 = load i64, ptr %i.f, align 8, !tbaa !40
  br label %str_buf_reserve.exit.thread15.i

str_buf_reserve.exit.thread15.i:                  ; preds = %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge, %.str_buf_reserve.exit.thread15.i_crit_edge
  %i.u = phi i64 [ %i.g, %.str_buf_reserve.exit.thread15.i_crit_edge ], [ %.pre4, %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge ]
  %i.v = phi ptr [ %.pre, %.str_buf_reserve.exit.thread15.i_crit_edge ], [ %i.q, %str_buf_reserve.exit.i.str_buf_reserve.exit.thread15.i_crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.x = load i64, ptr %i.f, align 8, !tbaa !40
  %i.y = add i64 %i.x, %1
  store i64 %i.y, ptr %i.f, align 8, !tbaa !40
  br label %str_buf_append.exit

str_buf_append.exit:                              ; preds = %bb.a, %bb.d, %bb.h, %bb.j, %str_buf_reserve.exit.i, %str_buf_reserve.exit.thread15.i
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @parse_ident(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29
  %.not = icmp ne i32 %i.e, -1                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23 ; 5 uses
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre76 = load i64, ptr %.phi.trans.insert75, align 8, !tbaa !20 ; 6 uses
  %i.f = icmp ult i64 %.pre, %.pre76
  %or.cond98 = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond98, label %peek.exit.i, label %eat.exit

peek.exit.i:                                      ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.pre
  %i.i = load i8, ptr %i.h, align 1, !tbaa !30
  %i.j = icmp eq i8 %i.i, 117
  br i1 %i.j, label %bb.b, label %eat.exit

bb.b:                                             ; preds = %peek.exit.i
  %i.k = add nuw i64 %.pre, 1                     ; 2 uses
  store i64 %i.k, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %eat.exit

eat.exit:                                         ; preds = %bb.a, %bb.b, %peek.exit.i
  %i.l = phi i64 [ %.pre, %bb.a ], [ %i.k, %bb.b ], [ %.pre, %peek.exit.i ] ; 3 uses
  %.029 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %peek.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.n = icmp ult i64 %i.l, %.pre76
  br i1 %i.n, label %peek.exit.i41, label %next.exit.thread

peek.exit.i41:                                    ; preds = %eat.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !28     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.q = load i8, ptr %i.p, align 1, !tbaa !30    ; 4 uses
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %next.exit.thread, label %next.exit

next.exit:                                        ; preds = %peek.exit.i41
  %i.r = add nuw i64 %i.l, 1                      ; 4 uses
  store i64 %i.r, ptr %i.m, align 8, !tbaa !23
  %i.s = add i8 %i.q, -48
  %or.cond = icmp ult i8 %i.s, 10
  br i1 %or.cond, label %bb.c, label %next.exit.thread

next.exit.thread:                                 ; preds = %peek.exit.i41, %eat.exit, %next.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.t, align 8, !tbaa !24
  br label %bb.k

bb.c:                                             ; preds = %next.exit
  %2 = and i8 %i.q, 15
  %3 = zext nneg i8 %2 to i64                     ; 2 uses
  %.not35 = icmp ne i8 %i.q, 48
  %i.u = icmp ult i64 %i.r, %.pre76
  %or.cond99 = select i1 %.not35, i1 %i.u, i1 false
  br i1 %or.cond99, label %peek.exit, label %.critedge

peek.exit:                                        ; preds = %bb.c, %next.exit49
  %.059 = phi i64 [ %i.ad, %next.exit49 ], [ %3, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %i.aa, %next.exit49 ], [ %i.r, %bb.c ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !30    ; 2 uses
  %i.y = add i8 %i.x, -48
  %or.cond95 = icmp ult i8 %i.y, 10
  br i1 %or.cond95, label %next.exit49, label %.critedge

next.exit49:                                      ; preds = %peek.exit
  %i.z = mul i64 %.059, 10
  %i.aa = add nuw i64 %i.v, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !23
  %i.ab = zext nneg i8 %i.x to i64
  %i.ac = add i64 %i.z, -48
  %i.ad = add i64 %i.ac, %i.ab                    ; 2 uses
  %i.ae = icmp ult i64 %i.aa, %.pre76
  br i1 %i.ae, label %peek.exit, label %.critedge, !llvm.loop !55

.critedge:                                        ; preds = %peek.exit, %next.exit49, %bb.c
  %i.af = phi i64 [ %i.r, %bb.c ], [ %i.v, %peek.exit ], [ %i.aa, %next.exit49 ] ; 4 uses
  %.1 = phi i64 [ %3, %bb.c ], [ %.059, %peek.exit ], [ %i.ad, %next.exit49 ] ; 7 uses
  %i.ag = icmp ult i64 %i.af, %.pre76
  %or.cond101 = select i1 %.not, i1 %i.ag, i1 false
  br i1 %or.cond101, label %peek.exit.i51, label %eat.exit52

peek.exit.i51:                                    ; preds = %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.af
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !30
  %i.aj = icmp eq i8 %i.ai, 95
  %i.ak = zext i1 %i.aj to i64
  %spec.select = add nuw i64 %i.af, %i.ak
  br label %eat.exit52

eat.exit52:                                       ; preds = %peek.exit.i51, %.critedge
  %i.al = phi i64 [ %i.af, %.critedge ], [ %spec.select, %peek.exit.i51 ] ; 3 uses
  %i.am = add i64 %i.al, %.1                      ; 3 uses
  store i64 %i.am, ptr %i.m, align 8, !tbaa !23
  %.not37 = icmp ugt i64 %i.al, %i.am
  %.not38 = icmp ugt i64 %i.am, %.pre76
  %or.cond57 = or i1 %.not37, %.not38
  br i1 %or.cond57, label %bb.d, label %bb.e

bb.d:                                             ; preds = %eat.exit52
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.an, align 8, !tbaa !24
  br label %bb.k

bb.e:                                             ; preds = %eat.exit52
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.al ; 3 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !35
  store i64 %.1, ptr %i.a, align 8, !tbaa !41
  br i1 %.029, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.e
  %.not3963 = icmp eq i64 %.1, 0
  br i1 %.not3963, label %.thread, label %.lr.ph

.thread:                                          ; preds = %.preheader
  store i64 0, ptr %i.c, align 8, !tbaa !42
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %storemerge64 = phi i64 [ %i.au, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.ap = phi i64 [ %i.aq, %bb.f ], [ %.1, %.preheader ]
  %i.aq = add i64 %i.ap, -1                       ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !30
  %i.at = icmp eq i8 %i.as, 95
  br i1 %i.at, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.au = add nuw i64 %storemerge64, 1
  %.not39 = icmp eq i64 %i.aq, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.lcssa.sink = phi i64 [ 0, %bb.f ], [ %i.aq, %.lr.ph ]
  %storemerge.lcssa62 = phi i64 [ %.1, %bb.f ], [ %storemerge64, %.lr.ph ] ; 3 uses
  store i64 %.lcssa.sink, ptr %i.a, align 8, !tbaa !41
  store i64 %storemerge.lcssa62, ptr %i.c, align 8, !tbaa !42
  %.not40 = icmp eq i64 %storemerge.lcssa62, 0
  br i1 %.not40, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread, %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.av, align 8, !tbaa !24
  br label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %i.aw = sub i64 %.1, %storemerge.lcssa62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aw
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ay = phi i64 [ %i.aq, %bb.h ], [ %.1, %bb.e ]
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.g, %bb.j, %bb.i, %next.exit.thread
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
define internal fastcc void @print_ident(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly byval(%struct.rust_mangled_ident) align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.ci, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.e = load i8, ptr %i.d, align 1, !tbaa !25, !range !32, !noundef !33
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.ci, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %print_str.exit, label %.preheader204

.preheader204:                                    ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 67 uses
  %i.k = icmp ugt i64 %i.j, 4
  br i1 %i.k, label %bb.d, label %bb.bl

print_str.exit:                                   ; preds = %bb.c
  %i.l = load ptr, ptr %1, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  tail call void %i.p(ptr noundef %i.l, i64 noundef %i.n, ptr noundef %i.r) #12, !inline_history !0
  br label %bb.ci

bb.d:                                             ; preds = %.preheader204
  %i.s = icmp ugt i64 %i.j, 8
  br i1 %i.s, label %bb.e, label %bb.bl

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %i.j, 16
  br i1 %i.t, label %bb.f, label %bb.bl

bb.f:                                             ; preds = %bb.e
  %i.u = icmp ugt i64 %i.j, 32
  br i1 %i.u, label %bb.g, label %bb.bl

bb.g:                                             ; preds = %bb.f
  %i.v = icmp ugt i64 %i.j, 64
  br i1 %i.v, label %bb.h, label %bb.bl

bb.h:                                             ; preds = %bb.g
  %i.w = icmp ugt i64 %i.j, 128
  br i1 %i.w, label %bb.i, label %bb.bl

bb.i:                                             ; preds = %bb.h
  %i.x = icmp ugt i64 %i.j, 256
  br i1 %i.x, label %bb.j, label %bb.bl

bb.j:                                             ; preds = %bb.i
  %i.y = icmp ugt i64 %i.j, 512
  br i1 %i.y, label %bb.k, label %bb.bl

bb.k:                                             ; preds = %bb.j
  %i.z = icmp ugt i64 %i.j, 1024
  br i1 %i.z, label %bb.l, label %bb.bl

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp ugt i64 %i.j, 2048
  br i1 %i.aa, label %bb.m, label %bb.bl

bb.m:                                             ; preds = %bb.l
  %i.ab = icmp ugt i64 %i.j, 4096
end_hunk_1
begin_hunk_2_@demangle_type:bb.a
  switch i8 %i.n, label %.loopexit [
    i8 98, label %.loopexit198
    i8 99, label %.loopexit330
    i8 101, label %.loopexit404
    i8 117, label %.loopexit472
    i8 97, label %.loopexit540
    i8 115, label %.loopexit640
    i8 108, label %.loopexit708
    i8 120, label %.loopexit782
    i8 110, label %bb.o
    i8 105, label %bb.c
    i8 104, label %bb.d
    i8 116, label %bb.e
    i8 109, label %bb.f
    i8 121, label %bb.g
    i8 111, label %bb.h
    i8 106, label %bb.i
    i8 102, label %bb.j
    i8 100, label %bb.k
    i8 122, label %bb.l
    i8 112, label %bb.m
    i8 118, label %bb.n
    i8 82, label %bb.q
    i8 81, label %bb.q
    i8 80, label %bb.ae
    i8 79, label %bb.ae
    i8 65, label %bb.aj
    i8 83, label %bb.aj
    i8 84, label %bb.ar
    i8 70, label %bb.ax
    i8 68, label %bb.bw
    i8 66, label %bb.cw
  ]

bb.c:                                             ; preds = %next.exit
  br label %bb.o

bb.d:                                             ; preds = %next.exit
  br label %bb.o

bb.e:                                             ; preds = %next.exit
  br label %bb.o

bb.f:                                             ; preds = %next.exit
  br label %bb.o

bb.g:                                             ; preds = %next.exit
  br label %bb.o

bb.h:                                             ; preds = %next.exit
  br label %bb.o

bb.i:                                             ; preds = %next.exit
  br label %bb.o

bb.j:                                             ; preds = %next.exit
  br label %bb.o

bb.k:                                             ; preds = %next.exit
  br label %bb.o

bb.l:                                             ; preds = %next.exit
  br label %bb.o

bb.m:                                             ; preds = %next.exit
  br label %bb.o

bb.n:                                             ; preds = %next.exit
  br label %bb.o

.loopexit198:                                     ; preds = %next.exit
  br label %bb.o

.loopexit330:                                     ; preds = %next.exit
  br label %bb.o

.loopexit404:                                     ; preds = %next.exit
  br label %bb.o

.loopexit472:                                     ; preds = %next.exit
  br label %bb.o

.loopexit540:                                     ; preds = %next.exit
  br label %bb.o

.loopexit640:                                     ; preds = %next.exit
  br label %bb.o

.loopexit708:                                     ; preds = %next.exit
  br label %bb.o

.loopexit782:                                     ; preds = %next.exit
  br label %bb.o

bb.o:                                             ; preds = %next.exit, %.loopexit782, %.loopexit708, %.loopexit640, %.loopexit540, %.loopexit472, %.loopexit404, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.n, %.loopexit198, %.loopexit330
  %.0.i126.ph = phi ptr [ @.str.70, %bb.m ], [ @.str.69, %bb.l ], [ @.str.68, %bb.k ], [ @.str.67, %bb.j ], [ @.str.66, %bb.i ], [ @.str.65, %bb.h ], [ @.str.64, %bb.g ], [ @.str.63, %bb.f ], [ @.str.62, %bb.e ], [ @.str.61, %bb.d ], [ @.str.60, %bb.c ], [ @.str.58, %.loopexit782 ], [ @.str.57, %.loopexit708 ], [ @.str.56, %.loopexit640 ], [ @.str.55, %.loopexit540 ], [ @.str.54, %.loopexit472 ], [ @.str.53, %.loopexit404 ], [ @.str.52, %.loopexit330 ], [ @.str.51, %.loopexit198 ], [ @.str.71, %bb.n ], [ @.str.59, %next.exit ] ; 2 uses
  %i.q = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %common.ret, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i126.ph) #13
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.t(ptr noundef nonnull %.0.i126.ph, i64 noundef %i.s, ptr noundef %i.u) #12, !inline_history !0
  br label %common.ret

bb.q:                                             ; preds = %next.exit, %next.exit
  %i.v = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %print_str.exit127, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.x(ptr noundef nonnull @.str.14, i64 noundef 1, ptr noundef %i.y) #12, !inline_history !0
  %.pre375 = load i64, ptr %i.d, align 8, !tbaa !23
  %.pre376 = load i64, ptr %i.e, align 8, !tbaa !20
  br label %print_str.exit127

print_str.exit127:                                ; preds = %bb.q, %bb.r
  %i.z = phi i64 [ %.pre376, %bb.r ], [ %i.j, %bb.q ] ; 4 uses
  %i.aa = phi i64 [ %.pre375, %bb.r ], [ %i.p, %bb.q ] ; 4 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %peek.exit.i129, label %print_str.exit130

peek.exit.i129:                                   ; preds = %print_str.exit127
  %i.ac = load ptr, ptr %0, align 8, !tbaa !28    ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !30
  %i.af = icmp eq i8 %i.ae, 76
  br i1 %i.af, label %bb.s, label %print_str.exit130

bb.s:                                             ; preds = %peek.exit.i129
  %i.ag = add nuw i64 %i.aa, 1                    ; 5 uses
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !23
  %i.ah = icmp ult i64 %i.ag, %i.z
  br i1 %i.ah, label %peek.exit.i.i, label %eat.exit.i

peek.exit.i.i:                                    ; preds = %bb.s
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !30
  %i.ak = icmp eq i8 %i.aj, 95
  br i1 %i.ak, label %eat.exit.thread.i, label %eat.exit.i

eat.exit.thread.i:                                ; preds = %peek.exit.i.i
  %i.al = add nuw i64 %i.aa, 2
  store i64 %i.al, ptr %i.d, align 8, !tbaa !23
  br label %print_str.exit130

eat.exit.i:                                       ; preds = %peek.exit.i.i, %bb.s
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.z)
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %eat.exit.i
  %i.am = phi i64 [ %i.at, %bb.x ], [ %i.ag, %eat.exit.i ] ; 6 uses
  %.027.i = phi i64 [ %.1.i, %bb.x ], [ 0, %eat.exit.i ] ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.z
  br i1 %i.an, label %peek.exit.i33.i, label %bb.u

peek.exit.i33.i:                                  ; preds = %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !30
  %i.aq = icmp eq i8 %i.ap, 95
  br i1 %i.aq, label %parse_integer_62.exit, label %bb.u

bb.u:                                             ; preds = %peek.exit.i33.i, %bb.t
  %exitcond.not.i = icmp eq i64 %i.am, %umax.i
  br i1 %exitcond.not.i, label %.critedge.i, label %peek.exit.i35.i

peek.exit.i35.i:                                  ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !30  ; 5 uses
  %.not.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i, label %.critedge.i, label %next.exit.i

next.exit.i:                                      ; preds = %peek.exit.i35.i
  %i.at = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.at, ptr %i.d, align 8, !tbaa !23
  %i.au = mul i64 %.027.i, 62
  %i.av = zext nneg i8 %i.as to i64
  %i.aw = add i8 %i.as, -48
  %or.cond.i = icmp ult i8 %i.aw, 10
  br i1 %or.cond.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %next.exit.i
  %i.ax = add i8 %i.as, -97
  %or.cond5.i = icmp ult i8 %i.ax, 26
  br i1 %or.cond5.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = add i8 %i.as, -65
  %or.cond8.i = icmp ult i8 %i.ay, 26
  br i1 %or.cond8.i, label %bb.x, label %.critedge.i

.critedge.i:                                      ; preds = %bb.w, %peek.exit.i35.i, %bb.u
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %print_str.exit130

bb.x:                                             ; preds = %bb.w, %bb.v, %next.exit.i
  %.sink.i = phi i64 [ 4294967248, %next.exit.i ], [ 4294967209, %bb.v ], [ 4294967267, %bb.w ]
  %i.az = add nuw nsw i64 %.sink.i, %i.av
  %.pn.i = and i64 %i.az, 4294967295
  %.1.i = add i64 %.pn.i, %i.au
  br label %bb.t, !llvm.loop !1

parse_integer_62.exit:                            ; preds = %peek.exit.i33.i
  %i.ba = add nuw i64 %i.am, 1
  store i64 %i.ba, ptr %i.d, align 8, !tbaa !23
  %i.bb = add i64 %.027.i, 1                      ; 2 uses
  %.not124 = icmp eq i64 %i.bb, 0
  br i1 %.not124, label %print_str.exit130, label %bb.y

bb.y:                                             ; preds = %parse_integer_62.exit
  tail call fastcc void @print_lifetime_from_index(ptr noundef %0, i64 noundef %i.bb)
  %i.bc = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %print_str.exit130, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %print_str.exit130, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.bg(ptr noundef nonnull @.str.39, i64 noundef 1, ptr noundef %i.bh) #12, !inline_history !0
  br label %print_str.exit130

print_str.exit130:                                ; preds = %.critedge.i, %eat.exit.thread.i, %print_str.exit127, %peek.exit.i129, %bb.aa, %bb.z, %bb.y, %parse_integer_62.exit
  %.not125 = icmp eq i8 %i.n, 82
  br i1 %.not125, label %tailrecurse.backedge, label %bb.ab

bb.ab:                                            ; preds = %print_str.exit130
  %i.bi = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %tailrecurse.backedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %tailrecurse.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.bm(ptr noundef nonnull @.str.40, i64 noundef 4, ptr noundef %i.bn) #12, !inline_history !0
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.af, %.thread, %bb.ag, %bb.ah, %.thread639, %bb.ai, %print_str.exit130, %bb.ab, %bb.ac, %bb.ad
  %i.bo = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %tailrecurse._crit_edge, label %bb.b

bb.ae:                                            ; preds = %next.exit, %next.exit
  %i.bq = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %print_str.exit132.thread, label %print_str.exit132

print_str.exit132:                                ; preds = %bb.ae
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.bs(ptr noundef nonnull @.str.12, i64 noundef 1, ptr noundef %i.bt) #12, !inline_history !0
  %.pre611 = load i8, ptr %i.a, align 8, !tbaa !24, !range !32
  %i.bu = trunc nuw i8 %.pre611 to i1             ; 2 uses
  %.not123 = icmp eq i8 %i.n, 80
  br i1 %.not123, label %bb.ah, label %bb.af

print_str.exit132.thread:                         ; preds = %bb.ae
  %.not123638 = icmp eq i8 %i.n, 80
  br i1 %.not123638, label %.thread639, label %.thread

bb.af:                                            ; preds = %print_str.exit132
  br i1 %i.bu, label %tailrecurse.backedge, label %.thread

.thread:                                          ; preds = %print_str.exit132.thread, %bb.af
  %i.bv = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %tailrecurse.backedge, label %bb.ag

bb.ag:                                            ; preds = %.thread
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.bx(ptr noundef nonnull @.str.40, i64 noundef 4, ptr noundef %i.by) #12, !inline_history !0
  br label %tailrecurse.backedge

bb.ah:                                            ; preds = %print_str.exit132
  br i1 %i.bu, label %tailrecurse.backedge, label %.thread639

.thread639:                                       ; preds = %print_str.exit132.thread, %bb.ah
  %i.bz = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %tailrecurse.backedge, label %bb.ai

bb.ai:                                            ; preds = %.thread639
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.cb(ptr noundef nonnull @.str.41, i64 noundef 6, ptr noundef %i.cc) #12, !inline_history !0
  br label %tailrecurse.backedge

bb.aj:                                            ; preds = %next.exit, %next.exit
  %i.cd = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %print_str.exit135, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.cf(ptr noundef nonnull @.str.28, i64 noundef 1, ptr noundef %i.cg) #12, !inline_history !0
  br label %print_str.exit135

print_str.exit135:                                ; preds = %bb.aj, %bb.ak
  tail call fastcc void @demangle_type(ptr noundef %0)
  %i.ch = icmp eq i8 %i.n, 65
  br i1 %i.ch, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %print_str.exit135
  %i.ci = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %print_str.exit136, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ck = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %print_str.exit136, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.cm(ptr noundef nonnull @.str.42, i64 noundef 2, ptr noundef %i.cn) #12, !inline_history !0
  br label %print_str.exit136

print_str.exit136:                                ; preds = %bb.al, %bb.am, %bb.an
  tail call fastcc void @demangle_const(ptr noundef %0, i1 noundef zeroext true)
  br label %bb.ao

bb.ao:                                            ; preds = %print_str.exit136, %print_str.exit135
  %i.co = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %common.ret, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cq = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %common.ret, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.cs(ptr noundef nonnull @.str.29, i64 noundef 1, ptr noundef %i.ct) #12, !inline_history !0
  br label %common.ret

bb.ar:                                            ; preds = %next.exit
  %i.cu = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %.lr.ph329.preheader, label %print_str.exit138

print_str.exit138:                                ; preds = %bb.ar
  %i.cw = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.cw(ptr noundef nonnull @.str.20, i64 noundef 1, ptr noundef %i.cx) #12, !inline_history !0
  %.pre373 = load i8, ptr %i.a, align 8, !tbaa !24, !range !32
  %i.cy = trunc nuw i8 %.pre373 to i1
  br i1 %i.cy, label %common.ret, label %.lr.ph329.preheader

.lr.ph329.preheader:                              ; preds = %bb.ar, %print_str.exit138
  br label %.lr.ph329

.lr.ph329:                                        ; preds = %.lr.ph329.preheader, %print_str.exit142
  %.0115328 = phi i64 [ %i.dk, %print_str.exit142 ], [ 0, %.lr.ph329.preheader ] ; 3 uses
  %i.cz = load i64, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.da = load i64, ptr %i.e, align 8, !tbaa !20
  %i.db = icmp ult i64 %i.cz, %i.da
  br i1 %i.db, label %peek.exit.i140, label %bb.as

peek.exit.i140:                                   ; preds = %.lr.ph329
  %i.dc = load ptr, ptr %0, align 8, !tbaa !28
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cz
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !30
  %i.df = icmp eq i8 %i.de, 69
  br i1 %i.df, label %.critedge.thread, label %bb.as

bb.as:                                            ; preds = %peek.exit.i140, %.lr.ph329
  %.not122 = icmp eq i64 %.0115328, 0
  br i1 %.not122, label %print_str.exit142, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dg = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %print_str.exit142, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.dj = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.di(ptr noundef nonnull @.str.36, i64 noundef 2, ptr noundef %i.dj) #12, !inline_history !0
  br label %print_str.exit142

print_str.exit142:                                ; preds = %bb.au, %bb.at, %bb.as
  tail call fastcc void @demangle_type(ptr noundef %0)
  %i.dk = add i64 %.0115328, 1
  %i.dl = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %common.ret, label %.lr.ph329, !llvm.loop !61
end_hunk_2
begin_hunk_3_@demangle_type:bb.a

bb.ck:                                            ; preds = %peek.exit.i185
  %i.kh = add nuw i64 %i.kc, 1
  store i64 %i.kh, ptr %i.d, align 8, !tbaa !23
  %i.ki = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %print_str.exit183, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kk = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %print_str.exit183, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.km = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.kn = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.km(ptr noundef nonnull @.str.36, i64 noundef 2, ptr noundef %i.kn) #12, !inline_history !65
  br label %print_str.exit183

print_str.exit183:                                ; preds = %bb.cm, %bb.cl, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call fastcc void @parse_ident(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef nonnull %0), !inline_history !64
  tail call fastcc void @print_ident(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.rust_mangled_ident) align 8 %1), !inline_history !64
  %i.ko = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %print_str.exit181, label %bb.cn

bb.cn:                                            ; preds = %print_str.exit183
  %i.kq = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %print_str.exit181, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ks = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.kt = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.ks(ptr noundef nonnull @.str.90, i64 noundef 3, ptr noundef %i.kt) #12, !inline_history !65
  br label %print_str.exit181

print_str.exit181:                                ; preds = %print_str.exit183, %bb.cn, %bb.co
  tail call fastcc void @demangle_type(ptr noundef nonnull %0), !inline_history !64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.ku = load i64, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.kv = load i64, ptr %i.e, align 8, !tbaa !20
  %i.kw = icmp ult i64 %i.ku, %i.kv
  br i1 %i.kw, label %peek.exit.i185, label %.critedge, !llvm.loop !66

peek.exit.i185._crit_edge:                        ; preds = %peek.exit.i185.preheader, %print_str.exit177.thread
  br i1 %i.ja, label %.critedge, label %demangle_dyn_trait.exit

.critedge:                                        ; preds = %peek.exit.i185, %print_str.exit181, %print_str.exit181.peel, %peek.exit.i185._crit_edge
  %i.kx = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %demangle_dyn_trait.exit, label %bb.cp

bb.cp:                                            ; preds = %.critedge
  %i.kz = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %demangle_dyn_trait.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lb = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.lc = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.lb(ptr noundef nonnull @.str.18, i64 noundef 1, ptr noundef %i.lc) #12, !inline_history !65
  br label %demangle_dyn_trait.exit

demangle_dyn_trait.exit:                          ; preds = %bb.cq, %bb.cp, %.critedge, %bb.ca, %peek.exit.i185._crit_edge
  %i.ld = add i64 %.0317, 1
  %i.le = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %.critedge6, label %.lr.ph318, !llvm.loop !67

bb.cr:                                            ; preds = %peek.exit.i175, %.critedge6
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret

bb.cs:                                            ; preds = %peek.exit.i175
  %i.lg = add nuw i64 %i.io, 1
  store i64 %i.lg, ptr %i.d, align 8, !tbaa !23
  %i.lh = tail call fastcc i64 @parse_integer_62(ptr noundef %0) ; 2 uses
  %.not120 = icmp eq i64 %i.lh, 0
  br i1 %.not120, label %common.ret, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.li = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %print_str.exit179, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lk = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ll = trunc nuw i8 %i.lk to i1
  br i1 %i.ll, label %print_str.exit179, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lm = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.ln = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void %i.lm(ptr noundef nonnull @.str.50, i64 noundef 3, ptr noundef %i.ln) #12, !inline_history !0
  br label %print_str.exit179

print_str.exit179:                                ; preds = %bb.ct, %bb.cu, %bb.cv
  tail call fastcc void @print_lifetime_from_index(ptr noundef %0, i64 noundef %i.lh)
  br label %common.ret

bb.cw:                                            ; preds = %next.exit
  %i.lo = tail call fastcc i64 @parse_integer_62(ptr noundef %0)
  %i.lp = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %common.ret, label %bb.cx

common.ret:                                       ; preds = %print_str.exit138, %tailrecurse._crit_edge, %bb.bv, %.loopexit, %print_str.exit179, %bb.cs, %bb.cw, %bb.cr, %bb.o, %bb.p, %bb.ao, %bb.ap, %bb.aq, %print_str.exit143, %print_str.exit143.thread399, %bb.aw, %bb.av, %print_str.exit142, %bb.cx
  ret void

bb.cx:                                            ; preds = %bb.cw
  %i.lr = load i64, ptr %i.d, align 8, !tbaa !23
  store i64 %i.lo, ptr %i.d, align 8, !tbaa !23
  tail call fastcc void @demangle_type(ptr noundef %0)
  store i64 %i.lr, ptr %i.d, align 8, !tbaa !23
  br label %common.ret

.loopexit:                                        ; preds = %next.exit, %basic_type.exit.thread194
  %i.ls = phi i64 [ %i.o, %basic_type.exit.thread194 ], [ %i.i, %next.exit ]
  store i64 %i.ls, ptr %i.d, align 8, !tbaa !23
  tail call fastcc void @demangle_path(ptr noundef %0, i1 noundef zeroext false)
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc i64 @parse_integer_62(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %peek.exit.i, label %eat.exit

peek.exit.i:                                      ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  %i.h = load i8, ptr %i.g, align 1, !tbaa !30
  %i.i = icmp eq i8 %i.h, 95
  br i1 %i.i, label %eat.exit.thread, label %eat.exit

eat.exit.thread:                                  ; preds = %peek.exit.i
  %i.j = add nuw i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !tbaa !23
  br label %bb.h

eat.exit:                                         ; preds = %bb.a, %peek.exit.i
  %umax = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.d)
  br label %bb.b

bb.b:                                             ; preds = %eat.exit, %bb.f
  %i.k = phi i64 [ %i.t, %bb.f ], [ %i.b, %eat.exit ] ; 6 uses
  %.027 = phi i64 [ %.1, %bb.f ], [ 0, %eat.exit ] ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %peek.exit.i33, label %bb.c

peek.exit.i33:                                    ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  %i.o = load i8, ptr %i.n, align 1, !tbaa !30
  %i.p = icmp eq i8 %i.o, 95
  br i1 %i.p, label %bb.g, label %bb.c

bb.c:                                             ; preds = %peek.exit.i33, %bb.b
  %exitcond.not = icmp eq i64 %i.k, %umax
  br i1 %exitcond.not, label %.critedge, label %peek.exit.i35

peek.exit.i35:                                    ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30    ; 5 uses
  %.not.i = icmp eq i8 %i.s, 0
  br i1 %.not.i, label %.critedge, label %next.exit

next.exit:                                        ; preds = %peek.exit.i35
  %i.t = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.t, ptr %i.a, align 8, !tbaa !23
  %i.u = mul i64 %.027, 62
  %i.v = sext i8 %i.s to i64
  %i.w = add i8 %i.s, -48
  %or.cond = icmp ult i8 %i.w, 10
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %next.exit
  %i.x = add i8 %i.s, -97
  %or.cond5 = icmp ult i8 %i.x, 26
  br i1 %or.cond5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add i8 %i.s, -65
  %or.cond8 = icmp ult i8 %i.y, 26
  br i1 %or.cond8, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.e, %peek.exit.i35, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.z, align 8, !tbaa !24
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d, %next.exit
  %.sink = phi i64 [ 4294967248, %next.exit ], [ 4294967209, %bb.d ], [ 4294967267, %bb.e ]
  %i.aa = add nsw i64 %.sink, %i.v
  %.pn = and i64 %i.aa, 4294967295
  %.1 = add i64 %i.u, %.pn
  br label %bb.b, !llvm.loop !1

bb.g:                                             ; preds = %peek.exit.i33
  %i.ab = add nuw i64 %i.k, 1
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !23
  %i.ac = add i64 %.027, 1
  br label %bb.h

bb.h:                                             ; preds = %eat.exit.thread, %bb.g, %.critedge
  %.3 = phi i64 [ 0, %eat.exit.thread ], [ 0, %.critedge ], [ %i.ac, %bb.g ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
define internal fastcc void @print_lifetime_from_index(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %print_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.g = load i8, ptr %i.f, align 1, !tbaa !25, !range !32, !noundef !33
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %print_str.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  tail call void %i.j(ptr noundef nonnull @.str.72, i64 noundef 1, ptr noundef %i.l) #12, !inline_history !0
  br label %print_str.exit

print_str.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %i.m = icmp eq i64 %1, 0
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %print_str.exit
  %i.n = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %print_str.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.q = load i8, ptr %i.p, align 1, !tbaa !25, !range !32, !noundef !33
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %print_str.exit11, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  tail call void %i.t(ptr noundef nonnull @.str.70, i64 noundef 1, ptr noundef %i.v) #12, !inline_history !0
  br label %print_str.exit11

bb.g:                                             ; preds = %print_str.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !27
  %i.y = sub i64 %i.x, %1                         ; 3 uses
  %i.z = icmp ult i64 %i.y, 26
  br i1 %i.z, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.aa = trunc nuw nsw i64 %i.y to i8
  %i.ab = add nuw nsw i8 %i.aa, 97
  store i8 %i.ab, ptr %i.b, align 1, !tbaa !30
  %i.ac = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %print_str.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %print_str.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21
  call void %i.ai(ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef %i.ak) #12, !inline_history !0
  br label %print_str.exit12

print_str.exit12:                                 ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %print_str.exit11

bb.k:                                             ; preds = %bb.g
  %i.al = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %print_str.exit13, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %print_str.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21
  tail call void %i.ar(ptr noundef nonnull @.str.70, i64 noundef 1, ptr noundef %i.at) #12, !inline_history !0
  br label %print_str.exit13

print_str.exit13:                                 ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.au = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.y) #12 ; 0 uses
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #13
  %i.aw = load i8, ptr %i.c, align 8, !tbaa !24, !range !32, !noundef !33
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %print_uint64.exit, label %bb.n

bb.n:                                             ; preds = %print_str.exit13
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %print_uint64.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21
  call void %i.bc(ptr noundef nonnull %i.a, i64 noundef %i.av, ptr noundef %i.be) #12, !inline_history !4
  br label %print_uint64.exit

print_uint64.exit:                                ; preds = %print_str.exit13, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %print_str.exit11

print_str.exit11:                                 ; preds = %bb.f, %bb.e, %bb.d, %print_str.exit12, %print_uint64.exit
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @demangle_const(ptr noundef nonnull %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rust_mangled_ident, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 34 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret418

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 28 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 8 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %peek.exit.i, label %next.exit.thread

peek.exit.i:                                      ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !28     ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30    ; 5 uses
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %next.exit.thread, label %next.exit

next.exit:                                        ; preds = %peek.exit.i
  %i.l = add nuw i64 %i.e, 1                      ; 13 uses
  store i64 %i.l, ptr %i.d, align 8, !tbaa !23
  switch i8 %i.k, label %next.exit.thread [
    i8 112, label %bb.d
    i8 104, label %bb.f
    i8 116, label %bb.f
    i8 109, label %bb.f
    i8 121, label %bb.f
    i8 111, label %bb.f
    i8 106, label %bb.f
    i8 97, label %bb.g
    i8 115, label %bb.g
    i8 108, label %bb.g
    i8 120, label %bb.g
    i8 110, label %bb.g
    i8 105, label %bb.g
    i8 98, label %.preheader351
    i8 99, label %.preheader352
    i8 101, label %bb.w
end_hunk_3
begin_hunk_4_@demangle_const:bb.a
  %i.lt = load ptr, ptr %i.lg, align 8, !tbaa !22
  %i.lu = load ptr, ptr %i.lh, align 8, !tbaa !21
  tail call void %i.lt(ptr noundef nonnull @.str.36, i64 noundef 2, ptr noundef %i.lu) #12, !inline_history !0
  %.pre286 = load i64, ptr %i.d, align 8, !tbaa !23
  %.pre287 = load i64, ptr %i.f, align 8, !tbaa !20
  br label %print_str.exit223

print_str.exit223:                                ; preds = %bb.bz, %bb.by, %bb.bx
  %i.lv = phi i64 [ %.pre287, %bb.bz ], [ %i.lj, %bb.by ], [ %i.lj, %bb.bx ] ; 4 uses
  %i.lw = phi i64 [ %.pre286, %bb.bz ], [ %i.li, %bb.by ], [ %i.li, %bb.bx ] ; 4 uses
  %i.lx = icmp ult i64 %i.lw, %i.lv
  br i1 %i.lx, label %peek.exit.i.i.i224, label %parse_disambiguator.exit

peek.exit.i.i.i224:                               ; preds = %print_str.exit223
  %i.ly = load ptr, ptr %0, align 8, !tbaa !28    ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lw
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !30
  %i.mb = icmp eq i8 %i.ma, 115
  br i1 %i.mb, label %bb.ca, label %parse_disambiguator.exit

bb.ca:                                            ; preds = %peek.exit.i.i.i224
  %i.mc = add nuw i64 %i.lw, 1                    ; 4 uses
  store i64 %i.mc, ptr %i.d, align 8, !tbaa !23
  %i.md = icmp ult i64 %i.mc, %i.lv
  br i1 %i.md, label %peek.exit.i.i.i.i, label %eat.exit.i.i.i.preheader

eat.exit.i.i.i.preheader:                         ; preds = %peek.exit.i.i.i.i, %bb.ca
  br label %eat.exit.i.i.i

peek.exit.i.i.i.i:                                ; preds = %bb.ca
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mc
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !30
  %i.mg = icmp eq i8 %i.mf, 95
  br i1 %i.mg, label %eat.exit.thread.i.i.i, label %eat.exit.i.i.i.preheader

eat.exit.thread.i.i.i:                            ; preds = %peek.exit.i.i.i.i
  %i.mh = add nuw i64 %i.lw, 2
  store i64 %i.mh, ptr %i.d, align 8, !tbaa !23
  br label %parse_disambiguator.exit

eat.exit.i.i.i:                                   ; preds = %eat.exit.i.i.i.preheader, %next.exit.i.i.i
  %i.mi = phi i64 [ %i.mp, %next.exit.i.i.i ], [ %i.mc, %eat.exit.i.i.i.preheader ] ; 6 uses
  %i.mj = icmp ult i64 %i.mi, %i.lv
  br i1 %i.mj, label %peek.exit.i33.i.i.i, label %bb.cb

peek.exit.i33.i.i.i:                              ; preds = %eat.exit.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mi
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !30
  %i.mm = icmp eq i8 %i.ml, 95
  br i1 %i.mm, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %peek.exit.i33.i.i.i, %eat.exit.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %i.mi, %i.lv
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %peek.exit.i35.i.i.i

peek.exit.i35.i.i.i:                              ; preds = %bb.cb
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mi
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !30  ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.mo, 0
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i, label %next.exit.i.i.i

next.exit.i.i.i:                                  ; preds = %peek.exit.i35.i.i.i
  %i.mp = add i64 %i.mi, 1                        ; 2 uses
  store i64 %i.mp, ptr %i.d, align 8, !tbaa !23
  %i.mq = add i8 %i.mo, -48
  %or.cond.i.i.i = icmp ult i8 %i.mq, 10
  %i.mr = and i8 %i.mo, -33
  %i.ms = add i8 %i.mr, -65
  %i.mt = icmp ult i8 %i.ms, 26
  %or.cond350 = or i1 %or.cond.i.i.i, %i.mt
  br i1 %or.cond350, label %eat.exit.i.i.i, label %.critedge.i.i.i, !llvm.loop !1

.critedge.i.i.i:                                  ; preds = %next.exit.i.i.i, %peek.exit.i35.i.i.i, %bb.cb
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %parse_disambiguator.exit

bb.cc:                                            ; preds = %peek.exit.i33.i.i.i
  %i.mu = add nuw i64 %i.mi, 1
  store i64 %i.mu, ptr %i.d, align 8, !tbaa !23
  br label %parse_disambiguator.exit

parse_disambiguator.exit:                         ; preds = %print_str.exit223, %peek.exit.i.i.i224, %eat.exit.thread.i.i.i, %.critedge.i.i.i, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call fastcc void @parse_ident(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0)
  tail call fastcc void @print_ident(ptr noundef %0, ptr noundef nonnull byval(%struct.rust_mangled_ident) align 8 %2)
  %i.mv = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %print_str.exit225, label %bb.cd

bb.cd:                                            ; preds = %parse_disambiguator.exit
  %i.mx = load i8, ptr %i.lf, align 1, !tbaa !25, !range !32, !noundef !33
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %print_str.exit225, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mz = load ptr, ptr %i.lg, align 8, !tbaa !22
  %i.na = load ptr, ptr %i.lh, align 8, !tbaa !21
  tail call void %i.mz(ptr noundef nonnull @.str.77, i64 noundef 2, ptr noundef %i.na) #12, !inline_history !0
  br label %print_str.exit225

print_str.exit225:                                ; preds = %parse_disambiguator.exit, %bb.cd, %bb.ce
  tail call fastcc void @demangle_const(ptr noundef %0, i1 noundef zeroext true)
  %i.nb = add i64 %.0126, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.bv, !llvm.loop !73

bb.cf:                                            ; preds = %peek.exit.i221
  %i.nc = add nuw i64 %i.li, 1
  store i64 %i.nc, ptr %i.d, align 8, !tbaa !23
  %i.nd = trunc nuw i8 %.pre285 to i1
  br i1 %i.nd, label %print_str.exit226.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ne = load i8, ptr %i.lf, align 1, !tbaa !25, !range !32, !noundef !33
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %print_str.exit226.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ng = load ptr, ptr %i.lg, align 8, !tbaa !22
  %i.nh = load ptr, ptr %i.lh, align 8, !tbaa !21
  tail call void %i.ng(ptr noundef nonnull @.str.78, i64 noundef 2, ptr noundef %i.nh) #12, !inline_history !0
  br label %print_str.exit226.thread

print_str.exit226.thread:                         ; preds = %bb.cf, %bb.cg, %bb.ch
  br i1 %1, label %common.ret418, label %bb.cr

print_str.exit226:                                ; preds = %bb.bw
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret418

next.exit212.thread:                              ; preds = %peek.exit.i210, %print_str.exit207, %next.exit212
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret418

bb.ci:                                            ; preds = %next.exit
  %i.ni = icmp ult i64 %i.l, %i.g
  br i1 %i.ni, label %peek.exit.i.i, label %eat.exit.i

peek.exit.i.i:                                    ; preds = %bb.ci
  %i.nj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !30
  %i.nl = icmp eq i8 %i.nk, 95
  br i1 %i.nl, label %eat.exit.thread.i, label %eat.exit.i

eat.exit.thread.i:                                ; preds = %peek.exit.i.i
  %i.nm = add nuw i64 %i.e, 2                     ; 2 uses
  store i64 %i.nm, ptr %i.d, align 8, !tbaa !23
  br label %parse_integer_62.exit

eat.exit.i:                                       ; preds = %peek.exit.i.i, %bb.ci
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.g) ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cn, %eat.exit.i
  %i.nn = phi i64 [ %i.nu, %bb.cn ], [ %i.l, %eat.exit.i ] ; 7 uses
  %.027.i = phi i64 [ %.1.i, %bb.cn ], [ 0, %eat.exit.i ] ; 2 uses
  %i.no = icmp ult i64 %i.nn, %i.g
  br i1 %i.no, label %peek.exit.i33.i, label %bb.ck

peek.exit.i33.i:                                  ; preds = %bb.cj
  %i.np = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.nn
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !30
  %i.nr = icmp eq i8 %i.nq, 95
  br i1 %i.nr, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %peek.exit.i33.i, %bb.cj
  %exitcond.not.i = icmp eq i64 %i.nn, %umax.i
  br i1 %exitcond.not.i, label %.critedge.i, label %peek.exit.i35.i

peek.exit.i35.i:                                  ; preds = %bb.ck
  %i.ns = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.nn
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !30  ; 5 uses
  %.not.i.i = icmp eq i8 %i.nt, 0
  br i1 %.not.i.i, label %.critedge.i, label %next.exit.i

next.exit.i:                                      ; preds = %peek.exit.i35.i
  %i.nu = add i64 %i.nn, 1                        ; 3 uses
  store i64 %i.nu, ptr %i.d, align 8, !tbaa !23
  %i.nv = mul i64 %.027.i, 62
  %i.nw = zext nneg i8 %i.nt to i64
  %i.nx = add i8 %i.nt, -48
  %or.cond.i = icmp ult i8 %i.nx, 10
  br i1 %or.cond.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %next.exit.i
  %i.ny = add i8 %i.nt, -97
  %or.cond5.i = icmp ult i8 %i.ny, 26
  br i1 %or.cond5.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.nz = add i8 %i.nt, -65
  %or.cond8.i = icmp ult i8 %i.nz, 26
  br i1 %or.cond8.i, label %bb.cn, label %.critedge.i

.critedge.i:                                      ; preds = %bb.cm, %peek.exit.i35.i, %bb.ck
  %i.oa = phi i64 [ %i.nu, %bb.cm ], [ %i.nn, %peek.exit.i35.i ], [ %umax.i, %bb.ck ]
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %parse_integer_62.exit

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %next.exit.i
  %.sink.i = phi i64 [ 4294967248, %next.exit.i ], [ 4294967209, %bb.cl ], [ 4294967267, %bb.cm ]
  %i.ob = add nuw nsw i64 %.sink.i, %i.nw
  %.pn.i = and i64 %i.ob, 4294967295
  %.1.i = add i64 %.pn.i, %i.nv
  br label %bb.cj, !llvm.loop !1

bb.co:                                            ; preds = %peek.exit.i33.i
  %i.oc = add nuw i64 %i.nn, 1                    ; 2 uses
  store i64 %i.oc, ptr %i.d, align 8, !tbaa !23
  %i.od = add i64 %.027.i, 1
  br label %parse_integer_62.exit

parse_integer_62.exit:                            ; preds = %eat.exit.thread.i, %.critedge.i, %bb.co
  %i.oe = phi i64 [ %i.nm, %eat.exit.thread.i ], [ %i.oa, %.critedge.i ], [ %i.oc, %bb.co ]
  %.3.i = phi i64 [ 0, %eat.exit.thread.i ], [ 0, %.critedge.i ], [ %i.od, %bb.co ]
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.og = load i8, ptr %i.of, align 1, !tbaa !25, !range !32, !noundef !33
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %common.ret418, label %bb.cp

common.ret418:                                    ; preds = %bb.ct, %bb.cs, %bb.cr, %print_str.exit206.thread, %print_str.exit198.thread, %print_str.exit218.thread, %print_str.exit185, %print_str.exit226.thread, %print_str.exit191, %print_str.exit226, %print_str.exit218, %print_str.exit206, %print_str.exit198, %bb.v, %bb.u, %print_str.exit181, %bb.p, %.thread, %bb.e, %bb.d, %parse_hex_nibbles_for_const_uint.exit180.thread, %bb.o, %next.exit212.thread, %next.exit.thread, %.critedge, %bb.f, %print_str.exit152, %bb.aa, %parse_integer_62.exit, %bb.cq, %bb.b, %bb.cp
  ret void

bb.cp:                                            ; preds = %parse_integer_62.exit
  store i64 %.3.i, ptr %i.d, align 8, !tbaa !23
  tail call fastcc void @demangle_const(ptr noundef %0, i1 noundef zeroext %1)
  store i64 %i.oe, ptr %i.d, align 8, !tbaa !23
  br label %common.ret418

next.exit.thread:                                 ; preds = %peek.exit.i, %bb.c, %next.exit
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret418

bb.cq:                                            ; preds = %next.exit212
  br i1 %1, label %common.ret418, label %bb.cr

bb.cr:                                            ; preds = %print_str.exit185.thread, %print_str.exit206.thread, %print_str.exit198.thread, %print_str.exit218.thread, %print_str.exit185, %print_str.exit226.thread, %print_str.exit191, %bb.cq
  %i.oi = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %common.ret418, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !25, !range !32, !noundef !33
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %common.ret418, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !22
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !21
  tail call void %i.oo(ptr noundef nonnull @.str.27, i64 noundef 1, ptr noundef %i.oq) #12, !inline_history !0
  br label %common.ret418
}

; Function Attrs: nounwind
define internal fastcc void @demangle_binder(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %print_str.exit14

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 4 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %peek.exit.i.i, label %print_str.exit14

peek.exit.i.i:                                    ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !28     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %i.l = icmp eq i8 %i.k, 71
  br i1 %i.l, label %bb.d, label %print_str.exit14

bb.d:                                             ; preds = %peek.exit.i.i
  %i.m = add nuw i64 %i.e, 1                      ; 4 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !23
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %peek.exit.i.i.i, label %eat.exit.i.i.preheader

eat.exit.i.i.preheader:                           ; preds = %peek.exit.i.i.i, %bb.d
  br label %eat.exit.i.i

peek.exit.i.i.i:                                  ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !30
  %i.q = icmp eq i8 %i.p, 95
  br i1 %i.q, label %eat.exit.thread.i.i, label %eat.exit.i.i.preheader

eat.exit.thread.i.i:                              ; preds = %peek.exit.i.i.i
  %i.r = add nuw i64 %i.e, 2
  store i64 %i.r, ptr %i.d, align 8, !tbaa !23
  br label %bb.i

eat.exit.i.i:                                     ; preds = %eat.exit.i.i.preheader, %bb.h
  %i.s = phi i64 [ %i.z, %bb.h ], [ %i.m, %eat.exit.i.i.preheader ] ; 6 uses
  %.027.i.i = phi i64 [ %.1.i.i, %bb.h ], [ 0, %eat.exit.i.i.preheader ] ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.g
  br i1 %i.t, label %peek.exit.i33.i.i, label %bb.e

peek.exit.i33.i.i:                                ; preds = %eat.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %i.w = icmp eq i8 %i.v, 95
  br i1 %i.w, label %parse_opt_integer_62.exit, label %bb.e

bb.e:                                             ; preds = %peek.exit.i33.i.i, %eat.exit.i.i
  %exitcond.not.i.i = icmp eq i64 %i.s, %i.g
  br i1 %exitcond.not.i.i, label %parse_opt_integer_62.exit.thread19, label %peek.exit.i35.i.i

peek.exit.i35.i.i:                                ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !tbaa !30    ; 5 uses
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %parse_opt_integer_62.exit.thread19, label %next.exit.i.i

next.exit.i.i:                                    ; preds = %peek.exit.i35.i.i
  %i.z = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.z, ptr %i.d, align 8, !tbaa !23
  %i.aa = mul i64 %.027.i.i, 62
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = add i8 %i.y, -48
  %or.cond.i.i = icmp ult i8 %i.ac, 10
  br i1 %or.cond.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %next.exit.i.i
  %i.ad = add i8 %i.y, -97
  %or.cond5.i.i = icmp ult i8 %i.ad, 26
  br i1 %or.cond5.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add i8 %i.y, -65
  %or.cond8.i.i = icmp ult i8 %i.ae, 26
  br i1 %or.cond8.i.i, label %bb.h, label %parse_opt_integer_62.exit.thread19

bb.h:                                             ; preds = %bb.g, %bb.f, %next.exit.i.i
  %.sink.i.i = phi i64 [ 4294967248, %next.exit.i.i ], [ 4294967209, %bb.f ], [ 4294967267, %bb.g ]
  %i.af = add nuw nsw i64 %.sink.i.i, %i.ab
  %.pn.i.i = and i64 %i.af, 4294967295
  %.1.i.i = add i64 %.pn.i.i, %i.aa
  br label %eat.exit.i.i, !llvm.loop !1

parse_opt_integer_62.exit:                        ; preds = %peek.exit.i33.i.i
  %i.ag = add nuw i64 %i.s, 1
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !23
  %i.ah = add i64 %.027.i.i, 2                    ; 2 uses
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %print_str.exit14, label %bb.i

parse_opt_integer_62.exit.thread19:               ; preds = %bb.e, %peek.exit.i35.i.i, %bb.g
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %print_str.exit15.peel

bb.i:                                             ; preds = %parse_opt_integer_62.exit, %eat.exit.thread.i.i
  %.0.i22.ph = phi i64 [ 1, %eat.exit.thread.i.i ], [ %i.ah, %parse_opt_integer_62.exit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %print_str.exit15.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  tail call void %i.am(ptr noundef nonnull @.str.88, i64 noundef 4, ptr noundef %i.ao) #12, !inline_history !0
  br label %print_str.exit15.peel

print_str.exit15.peel:                            ; preds = %bb.j, %bb.i, %parse_opt_integer_62.exit.thread19
  %.0.i2238 = phi i64 [ 1, %parse_opt_integer_62.exit.thread19 ], [ %.0.i22.ph, %bb.i ], [ %.0.i22.ph, %bb.j ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !27
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !27
  tail call fastcc void @print_lifetime_from_index(ptr noundef %0, i64 noundef 1)
  %exitcond.peel.not = icmp eq i64 %.0.i2238, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next

.loopexit:                                        ; preds = %print_str.exit15, %print_str.exit15.peel
  %i.av = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %print_str.exit14, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.ax = load i8, ptr %i.ap, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %print_str.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !21
  tail call void %i.az(ptr noundef nonnull @.str.89, i64 noundef 2, ptr noundef %i.ba) #12, !inline_history !0
  br label %print_str.exit14

.peel.next:                                       ; preds = %print_str.exit15.peel, %print_str.exit15
  %.025 = phi i64 [ %i.bj, %print_str.exit15 ], [ 1, %print_str.exit15.peel ]
  %i.bb = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %print_str.exit15, label %bb.m

bb.m:                                             ; preds = %.peel.next
  %i.bd = load i8, ptr %i.ap, align 1, !tbaa !25, !range !32, !noundef !33
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %print_str.exit15, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !21
  tail call void %i.bf(ptr noundef nonnull @.str.36, i64 noundef 2, ptr noundef %i.bg) #12, !inline_history !0
  br label %print_str.exit15

print_str.exit15:                                 ; preds = %bb.n, %bb.m, %.peel.next
  %i.bh = load i64, ptr %i.as, align 8, !tbaa !27
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.as, align 8, !tbaa !27
  tail call fastcc void @print_lifetime_from_index(ptr noundef %0, i64 noundef 1)
  %i.bj = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %.0.i2238
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !74

print_str.exit14:                                 ; preds = %peek.exit.i.i, %bb.c, %bb.l, %bb.k, %.loopexit, %parse_opt_integer_62.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
define internal fastcc void @demangle_const_uint(ptr nofree noundef nonnull captures(none) %0, i8 noundef signext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !24, !range !32, !noundef !33
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !24
  br label %print_str.exit24

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pre.i = phi i8 [ 0, %bb.c ], [ %.pre.i97, %bb.f ] ; 2 uses
  %i.i = phi i64 [ %i.f, %bb.c ], [ %i.o, %bb.f ] ; 5 uses
  %.017.i.i = phi i64 [ 0, %bb.c ], [ %i.r, %bb.f ] ; 4 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %peek.exit.i.i.i, label %peek.exit.thread.i.i.i

peek.exit.i.i.i:                                  ; preds = %bb.d
  %i.k = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30    ; 2 uses
  switch i8 %i.m, label %bb.e [
    i8 95, label %parse_hex_nibbles.exit.i
    i8 0, label %peek.exit.thread.i.i.i
  ]

peek.exit.thread.i.i.i:                           ; preds = %peek.exit.i.i.i, %bb.d
  store i8 1, ptr %i.b, align 8, !tbaa !24
  br label %next.exit.i.i

bb.e:                                             ; preds = %peek.exit.i.i.i
  %i.n = add nuw i64 %i.i, 1                      ; 2 uses
  store i64 %i.n, ptr %i.e, align 8, !tbaa !23
  br label %next.exit.i.i

next.exit.i.i:                                    ; preds = %bb.e, %peek.exit.thread.i.i.i
  %.pre.i97 = phi i8 [ %.pre.i, %bb.e ], [ 1, %peek.exit.thread.i.i.i ]
  %i.o = phi i64 [ %i.n, %bb.e ], [ %i.i, %peek.exit.thread.i.i.i ]
  %.0.i.i.i = phi i8 [ %i.m, %bb.e ], [ 0, %peek.exit.thread.i.i.i ] ; 2 uses
  %i.p = add i8 %.0.i.i.i, -48
  %or.cond.i.i = icmp ult i8 %i.p, 10
  %i.q = add i8 %.0.i.i.i, -97
  %or.cond5.i.i = icmp ult i8 %i.q, 6
  %or.cond18.i.i = or i1 %or.cond.i.i, %or.cond5.i.i
  br i1 %or.cond18.i.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %next.exit.i.i
  %i.r = add i64 %.017.i.i, 1
  br label %bb.d, !llvm.loop !5

parse_hex_nibbles.exit.i:                         ; preds = %peek.exit.i.i.i
  %i.s = add nuw i64 %i.i, 1
  store i64 %i.s, ptr %i.e, align 8, !tbaa !23
  %i.t = trunc nuw i8 %.pre.i to i1
  br i1 %i.t, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %parse_hex_nibbles.exit.i
  %.not9.i = icmp eq i64 %.017.i.i, 0
  br i1 %.not9.i, label %._crit_edge, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.g ] ; 2 uses
  %.sroa.5.011.i = phi i64 [ %.017.i.i, %.lr.ph.i.preheader ], [ %i.y, %bb.g ] ; 6 uses
  %.sroa.0.010.i = phi ptr [ %i.u, %.lr.ph.i.preheader ], [ %i.x, %bb.g ] ; 6 uses
  %i.v = load i8, ptr %.sroa.0.010.i, align 1, !tbaa !30
  %i.w = icmp eq i8 %i.v, 48
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 1
  %i.y = add i64 %.sroa.5.011.i, -1               ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.i, !llvm.loop !6

.loopexit:                                        ; preds = %next.exit.i.i, %parse_hex_nibbles.exit.i
  store i8 1, ptr %i.b, align 8, !tbaa !24
  br label %print_str.exit24

bb.h:                                             ; preds = %.lr.ph.i
  %i.z = icmp ugt i64 %.sroa.5.011.i, 16
  br i1 %i.z, label %bb.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %.neg = add i64 %indvar, 1
  %xtraiter = and i64 %.sroa.5.011.i, 1
  %i.aa = icmp eq i64 %.017.i.i, %.neg
  br i1 %i.aa, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.sroa.5.011.i, 30
  br label %.lr.ph

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25, !range !32, !noundef !33
end_hunk_4
begin_hunk_5_@demangle_const_str_literal:bb.a
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !30  ; 2 uses
  %i.be = icmp sgt i8 %i.bd, 96
  %.v.i42 = select i1 %i.be, i8 9, i8 96
  %i.bf = add i8 %.v.i42, %i.bd
  %i.bg = shl i8 %i.bf, 4
  %i.bh = getelementptr i8, ptr %i.s, i64 %.03188
  %i.bi = getelementptr i8, ptr %i.bh, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !30  ; 2 uses
  %i.bk = icmp sgt i8 %i.bj, 96
  %.v.i43 = select i1 %i.bk, i8 -87, i8 -48
  %i.bl = add i8 %.v.i43, %i.bj
  %i.bm = or i8 %i.bg, %i.bl                      ; 2 uses
  %or.cond = icmp slt i8 %i.bm, -64
  br i1 %or.cond, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph.preheader
  %i.bn = and i8 %i.bm, 63
  %i.bo = shl nuw nsw i32 %i.az, 6
  %i.bp = zext nneg i8 %i.bn to i32
  %i.bq = or disjoint i32 %i.bo, %i.bp            ; 2 uses
  br i1 %i.ar, label %.thread69, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h
  %i.br = add i64 %.03188, 4                      ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !30  ; 2 uses
  %i.bu = icmp sgt i8 %i.bt, 96
  %.v.i42.1 = select i1 %i.bu, i8 9, i8 96
  %i.bv = add i8 %.v.i42.1, %i.bt
  %i.bw = shl i8 %i.bv, 4
  %i.bx = getelementptr i8, ptr %i.s, i64 %i.bb
  %i.by = getelementptr i8, ptr %i.bx, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !30  ; 2 uses
  %i.ca = icmp sgt i8 %i.bz, 96
  %.v.i43.1 = select i1 %i.ca, i8 -87, i8 -48
  %i.cb = add i8 %.v.i43.1, %i.bz
  %i.cc = or i8 %i.bw, %i.cb                      ; 2 uses
  %or.cond.1 = icmp slt i8 %i.cc, -64
  br i1 %or.cond.1, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph.1
  %i.cd = and i8 %i.cc, 63
  %i.ce = shl nuw nsw i32 %i.bq, 6
  %i.cf = zext nneg i8 %i.cd to i32
  %i.cg = or disjoint i32 %i.ce, %i.cf            ; 2 uses
  br i1 %.not37.1, label %.thread69, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.i
  %i.ch = getelementptr i8, ptr %i.s, i64 %.03188
  %i.ci = getelementptr i8, ptr %i.ch, i64 6
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !30  ; 2 uses
  %i.ck = icmp sgt i8 %i.cj, 96
  %.v.i42.2 = select i1 %i.ck, i8 9, i8 96
  %i.cl = add i8 %.v.i42.2, %i.cj
  %i.cm = shl i8 %i.cl, 4
  %i.cn = getelementptr i8, ptr %i.s, i64 %i.br
  %i.co = getelementptr i8, ptr %i.cn, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !30  ; 2 uses
  %i.cq = icmp sgt i8 %i.cp, 96
  %.v.i43.2 = select i1 %i.cq, i8 -87, i8 -48
  %i.cr = add i8 %.v.i43.2, %i.cp
  %i.cs = or i8 %i.cm, %i.cr                      ; 2 uses
  %or.cond.2 = icmp slt i8 %i.cs, -64
  br i1 %or.cond.2, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph.2
  %i.ct = and i8 %i.cs, 63
  %i.cu = shl nuw nsw i32 %i.cg, 6
  %i.cv = zext nneg i8 %i.ct to i32
  %i.cw = or disjoint i32 %i.cu, %i.cv
  br label %.thread69

.thread69:                                        ; preds = %bb.h, %bb.i, %bb.j, %utf8_decode.exit
  %.3 = phi i64 [ %.03188, %utf8_decode.exit ], [ %i.ba, %bb.j ], [ %i.ba, %bb.i ], [ %i.ba, %bb.h ]
  %.1 = phi i32 [ %i.ay, %utf8_decode.exit ], [ %i.bq, %bb.h ], [ %i.cg, %bb.i ], [ %i.cw, %bb.j ]
  tail call fastcc void @print_quoted_escaped_char(ptr noundef %0, i8 noundef signext 34, i32 noundef %.1)
  %i.cx = add i64 %.3, 2                          ; 2 uses
  %.not38 = icmp ult i64 %i.cx, %.017.i.i
  br i1 %.not38, label %.lr.ph89, label %.critedge40, !llvm.loop !76

.critedge:                                        ; preds = %thread-pre-split.i, %thread-pre-split.3.i, %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %print_str.exit54

.critedge40:                                      ; preds = %.thread69, %print_str.exit
  %i.cy = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %print_str.exit54, label %bb.k

bb.k:                                             ; preds = %.critedge40
  %i.da = load i8, ptr %i.v, align 1, !tbaa !25, !range !32, !noundef !33
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %print_str.exit54, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !22
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !21
  tail call void %i.dd(ptr noundef nonnull @.str.86, i64 noundef 1, ptr noundef %i.df) #12, !inline_history !0
  br label %print_str.exit54

print_str.exit54:                                 ; preds = %bb.l, %bb.k, %.critedge40, %.critedge, %.loopexit, %bb.b
  ret void
}

; Function Attrs: nounwind
define internal fastcc zeroext i1 @demangle_path_maybe_open_generics(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %common.ret112

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 5 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %peek.exit.i, label %bb.y

peek.exit.i:                                      ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !28     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %i.l = icmp eq i8 %i.k, 66
  br i1 %i.l, label %bb.d, label %peek.exit.i25

bb.d:                                             ; preds = %peek.exit.i
  %i.m = add nuw i64 %i.e, 1                      ; 4 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !23
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %peek.exit.i.i, label %eat.exit.i.preheader

eat.exit.i.preheader:                             ; preds = %peek.exit.i.i, %bb.d
  br label %eat.exit.i

peek.exit.i.i:                                    ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !30
  %i.q = icmp eq i8 %i.p, 95
  br i1 %i.q, label %eat.exit.thread.i, label %eat.exit.i.preheader

eat.exit.thread.i:                                ; preds = %peek.exit.i.i
  %i.r = add nuw i64 %i.e, 2                      ; 2 uses
  store i64 %i.r, ptr %i.d, align 8, !tbaa !23
  br label %parse_integer_62.exit

eat.exit.i:                                       ; preds = %eat.exit.i.preheader, %bb.h
  %i.s = phi i64 [ %i.z, %bb.h ], [ %i.m, %eat.exit.i.preheader ] ; 7 uses
  %.027.i = phi i64 [ %.1.i, %bb.h ], [ 0, %eat.exit.i.preheader ] ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.g
  br i1 %i.t, label %peek.exit.i33.i, label %bb.e

peek.exit.i33.i:                                  ; preds = %eat.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %i.w = icmp eq i8 %i.v, 95
  br i1 %i.w, label %bb.i, label %bb.e

bb.e:                                             ; preds = %peek.exit.i33.i, %eat.exit.i
  %exitcond.not.i = icmp eq i64 %i.s, %i.g
  br i1 %exitcond.not.i, label %.critedge.i, label %peek.exit.i35.i

peek.exit.i35.i:                                  ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !tbaa !30    ; 5 uses
  %.not.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i, label %.critedge.i, label %next.exit.i

next.exit.i:                                      ; preds = %peek.exit.i35.i
  %i.z = add i64 %i.s, 1                          ; 3 uses
  store i64 %i.z, ptr %i.d, align 8, !tbaa !23
  %i.aa = mul i64 %.027.i, 62
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = add i8 %i.y, -48
  %or.cond.i = icmp ult i8 %i.ac, 10
  br i1 %or.cond.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %next.exit.i
  %i.ad = add i8 %i.y, -97
  %or.cond5.i = icmp ult i8 %i.ad, 26
  br i1 %or.cond5.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add i8 %i.y, -65
  %or.cond8.i = icmp ult i8 %i.ae, 26
  br i1 %or.cond8.i, label %bb.h, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %peek.exit.i35.i, %bb.e
  %i.af = phi i64 [ %i.z, %bb.g ], [ %i.s, %peek.exit.i35.i ], [ %i.g, %bb.e ]
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %parse_integer_62.exit

bb.h:                                             ; preds = %bb.g, %bb.f, %next.exit.i
  %.sink.i = phi i64 [ 4294967248, %next.exit.i ], [ 4294967209, %bb.f ], [ 4294967267, %bb.g ]
  %i.ag = add nuw nsw i64 %.sink.i, %i.ab
  %.pn.i = and i64 %i.ag, 4294967295
  %.1.i = add i64 %.pn.i, %i.aa
  br label %eat.exit.i, !llvm.loop !1

bb.i:                                             ; preds = %peek.exit.i33.i
  %i.ah = add nuw i64 %i.s, 1                     ; 2 uses
  store i64 %i.ah, ptr %i.d, align 8, !tbaa !23
  %i.ai = add i64 %.027.i, 1
  br label %parse_integer_62.exit

parse_integer_62.exit:                            ; preds = %eat.exit.thread.i, %.critedge.i, %bb.i
  %i.aj = phi i64 [ %i.r, %eat.exit.thread.i ], [ %i.af, %.critedge.i ], [ %i.ah, %bb.i ]
  %.3.i = phi i64 [ 0, %eat.exit.thread.i ], [ 0, %.critedge.i ], [ %i.ai, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !25, !range !32, !noundef !33
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %common.ret112, label %bb.j

common.ret112:                                    ; preds = %eat.exit28, %bb.y, %parse_integer_62.exit, %bb.b, %print_str.exit, %bb.k, %demangle_generic_arg.exit, %bb.j
  %common.ret112.op = phi i1 [ %i.an, %bb.j ], [ true, %bb.k ], [ false, %bb.b ], [ false, %bb.y ], [ true, %eat.exit28 ], [ false, %parse_integer_62.exit ], [ true, %print_str.exit ], [ true, %demangle_generic_arg.exit ]
  ret i1 %common.ret112.op

bb.j:                                             ; preds = %parse_integer_62.exit
  store i64 %.3.i, ptr %i.d, align 8, !tbaa !23
  %i.an = tail call fastcc zeroext i1 @demangle_path_maybe_open_generics(ptr noundef %0)
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !23
  br label %common.ret112

peek.exit.i25:                                    ; preds = %peek.exit.i
  %i.ao = load ptr, ptr %0, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.e
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !30
  %i.ar = icmp eq i8 %i.aq, 73
  br i1 %i.ar, label %bb.k, label %bb.y

bb.k:                                             ; preds = %peek.exit.i25
  %i.as = add nuw i64 %i.e, 1
  store i64 %i.as, ptr %i.d, align 8, !tbaa !23
  tail call fastcc void @demangle_path(ptr noundef %0, i1 noundef zeroext false)
  %i.at = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %common.ret112, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !25, !range !32, !noundef !33
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.lr.ph, label %print_str.exit

print_str.exit:                                   ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21
  tail call void %i.az(ptr noundef nonnull @.str.16, i64 noundef 1, ptr noundef %i.bb) #12, !inline_history !0
  %.pre = load i8, ptr %i.a, align 8, !tbaa !24, !range !32
  %i.bc = trunc nuw i8 %.pre to i1
  br i1 %i.bc, label %common.ret112, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %print_str.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %demangle_generic_arg.exit
  %.059 = phi i64 [ 0, %.lr.ph ], [ %i.da, %demangle_generic_arg.exit ] ; 2 uses
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !23  ; 5 uses
  %i.bh = load i64, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %peek.exit.i27, label %bb.n

peek.exit.i27:                                    ; preds = %bb.m
  %i.bj = load ptr, ptr %0, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bg
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !30
  %i.bm = icmp eq i8 %i.bl, 69
  br i1 %i.bm, label %eat.exit28, label %bb.n

eat.exit28:                                       ; preds = %peek.exit.i27
  %i.bn = add nuw i64 %i.bg, 1
  store i64 %i.bn, ptr %i.d, align 8, !tbaa !23
  br label %common.ret112

bb.n:                                             ; preds = %peek.exit.i27, %bb.m
  %.not = icmp eq i64 %.059, 0
  br i1 %.not, label %print_str.exit29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load i8, ptr %i.bd, align 1, !tbaa !25, !range !32, !noundef !33
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %print_str.exit29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !22
  %i.br = load ptr, ptr %i.bf, align 8, !tbaa !21
  tail call void %i.bq(ptr noundef nonnull @.str.36, i64 noundef 2, ptr noundef %i.br) #12, !inline_history !0
  %.pre67 = load i64, ptr %i.d, align 8, !tbaa !23
  %.pre68 = load i64, ptr %i.f, align 8, !tbaa !20
  br label %print_str.exit29

print_str.exit29:                                 ; preds = %bb.p, %bb.o, %bb.n
  %i.bs = phi i64 [ %.pre68, %bb.p ], [ %i.bh, %bb.o ], [ %i.bh, %bb.n ] ; 4 uses
  %i.bt = phi i64 [ %.pre67, %bb.p ], [ %i.bg, %bb.o ], [ %i.bg, %bb.n ] ; 6 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  br i1 %i.bu, label %peek.exit.i51, label %bb.x

peek.exit.i51:                                    ; preds = %print_str.exit29
  %i.bv = load ptr, ptr %0, align 8, !tbaa !28    ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %i.by = icmp eq i8 %i.bx, 76
  br i1 %i.by, label %bb.q, label %peek.exit.i30

bb.q:                                             ; preds = %peek.exit.i51
  %i.bz = add nuw i64 %i.bt, 1                    ; 4 uses
  store i64 %i.bz, ptr %i.d, align 8, !tbaa !23
  %i.ca = icmp ult i64 %i.bz, %i.bs
  br i1 %i.ca, label %peek.exit.i.i48, label %eat.exit.i32.preheader

eat.exit.i32.preheader:                           ; preds = %peek.exit.i.i48, %bb.q
  br label %eat.exit.i32

peek.exit.i.i48:                                  ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bz
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !30
  %i.cd = icmp eq i8 %i.cc, 95
  br i1 %i.cd, label %eat.exit.thread.i49, label %eat.exit.i32.preheader

eat.exit.thread.i49:                              ; preds = %peek.exit.i.i48
  %i.ce = add nuw i64 %i.bt, 2
  store i64 %i.ce, ptr %i.d, align 8, !tbaa !23
  br label %parse_integer_62.exit50

eat.exit.i32:                                     ; preds = %eat.exit.i32.preheader, %bb.u
  %i.cf = phi i64 [ %i.cm, %bb.u ], [ %i.bz, %eat.exit.i32.preheader ] ; 6 uses
  %.027.i34 = phi i64 [ %.1.i46, %bb.u ], [ 0, %eat.exit.i32.preheader ] ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bs
  br i1 %i.cg, label %peek.exit.i33.i47, label %bb.r

peek.exit.i33.i47:                                ; preds = %eat.exit.i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cf
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !30
  %i.cj = icmp eq i8 %i.ci, 95
  br i1 %i.cj, label %bb.v, label %bb.r

bb.r:                                             ; preds = %peek.exit.i33.i47, %eat.exit.i32
  %exitcond.not.i35 = icmp eq i64 %i.cf, %i.bs
  br i1 %exitcond.not.i35, label %.critedge.i42, label %peek.exit.i35.i36

peek.exit.i35.i36:                                ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cf
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !30  ; 5 uses
  %.not.i.i37 = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i37, label %.critedge.i42, label %next.exit.i38

next.exit.i38:                                    ; preds = %peek.exit.i35.i36
  %i.cm = add i64 %i.cf, 1                        ; 2 uses
  store i64 %i.cm, ptr %i.d, align 8, !tbaa !23
  %i.cn = mul i64 %.027.i34, 62
  %i.co = zext nneg i8 %i.cl to i64
  %i.cp = add i8 %i.cl, -48
  %or.cond.i39 = icmp ult i8 %i.cp, 10
  br i1 %or.cond.i39, label %bb.u, label %bb.s

bb.s:                                             ; preds = %next.exit.i38
  %i.cq = add i8 %i.cl, -97
  %or.cond5.i40 = icmp ult i8 %i.cq, 26
  br i1 %or.cond5.i40, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = add i8 %i.cl, -65
  %or.cond8.i41 = icmp ult i8 %i.cr, 26
  br i1 %or.cond8.i41, label %bb.u, label %.critedge.i42

.critedge.i42:                                    ; preds = %bb.t, %peek.exit.i35.i36, %bb.r
  store i8 1, ptr %i.a, align 8, !tbaa !24
  br label %parse_integer_62.exit50

bb.u:                                             ; preds = %bb.t, %bb.s, %next.exit.i38
  %.sink.i44 = phi i64 [ 4294967248, %next.exit.i38 ], [ 4294967209, %bb.s ], [ 4294967267, %bb.t ]
  %i.cs = add nuw nsw i64 %.sink.i44, %i.co
  %.pn.i45 = and i64 %i.cs, 4294967295
  %.1.i46 = add i64 %.pn.i45, %i.cn
  br label %eat.exit.i32, !llvm.loop !1

bb.v:                                             ; preds = %peek.exit.i33.i47
  %i.ct = add nuw i64 %i.cf, 1
  store i64 %i.ct, ptr %i.d, align 8, !tbaa !23
  %i.cu = add i64 %.027.i34, 1
  br label %parse_integer_62.exit50

parse_integer_62.exit50:                          ; preds = %eat.exit.thread.i49, %.critedge.i42, %bb.v
  %.3.i43 = phi i64 [ 0, %eat.exit.thread.i49 ], [ 0, %.critedge.i42 ], [ %i.cu, %bb.v ]
  tail call fastcc void @print_lifetime_from_index(ptr noundef nonnull %0, i64 noundef %.3.i43), !inline_history !2
  br label %demangle_generic_arg.exit

peek.exit.i30:                                    ; preds = %peek.exit.i51
  %i.cv = load ptr, ptr %0, align 8, !tbaa !28
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.bt
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !30
  %i.cy = icmp eq i8 %i.cx, 75
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %peek.exit.i30
  %i.cz = add nuw i64 %i.bt, 1
  store i64 %i.cz, ptr %i.d, align 8, !tbaa !23
  tail call fastcc void @demangle_const(ptr noundef nonnull %0, i1 noundef zeroext false), !inline_history !2
  br label %demangle_generic_arg.exit

bb.x:                                             ; preds = %print_str.exit29, %peek.exit.i30
  tail call fastcc void @demangle_type(ptr noundef nonnull %0), !inline_history !2
  br label %demangle_generic_arg.exit

demangle_generic_arg.exit:                        ; preds = %parse_integer_62.exit50, %bb.w, %bb.x
  %i.da = add i64 %.059, 1
  %i.db = load i8, ptr %i.a, align 8, !tbaa !24, !range !32, !noundef !33
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %common.ret112, label %bb.m, !llvm.loop !77

bb.y:                                             ; preds = %bb.c, %peek.exit.i25
  tail call fastcc void @demangle_path(ptr noundef %0, i1 noundef zeroext false)
  br label %common.ret112
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null}
!1 = distinct !{!1, !31}
!2 = distinct !{null}
!3 = distinct !{!3, !31}
!4 = distinct !{ptr @print_uint64, null}
!5 = distinct !{!5, !31}
!6 = distinct !{!6, !31}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"long", !11, i64 0}
!18 = !{!"_Bool", !11, i64 0}
!19 = !{!"rust_demangler", !16, i64 0, !17, i64 8, !15, i64 16, !15, i64 24, !17, i64 32, !18, i64 40, !18, i64 41, !18, i64 42, !12, i64 44, !17, i64 48}
!20 = !{!19, !17, i64 8}
!21 = !{!19, !15, i64 16}
!22 = !{!19, !15, i64 24}
!23 = !{!19, !17, i64 32}
!24 = !{!19, !18, i64 40}
!25 = !{!19, !18, i64 41}
!26 = !{!19, !18, i64 42}
!27 = !{!19, !17, i64 48}
!28 = !{!19, !16, i64 0}
!29 = !{!19, !12, i64 44}
!30 = !{!11, !11, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!"rust_mangled_ident", !16, i64 0, !17, i64 8, !16, i64 16, !17, i64 24}
!35 = !{!34, !16, i64 0}
!36 = !{!"str_buf", !16, i64 0, !17, i64 8, !17, i64 16, !18, i64 24}
!37 = !{!36, !16, i64 0}
!38 = !{!36, !18, i64 24}
!39 = !{!36, !17, i64 16}
!40 = !{!36, !17, i64 8}
!41 = !{!34, !17, i64 8}
!42 = !{!34, !17, i64 24}
!43 = !{!34, !16, i64 16}
!44 = !{!"llvm.loop.peeled.count", i32 1}
!45 = distinct !{!45, !31}
!46 = distinct !{!46, !31}
!47 = distinct !{null, null}
!48 = distinct !{null, null, null}
!49 = distinct !{!49, !31}
!50 = distinct !{!50, !31}
!51 = distinct !{!51, !31}
!52 = distinct !{!52, !31}
!53 = distinct !{null, null}
!54 = distinct !{!54, !31}
!55 = distinct !{!55, !31}
!56 = distinct !{!56, !31}
!57 = distinct !{!57, !31}
!58 = distinct !{!58, !31}
!59 = distinct !{!59, !31}
!60 = distinct !{!60, !31}
!61 = distinct !{!61, !31}
!62 = distinct !{!62, !31}
!63 = distinct !{!63, !31}
!64 = distinct !{null}
!65 = distinct !{null, null}
!66 = distinct !{!66, !31, !44}
!67 = distinct !{!67, !31}
!68 = !{!16, !16, i64 0}
!69 = !{!17, !17, i64 0}
!70 = distinct !{!70, !31}
!71 = distinct !{!71, !31}
!72 = distinct !{!72, !31}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31, !44}
!75 = distinct !{!75, !31}
!76 = distinct !{!76, !31}
!77 = distinct !{!77, !31}
end_hunk_5
