Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/ast_lt?download=true
inline.NumInlined: 373
inline.NumDeleted: 106
begin_hunk_0_@_Z2ltP3astS0_:bb.a
.lr.ph1342:                                       ; preds = %._crit_edge1339
  %i.ls = getelementptr inbounds nuw i8, ptr %.02511356, i64 48
  %i.lt = getelementptr inbounds nuw i8, ptr %.02401357, i64 48
  %wide.trip.count2159 = zext i32 %i.lr to i64
  br label %bb.bs

bb.br:                                            ; preds = %bb.bs
  %indvars.iv.next2157 = add nuw nsw i64 %indvars.iv2156, 1 ; 2 uses
  %exitcond2160.not = icmp eq i64 %indvars.iv.next2157, %wide.trip.count2159
  br i1 %exitcond2160.not, label %._crit_edge1343, label %bb.bs, !llvm.loop !20

bb.bs:                                            ; preds = %.lr.ph1342, %bb.br
  %indvars.iv2156 = phi i64 [ 0, %.lr.ph1342 ], [ %indvars.iv.next2157, %bb.br ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %indvars.iv2156
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !53 ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv2156
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !53 ; 2 uses
  %.not299 = icmp eq ptr %i.lv, %i.lx
  br i1 %.not299, label %bb.br, label %.backedge

._crit_edge1343:                                  ; preds = %bb.br, %._crit_edge1339
  %i.ly = getelementptr inbounds nuw i8, ptr %.02511356, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !54
  %i.ma = getelementptr inbounds nuw i8, ptr %.02401357, i64 40
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !54
  br label %.backedge

.backedge:                                        ; preds = %bb.cm, %bb.co, %bb.cq, %bb.bz, %_ZNK9parameter7get_astEv.exit377, %bb.bs, %_ZNK9parameter7get_astEv.exit318, %._crit_edge1343, %._crit_edge1326, %bb.ct, %bb.bx
  %.0251.be = phi ptr [ %i.pj, %bb.ct ], [ %i.lz, %._crit_edge1343 ], [ %i.ox, %bb.cq ], [ %i.bo, %_ZNK9parameter7get_astEv.exit318 ], [ %i.mu, %bb.bz ], [ %i.mo, %bb.bx ], [ %i.pb, %._crit_edge1326 ], [ %i.lv, %bb.bs ], [ %i.hv, %_ZNK9parameter7get_astEv.exit377 ], [ %i.oq, %bb.co ], [ %i.oj, %bb.cm ] ; 2 uses
  %.0240.be = phi ptr [ %i.pk, %bb.ct ], [ %i.mb, %._crit_edge1343 ], [ %i.oz, %bb.cq ], [ %i.bp, %_ZNK9parameter7get_astEv.exit318 ], [ %i.mw, %bb.bz ], [ %i.mq, %bb.bx ], [ %i.pd, %._crit_edge1326 ], [ %i.lx, %bb.bs ], [ %i.hw, %_ZNK9parameter7get_astEv.exit377 ], [ %i.os, %bb.co ], [ %i.ol, %bb.cm ] ; 2 uses
  %i.mc = icmp eq ptr %.0251.be, %.0240.be
  br i1 %i.mc, label %.thread443, label %.lr.ph1359.a

bb.bt:                                            ; preds = %bb.c
  %i.md = getelementptr inbounds nuw i8, ptr %.02511356, i64 24
  %i.me = load i32, ptr %i.md, align 8, !tbaa !59 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.02401357, i64 24
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !59 ; 2 uses
  %.not289 = icmp eq i32 %i.me, %i.mg
  br i1 %.not289, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mh = icmp ult i32 %i.me, %i.mg
  br label %.thread443

bb.bv:                                            ; preds = %bb.bt
  %i.mi = getelementptr inbounds nuw i8, ptr %.02511356, i64 28
  %i.mj = load i16, ptr %i.mi, align 4            ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.02401357, i64 28
  %i.ml = load i16, ptr %i.mk, align 4            ; 2 uses
  %.not290 = icmp eq i16 %i.mj, %i.ml
  br i1 %.not290, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mm = icmp ult i16 %i.mj, %i.ml
  br label %.thread443

bb.bx:                                            ; preds = %bb.bv
  %i.mn = getelementptr inbounds nuw i8, ptr %.02511356, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !60 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.02401357, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !60 ; 2 uses
  %.not291 = icmp eq ptr %i.mo, %i.mq
  br i1 %.not291, label %.preheader, label %.backedge

.preheader:                                       ; preds = %bb.bx
  %.not1363 = icmp eq i32 %i.me, 0
  br i1 %.not1363, label %.preheader._crit_edge, label %.lr.ph1328.a

.lr.ph1328.a:                                     ; preds = %.preheader
  %i.mr = getelementptr inbounds nuw i8, ptr %.02511356, i64 32
  %i.ms = getelementptr inbounds nuw i8, ptr %.02401357, i64 32
  %wide.trip.count2149 = zext i32 %i.me to i64
  br label %bb.bz

bb.by:                                            ; preds = %bb.bz
  %indvars.iv.next2147 = add nuw nsw i64 %indvars.iv2146, 1 ; 2 uses
  %exitcond2150.not = icmp eq i64 %indvars.iv.next2147, %wide.trip.count2149
  br i1 %exitcond2150.not, label %.preheader._crit_edge, label %bb.bz, !llvm.loop !21

bb.bz:                                            ; preds = %.lr.ph1328.a, %bb.by
  %indvars.iv2146 = phi i64 [ 0, %.lr.ph1328.a ], [ %indvars.iv.next2147, %bb.by ] ; 3 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %indvars.iv2146
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !17 ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv2146
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !17 ; 2 uses
  %.not292 = icmp eq ptr %i.mu, %i.mw
  br i1 %.not292, label %bb.by, label %.backedge

.preheader._crit_edge:                            ; preds = %.preheader, %bb.by
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 106, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %.thread443

bb.ca:                                            ; preds = %bb.c
  %i.mx = getelementptr inbounds nuw i8, ptr %.02511356, i64 16
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !64 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.02401357, i64 16
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !64 ; 2 uses
  %.not281 = icmp eq i32 %i.my, %i.na
  br i1 %.not281, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nb = icmp slt i32 %i.my, %i.na
  br label %.thread443

bb.cc:                                            ; preds = %bb.ca
  %i.nc = getelementptr inbounds nuw i8, ptr %.02511356, i64 20
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !65 ; 6 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.02401357, i64 20
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !65 ; 2 uses
  %.not282 = icmp eq i32 %i.nd, %i.nf
  br i1 %.not282, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ng = icmp ult i32 %i.nd, %i.nf
  br label %.thread443

bb.ce:                                            ; preds = %bb.cc
  %i.nh = getelementptr inbounds nuw i8, ptr %.02511356, i64 72
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !66 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.02401357, i64 72
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !66 ; 2 uses
  %.not283 = icmp eq i32 %i.ni, %i.nk
  br i1 %.not283, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nl = icmp ult i32 %i.ni, %i.nk
  br label %.thread443

bb.cg:                                            ; preds = %bb.ce
  %i.nm = getelementptr inbounds nuw i8, ptr %.02511356, i64 76
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !67 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.02401357, i64 76
  %i.np = load i32, ptr %i.no, align 4, !tbaa !67 ; 2 uses
  %.not284 = icmp eq i32 %i.nn, %i.np
  br i1 %.not284, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nq = icmp ult i32 %i.nn, %i.np
  br label %.thread443

bb.ci:                                            ; preds = %bb.cg
  %i.nr = getelementptr inbounds nuw i8, ptr %.02511356, i64 44
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !68 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.02401357, i64 44
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !68 ; 2 uses
  %.not285 = icmp eq i32 %i.ns, %i.nu
  br i1 %.not285, label %.preheader512, label %bb.cj

.preheader512:                                    ; preds = %bb.ci
  %.not1360 = icmp eq i32 %i.nd, 0
  br i1 %.not1360, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader512
  %i.nv = getelementptr inbounds nuw i8, ptr %.02511356, i64 80 ; 2 uses
  %i.nw = zext i32 %i.nd to i64                   ; 3 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nw ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.02401357, i64 80 ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %i.nw ; 2 uses
  br label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.oa = icmp slt i32 %i.ns, %i.nu
  br label %.thread443

bb.ck:                                            ; preds = %bb.cm
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.nw
  br i1 %exitcond.not, label %._crit_edge, label %bb.cl, !llvm.loop !22

bb.cl:                                            ; preds = %.lr.ph, %bb.ck
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ck ] ; 7 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv
  %i.od = load ptr, ptr %i.ob, align 8, !tbaa !26
  %i.oe = load ptr, ptr %i.oc, align 8, !tbaa !26
  %.not502 = icmp eq ptr %i.od, %i.oe
  br i1 %.not502, label %bb.cm, label %.thread477

.thread477:                                       ; preds = %bb.cl
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv
  %i.oh = tail call noundef zeroext i1 @_Z2ltRK6symbolS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.of, ptr noundef nonnull align 8 dereferenceable(8) %i.og)
  br label %.thread443

bb.cm:                                            ; preds = %bb.cl
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !53 ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %indvars.iv
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !53 ; 2 uses
  %.not286 = icmp eq ptr %i.oj, %i.ol
  br i1 %.not286, label %bb.ck, label %.backedge

._crit_edge:                                      ; preds = %bb.ck, %.preheader512
  %.not1361 = icmp eq i32 %i.ni, 0
  br i1 %.not1361, label %._crit_edge1322, label %.lr.ph1321

.lr.ph1321:                                       ; preds = %._crit_edge
  %i.om = getelementptr inbounds nuw i8, ptr %.02511356, i64 80
  %i.on = zext i32 %i.nd to i64                   ; 4 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %i.on
  %7 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.on
  %i.oo = getelementptr inbounds nuw i8, ptr %.02401357, i64 80
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.on
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.on
  %wide.trip.count2139 = zext i32 %i.ni to i64
  br label %bb.co

bb.cn:                                            ; preds = %bb.co
  %indvars.iv.next2137 = add nuw nsw i64 %indvars.iv2136, 1 ; 2 uses
  %exitcond2140.not = icmp eq i64 %indvars.iv.next2137, %wide.trip.count2139
  br i1 %exitcond2140.not, label %._crit_edge1322, label %bb.co, !llvm.loop !23

bb.co:                                            ; preds = %.lr.ph1321, %bb.cn
  %indvars.iv2136 = phi i64 [ 0, %.lr.ph1321 ], [ %indvars.iv.next2137, %bb.cn ] ; 3 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv2136
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !17 ; 2 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv2136
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !17 ; 2 uses
  %.not287 = icmp eq ptr %i.oq, %i.os
  br i1 %.not287, label %bb.cn, label %.backedge

._crit_edge1322:                                  ; preds = %bb.cn, %._crit_edge
  %.not1362 = icmp eq i32 %i.nn, 0
  br i1 %.not1362, label %._crit_edge1326, label %.lr.ph1325

.lr.ph1325:                                       ; preds = %._crit_edge1322
  %i.ot = getelementptr inbounds nuw i8, ptr %.02511356, i64 80
  %i.ou = zext i32 %i.nd to i64                   ; 4 uses
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.ou
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ou
  %i.ov = getelementptr inbounds nuw i8, ptr %.02401357, i64 80
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %i.ou
  %13 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.ou
  %wide.trip.count2144 = zext i32 %i.nn to i64
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cq
  %indvars.iv.next2142 = add nuw nsw i64 %indvars.iv2141, 1 ; 2 uses
  %exitcond2145.not = icmp eq i64 %indvars.iv.next2142, %wide.trip.count2144
  br i1 %exitcond2145.not, label %._crit_edge1326, label %bb.cq, !llvm.loop !24

bb.cq:                                            ; preds = %.lr.ph1325, %bb.cp
  %indvars.iv2141 = phi i64 [ 0, %.lr.ph1325 ], [ %indvars.iv.next2142, %bb.cp ] ; 3 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv2141
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !17 ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv2141
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !17 ; 2 uses
  %.not288 = icmp eq ptr %i.ox, %i.oz
  br i1 %.not288, label %bb.cp, label %.backedge

._crit_edge1326:                                  ; preds = %bb.cp, %._crit_edge1322
  %i.pa = getelementptr inbounds nuw i8, ptr %.02511356, i64 24
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !69
  %i.pc = getelementptr inbounds nuw i8, ptr %.02401357, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !69
  br label %.backedge

bb.cr:                                            ; preds = %bb.c
  %i.pe = getelementptr inbounds nuw i8, ptr %.02511356, i64 16
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !71 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.02401357, i64 16
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !71 ; 2 uses
  %.not280 = icmp eq i32 %i.pf, %i.ph
  br i1 %.not280, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.pi = icmp ult i32 %i.pf, %i.ph
  br label %.thread443

bb.ct:                                            ; preds = %bb.cr
  %i.pj = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %.02511356)
  %i.pk = tail call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %.02401357)
  br label %.backedge

bb.cu:                                            ; preds = %bb.c
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 136, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %.thread443

.thread443:                                       ; preds = %.backedge, %bb.a, %bb.aw, %bb.av, %_ZNK4decl18get_num_parametersEv.exit363, %bb.o, %bb.n, %_ZNK4decl18get_num_parametersEv.exit307, %bb.ba, %_ZNK9parameter11get_zstringEv.exit430, %_ZNK9parameter7get_intEv.exit373, %_ZNK9parameter10get_symbolEv.exit393, %_ZNK9parameter10get_doubleEv.exit414, %_ZNK9parameter10get_ext_idEv.exit422, %bb.bk, %bb.bl, %bb.bm, %bb.s, %_ZNK9parameter11get_zstringEv.exit360, %_ZNK9parameter7get_intEv.exit315, %_ZNK9parameter10get_symbolEv.exit332, %_ZNK9parameter10get_doubleEv.exit346, %_ZNK9parameter10get_ext_idEv.exit353, %bb.ac, %bb.ad, %bb.ae, %.thread477, %bb.cu, %bb.cs, %bb.cj, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %.preheader._crit_edge, %bb.bw, %bb.bu, %bb.am, %bb.ak, %_ZNK4decl18get_num_parametersEv.exit309._crit_edge, %bb.e, %bb.b
  %.8275 = phi i1 [ %i.pi, %bb.cs ], [ %i.h, %bb.b ], [ false, %bb.cu ], [ %i.o, %bb.e ], [ %i.kq, %bb.bl ], [ false, %bb.av ], [ false, %_ZNK4decl18get_num_parametersEv.exit309._crit_edge ], [ %i.fq, %bb.ak ], [ %i.fv, %bb.am ], [ false, %bb.n ], [ %i.ej, %bb.ad ], [ %i.mh, %bb.bu ], [ %i.mm, %bb.bw ], [ false, %.preheader._crit_edge ], [ %i.nb, %bb.cb ], [ %i.ng, %bb.cd ], [ %i.nl, %bb.cf ], [ %i.nq, %bb.ch ], [ %i.oa, %bb.cj ], [ %i.oh, %.thread477 ], [ %i.bk, %bb.s ], [ %i.fj, %_ZNK9parameter11get_zstringEv.exit360 ], [ %i.bn, %_ZNK9parameter7get_intEv.exit315 ], [ %i.bq, %_ZNK9parameter10get_symbolEv.exit332 ], [ %i.eo, %_ZNK9parameter10get_doubleEv.exit346 ], [ %i.er, %_ZNK9parameter10get_ext_idEv.exit353 ], [ %i.ek, %bb.ae ], [ %i.eh, %bb.ac ], [ %i.hr, %bb.ba ], [ %i.lq, %_ZNK9parameter11get_zstringEv.exit430 ], [ %i.hu, %_ZNK9parameter7get_intEv.exit373 ], [ %i.hx, %_ZNK9parameter10get_symbolEv.exit393 ], [ %i.kv, %_ZNK9parameter10get_doubleEv.exit414 ], [ %i.ky, %_ZNK9parameter10get_ext_idEv.exit422 ], [ %i.kr, %bb.bm ], [ %i.ko, %bb.bk ], [ false, %_ZNK4decl18get_num_parametersEv.exit307 ], [ %i.as, %bb.o ], [ false, %_ZNK4decl18get_num_parametersEv.exit363 ], [ %i.gz, %bb.aw ], [ false, %bb.a ], [ false, %.backedge ]
  ret i1 %.8275
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_Z2ltRK6symbolS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK7zstringneERKS_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZltRK7zstringS1_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z9is_sortedjPKP4expr(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 2
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.b = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.c = getelementptr i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = tail call noundef zeroext i1 @_Z2ltP3astS0_(ptr noundef %i.f, ptr noundef %i.d) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.g, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !72

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa.ph = xor i1 %i.g, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.lcssa.ph, %._crit_edge.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z6lex_ltjPKP3astS2_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !73

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = tail call noundef zeroext i1 @_Z2ltP3astS0_(ptr noundef %i.b, ptr noundef %i.d)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.g = phi i1 [ %i.f, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.g
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #8
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 _ZTS3ast", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTSSt9exception"}
!13 = !{!"_ZTSSt18bad_variant_access", !12, i64 0, !9, i64 8}
!14 = !{!13, !9, i64 8}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"p1 _ZTS4expr", !8, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = !{!"_ZTS6symbol", !9, i64 0}
!26 = !{!25, !9, i64 0}
!27 = !{!"_ZTS3ast", !5, i64 0, !5, i64 4, !5, i64 6, !5, i64 6, !5, i64 6, !5, i64 8, !5, i64 12}
!28 = !{!"p1 _ZTS9decl_info", !8, i64 0}
!29 = !{!"_ZTS4decl", !27, i64 0, !25, i64 16, !28, i64 24}
!30 = !{!29, !28, i64 24}
!31 = !{!"p1 _ZTS9parameter", !8, i64 0}
end_hunk_0
