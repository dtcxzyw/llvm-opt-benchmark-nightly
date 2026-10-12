Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_cacorrect?download=true
inline.NumInlined: 74
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 80
begin_hunk_0_@process:bb.a
  %sext2916 = add i64 %i.cqw, 4947802324992
  %i.cqx = ashr exact i64 %sext2916, 30
  %i.cqy = getelementptr inbounds i8, ptr %i.cqv, i64 %i.cqx
  %i.cqz = load float, ptr %i.cqy, align 4, !tbaa !33
  %i.cra = getelementptr inbounds nuw [4 x i8], ptr %i.cqv, i64 %indvars.iv2345.7
  %i.crb = getelementptr inbounds nuw i8, ptr %i.cra, i64 3584
  store float %i.cqz, ptr %i.crb, align 4, !tbaa !33
  %indvars.iv.next2346.7 = add nuw nsw i64 %indvars.iv2345.7, 1 ; 3 uses
  %indvars.iv2345.7.tr.1 = trunc nuw i64 %indvars.iv.next2346.7 to i32
  %i.crc = shl nuw i32 %indvars.iv2345.7.tr.1, 1
  %i.crd = and i32 %i.crc, 2
  %i.cre = or disjoint i32 %i.crd, 28
  %i.crf = lshr i32 %i.q, %i.cre
  %i.crg = and i32 %i.crf, 3
  %i.crh = zext nneg i32 %i.crg to i64
  %i.cri = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.crh
  %i.crj = load ptr, ptr %i.cri, align 8, !tbaa !171 ; 2 uses
  %i.crk = shl i64 %indvars.iv.next2346.7, 32
  %sext2916.1 = add i64 %i.crk, 4947802324992
  %i.crl = ashr exact i64 %sext2916.1, 30
  %i.crm = getelementptr inbounds i8, ptr %i.crj, i64 %i.crl
  %i.crn = load float, ptr %i.crm, align 4, !tbaa !33
  %i.cro = getelementptr inbounds nuw [4 x i8], ptr %i.crj, i64 %indvars.iv.next2346.7
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cro, i64 3584
  store float %i.crn, ptr %i.crp, align 4, !tbaa !33
  %indvars.iv.next2346.7.1 = add nuw nsw i64 %indvars.iv2345.7, 2 ; 3 uses
  %indvars.iv2345.7.tr.2 = trunc nuw i64 %indvars.iv.next2346.7.1 to i32
  %i.crq = shl nuw i32 %indvars.iv2345.7.tr.2, 1
  %i.crr = and i32 %i.crq, 2
  %i.crs = or disjoint i32 %i.crr, 28
  %i.crt = lshr i32 %i.q, %i.crs
  %i.cru = and i32 %i.crt, 3
  %i.crv = zext nneg i32 %i.cru to i64
  %i.crw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.crv
  %i.crx = load ptr, ptr %i.crw, align 8, !tbaa !171 ; 2 uses
  %i.cry = shl i64 %indvars.iv.next2346.7.1, 32
  %sext2916.2 = add i64 %i.cry, 4947802324992
  %i.crz = ashr exact i64 %sext2916.2, 30
  %i.csa = getelementptr inbounds i8, ptr %i.crx, i64 %i.crz
  %i.csb = load float, ptr %i.csa, align 4, !tbaa !33
  %i.csc = getelementptr inbounds nuw [4 x i8], ptr %i.crx, i64 %indvars.iv.next2346.7.1
  %i.csd = getelementptr inbounds nuw i8, ptr %i.csc, i64 3584
  store float %i.csb, ptr %i.csd, align 4, !tbaa !33
  %indvars.iv.next2346.7.2 = add nuw nsw i64 %indvars.iv2345.7, 3 ; 3 uses
  %indvars.iv2345.7.tr.3 = trunc nuw i64 %indvars.iv.next2346.7.2 to i32
  %i.cse = shl nuw i32 %indvars.iv2345.7.tr.3, 1
  %i.csf = and i32 %i.cse, 2
  %i.csg = or disjoint i32 %i.csf, 28
  %i.csh = lshr i32 %i.q, %i.csg
  %i.csi = and i32 %i.csh, 3
  %i.csj = zext nneg i32 %i.csi to i64
  %i.csk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.csj
  %i.csl = load ptr, ptr %i.csk, align 8, !tbaa !171 ; 2 uses
  %i.csm = shl i64 %indvars.iv.next2346.7.2, 32
  %sext2916.3 = add i64 %i.csm, 4947802324992
  %i.csn = ashr exact i64 %sext2916.3, 30
  %i.cso = getelementptr inbounds i8, ptr %i.csl, i64 %i.csn
  %i.csp = load float, ptr %i.cso, align 4, !tbaa !33
  %i.csq = getelementptr inbounds nuw [4 x i8], ptr %i.csl, i64 %indvars.iv.next2346.7.2
  %i.csr = getelementptr inbounds nuw i8, ptr %i.csq, i64 3584
  store float %i.csp, ptr %i.csr, align 4, !tbaa !33
  %indvars.iv.next2346.7.3 = add nuw nsw i64 %indvars.iv2345.7, 4 ; 2 uses
  %exitcond2350.7.not.3 = icmp eq i64 %indvars.iv.next2346.7.3, %wide.trip.count2349
  br i1 %exitcond2350.7.not.3, label %.loopexit1959.split, label %._crit_edge2003.6

.preheader1918.preheader.new:                     ; preds = %.prol.loopexit4279, %.preheader1918.preheader.new
  %indvars.iv2345 = phi i64 [ %indvars.iv.next2346.34288, %.preheader1918.preheader.new ], [ %indvars.iv2345.unr, %.prol.loopexit4279 ] ; 7 uses
  %indvars.iv2345.tr = trunc nuw i64 %indvars.iv2345 to i32
  %i.css = shl nuw i32 %indvars.iv2345.tr, 1
  %i.cst = and i32 %i.css, 2
  %i.csu = lshr i32 %i.q, %i.cst
  %i.csv = and i32 %i.csu, 3
  %i.csw = zext nneg i32 %i.csv to i64
  %i.csx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.csw
  %i.csy = load ptr, ptr %i.csx, align 8, !tbaa !171 ; 2 uses
  %i.csz = shl i64 %indvars.iv2345, 32
  %sext = add i64 %i.csz, 8796093022208
  %i.cta = ashr exact i64 %sext, 30
  %i.ctb = getelementptr inbounds i8, ptr %i.csy, i64 %i.cta
  %i.ctc = load float, ptr %i.ctb, align 4, !tbaa !33
  %i.ctd = getelementptr inbounds nuw [4 x i8], ptr %i.csy, i64 %indvars.iv2345
  store float %i.ctc, ptr %i.ctd, align 4, !tbaa !33
  %indvars.iv.next2346 = add nuw nsw i64 %indvars.iv2345, 1 ; 3 uses
  %indvars.iv2345.tr.1 = trunc nuw i64 %indvars.iv.next2346 to i32
  %i.cte = shl nuw i32 %indvars.iv2345.tr.1, 1
  %i.ctf = and i32 %i.cte, 2
  %i.ctg = lshr i32 %i.q, %i.ctf
  %i.cth = and i32 %i.ctg, 3
  %i.cti = zext nneg i32 %i.cth to i64
  %i.ctj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cti
  %i.ctk = load ptr, ptr %i.ctj, align 8, !tbaa !171 ; 2 uses
  %i.ctl = shl i64 %indvars.iv.next2346, 32
  %sext.1 = add i64 %i.ctl, 8796093022208
  %i.ctm = ashr exact i64 %sext.1, 30
  %i.ctn = getelementptr inbounds i8, ptr %i.ctk, i64 %i.ctm
  %i.cto = load float, ptr %i.ctn, align 4, !tbaa !33
  %i.ctp = getelementptr inbounds nuw [4 x i8], ptr %i.ctk, i64 %indvars.iv.next2346
  store float %i.cto, ptr %i.ctp, align 4, !tbaa !33
  %indvars.iv.next2346.14284 = add nuw nsw i64 %indvars.iv2345, 2 ; 3 uses
  %indvars.iv2345.tr.2 = trunc nuw i64 %indvars.iv.next2346.14284 to i32
  %i.ctq = shl nuw i32 %indvars.iv2345.tr.2, 1
  %i.ctr = and i32 %i.ctq, 2
  %i.cts = lshr i32 %i.q, %i.ctr
  %i.ctt = and i32 %i.cts, 3
  %i.ctu = zext nneg i32 %i.ctt to i64
  %i.ctv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ctu
  %i.ctw = load ptr, ptr %i.ctv, align 8, !tbaa !171 ; 2 uses
  %i.ctx = shl i64 %indvars.iv.next2346.14284, 32
  %sext.2 = add i64 %i.ctx, 8796093022208
  %i.cty = ashr exact i64 %sext.2, 30
  %i.ctz = getelementptr inbounds i8, ptr %i.ctw, i64 %i.cty
  %i.cua = load float, ptr %i.ctz, align 4, !tbaa !33
  %i.cub = getelementptr inbounds nuw [4 x i8], ptr %i.ctw, i64 %indvars.iv.next2346.14284
  store float %i.cua, ptr %i.cub, align 4, !tbaa !33
  %indvars.iv.next2346.24286 = add nuw nsw i64 %indvars.iv2345, 3 ; 3 uses
  %indvars.iv2345.tr.3 = trunc nuw i64 %indvars.iv.next2346.24286 to i32
  %i.cuc = shl nuw i32 %indvars.iv2345.tr.3, 1
  %i.cud = and i32 %i.cuc, 2
  %i.cue = lshr i32 %i.q, %i.cud
  %i.cuf = and i32 %i.cue, 3
  %i.cug = zext nneg i32 %i.cuf to i64
  %i.cuh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cug
  %i.cui = load ptr, ptr %i.cuh, align 8, !tbaa !171 ; 2 uses
  %i.cuj = shl i64 %indvars.iv.next2346.24286, 32
  %sext.3 = add i64 %i.cuj, 8796093022208
  %i.cuk = ashr exact i64 %sext.3, 30
  %i.cul = getelementptr inbounds i8, ptr %i.cui, i64 %i.cuk
  %i.cum = load float, ptr %i.cul, align 4, !tbaa !33
  %i.cun = getelementptr inbounds nuw [4 x i8], ptr %i.cui, i64 %indvars.iv.next2346.24286
  store float %i.cum, ptr %i.cun, align 4, !tbaa !33
  %indvars.iv.next2346.34288 = add nuw nsw i64 %indvars.iv2345, 4 ; 2 uses
  %exitcond2350.not.3 = icmp eq i64 %indvars.iv.next2346.34288, %wide.trip.count2349
  br i1 %exitcond2350.not.3, label %._crit_edge2003.preheader, label %.preheader1918.preheader.new

._crit_edge2003.preheader:                        ; preds = %.preheader1918.preheader.new, %.prol.loopexit4279
  %xtraiter4289 = and i64 %wide.trip.count2349, 3 ; 2 uses
  %lcmp.mod4290.not = icmp eq i64 %xtraiter4289, 0
  br i1 %lcmp.mod4290.not, label %._crit_edge2003.prol.loopexit, label %._crit_edge2003.prol

._crit_edge2003.prol:                             ; preds = %._crit_edge2003.preheader, %._crit_edge2003.prol
  %indvars.iv2345.1.prol = phi i64 [ %indvars.iv.next2346.1.prol, %._crit_edge2003.prol ], [ %i.bwy, %._crit_edge2003.preheader ] ; 4 uses
  %prol.iter4291 = phi i64 [ %prol.iter4291.next, %._crit_edge2003.prol ], [ 0, %._crit_edge2003.preheader ]
  %indvars.iv2345.1.tr.prol = trunc nuw i64 %indvars.iv2345.1.prol to i32
  %i.cuo = shl nuw i32 %indvars.iv2345.1.tr.prol, 1
  %i.cup = and i32 %i.cuo, 2
  %i.cuq = or disjoint i32 %i.cup, 4
  %i.cur = lshr i32 %i.q, %i.cuq
  %i.cus = and i32 %i.cur, 3
  %i.cut = zext nneg i32 %i.cus to i64
  %i.cuu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cut
  %i.cuv = load ptr, ptr %i.cuu, align 8, !tbaa !171 ; 2 uses
  %i.cuw = shl i64 %indvars.iv2345.1.prol, 32
  %sext2910.prol = add i64 %i.cuw, 8246337208320
  %i.cux = ashr exact i64 %sext2910.prol, 30
  %i.cuy = getelementptr inbounds i8, ptr %i.cuv, i64 %i.cux
  %i.cuz = load float, ptr %i.cuy, align 4, !tbaa !33
  %i.cva = getelementptr inbounds nuw [4 x i8], ptr %i.cuv, i64 %indvars.iv2345.1.prol
  %i.cvb = getelementptr inbounds nuw i8, ptr %i.cva, i64 512
  store float %i.cuz, ptr %i.cvb, align 4, !tbaa !33
  %indvars.iv.next2346.1.prol = add nuw nsw i64 %indvars.iv2345.1.prol, 1 ; 2 uses
  %prol.iter4291.next = add i64 %prol.iter4291, 1 ; 2 uses
  %prol.iter4291.cmp.not = icmp eq i64 %prol.iter4291.next, %xtraiter4289
  br i1 %prol.iter4291.cmp.not, label %._crit_edge2003.prol.loopexit, label %._crit_edge2003.prol, !llvm.loop !67

._crit_edge2003.prol.loopexit:                    ; preds = %._crit_edge2003.prol, %._crit_edge2003.preheader
  %indvars.iv2345.1.unr = phi i64 [ %i.bwy, %._crit_edge2003.preheader ], [ %indvars.iv.next2346.1.prol, %._crit_edge2003.prol ]
  %i.cvc = icmp ult i64 %i.bxa, 3
  br i1 %i.cvc, label %._crit_edge2003.1.preheader, label %._crit_edge2003

.loopexit1959.split:                              ; preds = %._crit_edge2003.6.prol.loopexit, %._crit_edge2003.6, %._crit_edge2000.split
  %or.cond2278 = select i1 %brmerge2277.not2309, i1 %i.bwu, i1 false
  br i1 %or.cond2278, label %.preheader1917.preheader, label %.loopexit1957

.preheader1917.preheader:                         ; preds = %.loopexit1959.split
  %i.cvd = zext nneg i32 %i.bwp to i64            ; 3 uses
  %wide.trip.count2358 = zext i32 %i.bwt to i64   ; 3 uses
  %i.cve = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv2494
  %xtraiter4315 = and i64 %wide.trip.count2358, 3 ; 2 uses
  %lcmp.mod4316.not = icmp eq i64 %xtraiter4315, 0
  %i.cvf = sub nsw i64 %i.cvd, %wide.trip.count2358
  %i.cvg = icmp ugt i64 %i.cvf, -4
  br label %.preheader1917

.preheader1917:                                   ; preds = %.preheader1917.preheader, %._crit_edge2007
  %indvars.iv2360 = phi i64 [ 0, %.preheader1917.preheader ], [ %indvars.iv.next2361, %._crit_edge2007 ] ; 4 uses
  %i.cvh = trunc nuw nsw i64 %indvars.iv2360 to i32
  %i.cvi = sub i32 %i.es, %i.cvh
  %i.cvj = mul nsw i32 %i.cvi, %i.ae
  %i.cvk = sext i32 %i.cvj to i64
  %i.cvl = add nsw i64 %indvars.iv2360, %i.bvl
  %indvars.iv2360.tr = trunc nuw nsw i64 %indvars.iv2360 to i32
  %i.cvm = shl i32 %indvars.iv2360.tr, 2          ; 5 uses
  %i.cvn = getelementptr [4 x i8], ptr %i.cve, i64 %i.cvk ; 5 uses
  %.idx2917 = shl i64 %i.cvl, 9                   ; 5 uses
  br i1 %lcmp.mod4316.not, label %.prol.loopexit4314, label %.prol.preheader4313

.prol.preheader4313:                              ; preds = %.preheader1917, %.prol.preheader4313
  %indvars.iv2355.prol = phi i64 [ %indvars.iv.next2356.prol, %.prol.preheader4313 ], [ %i.cvd, %.preheader1917 ] ; 4 uses
  %prol.iter4317 = phi i64 [ %prol.iter4317.next, %.prol.preheader4313 ], [ 0, %.preheader1917 ]
  %i.cvo = trunc nuw nsw i64 %indvars.iv2355.prol to i32
  %i.cvp = shl i32 %i.cvo, 1
  %i.cvq = and i32 %i.cvp, 2
  %i.cvr = or disjoint i32 %i.cvm, %i.cvq
  %i.cvs = lshr i32 %i.q, %i.cvr
  %i.cvt = and i32 %i.cvs, 3
  %i.cvu = getelementptr [4 x i8], ptr %i.cvn, i64 %indvars.iv2355.prol
  %i.cvv = load float, ptr %i.cvu, align 4, !tbaa !33
  %i.cvw = zext nneg i32 %i.cvt to i64
  %i.cvx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cvw
  %i.cvy = load ptr, ptr %i.cvx, align 8, !tbaa !171
  %i.cvz = getelementptr [4 x i8], ptr %i.cvy, i64 %indvars.iv2355.prol
  %i.cwa = getelementptr i8, ptr %i.cvz, i64 %.idx2917
  store float %i.cvv, ptr %i.cwa, align 4, !tbaa !33
  %indvars.iv.next2356.prol = add nuw nsw i64 %indvars.iv2355.prol, 1 ; 2 uses
  %prol.iter4317.next = add i64 %prol.iter4317, 1 ; 2 uses
  %prol.iter4317.cmp.not = icmp eq i64 %prol.iter4317.next, %xtraiter4315
  br i1 %prol.iter4317.cmp.not, label %.prol.loopexit4314, label %.prol.preheader4313, !llvm.loop !68

.prol.loopexit4314:                               ; preds = %.prol.preheader4313, %.preheader1917
  %indvars.iv2355.unr = phi i64 [ %i.cvd, %.preheader1917 ], [ %indvars.iv.next2356.prol, %.prol.preheader4313 ]
  br i1 %i.cvg, label %._crit_edge2007, label %.preheader1917.new

._crit_edge2007:                                  ; preds = %.preheader1917.new, %.prol.loopexit4314
  %indvars.iv.next2361 = add nuw nsw i64 %indvars.iv2360, 1 ; 2 uses
  %i.cwb = icmp slt i64 %indvars.iv.next2361, %i.bvm
  br i1 %i.cwb, label %.preheader1917, label %.loopexit1957

.preheader1917.new:                               ; preds = %.prol.loopexit4314, %.preheader1917.new
  %indvars.iv2355 = phi i64 [ %indvars.iv.next2356.3, %.preheader1917.new ], [ %indvars.iv2355.unr, %.prol.loopexit4314 ] ; 8 uses
  %i.cwc = trunc nuw nsw i64 %indvars.iv2355 to i32
  %i.cwd = shl i32 %i.cwc, 1
  %i.cwe = and i32 %i.cwd, 2
  %i.cwf = or disjoint i32 %i.cvm, %i.cwe
  %i.cwg = lshr i32 %i.q, %i.cwf
  %i.cwh = and i32 %i.cwg, 3
  %i.cwi = getelementptr [4 x i8], ptr %i.cvn, i64 %indvars.iv2355
  %i.cwj = load float, ptr %i.cwi, align 4, !tbaa !33
  %i.cwk = zext nneg i32 %i.cwh to i64
  %i.cwl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cwk
  %i.cwm = load ptr, ptr %i.cwl, align 8, !tbaa !171
  %i.cwn = getelementptr [4 x i8], ptr %i.cwm, i64 %indvars.iv2355
  %i.cwo = getelementptr i8, ptr %i.cwn, i64 %.idx2917
  store float %i.cwj, ptr %i.cwo, align 4, !tbaa !33
  %indvars.iv.next2356 = add nuw nsw i64 %indvars.iv2355, 1 ; 3 uses
  %i.cwp = trunc nuw nsw i64 %indvars.iv.next2356 to i32
  %i.cwq = shl i32 %i.cwp, 1
  %i.cwr = and i32 %i.cwq, 2
  %i.cws = or disjoint i32 %i.cvm, %i.cwr
  %i.cwt = lshr i32 %i.q, %i.cws
  %i.cwu = and i32 %i.cwt, 3
  %i.cwv = getelementptr [4 x i8], ptr %i.cvn, i64 %indvars.iv.next2356
  %i.cww = load float, ptr %i.cwv, align 4, !tbaa !33
  %i.cwx = zext nneg i32 %i.cwu to i64
  %i.cwy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cwx
  %i.cwz = load ptr, ptr %i.cwy, align 8, !tbaa !171
  %i.cxa = getelementptr [4 x i8], ptr %i.cwz, i64 %indvars.iv.next2356
  %i.cxb = getelementptr i8, ptr %i.cxa, i64 %.idx2917
  store float %i.cww, ptr %i.cxb, align 4, !tbaa !33
  %indvars.iv.next2356.1 = add nuw nsw i64 %indvars.iv2355, 2 ; 2 uses
  %i.cxc = trunc i64 %indvars.iv2355 to i32
  %i.cxd = shl i32 %i.cxc, 1
  %i.cxe = and i32 %i.cxd, 2
  %i.cxf = or disjoint i32 %i.cvm, %i.cxe
  %i.cxg = lshr i32 %i.q, %i.cxf
  %i.cxh = and i32 %i.cxg, 3
  %i.cxi = getelementptr [4 x i8], ptr %i.cvn, i64 %indvars.iv.next2356.1
  %i.cxj = load float, ptr %i.cxi, align 4, !tbaa !33
  %i.cxk = zext nneg i32 %i.cxh to i64
  %i.cxl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cxk
  %i.cxm = load ptr, ptr %i.cxl, align 8, !tbaa !171
  %i.cxn = getelementptr [4 x i8], ptr %i.cxm, i64 %indvars.iv.next2356.1
  %i.cxo = getelementptr i8, ptr %i.cxn, i64 %.idx2917
  store float %i.cxj, ptr %i.cxo, align 4, !tbaa !33
  %indvars.iv.next2356.2 = add nuw nsw i64 %indvars.iv2355, 3 ; 3 uses
  %i.cxp = trunc nuw nsw i64 %indvars.iv.next2356.2 to i32
  %i.cxq = shl i32 %i.cxp, 1
  %i.cxr = and i32 %i.cxq, 2
  %i.cxs = or disjoint i32 %i.cvm, %i.cxr
  %i.cxt = lshr i32 %i.q, %i.cxs
  %i.cxu = and i32 %i.cxt, 3
  %i.cxv = getelementptr [4 x i8], ptr %i.cvn, i64 %indvars.iv.next2356.2
  %i.cxw = load float, ptr %i.cxv, align 4, !tbaa !33
  %i.cxx = zext nneg i32 %i.cxu to i64
  %i.cxy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cxx
  %i.cxz = load ptr, ptr %i.cxy, align 8, !tbaa !171
  %i.cya = getelementptr [4 x i8], ptr %i.cxz, i64 %indvars.iv.next2356.2
  %i.cyb = getelementptr i8, ptr %i.cya, i64 %.idx2917
  store float %i.cxw, ptr %i.cyb, align 4, !tbaa !33
  %indvars.iv.next2356.3 = add nuw nsw i64 %indvars.iv2355, 4 ; 2 uses
  %exitcond2359.not.3 = icmp eq i64 %indvars.iv.next2356.3, %wide.trip.count2358
  br i1 %exitcond2359.not.3, label %._crit_edge2007, label %.preheader1917.new

.loopexit1957:                                    ; preds = %._crit_edge2007, %.loopexit1959.split
  %brmerge2281.not = select i1 %i.bwo, i1 %i.bux, i1 false
  br i1 %brmerge2281.not, label %.preheader1916, label %.loopexit1955

.preheader1916:                                   ; preds = %.loopexit1957, %.preheader1916
  %indvars.iv2367 = phi i64 [ %indvars.iv.next2368, %.preheader1916 ], [ %i.bvk, %.loopexit1957 ] ; 3 uses
  %indvars.iv2367.tr = trunc nuw i64 %indvars.iv2367 to i32
  %i.cyc = shl nuw i32 %indvars.iv2367.tr, 1
  %i.cyd = and i32 %i.cyc, 14                     ; 2 uses
  %i.cye = shl nuw nsw i64 %indvars.iv2367, 7     ; 16 uses
  %i.cyf = shl nuw nsw i32 %i.cyd, 1
  %i.cyg = lshr i32 %i.q, %i.cyf
  %i.cyh = and i32 %i.cyg, 3
  %i.cyi = zext nneg i32 %i.cyh to i64
  %i.cyj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cyi
  %i.cyk = load ptr, ptr %i.cyj, align 8, !tbaa !171 ; 8 uses
  %i.cyl = getelementptr inbounds nuw [4 x i8], ptr %i.cyk, i64 %i.cye
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cyl, i64 64
  %i.cyn = load float, ptr %i.cym, align 4, !tbaa !33
  %i.cyo = getelementptr inbounds nuw [4 x i8], ptr %i.cyk, i64 %i.cye
  store float %i.cyn, ptr %i.cyo, align 4, !tbaa !33
  %i.cyp = shl nuw nsw i32 %i.cyd, 1
  %i.cyq = or disjoint i32 %i.cyp, 2
  %i.cyr = lshr i32 %i.q, %i.cyq
  %i.cys = and i32 %i.cyr, 3
  %i.cyt = zext nneg i32 %i.cys to i64
  %i.cyu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cyt
  %i.cyv = load ptr, ptr %i.cyu, align 8, !tbaa !171 ; 8 uses
  %i.cyw = getelementptr inbounds nuw [4 x i8], ptr %i.cyv, i64 %i.cye
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cyw, i64 60
  %i.cyy = load float, ptr %i.cyx, align 4, !tbaa !33
  %i.cyz = getelementptr inbounds nuw [4 x i8], ptr %i.cyv, i64 %i.cye
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cyz, i64 4
  store float %i.cyy, ptr %i.cza, align 4, !tbaa !33
  %i.czb = getelementptr inbounds nuw [4 x i8], ptr %i.cyk, i64 %i.cye
  %i.czc = getelementptr inbounds nuw i8, ptr %i.czb, i64 56
  %i.czd = load float, ptr %i.czc, align 4, !tbaa !33
  %i.cze = getelementptr inbounds nuw [4 x i8], ptr %i.cyk, i64 %i.cye
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cze, i64 8
  store float %i.czd, ptr %i.czf, align 4, !tbaa !33
  %i.czg = getelementptr inbounds nuw [4 x i8], ptr %i.cyv, i64 %i.cye
  %i.czh = getelementptr inbounds nuw i8, ptr %i.czg, i64 52
  %i.czi = load float, ptr %i.czh, align 4, !tbaa !33
  %i.czj = getelementptr inbounds nuw [4 x i8], ptr %i.cyv, i64 %i.cye
  %i.czk = getelementptr inbounds nuw i8, ptr %i.czj, i64 12
  store float %i.czi, ptr %i.czk, align 4, !tbaa !33
  %i.czl = getelementptr inbounds nuw [4 x i8], ptr %i.cyk, i64 %i.cye
  %i.czm = getelementptr inbounds nuw i8, ptr %i.czl, i64 48
  %i.czn = load float, ptr %i.czm, align 4, !tbaa !33
  %i.czo = getelementptr inbounds nuw [4 x i8], ptr %i.cyk, i64 %i.cye
  %i.czp = getelementptr inbounds nuw i8, ptr %i.czo, i64 16
  store float %i.czn, ptr %i.czp, align 4, !tbaa !33
  %i.czq = getelementptr inbounds nuw [4 x i8], ptr %i.cyv, i64 %i.cye
  %i.czr = getelementptr inbounds nuw i8, ptr %i.czq, i64 44
  %i.czs = load float, ptr %i.czr, align 4, !tbaa !33
  %i.czt = getelementptr inbounds nuw [4 x i8], ptr %i.cyv, i64 %i.cye
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czt, i64 20
  store float %i.czs, ptr %i.czu, align 4, !tbaa !33
  %i.czv = getelementptr inbounds nuw [4 x i8], ptr %i.cyk, i64 %i.cye
  %i.czw = getelementptr inbounds nuw i8, ptr %i.czv, i64 40
  %i.czx = load float, ptr %i.czw, align 4, !tbaa !33
  %i.czy = getelementptr inbounds nuw [4 x i8], ptr %i.cyk, i64 %i.cye
  %i.czz = getelementptr inbounds nuw i8, ptr %i.czy, i64 24
  store float %i.czx, ptr %i.czz, align 4, !tbaa !33
  %i.daa = getelementptr inbounds nuw [4 x i8], ptr %i.cyv, i64 %i.cye
  %i.dab = getelementptr inbounds nuw i8, ptr %i.daa, i64 36
  %i.dac = load float, ptr %i.dab, align 4, !tbaa !33
  %i.dad = getelementptr inbounds nuw [4 x i8], ptr %i.cyv, i64 %i.cye
  %i.dae = getelementptr inbounds nuw i8, ptr %i.dad, i64 28
  store float %i.dac, ptr %i.dae, align 4, !tbaa !33
  %indvars.iv.next2368 = add nuw nsw i64 %indvars.iv2367, 1 ; 2 uses
  %exitcond2371.not = icmp eq i64 %indvars.iv.next2368, %wide.trip.count2370
  br i1 %exitcond2371.not, label %.loopexit1955, label %.preheader1916

.loopexit1955:                                    ; preds = %.preheader1916, %.loopexit1957
  %i.daf = icmp sge i32 %i.bwt, %i.bwn            ; 3 uses
  %brmerge2283 = select i1 %i.daf, i1 true, i1 %.not2828
  br i1 %brmerge2283, label %.loopexit1953, label %.preheader1915.preheader

.preheader1915.preheader:                         ; preds = %.loopexit1955
  %i.dag = sub i32 %i.bwn, %i.bwt
  %i.dah = tail call i32 @llvm.smin.i32(i32 %i.dag, i32 8) ; 2 uses
  %i.dai = sext i32 %i.bwt to i64                 ; 5 uses
  %i.daj = call i32 @llvm.umax.i32(i32 %i.dah, i32 1)
  %umax4318 = zext i32 %i.daj to i64              ; 2 uses
  %xtraiter4319 = and i64 %umax4318, 3            ; 3 uses
  %i.dak = icmp ult i32 %i.dah, 4
  %unroll_iter4322 = and i64 %umax4318, 4294967292
  %lcmp.mod4320.not = icmp eq i64 %xtraiter4319, 0
  %lcmp.mod4321 = icmp ne i64 %xtraiter4319, 0
  br label %.preheader1915

.preheader1915:                                   ; preds = %.preheader1915.preheader, %._crit_edge2013
  %indvars.iv2375 = phi i64 [ %i.bvk, %.preheader1915.preheader ], [ %indvars.iv.next2376, %._crit_edge2013 ] ; 4 uses
  %indvars.iv2375.tr = trunc nuw i64 %indvars.iv2375 to i32
  %i.dal = shl nuw i32 %indvars.iv2375.tr, 1
  %i.dam = and i32 %i.dal, 14                     ; 5 uses
  %i.dan = add nsw i64 %indvars.iv2375, %indvars.iv2498
  %i.dao = trunc i64 %i.dan to i32
  %i.dap = mul i32 %i.ae, %i.dao
  %i.daq = add i32 %i.et, %i.dap                  ; 5 uses
  %.idx2918 = shl i64 %indvars.iv2375, 9          ; 5 uses
  br i1 %i.dak, label %.epil.preheader, label %.preheader1915.new

.preheader1915.new:                               ; preds = %.preheader1915
  %i.dar = shl nuw nsw i32 %i.dam, 1
  %i.das = lshr i32 %i.q, %i.dar
  %i.dat = and i32 %i.das, 3
  %i.dau = zext nneg i32 %i.dat to i64
  %i.dav = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dau
  %i.daw = load ptr, ptr %i.dav, align 8, !tbaa !171
  %i.dax = getelementptr i8, ptr %i.daw, i64 %.idx2918
  %i.day = getelementptr [4 x i8], ptr %i.dax, i64 %i.dai
  %i.daz = shl nuw nsw i32 %i.dam, 1
  %i.dba = or disjoint i32 %i.daz, 2
  %i.dbb = lshr i32 %i.q, %i.dba
  %i.dbc = and i32 %i.dbb, 3
  %i.dbd = zext nneg i32 %i.dbc to i64
  %i.dbe = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dbd
  %i.dbf = load ptr, ptr %i.dbe, align 8, !tbaa !171
  %i.dbg = getelementptr i8, ptr %i.dbf, i64 %.idx2918
  %i.dbh = getelementptr [4 x i8], ptr %i.dbg, i64 %i.dai
  %i.dbi = shl nuw nsw i32 %i.dam, 1
  %i.dbj = lshr i32 %i.q, %i.dbi
  %i.dbk = and i32 %i.dbj, 3
  %i.dbl = zext nneg i32 %i.dbk to i64
  %i.dbm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dbl
  %i.dbn = load ptr, ptr %i.dbm, align 8, !tbaa !171
  %i.dbo = getelementptr i8, ptr %i.dbn, i64 %.idx2918
  %i.dbp = getelementptr [4 x i8], ptr %i.dbo, i64 %i.dai
  %i.dbq = shl nuw nsw i32 %i.dam, 1
  %i.dbr = or disjoint i32 %i.dbq, 2
  %i.dbs = lshr i32 %i.q, %i.dbr
  %i.dbt = and i32 %i.dbs, 3
  %i.dbu = zext nneg i32 %i.dbt to i64
  %i.dbv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dbu
  %i.dbw = load ptr, ptr %i.dbv, align 8, !tbaa !171
  %i.dbx = getelementptr i8, ptr %i.dbw, i64 %.idx2918
  %i.dby = getelementptr [4 x i8], ptr %i.dbx, i64 %i.dai
  br label %bb.s

._crit_edge2013.unr-lcssa:                        ; preds = %bb.s
  br i1 %lcmp.mod4320.not, label %._crit_edge2013, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge2013.unr-lcssa, %.preheader1915
  %indvars.iv2372.epil.init = phi i64 [ 0, %.preheader1915 ], [ %indvars.iv.next2373.3, %._crit_edge2013.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4321)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv2372.epil = phi i64 [ %indvars.iv2372.epil.init, %.epil.preheader ], [ %indvars.iv.next2373.epil, %bb.r ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.dbz = trunc nuw nsw i64 %indvars.iv2372.epil to i32 ; 2 uses
  %i.dca = and i32 %i.dbz, 1
  %i.dcb = or disjoint i32 %i.dca, %i.dam
  %i.dcc = shl nuw nsw i32 %i.dcb, 1
  %i.dcd = lshr i32 %i.q, %i.dcc
  %i.dce = and i32 %i.dcd, 3
  %i.dcf = sub i32 %i.daq, %i.dbz
  %i.dcg = sext i32 %i.dcf to i64
  %i.dch = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dcg
  %i.dci = load float, ptr %i.dch, align 4, !tbaa !33
  %i.dcj = zext nneg i32 %i.dce to i64
  %i.dck = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dcj
  %i.dcl = load ptr, ptr %i.dck, align 8, !tbaa !171
  %i.dcm = getelementptr i8, ptr %i.dcl, i64 %.idx2918
  %i.dcn = getelementptr [4 x i8], ptr %i.dcm, i64 %i.dai
  %i.dco = getelementptr [4 x i8], ptr %i.dcn, i64 %indvars.iv2372.epil
  store float %i.dci, ptr %i.dco, align 4, !tbaa !33
  %indvars.iv.next2373.epil = add nuw nsw i64 %indvars.iv2372.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter4319
  br i1 %epil.iter.cmp.not, label %._crit_edge2013, label %bb.r, !llvm.loop !69

._crit_edge2013:                                  ; preds = %bb.r, %._crit_edge2013.unr-lcssa
  %indvars.iv.next2376 = add nuw nsw i64 %indvars.iv2375, 1 ; 2 uses
  %exitcond2379.not = icmp eq i64 %indvars.iv.next2376, %wide.trip.count2378
  br i1 %exitcond2379.not, label %.loopexit1953, label %.preheader1915

bb.s:                                             ; preds = %bb.s, %.preheader1915.new
  %indvars.iv2372 = phi i64 [ 0, %.preheader1915.new ], [ %indvars.iv.next2373.3, %bb.s ] ; 6 uses
  %niter4323 = phi i64 [ 0, %.preheader1915.new ], [ %niter4323.next.3, %bb.s ]
  %i.dcp = trunc nuw nsw i64 %indvars.iv2372 to i32
  %i.dcq = sub i32 %i.daq, %i.dcp
  %i.dcr = sext i32 %i.dcq to i64
  %i.dcs = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dcr
  %i.dct = load float, ptr %i.dcs, align 4, !tbaa !33
  %i.dcu = getelementptr [4 x i8], ptr %i.day, i64 %indvars.iv2372
  store float %i.dct, ptr %i.dcu, align 4, !tbaa !33
  %indvars.iv.next2373 = or disjoint i64 %indvars.iv2372, 1 ; 2 uses
  %i.dcv = trunc nuw nsw i64 %indvars.iv.next2373 to i32
  %i.dcw = sub i32 %i.daq, %i.dcv
  %i.dcx = sext i32 %i.dcw to i64
  %i.dcy = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dcx
  %i.dcz = load float, ptr %i.dcy, align 4, !tbaa !33
  %i.dda = getelementptr [4 x i8], ptr %i.dbh, i64 %indvars.iv.next2373
  store float %i.dcz, ptr %i.dda, align 4, !tbaa !33
  %indvars.iv.next2373.1 = or disjoint i64 %indvars.iv2372, 2 ; 2 uses
  %i.ddb = trunc nuw nsw i64 %indvars.iv.next2373.1 to i32
  %i.ddc = sub i32 %i.daq, %i.ddb
  %i.ddd = sext i32 %i.ddc to i64
  %i.dde = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ddd
  %i.ddf = load float, ptr %i.dde, align 4, !tbaa !33
  %i.ddg = getelementptr [4 x i8], ptr %i.dbp, i64 %indvars.iv.next2373.1
  store float %i.ddf, ptr %i.ddg, align 4, !tbaa !33
  %indvars.iv.next2373.2 = or disjoint i64 %indvars.iv2372, 3 ; 2 uses
  %i.ddh = trunc nuw nsw i64 %indvars.iv.next2373.2 to i32
  %i.ddi = sub i32 %i.daq, %i.ddh
  %i.ddj = sext i32 %i.ddi to i64
  %i.ddk = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ddj
  %i.ddl = load float, ptr %i.ddk, align 4, !tbaa !33
  %i.ddm = getelementptr [4 x i8], ptr %i.dby, i64 %indvars.iv.next2373.2
  store float %i.ddl, ptr %i.ddm, align 4, !tbaa !33
  %indvars.iv.next2373.3 = add nuw nsw i64 %indvars.iv2372, 4 ; 2 uses
  %niter4323.next.3 = add i64 %niter4323, 4       ; 2 uses
  %niter4323.ncmp.3.not = icmp eq i64 %niter4323.next.3, %unroll_iter4322
  br i1 %niter4323.ncmp.3.not, label %._crit_edge2013.unr-lcssa, label %bb.s

.loopexit1953:                                    ; preds = %._crit_edge2013, %.loopexit1955
  %i.ddn = and i32 %i.bwm, %i.bup
  %or.cond7.not = icmp sgt i32 %i.ddn, -1
  br i1 %or.cond7.not, label %.loopexit1951, label %.preheader1914

.preheader1914:                                   ; preds = %.loopexit1953, %.preheader1914
  %indvars.iv2384 = phi i64 [ %indvars.iv.next2385, %.preheader1914 ], [ 0, %.loopexit1953 ] ; 4 uses
  %i.ddo = shl nuw nsw i64 %indvars.iv2384, 2     ; 2 uses
  %i.ddp = sub nuw nsw i64 16, %indvars.iv2384
  %i.ddq = mul nsw i64 %i.ddp, %i.af              ; 8 uses
  %i.ddr = shl nuw nsw i64 %indvars.iv2384, 7     ; 8 uses
  %i.dds = trunc nuw nsw i64 %i.ddo to i32
  %i.ddt = lshr i32 %i.q, %i.dds
  %i.ddu = and i32 %i.ddt, 3
  %i.ddv = getelementptr [4 x i8], ptr %i.av, i64 %i.ddq
  %i.ddw = getelementptr i8, ptr %i.ddv, i64 64
  %i.ddx = load float, ptr %i.ddw, align 4, !tbaa !33
  %i.ddy = zext nneg i32 %i.ddu to i64
  %i.ddz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ddy
  %i.dea = load ptr, ptr %i.ddz, align 8, !tbaa !171 ; 4 uses
  %i.deb = getelementptr inbounds nuw [4 x i8], ptr %i.dea, i64 %i.ddr
  store float %i.ddx, ptr %i.deb, align 4, !tbaa !33
  %i.dec = trunc i64 %i.ddo to i32
  %i.ded = or disjoint i32 %i.dec, 2
  %i.dee = lshr i32 %i.q, %i.ded
  %i.def = and i32 %i.dee, 3
  %i.deg = shl i64 %i.ddq, 32
  %sext2919 = add i64 %i.deg, 64424509440
  %i.deh = ashr exact i64 %sext2919, 30
  %i.dei = getelementptr inbounds i8, ptr %i.av, i64 %i.deh
  %i.dej = load float, ptr %i.dei, align 4, !tbaa !33
  %i.dek = zext nneg i32 %i.def to i64
  %i.del = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dek
  %i.dem = load ptr, ptr %i.del, align 8, !tbaa !171 ; 4 uses
  %i.den = getelementptr inbounds nuw [4 x i8], ptr %i.dem, i64 %i.ddr
  %i.deo = getelementptr inbounds nuw i8, ptr %i.den, i64 4
  store float %i.dej, ptr %i.deo, align 4, !tbaa !33
  %i.dep = shl i64 %i.ddq, 32
  %sext2920 = add i64 %i.dep, 60129542144
  %i.deq = ashr exact i64 %sext2920, 30
  %i.der = getelementptr inbounds i8, ptr %i.av, i64 %i.deq
  %i.des = load float, ptr %i.der, align 4, !tbaa !33
  %i.det = getelementptr inbounds nuw [4 x i8], ptr %i.dea, i64 %i.ddr
  %i.deu = getelementptr inbounds nuw i8, ptr %i.det, i64 8
  store float %i.des, ptr %i.deu, align 4, !tbaa !33
  %i.dev = shl i64 %i.ddq, 32
  %sext2921 = add i64 %i.dev, 55834574848
  %i.dew = ashr exact i64 %sext2921, 30
  %i.dex = getelementptr inbounds i8, ptr %i.av, i64 %i.dew
  %i.dey = load float, ptr %i.dex, align 4, !tbaa !33
  %i.dez = getelementptr inbounds nuw [4 x i8], ptr %i.dem, i64 %i.ddr
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dez, i64 12
  store float %i.dey, ptr %i.dfa, align 4, !tbaa !33
  %i.dfb = shl i64 %i.ddq, 32
  %sext2922 = add i64 %i.dfb, 51539607552
  %i.dfc = ashr exact i64 %sext2922, 30
  %i.dfd = getelementptr inbounds i8, ptr %i.av, i64 %i.dfc
  %i.dfe = load float, ptr %i.dfd, align 4, !tbaa !33
  %i.dff = getelementptr inbounds nuw [4 x i8], ptr %i.dea, i64 %i.ddr
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.dff, i64 16
  store float %i.dfe, ptr %i.dfg, align 4, !tbaa !33
  %i.dfh = shl i64 %i.ddq, 32
  %sext2923 = add i64 %i.dfh, 47244640256
  %i.dfi = ashr exact i64 %sext2923, 30
  %i.dfj = getelementptr inbounds i8, ptr %i.av, i64 %i.dfi
  %i.dfk = load float, ptr %i.dfj, align 4, !tbaa !33
  %i.dfl = getelementptr inbounds nuw [4 x i8], ptr %i.dem, i64 %i.ddr
  %i.dfm = getelementptr inbounds nuw i8, ptr %i.dfl, i64 20
  store float %i.dfk, ptr %i.dfm, align 4, !tbaa !33
  %i.dfn = shl i64 %i.ddq, 32
  %sext2924 = add i64 %i.dfn, 42949672960
  %i.dfo = ashr exact i64 %sext2924, 30
  %i.dfp = getelementptr inbounds i8, ptr %i.av, i64 %i.dfo
  %i.dfq = load float, ptr %i.dfp, align 4, !tbaa !33
  %i.dfr = getelementptr inbounds nuw [4 x i8], ptr %i.dea, i64 %i.ddr
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.dfr, i64 24
  store float %i.dfq, ptr %i.dfs, align 4, !tbaa !33
  %i.dft = shl i64 %i.ddq, 32
  %sext2925 = add i64 %i.dft, 38654705664
  %i.dfu = ashr exact i64 %sext2925, 30
  %i.dfv = getelementptr inbounds i8, ptr %i.av, i64 %i.dfu
  %i.dfw = load float, ptr %i.dfv, align 4, !tbaa !33
  %i.dfx = getelementptr inbounds nuw [4 x i8], ptr %i.dem, i64 %i.ddr
  %i.dfy = getelementptr inbounds nuw i8, ptr %i.dfx, i64 28
  store float %i.dfw, ptr %i.dfy, align 4, !tbaa !33
  %indvars.iv.next2385 = add nuw nsw i64 %indvars.iv2384, 1 ; 2 uses
  %exitcond2387.not = icmp eq i64 %indvars.iv.next2385, 8
  br i1 %exitcond2387.not, label %.loopexit1951, label %.preheader1914

.loopexit1951:                                    ; preds = %.preheader1914, %.loopexit1953
  %brmerge = or i1 %i.daf, %.not1793
  %brmerge2285 = select i1 %brmerge, i1 true, i1 %i.bvc
  br i1 %brmerge2285, label %.loopexit1949, label %.preheader1913.preheader

.preheader1913.preheader:                         ; preds = %.loopexit1951
  %i.dfz = sub i32 %i.bwn, %i.bwt
  %i.dga = tail call i32 @llvm.smin.i32(i32 %i.dfz, i32 8) ; 2 uses
  %i.dgb = sext i32 %i.bwt to i64                 ; 5 uses
  %i.dgc = call i32 @llvm.umax.i32(i32 %i.dga, i32 1)
  %umax4325 = zext i32 %i.dgc to i64              ; 2 uses
  %xtraiter4326 = and i64 %umax4325, 3            ; 3 uses
  %i.dgd = icmp ult i32 %i.dga, 4
  %unroll_iter4330 = and i64 %umax4325, 4294967292
  %lcmp.mod4328.not = icmp eq i64 %xtraiter4326, 0
  %lcmp.mod4329 = icmp ne i64 %xtraiter4326, 0
  br label %.preheader1913

.preheader1913:                                   ; preds = %.preheader1913.preheader, %._crit_edge2019
  %indvars.iv2391 = phi i64 [ 0, %.preheader1913.preheader ], [ %indvars.iv.next2392, %._crit_edge2019 ] ; 4 uses
  %i.dge = trunc nuw nsw i64 %indvars.iv2391 to i32
  %i.dgf = sub i32 %i.es, %i.dge
  %i.dgg = mul nsw i32 %i.dgf, %i.ae
  %i.dgh = add i32 %i.et, %i.dgg                  ; 5 uses
  %i.dgi = add nsw i64 %indvars.iv2391, %i.bvl
  %indvars.iv2391.tr = trunc nuw nsw i64 %indvars.iv2391 to i32
  %i.dgj = shl i32 %indvars.iv2391.tr, 2          ; 5 uses
  %.idx2926 = shl i64 %i.dgi, 9                   ; 5 uses
  br i1 %i.dgd, label %.epil.preheader4324, label %.preheader1913.new

.preheader1913.new:                               ; preds = %.preheader1913
  %i.dgk = lshr i32 %i.q, %i.dgj
  %i.dgl = and i32 %i.dgk, 3
  %i.dgm = zext nneg i32 %i.dgl to i64
  %i.dgn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dgm
  %i.dgo = load ptr, ptr %i.dgn, align 8, !tbaa !171
  %i.dgp = getelementptr i8, ptr %i.dgo, i64 %.idx2926
  %i.dgq = getelementptr [4 x i8], ptr %i.dgp, i64 %i.dgb
  %i.dgr = or disjoint i32 %i.dgj, 2
  %i.dgs = lshr i32 %i.q, %i.dgr
  %i.dgt = and i32 %i.dgs, 3
  %i.dgu = zext nneg i32 %i.dgt to i64
  %i.dgv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dgu
  %i.dgw = load ptr, ptr %i.dgv, align 8, !tbaa !171
  %i.dgx = getelementptr i8, ptr %i.dgw, i64 %.idx2926
  %i.dgy = getelementptr [4 x i8], ptr %i.dgx, i64 %i.dgb
  %i.dgz = lshr i32 %i.q, %i.dgj
  %i.dha = and i32 %i.dgz, 3
  %i.dhb = zext nneg i32 %i.dha to i64
  %i.dhc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dhb
  %i.dhd = load ptr, ptr %i.dhc, align 8, !tbaa !171
  %i.dhe = getelementptr i8, ptr %i.dhd, i64 %.idx2926
  %i.dhf = getelementptr [4 x i8], ptr %i.dhe, i64 %i.dgb
  %i.dhg = or disjoint i32 %i.dgj, 2
  %i.dhh = lshr i32 %i.q, %i.dhg
  %i.dhi = and i32 %i.dhh, 3
  %i.dhj = zext nneg i32 %i.dhi to i64
  %i.dhk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dhj
  %i.dhl = load ptr, ptr %i.dhk, align 8, !tbaa !171
  %i.dhm = getelementptr i8, ptr %i.dhl, i64 %.idx2926
  %i.dhn = getelementptr [4 x i8], ptr %i.dhm, i64 %i.dgb
  br label %bb.u

._crit_edge2019.unr-lcssa:                        ; preds = %bb.u
  br i1 %lcmp.mod4328.not, label %._crit_edge2019, label %.epil.preheader4324

.epil.preheader4324:                              ; preds = %._crit_edge2019.unr-lcssa, %.preheader1913
  %indvars.iv2388.epil.init = phi i64 [ 0, %.preheader1913 ], [ %indvars.iv.next2389.3, %._crit_edge2019.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4329)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader4324
  %indvars.iv2388.epil = phi i64 [ %indvars.iv2388.epil.init, %.epil.preheader4324 ], [ %indvars.iv.next2389.epil, %bb.t ] ; 3 uses
  %epil.iter4327 = phi i64 [ 0, %.epil.preheader4324 ], [ %epil.iter4327.next, %bb.t ]
  %i.dho = trunc nuw nsw i64 %indvars.iv2388.epil to i32 ; 2 uses
  %i.dhp = shl i32 %i.dho, 1
  %i.dhq = and i32 %i.dhp, 2
  %i.dhr = or disjoint i32 %i.dgj, %i.dhq
  %i.dhs = lshr i32 %i.q, %i.dhr
  %i.dht = and i32 %i.dhs, 3
  %i.dhu = sub i32 %i.dgh, %i.dho
  %i.dhv = sext i32 %i.dhu to i64
  %i.dhw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dhv
  %i.dhx = load float, ptr %i.dhw, align 4, !tbaa !33
  %i.dhy = zext nneg i32 %i.dht to i64
  %i.dhz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.dhy
  %i.dia = load ptr, ptr %i.dhz, align 8, !tbaa !171
  %i.dib = getelementptr i8, ptr %i.dia, i64 %.idx2926
  %i.dic = getelementptr [4 x i8], ptr %i.dib, i64 %i.dgb
  %i.did = getelementptr [4 x i8], ptr %i.dic, i64 %indvars.iv2388.epil
  store float %i.dhx, ptr %i.did, align 4, !tbaa !33
  %indvars.iv.next2389.epil = add nuw nsw i64 %indvars.iv2388.epil, 1
  %epil.iter4327.next = add i64 %epil.iter4327, 1 ; 2 uses
  %epil.iter4327.cmp.not = icmp eq i64 %epil.iter4327.next, %xtraiter4326
  br i1 %epil.iter4327.cmp.not, label %._crit_edge2019, label %bb.t, !llvm.loop !70

._crit_edge2019:                                  ; preds = %bb.t, %._crit_edge2019.unr-lcssa
  %indvars.iv.next2392 = add nuw nsw i64 %indvars.iv2391, 1 ; 2 uses
  %i.die = icmp slt i64 %indvars.iv.next2392, %i.bvm
  br i1 %i.die, label %.preheader1913, label %.loopexit1949

bb.u:                                             ; preds = %bb.u, %.preheader1913.new
  %indvars.iv2388 = phi i64 [ 0, %.preheader1913.new ], [ %indvars.iv.next2389.3, %bb.u ] ; 6 uses
  %niter4331 = phi i64 [ 0, %.preheader1913.new ], [ %niter4331.next.3, %bb.u ]
  %i.dif = trunc nuw nsw i64 %indvars.iv2388 to i32
  %i.dig = sub i32 %i.dgh, %i.dif
  %i.dih = sext i32 %i.dig to i64
  %i.dii = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dih
  %i.dij = load float, ptr %i.dii, align 4, !tbaa !33
  %i.dik = getelementptr [4 x i8], ptr %i.dgq, i64 %indvars.iv2388
  store float %i.dij, ptr %i.dik, align 4, !tbaa !33
  %indvars.iv.next2389 = or disjoint i64 %indvars.iv2388, 1 ; 2 uses
  %i.dil = trunc nuw nsw i64 %indvars.iv.next2389 to i32
  %i.dim = sub i32 %i.dgh, %i.dil
  %i.din = sext i32 %i.dim to i64
  %i.dio = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.din
  %i.dip = load float, ptr %i.dio, align 4, !tbaa !33
  %i.diq = getelementptr [4 x i8], ptr %i.dgy, i64 %indvars.iv.next2389
  store float %i.dip, ptr %i.diq, align 4, !tbaa !33
  %indvars.iv.next2389.1 = or disjoint i64 %indvars.iv2388, 2 ; 2 uses
  %i.dir = trunc nuw nsw i64 %indvars.iv.next2389.1 to i32
  %i.dis = sub i32 %i.dgh, %i.dir
  %i.dit = sext i32 %i.dis to i64
  %i.diu = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.dit
  %i.div = load float, ptr %i.diu, align 4, !tbaa !33
  %i.diw = getelementptr [4 x i8], ptr %i.dhf, i64 %indvars.iv.next2389.1
  store float %i.div, ptr %i.diw, align 4, !tbaa !33
  %indvars.iv.next2389.2 = or disjoint i64 %indvars.iv2388, 3 ; 2 uses
  %i.dix = trunc nuw nsw i64 %indvars.iv.next2389.2 to i32
  %i.diy = sub i32 %i.dgh, %i.dix
  %i.diz = sext i32 %i.diy to i64
  %i.dja = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.diz
  %i.djb = load float, ptr %i.dja, align 4, !tbaa !33
  %i.djc = getelementptr [4 x i8], ptr %i.dhn, i64 %indvars.iv.next2389.2
  store float %i.djb, ptr %i.djc, align 4, !tbaa !33
  %indvars.iv.next2389.3 = add nuw nsw i64 %indvars.iv2388, 4 ; 2 uses
  %niter4331.next.3 = add i64 %niter4331, 4       ; 2 uses
  %niter4331.ncmp.3.not = icmp eq i64 %niter4331.next.3, %unroll_iter4330
  br i1 %niter4331.ncmp.3.not, label %._crit_edge2019.unr-lcssa, label %bb.u

.loopexit1949:                                    ; preds = %._crit_edge2019, %.loopexit1951
  %brmerge1797 = or i1 %i.bur, %i.daf
  br i1 %brmerge1797, label %.loopexit1947.split, label %.preheader1912.preheader

.preheader1912.preheader:                         ; preds = %.loopexit1949
  %i.djd = sext i32 %i.bwt to i64                 ; 64 uses
  %i.dje = add i32 %smin2431, %indvars.iv2403
  %i.djf = sub i32 %i.dje, %i.bwt                 ; 56 uses
  %i.djg = load float, ptr %i.ua, align 4, !tbaa !33
  %i.djh = load ptr, ptr %i.uc, align 8, !tbaa !171
  %i.dji = getelementptr [4 x i8], ptr %i.djh, i64 %i.djd
  store float %i.djg, ptr %i.dji, align 4, !tbaa !33
  %exitcond2434.not = icmp slt i32 %i.djf, 2
  br i1 %exitcond2434.not, label %._crit_edge2023.preheader, label %bb.v

._crit_edge2023.14346:                            ; preds = %._crit_edge2023.preheader
  %i.djj = load float, ptr %i.wh, align 4, !tbaa !33
  %i.djk = load ptr, ptr %i.wj, align 8, !tbaa !171
  %i.djl = getelementptr [4 x i8], ptr %i.djk, i64 %i.djd
  %i.djm = getelementptr i8, ptr %i.djl, i64 516
  store float %i.djj, ptr %i.djm, align 4, !tbaa !33
  %exitcond2430.not.1 = icmp eq i32 %i.djf, 2
  br i1 %exitcond2430.not.1, label %._crit_edge2023.1, label %._crit_edge2023.24347

._crit_edge2023.24347:                            ; preds = %._crit_edge2023.14346
  %i.djn = load float, ptr %i.wo, align 4, !tbaa !33
  %i.djo = load ptr, ptr %i.wq, align 8, !tbaa !171
  %i.djp = getelementptr [4 x i8], ptr %i.djo, i64 %i.djd
  %i.djq = getelementptr i8, ptr %i.djp, i64 520
  store float %i.djn, ptr %i.djq, align 4, !tbaa !33
  %exitcond2430.not.2 = icmp eq i32 %i.djf, 3
  br i1 %exitcond2430.not.2, label %._crit_edge2023.1, label %._crit_edge2023.34348

._crit_edge2023.34348:                            ; preds = %._crit_edge2023.24347
  %i.djr = load float, ptr %i.wv, align 4, !tbaa !33
  %i.djs = load ptr, ptr %i.wx, align 8, !tbaa !171
  %i.djt = getelementptr [4 x i8], ptr %i.djs, i64 %i.djd
  %i.dju = getelementptr i8, ptr %i.djt, i64 524
  store float %i.djr, ptr %i.dju, align 4, !tbaa !33
  %exitcond2430.not.3 = icmp eq i32 %i.djf, 4
  br i1 %exitcond2430.not.3, label %._crit_edge2023.1, label %._crit_edge2023.44349

._crit_edge2023.44349:                            ; preds = %._crit_edge2023.34348
  %i.djv = load float, ptr %i.xc, align 4, !tbaa !33
  %i.djw = load ptr, ptr %i.xe, align 8, !tbaa !171
  %i.djx = getelementptr [4 x i8], ptr %i.djw, i64 %i.djd
  %i.djy = getelementptr i8, ptr %i.djx, i64 528
  store float %i.djv, ptr %i.djy, align 4, !tbaa !33
  %exitcond2430.not.4 = icmp eq i32 %i.djf, 5
  br i1 %exitcond2430.not.4, label %._crit_edge2023.1, label %._crit_edge2023.54350

._crit_edge2023.54350:                            ; preds = %._crit_edge2023.44349
  %i.djz = load float, ptr %i.xj, align 4, !tbaa !33
  %i.dka = load ptr, ptr %i.xl, align 8, !tbaa !171
  %i.dkb = getelementptr [4 x i8], ptr %i.dka, i64 %i.djd
  %i.dkc = getelementptr i8, ptr %i.dkb, i64 532
  store float %i.djz, ptr %i.dkc, align 4, !tbaa !33
  %exitcond2430.not.5 = icmp eq i32 %i.djf, 6
  br i1 %exitcond2430.not.5, label %._crit_edge2023.1, label %._crit_edge2023.64351

._crit_edge2023.64351:                            ; preds = %._crit_edge2023.54350
  %i.dkd = load float, ptr %i.xq, align 32, !tbaa !33
  %i.dke = load ptr, ptr %i.xs, align 8, !tbaa !171
  %i.dkf = getelementptr [4 x i8], ptr %i.dke, i64 %i.djd
  %i.dkg = getelementptr i8, ptr %i.dkf, i64 536
  store float %i.dkd, ptr %i.dkg, align 4, !tbaa !33
  %exitcond2430.not.6 = icmp eq i32 %i.djf, 7
  br i1 %exitcond2430.not.6, label %._crit_edge2023.1, label %._crit_edge2023.7

._crit_edge2023.7:                                ; preds = %._crit_edge2023.64351
  %i.dkh = load float, ptr %i.xx, align 4, !tbaa !33
  %i.dki = load ptr, ptr %i.xz, align 8, !tbaa !171
  %i.dkj = getelementptr [4 x i8], ptr %i.dki, i64 %i.djd
  %i.dkk = getelementptr i8, ptr %i.dkj, i64 540
  store float %i.dkh, ptr %i.dkk, align 4, !tbaa !33
  br label %._crit_edge2023.1

._crit_edge2023.1:                                ; preds = %._crit_edge2023.preheader, %._crit_edge2023.14346, %._crit_edge2023.24347, %._crit_edge2023.34348, %._crit_edge2023.44349, %._crit_edge2023.54350, %._crit_edge2023.64351, %._crit_edge2023.7
  %i.dkl = load float, ptr %i.yd, align 4, !tbaa !33
  %i.dkm = load ptr, ptr %i.yf, align 8, !tbaa !171
  %i.dkn = getelementptr [4 x i8], ptr %i.dkm, i64 %i.djd
  %i.dko = getelementptr i8, ptr %i.dkn, i64 1024
  store float %i.dkl, ptr %i.dko, align 4, !tbaa !33
  %exitcond2426.not = icmp slt i32 %i.djf, 2
  br i1 %exitcond2426.not, label %._crit_edge2023.2, label %._crit_edge2023.1.1

._crit_edge2023.1.1:                              ; preds = %._crit_edge2023.1
  %i.dkp = load float, ptr %i.yk, align 4, !tbaa !33
  %i.dkq = load ptr, ptr %i.ym, align 8, !tbaa !171
  %i.dkr = getelementptr [4 x i8], ptr %i.dkq, i64 %i.djd
  %i.dks = getelementptr i8, ptr %i.dkr, i64 1028
  store float %i.dkp, ptr %i.dks, align 4, !tbaa !33
  %exitcond2426.not.1 = icmp eq i32 %i.djf, 2
  br i1 %exitcond2426.not.1, label %._crit_edge2023.2, label %._crit_edge2023.1.2

._crit_edge2023.1.2:                              ; preds = %._crit_edge2023.1.1
  %i.dkt = load float, ptr %i.yr, align 4, !tbaa !33
  %i.dku = load ptr, ptr %i.yt, align 8, !tbaa !171
  %i.dkv = getelementptr [4 x i8], ptr %i.dku, i64 %i.djd
  %i.dkw = getelementptr i8, ptr %i.dkv, i64 1032
  store float %i.dkt, ptr %i.dkw, align 4, !tbaa !33
  %exitcond2426.not.2 = icmp eq i32 %i.djf, 3
  br i1 %exitcond2426.not.2, label %._crit_edge2023.2, label %._crit_edge2023.1.3

._crit_edge2023.1.3:                              ; preds = %._crit_edge2023.1.2
  %i.dkx = load float, ptr %i.yy, align 4, !tbaa !33
  %i.dky = load ptr, ptr %i.za, align 8, !tbaa !171
  %i.dkz = getelementptr [4 x i8], ptr %i.dky, i64 %i.djd
  %i.dla = getelementptr i8, ptr %i.dkz, i64 1036
  store float %i.dkx, ptr %i.dla, align 4, !tbaa !33
  %exitcond2426.not.3 = icmp eq i32 %i.djf, 4
  br i1 %exitcond2426.not.3, label %._crit_edge2023.2, label %._crit_edge2023.1.4

._crit_edge2023.1.4:                              ; preds = %._crit_edge2023.1.3
  %i.dlb = load float, ptr %i.zf, align 4, !tbaa !33
  %i.dlc = load ptr, ptr %i.zh, align 8, !tbaa !171
  %i.dld = getelementptr [4 x i8], ptr %i.dlc, i64 %i.djd
  %i.dle = getelementptr i8, ptr %i.dld, i64 1040
  store float %i.dlb, ptr %i.dle, align 4, !tbaa !33
  %exitcond2426.not.4 = icmp eq i32 %i.djf, 5
  br i1 %exitcond2426.not.4, label %._crit_edge2023.2, label %._crit_edge2023.1.5

._crit_edge2023.1.5:                              ; preds = %._crit_edge2023.1.4
  %i.dlf = load float, ptr %i.zm, align 4, !tbaa !33
  %i.dlg = load ptr, ptr %i.zo, align 8, !tbaa !171
  %i.dlh = getelementptr [4 x i8], ptr %i.dlg, i64 %i.djd
  %i.dli = getelementptr i8, ptr %i.dlh, i64 1044
  store float %i.dlf, ptr %i.dli, align 4, !tbaa !33
  %exitcond2426.not.5 = icmp eq i32 %i.djf, 6
  br i1 %exitcond2426.not.5, label %._crit_edge2023.2, label %._crit_edge2023.1.6

._crit_edge2023.1.6:                              ; preds = %._crit_edge2023.1.5
  %i.dlj = load float, ptr %i.zt, align 4, !tbaa !33
  %i.dlk = load ptr, ptr %i.zv, align 8, !tbaa !171
  %i.dll = getelementptr [4 x i8], ptr %i.dlk, i64 %i.djd
  %i.dlm = getelementptr i8, ptr %i.dll, i64 1048
end_hunk_0
begin_hunk_1_@process:bb.a
  %xtraiter4429 = and i64 %wide.trip.count2608, 1
  %lcmp.mod4430.not = icmp eq i64 %xtraiter4429, 0
  br i1 %lcmp.mod4430.not, label %._crit_edge2135.6.prol.loopexit, label %._crit_edge2135.6.prol

._crit_edge2135.6.prol:                           ; preds = %._crit_edge2135.6.preheader
  %i.gka = load ptr, ptr %i.azw, align 8, !tbaa !171 ; 2 uses
  %sext2938.prol = or disjoint i64 %i.fye, 1152   ; 2 uses
  %i.gkb = getelementptr inbounds nuw [4 x i8], ptr %i.gka, i64 %sext2938.prol
  %i.gkc = load float, ptr %i.gkb, align 4, !tbaa !33
  %i.gkd = or disjoint i64 %i.fye, 896            ; 2 uses
  %i.gke = getelementptr inbounds nuw [4 x i8], ptr %i.gka, i64 %i.gkd
  store float %i.gkc, ptr %i.gke, align 4, !tbaa !33
  %i.gkf = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %sext2938.prol
  %i.gkg = load float, ptr %i.gkf, align 32, !tbaa !33
  %i.gkh = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gkd
  store float %i.gkg, ptr %i.gkh, align 32, !tbaa !33
  %indvars.iv.next2605.7.prol = or disjoint i64 %i.fye, 1
  br label %._crit_edge2135.6.prol.loopexit

._crit_edge2135.6.prol.loopexit:                  ; preds = %._crit_edge2135.6.prol, %._crit_edge2135.6.preheader
  %indvars.iv2604.7.unr = phi i64 [ %i.fye, %._crit_edge2135.6.preheader ], [ %indvars.iv.next2605.7.prol, %._crit_edge2135.6.prol ]
  %i.gki = icmp eq i64 %i.fyg, 0
  br i1 %i.gki, label %.loopexit1936.split, label %._crit_edge2135.6

._crit_edge2135.6:                                ; preds = %._crit_edge2135.6.prol.loopexit, %._crit_edge2135.6
  %indvars.iv2604.7 = phi i64 [ %indvars.iv.next2605.7.1, %._crit_edge2135.6 ], [ %indvars.iv2604.7.unr, %._crit_edge2135.6.prol.loopexit ] ; 6 uses
  %indvars.iv2604.7.tr = trunc nuw i64 %indvars.iv2604.7 to i32
  %i.gkj = shl nuw i32 %indvars.iv2604.7.tr, 1
  %i.gkk = and i32 %i.gkj, 2
  %i.gkl = or disjoint i32 %i.gkk, 28
  %i.gkm = lshr i32 %i.q, %i.gkl
  %i.gkn = and i32 %i.gkm, 3
  %i.gko = zext nneg i32 %i.gkn to i64
  %i.gkp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gko
  %i.gkq = load ptr, ptr %i.gkp, align 8, !tbaa !171 ; 2 uses
  %i.gkr = shl i64 %indvars.iv2604.7, 32
  %sext2938 = add i64 %i.gkr, 4947802324992
  %i.gks = ashr exact i64 %sext2938, 32           ; 2 uses
  %i.gkt = getelementptr inbounds [4 x i8], ptr %i.gkq, i64 %i.gks
  %i.gku = load float, ptr %i.gkt, align 4, !tbaa !33
  %i.gkv = add nuw nsw i64 %indvars.iv2604.7, 896 ; 2 uses
  %i.gkw = getelementptr inbounds nuw [4 x i8], ptr %i.gkq, i64 %i.gkv
  store float %i.gku, ptr %i.gkw, align 4, !tbaa !33
  %i.gkx = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.gks
  %i.gky = load float, ptr %i.gkx, align 4, !tbaa !33
  %i.gkz = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gkv
  store float %i.gky, ptr %i.gkz, align 4, !tbaa !33
  %indvars.iv.next2605.7 = add nuw nsw i64 %indvars.iv2604.7, 1 ; 2 uses
  %indvars.iv2604.7.tr.1 = trunc nuw i64 %indvars.iv.next2605.7 to i32
  %i.gla = shl nuw i32 %indvars.iv2604.7.tr.1, 1
  %i.glb = and i32 %i.gla, 2
  %i.glc = or disjoint i32 %i.glb, 28
  %i.gld = lshr i32 %i.q, %i.glc
  %i.gle = and i32 %i.gld, 3
  %i.glf = zext nneg i32 %i.gle to i64
  %i.glg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.glf
  %i.glh = load ptr, ptr %i.glg, align 8, !tbaa !171 ; 2 uses
  %i.gli = shl i64 %indvars.iv.next2605.7, 32
  %sext2938.1 = add i64 %i.gli, 4947802324992
  %i.glj = ashr exact i64 %sext2938.1, 32         ; 2 uses
  %i.glk = getelementptr inbounds [4 x i8], ptr %i.glh, i64 %i.glj
  %i.gll = load float, ptr %i.glk, align 4, !tbaa !33
  %i.glm = add nuw nsw i64 %indvars.iv2604.7, 897 ; 2 uses
  %i.gln = getelementptr inbounds nuw [4 x i8], ptr %i.glh, i64 %i.glm
  store float %i.gll, ptr %i.gln, align 4, !tbaa !33
  %i.glo = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.glj
  %i.glp = load float, ptr %i.glo, align 4, !tbaa !33
  %i.glq = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.glm
  store float %i.glp, ptr %i.glq, align 4, !tbaa !33
  %indvars.iv.next2605.7.1 = add nuw nsw i64 %indvars.iv2604.7, 2 ; 2 uses
  %exitcond2609.7.not.1 = icmp eq i64 %indvars.iv.next2605.7.1, %wide.trip.count2608
  br i1 %exitcond2609.7.not.1, label %.loopexit1936.split, label %._crit_edge2135.6

.preheader1906.preheader.new:                     ; preds = %.prol.loopexit4404, %.preheader1906.preheader.new
  %indvars.iv2604 = phi i64 [ %indvars.iv.next2605.14409, %.preheader1906.preheader.new ], [ %indvars.iv2604.unr, %.prol.loopexit4404 ] ; 6 uses
  %indvars.iv2604.tr = trunc nuw i64 %indvars.iv2604 to i32
  %i.glr = shl nuw i32 %indvars.iv2604.tr, 1
  %i.gls = and i32 %i.glr, 2
  %i.glt = lshr i32 %i.q, %i.gls
  %i.glu = and i32 %i.glt, 3
  %i.glv = zext nneg i32 %i.glu to i64
  %i.glw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.glv
  %i.glx = load ptr, ptr %i.glw, align 8, !tbaa !171 ; 2 uses
  %i.gly = shl i64 %indvars.iv2604, 32
  %sext2931 = add i64 %i.gly, 8796093022208
  %i.glz = ashr exact i64 %sext2931, 32           ; 2 uses
  %i.gma = getelementptr inbounds [4 x i8], ptr %i.glx, i64 %i.glz
  %i.gmb = load float, ptr %i.gma, align 4, !tbaa !33
  %i.gmc = getelementptr inbounds nuw [4 x i8], ptr %i.glx, i64 %indvars.iv2604
  store float %i.gmb, ptr %i.gmc, align 4, !tbaa !33
  %i.gmd = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.glz
  %i.gme = load float, ptr %i.gmd, align 4, !tbaa !33
  %i.gmf = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %indvars.iv2604
  store float %i.gme, ptr %i.gmf, align 4, !tbaa !33
  %indvars.iv.next2605 = add nuw nsw i64 %indvars.iv2604, 1 ; 4 uses
  %indvars.iv2604.tr.1 = trunc nuw i64 %indvars.iv.next2605 to i32
  %i.gmg = shl nuw i32 %indvars.iv2604.tr.1, 1
  %i.gmh = and i32 %i.gmg, 2
  %i.gmi = lshr i32 %i.q, %i.gmh
  %i.gmj = and i32 %i.gmi, 3
  %i.gmk = zext nneg i32 %i.gmj to i64
  %i.gml = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gmk
  %i.gmm = load ptr, ptr %i.gml, align 8, !tbaa !171 ; 2 uses
  %i.gmn = shl i64 %indvars.iv.next2605, 32
  %sext2931.1 = add i64 %i.gmn, 8796093022208
  %i.gmo = ashr exact i64 %sext2931.1, 32         ; 2 uses
  %i.gmp = getelementptr inbounds [4 x i8], ptr %i.gmm, i64 %i.gmo
  %i.gmq = load float, ptr %i.gmp, align 4, !tbaa !33
  %i.gmr = getelementptr inbounds nuw [4 x i8], ptr %i.gmm, i64 %indvars.iv.next2605
  store float %i.gmq, ptr %i.gmr, align 4, !tbaa !33
  %i.gms = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.gmo
  %i.gmt = load float, ptr %i.gms, align 4, !tbaa !33
  %i.gmu = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %indvars.iv.next2605
  store float %i.gmt, ptr %i.gmu, align 4, !tbaa !33
  %indvars.iv.next2605.14409 = add nuw nsw i64 %indvars.iv2604, 2 ; 2 uses
  %exitcond2609.not.1 = icmp eq i64 %indvars.iv.next2605.14409, %wide.trip.count2608
  br i1 %exitcond2609.not.1, label %._crit_edge2135.preheader, label %.preheader1906.preheader.new

._crit_edge2135.preheader:                        ; preds = %.preheader1906.preheader.new, %.prol.loopexit4404
  %xtraiter4410 = and i64 %wide.trip.count2608, 1
  %lcmp.mod4411.not = icmp eq i64 %xtraiter4410, 0
  br i1 %lcmp.mod4411.not, label %._crit_edge2135.prol.loopexit, label %._crit_edge2135.prol

._crit_edge2135.prol:                             ; preds = %._crit_edge2135.preheader
  %i.gmv = load ptr, ptr %i.ayy, align 8, !tbaa !171 ; 2 uses
  %sext2932.prol = or disjoint i64 %i.fye, 1920   ; 2 uses
  %i.gmw = getelementptr inbounds nuw [4 x i8], ptr %i.gmv, i64 %sext2932.prol
  %i.gmx = load float, ptr %i.gmw, align 4, !tbaa !33
  %i.gmy = or disjoint i64 %i.fye, 128            ; 2 uses
  %i.gmz = getelementptr inbounds nuw [4 x i8], ptr %i.gmv, i64 %i.gmy
  store float %i.gmx, ptr %i.gmz, align 4, !tbaa !33
  %i.gna = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %sext2932.prol
  %i.gnb = load float, ptr %i.gna, align 32, !tbaa !33
  %i.gnc = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gmy
  store float %i.gnb, ptr %i.gnc, align 32, !tbaa !33
  %indvars.iv.next2605.1.prol = or disjoint i64 %i.fye, 1
  br label %._crit_edge2135.prol.loopexit

._crit_edge2135.prol.loopexit:                    ; preds = %._crit_edge2135.prol, %._crit_edge2135.preheader
  %indvars.iv2604.1.unr = phi i64 [ %i.fye, %._crit_edge2135.preheader ], [ %indvars.iv.next2605.1.prol, %._crit_edge2135.prol ]
  %i.gnd = icmp eq i64 %i.fyg, 0
  br i1 %i.gnd, label %._crit_edge2135.1.preheader, label %._crit_edge2135

.loopexit1936.split:                              ; preds = %._crit_edge2135.6.prol.loopexit, %._crit_edge2135.6, %._crit_edge2132.split
  %or.cond2294 = select i1 %brmerge2293.not2318, i1 %i.fya, i1 false
  br i1 %or.cond2294, label %.preheader1905.preheader, label %.loopexit1934

.preheader1905.preheader:                         ; preds = %.loopexit1936.split
  %i.gne = zext nneg i32 %i.fxv to i64            ; 5 uses
  %wide.trip.count2618 = zext i32 %i.fxz to i64   ; 3 uses
  %xtraiter4434 = and i64 %wide.trip.count2618, 1
  %lcmp.mod4435.not = icmp eq i64 %xtraiter4434, 0
  %indvars.iv.next2616.prol = or disjoint i64 %i.gne, 1
  %i.gnf = add nsw i64 %wide.trip.count2618, -1
  %i.gng = icmp eq i64 %i.gnf, %i.gne
  br label %.preheader1905

.preheader1905:                                   ; preds = %.preheader1905.preheader, %._crit_edge2139
  %indvars.iv2620 = phi i64 [ 0, %.preheader1905.preheader ], [ %indvars.iv.next2621, %._crit_edge2139 ] ; 4 uses
  %i.gnh = trunc nuw nsw i64 %indvars.iv2620 to i32
  %i.gni = sub i32 %i.es, %i.gnh
  %i.gnj = mul nsw i32 %i.gni, %i.ae
  %i.gnk = sext i32 %i.gnj to i64
  %i.gnl = add nsw i64 %indvars.iv2738, %i.gnk    ; 3 uses
  %i.gnm = add nsw i64 %indvars.iv2620, %i.fxi
  %i.gnn = shl nsw i64 %i.gnm, 7                  ; 3 uses
  %indvars.iv2620.tr = trunc nuw nsw i64 %indvars.iv2620 to i32
  %i.gno = shl i32 %indvars.iv2620.tr, 2          ; 3 uses
  br i1 %lcmp.mod4435.not, label %.prol.loopexit4433, label %.prol.loopexit4433.unr-lcssa

.prol.loopexit4433.unr-lcssa:                     ; preds = %.preheader1905
  %i.gnp = lshr i32 %i.q, %i.gno
  %i.gnq = and i32 %i.gnp, 3
  %i.gnr = add nsw i64 %i.gnl, %i.gne             ; 2 uses
  %i.gns = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gnr
  %i.gnt = load float, ptr %i.gns, align 4, !tbaa !33
  %i.gnu = zext nneg i32 %i.gnq to i64
  %i.gnv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gnu
  %i.gnw = load ptr, ptr %i.gnv, align 8, !tbaa !171
  %i.gnx = or disjoint i64 %i.gnn, %i.gne         ; 2 uses
  %i.gny = getelementptr inbounds [4 x i8], ptr %i.gnw, i64 %i.gnx
  store float %i.gnt, ptr %i.gny, align 4, !tbaa !33
  %i.gnz = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gnr
  %i.goa = load float, ptr %i.gnz, align 4, !tbaa !33
  %i.gob = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.gnx
  store float %i.goa, ptr %i.gob, align 32, !tbaa !33
  br label %.prol.loopexit4433

.prol.loopexit4433:                               ; preds = %.prol.loopexit4433.unr-lcssa, %.preheader1905
  %indvars.iv2615.unr = phi i64 [ %i.gne, %.preheader1905 ], [ %indvars.iv.next2616.prol, %.prol.loopexit4433.unr-lcssa ]
  br i1 %i.gng, label %._crit_edge2139, label %.preheader1905.new

._crit_edge2139:                                  ; preds = %.preheader1905.new, %.prol.loopexit4433
  %indvars.iv.next2621 = add nuw nsw i64 %indvars.iv2620, 1 ; 2 uses
  %i.goc = icmp slt i64 %indvars.iv.next2621, %i.fxj
  br i1 %i.goc, label %.preheader1905, label %.loopexit1934

.preheader1905.new:                               ; preds = %.prol.loopexit4433, %.preheader1905.new
  %indvars.iv2615 = phi i64 [ %indvars.iv.next2616.1, %.preheader1905.new ], [ %indvars.iv2615.unr, %.prol.loopexit4433 ] ; 5 uses
  %i.god = trunc nuw nsw i64 %indvars.iv2615 to i32
  %i.goe = shl i32 %i.god, 1
  %i.gof = and i32 %i.goe, 2
  %i.gog = or disjoint i32 %i.gno, %i.gof
  %i.goh = lshr i32 %i.q, %i.gog
  %i.goi = and i32 %i.goh, 3
  %i.goj = add nsw i64 %i.gnl, %indvars.iv2615    ; 2 uses
  %i.gok = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.goj
  %i.gol = load float, ptr %i.gok, align 4, !tbaa !33
  %i.gom = zext nneg i32 %i.goi to i64
  %i.gon = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gom
  %i.goo = load ptr, ptr %i.gon, align 8, !tbaa !171
  %i.gop = add nsw i64 %indvars.iv2615, %i.gnn    ; 2 uses
  %i.goq = getelementptr inbounds [4 x i8], ptr %i.goo, i64 %i.gop
  store float %i.gol, ptr %i.goq, align 4, !tbaa !33
  %i.gor = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.goj
  %i.gos = load float, ptr %i.gor, align 4, !tbaa !33
  %i.got = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.gop
  store float %i.gos, ptr %i.got, align 4, !tbaa !33
  %indvars.iv.next2616 = add nuw nsw i64 %indvars.iv2615, 1 ; 3 uses
  %i.gou = trunc nuw nsw i64 %indvars.iv.next2616 to i32
  %i.gov = shl i32 %i.gou, 1
  %i.gow = and i32 %i.gov, 2
  %i.gox = or disjoint i32 %i.gno, %i.gow
  %i.goy = lshr i32 %i.q, %i.gox
  %i.goz = and i32 %i.goy, 3
  %i.gpa = add nsw i64 %i.gnl, %indvars.iv.next2616 ; 2 uses
  %i.gpb = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gpa
  %i.gpc = load float, ptr %i.gpb, align 4, !tbaa !33
  %i.gpd = zext nneg i32 %i.goz to i64
  %i.gpe = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gpd
  %i.gpf = load ptr, ptr %i.gpe, align 8, !tbaa !171
  %i.gpg = add nsw i64 %indvars.iv.next2616, %i.gnn ; 2 uses
  %i.gph = getelementptr inbounds [4 x i8], ptr %i.gpf, i64 %i.gpg
  store float %i.gpc, ptr %i.gph, align 4, !tbaa !33
  %i.gpi = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gpa
  %i.gpj = load float, ptr %i.gpi, align 4, !tbaa !33
  %i.gpk = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.gpg
  store float %i.gpj, ptr %i.gpk, align 4, !tbaa !33
  %indvars.iv.next2616.1 = add nuw nsw i64 %indvars.iv2615, 2 ; 2 uses
  %exitcond2619.not.1 = icmp eq i64 %indvars.iv.next2616.1, %wide.trip.count2618
  br i1 %exitcond2619.not.1, label %._crit_edge2139, label %.preheader1905.new

.loopexit1934:                                    ; preds = %._crit_edge2139, %.loopexit1936.split
  %brmerge2297.not = select i1 %i.fxu, i1 %i.fwu, i1 false
  br i1 %brmerge2297.not, label %.preheader1904, label %.loopexit1932

.preheader1904:                                   ; preds = %.loopexit1934, %.preheader1904
  %indvars.iv2627 = phi i64 [ %indvars.iv.next2628, %.preheader1904 ], [ %i.fxh, %.loopexit1934 ] ; 3 uses
  %indvars.iv2627.tr = trunc nuw i64 %indvars.iv2627 to i32
  %i.gpl = shl nuw i32 %indvars.iv2627.tr, 1
  %i.gpm = and i32 %i.gpl, 14                     ; 2 uses
  %i.gpn = shl nuw nsw i64 %indvars.iv2627, 7     ; 17 uses
  %i.gpo = or disjoint i64 %i.gpn, 16             ; 2 uses
  %i.gpp = shl nuw nsw i32 %i.gpm, 1
  %i.gpq = lshr i32 %i.q, %i.gpp
  %i.gpr = and i32 %i.gpq, 3
  %i.gps = zext nneg i32 %i.gpr to i64
  %i.gpt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gps
  %i.gpu = load ptr, ptr %i.gpt, align 8, !tbaa !171 ; 8 uses
  %i.gpv = getelementptr inbounds nuw [4 x i8], ptr %i.gpu, i64 %i.gpo
  %i.gpw = load float, ptr %i.gpv, align 4, !tbaa !33
  %i.gpx = getelementptr inbounds nuw [4 x i8], ptr %i.gpu, i64 %i.gpn
  store float %i.gpw, ptr %i.gpx, align 4, !tbaa !33
  %i.gpy = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gpo
  %i.gpz = load float, ptr %i.gpy, align 64, !tbaa !33
  %i.gqa = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gpn
  store float %i.gpz, ptr %i.gqa, align 64, !tbaa !33
  %i.gqb = shl nuw nsw i32 %i.gpm, 1
  %i.gqc = or disjoint i32 %i.gqb, 2
  %i.gqd = lshr i32 %i.q, %i.gqc
  %i.gqe = and i32 %i.gqd, 3
  %i.gqf = zext nneg i32 %i.gqe to i64
  %i.gqg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gqf
  %i.gqh = load ptr, ptr %i.gqg, align 8, !tbaa !171 ; 8 uses
  %i.gqi = or disjoint i64 %i.gpn, 15             ; 2 uses
  %i.gqj = getelementptr inbounds nuw [4 x i8], ptr %i.gqh, i64 %i.gqi
  %i.gqk = load float, ptr %i.gqj, align 4, !tbaa !33
  %i.gql = or disjoint i64 %i.gpn, 1              ; 2 uses
  %i.gqm = getelementptr inbounds nuw [4 x i8], ptr %i.gqh, i64 %i.gql
  store float %i.gqk, ptr %i.gqm, align 4, !tbaa !33
  %i.gqn = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gqi
  %i.gqo = load float, ptr %i.gqn, align 4, !tbaa !33
  %i.gqp = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gql
  store float %i.gqo, ptr %i.gqp, align 4, !tbaa !33
  %i.gqq = or disjoint i64 %i.gpn, 14             ; 2 uses
  %i.gqr = getelementptr inbounds nuw [4 x i8], ptr %i.gpu, i64 %i.gqq
  %i.gqs = load float, ptr %i.gqr, align 4, !tbaa !33
  %i.gqt = or disjoint i64 %i.gpn, 2              ; 2 uses
  %i.gqu = getelementptr inbounds nuw [4 x i8], ptr %i.gpu, i64 %i.gqt
  store float %i.gqs, ptr %i.gqu, align 4, !tbaa !33
  %i.gqv = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gqq
  %i.gqw = load float, ptr %i.gqv, align 8, !tbaa !33
  %i.gqx = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gqt
  store float %i.gqw, ptr %i.gqx, align 8, !tbaa !33
  %i.gqy = or disjoint i64 %i.gpn, 13             ; 2 uses
  %i.gqz = getelementptr inbounds nuw [4 x i8], ptr %i.gqh, i64 %i.gqy
  %i.gra = load float, ptr %i.gqz, align 4, !tbaa !33
  %i.grb = or disjoint i64 %i.gpn, 3              ; 2 uses
  %i.grc = getelementptr inbounds nuw [4 x i8], ptr %i.gqh, i64 %i.grb
  store float %i.gra, ptr %i.grc, align 4, !tbaa !33
  %i.grd = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gqy
  %i.gre = load float, ptr %i.grd, align 4, !tbaa !33
  %i.grf = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.grb
  store float %i.gre, ptr %i.grf, align 4, !tbaa !33
  %i.grg = or disjoint i64 %i.gpn, 12             ; 2 uses
  %i.grh = getelementptr inbounds nuw [4 x i8], ptr %i.gpu, i64 %i.grg
  %i.gri = load float, ptr %i.grh, align 4, !tbaa !33
  %i.grj = or disjoint i64 %i.gpn, 4              ; 2 uses
  %i.grk = getelementptr inbounds nuw [4 x i8], ptr %i.gpu, i64 %i.grj
  store float %i.gri, ptr %i.grk, align 4, !tbaa !33
  %i.grl = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.grg
  %i.grm = load float, ptr %i.grl, align 16, !tbaa !33
  %i.grn = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.grj
  store float %i.grm, ptr %i.grn, align 16, !tbaa !33
  %i.gro = or disjoint i64 %i.gpn, 11             ; 2 uses
  %i.grp = getelementptr inbounds nuw [4 x i8], ptr %i.gqh, i64 %i.gro
  %i.grq = load float, ptr %i.grp, align 4, !tbaa !33
  %i.grr = or disjoint i64 %i.gpn, 5              ; 2 uses
  %i.grs = getelementptr inbounds nuw [4 x i8], ptr %i.gqh, i64 %i.grr
  store float %i.grq, ptr %i.grs, align 4, !tbaa !33
  %i.grt = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gro
  %i.gru = load float, ptr %i.grt, align 4, !tbaa !33
  %i.grv = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.grr
  store float %i.gru, ptr %i.grv, align 4, !tbaa !33
  %i.grw = or disjoint i64 %i.gpn, 10             ; 2 uses
  %i.grx = getelementptr inbounds nuw [4 x i8], ptr %i.gpu, i64 %i.grw
  %i.gry = load float, ptr %i.grx, align 4, !tbaa !33
  %i.grz = or disjoint i64 %i.gpn, 6              ; 2 uses
  %i.gsa = getelementptr inbounds nuw [4 x i8], ptr %i.gpu, i64 %i.grz
  store float %i.gry, ptr %i.gsa, align 4, !tbaa !33
  %i.gsb = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.grw
  %i.gsc = load float, ptr %i.gsb, align 8, !tbaa !33
  %i.gsd = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.grz
  store float %i.gsc, ptr %i.gsd, align 8, !tbaa !33
  %i.gse = or disjoint i64 %i.gpn, 9              ; 2 uses
  %i.gsf = getelementptr inbounds nuw [4 x i8], ptr %i.gqh, i64 %i.gse
  %i.gsg = load float, ptr %i.gsf, align 4, !tbaa !33
  %i.gsh = or disjoint i64 %i.gpn, 7              ; 2 uses
  %i.gsi = getelementptr inbounds nuw [4 x i8], ptr %i.gqh, i64 %i.gsh
  store float %i.gsg, ptr %i.gsi, align 4, !tbaa !33
  %i.gsj = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gse
  %i.gsk = load float, ptr %i.gsj, align 4, !tbaa !33
  %i.gsl = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gsh
  store float %i.gsk, ptr %i.gsl, align 4, !tbaa !33
  %indvars.iv.next2628 = add nuw nsw i64 %indvars.iv2627, 1 ; 2 uses
  %exitcond2631.not = icmp eq i64 %indvars.iv.next2628, %wide.trip.count2630
  br i1 %exitcond2631.not, label %.loopexit1932, label %.preheader1904

.loopexit1932:                                    ; preds = %.preheader1904, %.loopexit1934
  %i.gsm = icmp sge i32 %i.fxz, %i.fxt            ; 3 uses
  %brmerge2299 = select i1 %i.gsm, i1 true, i1 %.not2832
  br i1 %brmerge2299, label %.loopexit1930, label %.preheader1903.preheader

.preheader1903.preheader:                         ; preds = %.loopexit1932
  %i.gsn = sub i32 %i.fxt, %i.fxz
  %i.gso = tail call i32 @llvm.smin.i32(i32 %i.gsn, i32 8) ; 2 uses
  %i.gsp = sext i32 %i.fxz to i64
  %i.gsq = call i32 @llvm.umax.i32(i32 %i.gso, i32 1) ; 2 uses
  %umax4438 = zext i32 %i.gsq to i64              ; 2 uses
  %xtraiter4439 = and i64 %umax4438, 1
  %i.gsr = icmp ult i32 %i.gso, 2
  %unroll_iter4443 = and i64 %umax4438, 4294967294
  %lcmp.mod4441.not = icmp eq i64 %xtraiter4439, 0
  %lcmp.mod4442 = trunc i32 %i.gsq to i1
  br label %.preheader1903

.preheader1903:                                   ; preds = %.preheader1903.preheader, %._crit_edge2145
  %indvars.iv2635 = phi i64 [ %i.fxh, %.preheader1903.preheader ], [ %indvars.iv.next2636, %._crit_edge2145 ] ; 4 uses
  %indvars.iv2635.tr = trunc nuw i64 %indvars.iv2635 to i32
  %i.gss = shl nuw i32 %indvars.iv2635.tr, 1
  %i.gst = and i32 %i.gss, 14                     ; 3 uses
  %i.gsu = add nsw i64 %indvars.iv2635, %indvars.iv2742
  %i.gsv = trunc i64 %i.gsu to i32
  %i.gsw = mul i32 %i.ae, %i.gsv
  %i.gsx = add i32 %i.et, %i.gsw                  ; 3 uses
  %i.gsy = shl nuw nsw i64 %indvars.iv2635, 7
  %i.gsz = add nsw i64 %i.gsy, %i.gsp             ; 3 uses
  br i1 %i.gsr, label %.epil.preheader4437, label %.preheader1903.new

.preheader1903.new:                               ; preds = %.preheader1903
  %i.gta = shl nuw nsw i32 %i.gst, 1
  %i.gtb = lshr i32 %i.q, %i.gta
  %i.gtc = and i32 %i.gtb, 3
  %i.gtd = zext nneg i32 %i.gtc to i64
  %i.gte = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gtd
  %i.gtf = load ptr, ptr %i.gte, align 8, !tbaa !171
  %i.gtg = shl nuw nsw i32 %i.gst, 1
  %i.gth = or disjoint i32 %i.gtg, 2
  %i.gti = lshr i32 %i.q, %i.gth
  %i.gtj = and i32 %i.gti, 3
  %i.gtk = zext nneg i32 %i.gtj to i64
  %i.gtl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gtk
  %i.gtm = load ptr, ptr %i.gtl, align 8, !tbaa !171
  br label %bb.bl

._crit_edge2145.unr-lcssa:                        ; preds = %bb.bl
  br i1 %lcmp.mod4441.not, label %._crit_edge2145, label %.epil.preheader4437

.epil.preheader4437:                              ; preds = %._crit_edge2145.unr-lcssa, %.preheader1903
  %indvars.iv2632.epil.init = phi i64 [ 0, %.preheader1903 ], [ %indvars.iv.next2633.1, %._crit_edge2145.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod4442)
  %i.gtn = trunc nuw nsw i64 %indvars.iv2632.epil.init to i32 ; 2 uses
  %i.gto = and i32 %i.gtn, 1
  %i.gtp = or disjoint i32 %i.gto, %i.gst
  %i.gtq = shl nuw nsw i32 %i.gtp, 1
  %i.gtr = lshr i32 %i.q, %i.gtq
  %i.gts = and i32 %i.gtr, 3
  %i.gtt = sub i32 %i.gsx, %i.gtn
  %i.gtu = sext i32 %i.gtt to i64                 ; 2 uses
  %i.gtv = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gtu
  %i.gtw = load float, ptr %i.gtv, align 4, !tbaa !33
  %i.gtx = zext nneg i32 %i.gts to i64
  %i.gty = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gtx
  %i.gtz = load ptr, ptr %i.gty, align 8, !tbaa !171
  %i.gua = add nsw i64 %i.gsz, %indvars.iv2632.epil.init ; 2 uses
  %i.gub = getelementptr inbounds [4 x i8], ptr %i.gtz, i64 %i.gua
  store float %i.gtw, ptr %i.gub, align 4, !tbaa !33
  %i.guc = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gtu
  %i.gud = load float, ptr %i.guc, align 4, !tbaa !33
  %i.gue = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.gua
  store float %i.gud, ptr %i.gue, align 4, !tbaa !33
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.guf = trunc nuw nsw i64 %indvars.iv2632 to i32
  %i.gug = sub i32 %i.gsx, %i.guf
  %i.guh = sext i32 %i.gug to i64                 ; 2 uses
  %i.gui = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.guh
  %i.guj = load float, ptr %i.gui, align 4, !tbaa !33
  %i.guk = add nsw i64 %i.gsz, %indvars.iv2632    ; 2 uses
  %i.gul = getelementptr inbounds [4 x i8], ptr %i.gtf, i64 %i.guk
  store float %i.guj, ptr %i.gul, align 4, !tbaa !33
  %i.gum = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.guh
  %i.gun = load float, ptr %i.gum, align 4, !tbaa !33
  %i.guo = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.guk
  store float %i.gun, ptr %i.guo, align 4, !tbaa !33
  %indvars.iv.next2633 = or disjoint i64 %indvars.iv2632, 1 ; 2 uses
  %i.gup = trunc nuw nsw i64 %indvars.iv.next2633 to i32
  %i.guq = sub i32 %i.gsx, %i.gup
  %i.gur = sext i32 %i.guq to i64                 ; 2 uses
  %i.gus = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gur
  %i.gut = load float, ptr %i.gus, align 4, !tbaa !33
  %i.guu = add nsw i64 %i.gsz, %indvars.iv.next2633 ; 2 uses
  %i.guv = getelementptr inbounds [4 x i8], ptr %i.gtm, i64 %i.guu
  store float %i.gut, ptr %i.guv, align 4, !tbaa !33
  %i.guw = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gur
  %i.gux = load float, ptr %i.guw, align 4, !tbaa !33
  %i.guy = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.guu
  store float %i.gux, ptr %i.guy, align 4, !tbaa !33
  %indvars.iv.next2633.1 = add nuw nsw i64 %indvars.iv2632, 2 ; 2 uses
  %niter4444.next.1 = add i64 %niter4444, 2       ; 2 uses
  %niter4444.ncmp.1.not = icmp eq i64 %niter4444.next.1, %unroll_iter4443
  br i1 %niter4444.ncmp.1.not, label %._crit_edge2145.unr-lcssa, label %bb.bl

.loopexit1930:                                    ; preds = %._crit_edge2145, %.loopexit1932
  %i.guz = and i32 %i.fxs, %i.fwm
  %or.cond11.not = icmp sgt i32 %i.guz, -1
  br i1 %or.cond11.not, label %.loopexit1928, label %.preheader1902

.preheader1902:                                   ; preds = %.loopexit1930, %.preheader1902
  %indvars.iv2644 = phi i64 [ %indvars.iv.next2645, %.preheader1902 ], [ 0, %.loopexit1930 ] ; 4 uses
  %i.gva = shl nuw nsw i64 %indvars.iv2644, 2     ; 2 uses
  %i.gvb = sub nuw nsw i64 16, %indvars.iv2644
  %i.gvc = mul nsw i64 %i.gvb, %i.af              ; 5 uses
  %i.gvd = add nsw i64 %i.gvc, 16                 ; 2 uses
  %i.gve = shl nuw nsw i64 %indvars.iv2644, 7     ; 9 uses
  %i.gvf = trunc nuw nsw i64 %i.gva to i32
  %i.gvg = lshr i32 %i.q, %i.gvf
  %i.gvh = and i32 %i.gvg, 3
  %i.gvi = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gvd
  %i.gvj = load float, ptr %i.gvi, align 4, !tbaa !33
  %i.gvk = zext nneg i32 %i.gvh to i64
  %i.gvl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gvk
  %i.gvm = load ptr, ptr %i.gvl, align 8, !tbaa !171 ; 4 uses
  %i.gvn = getelementptr inbounds nuw [4 x i8], ptr %i.gvm, i64 %i.gve
  store float %i.gvj, ptr %i.gvn, align 4, !tbaa !33
  %i.gvo = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gvd
  %i.gvp = load float, ptr %i.gvo, align 4, !tbaa !33
  %i.gvq = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gve
  store float %i.gvp, ptr %i.gvq, align 64, !tbaa !33
  %i.gvr = trunc i64 %i.gva to i32
  %i.gvs = or disjoint i32 %i.gvr, 2
  %i.gvt = lshr i32 %i.q, %i.gvs
  %i.gvu = and i32 %i.gvt, 3
  %i.gvv = shl i64 %i.gvc, 32
  %sext2939 = add i64 %i.gvv, 64424509440
  %i.gvw = ashr exact i64 %sext2939, 32           ; 2 uses
  %i.gvx = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gvw
  %i.gvy = load float, ptr %i.gvx, align 4, !tbaa !33
  %i.gvz = zext nneg i32 %i.gvu to i64
  %i.gwa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gvz
  %i.gwb = load ptr, ptr %i.gwa, align 8, !tbaa !171 ; 4 uses
  %i.gwc = or disjoint i64 %i.gve, 1              ; 2 uses
  %i.gwd = getelementptr inbounds nuw [4 x i8], ptr %i.gwb, i64 %i.gwc
  store float %i.gvy, ptr %i.gwd, align 4, !tbaa !33
  %i.gwe = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gvw
  %i.gwf = load float, ptr %i.gwe, align 4, !tbaa !33
  %i.gwg = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gwc
  store float %i.gwf, ptr %i.gwg, align 4, !tbaa !33
  %i.gwh = shl i64 %i.gvc, 32
  %sext2940 = add i64 %i.gwh, 60129542144
  %i.gwi = ashr exact i64 %sext2940, 32           ; 2 uses
  %i.gwj = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gwi
  %i.gwk = load float, ptr %i.gwj, align 4, !tbaa !33
  %i.gwl = or disjoint i64 %i.gve, 2              ; 2 uses
  %i.gwm = getelementptr inbounds nuw [4 x i8], ptr %i.gvm, i64 %i.gwl
  store float %i.gwk, ptr %i.gwm, align 4, !tbaa !33
  %i.gwn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gwi
  %i.gwo = load float, ptr %i.gwn, align 4, !tbaa !33
  %i.gwp = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gwl
  store float %i.gwo, ptr %i.gwp, align 8, !tbaa !33
  %i.gwq = shl i64 %i.gvc, 32
  %sext2941 = add i64 %i.gwq, 55834574848
  %i.gwr = ashr exact i64 %sext2941, 32           ; 2 uses
  %i.gws = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gwr
  %i.gwt = load float, ptr %i.gws, align 4, !tbaa !33
  %i.gwu = or disjoint i64 %i.gve, 3              ; 2 uses
  %i.gwv = getelementptr inbounds nuw [4 x i8], ptr %i.gwb, i64 %i.gwu
  store float %i.gwt, ptr %i.gwv, align 4, !tbaa !33
  %i.gww = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gwr
  %i.gwx = load float, ptr %i.gww, align 4, !tbaa !33
  %i.gwy = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gwu
  store float %i.gwx, ptr %i.gwy, align 4, !tbaa !33
  %i.gwz = or disjoint i64 %i.gve, 4              ; 2 uses
  %i.gxa = getelementptr inbounds nuw [4 x i8], ptr %i.gvm, i64 %i.gwz
  %i.gxb = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gwz
  %i.gxc = or disjoint i64 %i.gve, 5              ; 2 uses
  %i.gxd = getelementptr inbounds nuw [4 x i8], ptr %i.gwb, i64 %i.gxc
  %i.gxe = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gxc
  %i.gxf = or disjoint i64 %i.gve, 6              ; 2 uses
  %i.gxg = getelementptr inbounds nuw [4 x i8], ptr %i.gvm, i64 %i.gxf
  %i.gxh = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gxf
  %i.gxi = insertelement <4 x i64> poison, i64 %i.gvc, i64 0
  %i.gxj = shl <4 x i64> %i.gxi, <i64 32, i64 poison, i64 poison, i64 poison>
  %i.gxk = shufflevector <4 x i64> %i.gxj, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.gxl = add <4 x i64> %i.gxk, <i64 51539607552, i64 47244640256, i64 42949672960, i64 38654705664>
  %i.gxm = ashr exact <4 x i64> %i.gxl, splat (i64 32) ; 4 uses
  %i.gxn = extractelement <4 x i64> %i.gxm, i64 0 ; 2 uses
  %i.gxo = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gxn
  %i.gxp = load float, ptr %i.gxo, align 4, !tbaa !33
  store float %i.gxp, ptr %i.gxa, align 4, !tbaa !33
  %i.gxq = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gxn
  %i.gxr = load float, ptr %i.gxq, align 4, !tbaa !33
  store float %i.gxr, ptr %i.gxb, align 16, !tbaa !33
  %i.gxs = extractelement <4 x i64> %i.gxm, i64 1 ; 2 uses
  %i.gxt = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gxs
  %i.gxu = load float, ptr %i.gxt, align 4, !tbaa !33
  store float %i.gxu, ptr %i.gxd, align 4, !tbaa !33
  %i.gxv = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gxs
  %i.gxw = load float, ptr %i.gxv, align 4, !tbaa !33
  store float %i.gxw, ptr %i.gxe, align 4, !tbaa !33
  %i.gxx = extractelement <4 x i64> %i.gxm, i64 2 ; 2 uses
  %i.gxy = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gxx
  %i.gxz = load float, ptr %i.gxy, align 4, !tbaa !33
  store float %i.gxz, ptr %i.gxg, align 4, !tbaa !33
  %i.gya = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gxx
  %i.gyb = load float, ptr %i.gya, align 4, !tbaa !33
  store float %i.gyb, ptr %i.gxh, align 8, !tbaa !33
  %i.gyc = extractelement <4 x i64> %i.gxm, i64 3 ; 2 uses
  %i.gyd = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gyc
  %i.gye = load float, ptr %i.gyd, align 4, !tbaa !33
  %i.gyf = or disjoint i64 %i.gve, 7              ; 2 uses
  %i.gyg = getelementptr inbounds nuw [4 x i8], ptr %i.gwb, i64 %i.gyf
  store float %i.gye, ptr %i.gyg, align 4, !tbaa !33
  %i.gyh = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gyc
  %i.gyi = load float, ptr %i.gyh, align 4, !tbaa !33
  %i.gyj = getelementptr inbounds nuw [4 x i8], ptr %i.btg, i64 %i.gyf
  store float %i.gyi, ptr %i.gyj, align 4, !tbaa !33
  %indvars.iv.next2645 = add nuw nsw i64 %indvars.iv2644, 1 ; 2 uses
  %exitcond2647.not = icmp eq i64 %indvars.iv.next2645, 8
  br i1 %exitcond2647.not, label %.loopexit1928, label %.preheader1902

.loopexit1928:                                    ; preds = %.preheader1902, %.loopexit1930
  %brmerge1801 = or i1 %i.gsm, %.not1799
  %brmerge2301 = select i1 %brmerge1801, i1 true, i1 %i.fwz
  br i1 %brmerge2301, label %.loopexit1926, label %.preheader1901.preheader

.preheader1901.preheader:                         ; preds = %.loopexit1928
  %i.gyk = sub i32 %i.fxt, %i.fxz
  %i.gyl = tail call i32 @llvm.smin.i32(i32 %i.gyk, i32 8) ; 2 uses
  %i.gym = sext i32 %i.fxz to i64
  %i.gyn = call i32 @llvm.umax.i32(i32 %i.gyl, i32 1) ; 2 uses
  %umax4446 = zext i32 %i.gyn to i64              ; 2 uses
  %xtraiter4447 = and i64 %umax4446, 1
  %i.gyo = icmp ult i32 %i.gyl, 2
  %unroll_iter4451 = and i64 %umax4446, 4294967294
  %lcmp.mod4449.not = icmp eq i64 %xtraiter4447, 0
  %lcmp.mod4450 = trunc i32 %i.gyn to i1
  br label %.preheader1901

.preheader1901:                                   ; preds = %.preheader1901.preheader, %._crit_edge2151
  %indvars.iv2651 = phi i64 [ 0, %.preheader1901.preheader ], [ %indvars.iv.next2652, %._crit_edge2151 ] ; 4 uses
  %i.gyp = trunc nuw nsw i64 %indvars.iv2651 to i32
  %i.gyq = sub i32 %i.es, %i.gyp
  %i.gyr = mul nsw i32 %i.gyq, %i.ae
  %i.gys = add i32 %i.et, %i.gyr                  ; 3 uses
  %i.gyt = add nsw i64 %indvars.iv2651, %i.fxi
  %i.gyu = shl nsw i64 %i.gyt, 7
  %i.gyv = add nsw i64 %i.gyu, %i.gym             ; 3 uses
  %indvars.iv2651.tr = trunc nuw nsw i64 %indvars.iv2651 to i32
  %i.gyw = shl i32 %indvars.iv2651.tr, 2          ; 3 uses
  br i1 %i.gyo, label %.epil.preheader4445, label %.preheader1901.new

.preheader1901.new:                               ; preds = %.preheader1901
  %i.gyx = lshr i32 %i.q, %i.gyw
  %i.gyy = and i32 %i.gyx, 3
  %i.gyz = zext nneg i32 %i.gyy to i64
  %i.gza = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gyz
  %i.gzb = load ptr, ptr %i.gza, align 8, !tbaa !171
  %i.gzc = or disjoint i32 %i.gyw, 2
  %i.gzd = lshr i32 %i.q, %i.gzc
  %i.gze = and i32 %i.gzd, 3
  %i.gzf = zext nneg i32 %i.gze to i64
  %i.gzg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gzf
  %i.gzh = load ptr, ptr %i.gzg, align 8, !tbaa !171
  br label %bb.bm

._crit_edge2151.unr-lcssa:                        ; preds = %bb.bm
  br i1 %lcmp.mod4449.not, label %._crit_edge2151, label %.epil.preheader4445

.epil.preheader4445:                              ; preds = %._crit_edge2151.unr-lcssa, %.preheader1901
  %indvars.iv2648.epil.init = phi i64 [ 0, %.preheader1901 ], [ %indvars.iv.next2649.1, %._crit_edge2151.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod4450)
  %i.gzi = trunc nuw nsw i64 %indvars.iv2648.epil.init to i32 ; 2 uses
  %i.gzj = shl i32 %i.gzi, 1
  %i.gzk = and i32 %i.gzj, 2
  %i.gzl = or disjoint i32 %i.gyw, %i.gzk
  %i.gzm = lshr i32 %i.q, %i.gzl
  %i.gzn = and i32 %i.gzm, 3
  %i.gzo = sub i32 %i.gys, %i.gzi
  %i.gzp = sext i32 %i.gzo to i64                 ; 2 uses
  %i.gzq = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.gzp
  %i.gzr = load float, ptr %i.gzq, align 4, !tbaa !33
  %i.gzs = zext nneg i32 %i.gzn to i64
  %i.gzt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gzs
  %i.gzu = load ptr, ptr %i.gzt, align 8, !tbaa !171
  %i.gzv = add nsw i64 %i.gyv, %indvars.iv2648.epil.init ; 2 uses
  %i.gzw = getelementptr inbounds [4 x i8], ptr %i.gzu, i64 %i.gzv
  store float %i.gzr, ptr %i.gzw, align 4, !tbaa !33
  %i.gzx = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.gzp
  %i.gzy = load float, ptr %i.gzx, align 4, !tbaa !33
  %i.gzz = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.gzv
  store float %i.gzy, ptr %i.gzz, align 4, !tbaa !33
  br label %._crit_edge2151

._crit_edge2151:                                  ; preds = %._crit_edge2151.unr-lcssa, %.epil.preheader4445
  %indvars.iv.next2652 = add nuw nsw i64 %indvars.iv2651, 1 ; 2 uses
  %i.haa = icmp slt i64 %indvars.iv.next2652, %i.fxj
  br i1 %i.haa, label %.preheader1901, label %.loopexit1926

bb.bm:                                            ; preds = %bb.bm, %.preheader1901.new
  %indvars.iv2648 = phi i64 [ 0, %.preheader1901.new ], [ %indvars.iv.next2649.1, %bb.bm ] ; 4 uses
  %niter4452 = phi i64 [ 0, %.preheader1901.new ], [ %niter4452.next.1, %bb.bm ]
  %i.hab = trunc nuw nsw i64 %indvars.iv2648 to i32
  %i.hac = sub i32 %i.gys, %i.hab
  %i.had = sext i32 %i.hac to i64                 ; 2 uses
  %i.hae = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.had
  %i.haf = load float, ptr %i.hae, align 4, !tbaa !33
  %i.hag = add nsw i64 %i.gyv, %indvars.iv2648    ; 2 uses
  %i.hah = getelementptr inbounds [4 x i8], ptr %i.gzb, i64 %i.hag
  store float %i.haf, ptr %i.hah, align 4, !tbaa !33
  %i.hai = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.had
  %i.haj = load float, ptr %i.hai, align 4, !tbaa !33
  %i.hak = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.hag
  store float %i.haj, ptr %i.hak, align 4, !tbaa !33
  %indvars.iv.next2649 = or disjoint i64 %indvars.iv2648, 1 ; 2 uses
  %i.hal = trunc nuw nsw i64 %indvars.iv.next2649 to i32
  %i.ham = sub i32 %i.gys, %i.hal
  %i.han = sext i32 %i.ham to i64                 ; 2 uses
  %i.hao = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.han
  %i.hap = load float, ptr %i.hao, align 4, !tbaa !33
  %i.haq = add nsw i64 %i.gyv, %indvars.iv.next2649 ; 2 uses
  %i.har = getelementptr inbounds [4 x i8], ptr %i.gzh, i64 %i.haq
  store float %i.hap, ptr %i.har, align 4, !tbaa !33
  %i.has = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.han
  %i.hat = load float, ptr %i.has, align 4, !tbaa !33
  %i.hau = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.haq
  store float %i.hat, ptr %i.hau, align 4, !tbaa !33
  %indvars.iv.next2649.1 = add nuw nsw i64 %indvars.iv2648, 2 ; 2 uses
  %niter4452.next.1 = add i64 %niter4452, 2       ; 2 uses
  %niter4452.ncmp.1.not = icmp eq i64 %niter4452.next.1, %unroll_iter4451
  br i1 %niter4452.ncmp.1.not, label %._crit_edge2151.unr-lcssa, label %bb.bm

.loopexit1926:                                    ; preds = %._crit_edge2151, %.loopexit1928
  %brmerge1804 = or i1 %i.fwo, %i.gsm
  br i1 %brmerge1804, label %.loopexit1924.split, label %.preheader1900.preheader

.preheader1900.preheader:                         ; preds = %.loopexit1926
  %i.hav = sext i32 %i.fxz to i64                 ; 65 uses
  %i.haw = add i32 %smin2693, %indvars.iv2664
  %i.hax = sub i32 %i.haw, %i.fxz                 ; 56 uses
  %i.hay = load float, ptr %i.azz, align 4, !tbaa !33
  %i.haz = load ptr, ptr %i.bab, align 8, !tbaa !171
  %i.hba = getelementptr inbounds [4 x i8], ptr %i.haz, i64 %i.hav
  store float %i.hay, ptr %i.hba, align 4, !tbaa !33
  %i.hbb = load float, ptr %i.bac, align 4, !tbaa !33
  %i.hbc = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.hav
  store float %i.hbb, ptr %i.hbc, align 4, !tbaa !33
  %exitcond2696.not = icmp slt i32 %i.hax, 2
  br i1 %exitcond2696.not, label %._crit_edge2155, label %bb.dk

._crit_edge2155:                                  ; preds = %.preheader1900.preheader, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dq
  %i.hbd = add nsw i64 %i.hav, 128                ; 2 uses
  %i.hbe = load float, ptr %i.bch, align 4, !tbaa !33
  %i.hbf = load ptr, ptr %i.bcj, align 8, !tbaa !171
  %i.hbg = getelementptr inbounds [4 x i8], ptr %i.hbf, i64 %i.hbd
  store float %i.hbe, ptr %i.hbg, align 4, !tbaa !33
  %i.hbh = load float, ptr %i.bck, align 4, !tbaa !33
  %i.hbi = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.hbd
  store float %i.hbh, ptr %i.hbi, align 4, !tbaa !33
  %exitcond2692.not = icmp slt i32 %i.hax, 2
  br i1 %exitcond2692.not, label %._crit_edge2155.1, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge2155
  %i.hbj = load float, ptr %i.bcp, align 4, !tbaa !33
  %i.hbk = load ptr, ptr %i.bcr, align 8, !tbaa !171
  %i.hbl = add nsw i64 %i.hav, 129                ; 2 uses
  %i.hbm = getelementptr inbounds [4 x i8], ptr %i.hbk, i64 %i.hbl
  store float %i.hbj, ptr %i.hbm, align 4, !tbaa !33
  %i.hbn = load float, ptr %i.bcs, align 4, !tbaa !33
  %i.hbo = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.hbl
  store float %i.hbn, ptr %i.hbo, align 4, !tbaa !33
  %exitcond2692.not.1 = icmp eq i32 %i.hax, 2
  br i1 %exitcond2692.not.1, label %._crit_edge2155.1, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hbp = load float, ptr %i.bcx, align 4, !tbaa !33
  %i.hbq = load ptr, ptr %i.bcz, align 8, !tbaa !171
  %i.hbr = add nsw i64 %i.hav, 130                ; 2 uses
  %i.hbs = getelementptr inbounds [4 x i8], ptr %i.hbq, i64 %i.hbr
  store float %i.hbp, ptr %i.hbs, align 4, !tbaa !33
  %i.hbt = load float, ptr %i.bda, align 4, !tbaa !33
  %i.hbu = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.hbr
  store float %i.hbt, ptr %i.hbu, align 4, !tbaa !33
  %exitcond2692.not.2 = icmp eq i32 %i.hax, 3
  br i1 %exitcond2692.not.2, label %._crit_edge2155.1, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hbv = load float, ptr %i.bdf, align 4, !tbaa !33
  %i.hbw = load ptr, ptr %i.bdh, align 8, !tbaa !171
  %i.hbx = add nsw i64 %i.hav, 131                ; 2 uses
  %i.hby = getelementptr inbounds [4 x i8], ptr %i.hbw, i64 %i.hbx
  store float %i.hbv, ptr %i.hby, align 4, !tbaa !33
  %i.hbz = load float, ptr %i.bdi, align 4, !tbaa !33
  %i.hca = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.hbx
  store float %i.hbz, ptr %i.hca, align 4, !tbaa !33
  %exitcond2692.not.3 = icmp eq i32 %i.hax, 4
  br i1 %exitcond2692.not.3, label %._crit_edge2155.1, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hcb = load float, ptr %i.bdn, align 4, !tbaa !33
  %i.hcc = load ptr, ptr %i.bdp, align 8, !tbaa !171
  %i.hcd = add nsw i64 %i.hav, 132                ; 2 uses
  %i.hce = getelementptr inbounds [4 x i8], ptr %i.hcc, i64 %i.hcd
  store float %i.hcb, ptr %i.hce, align 4, !tbaa !33
  %i.hcf = load float, ptr %i.bdq, align 4, !tbaa !33
  %i.hcg = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.hcd
  store float %i.hcf, ptr %i.hcg, align 4, !tbaa !33
  %exitcond2692.not.4 = icmp eq i32 %i.hax, 5
  br i1 %exitcond2692.not.4, label %._crit_edge2155.1, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hch = load float, ptr %i.bdv, align 4, !tbaa !33
  %i.hci = load ptr, ptr %i.bdx, align 8, !tbaa !171
  %i.hcj = add nsw i64 %i.hav, 133                ; 2 uses
  %i.hck = getelementptr inbounds [4 x i8], ptr %i.hci, i64 %i.hcj
  store float %i.hch, ptr %i.hck, align 4, !tbaa !33
  %i.hcl = load float, ptr %i.bdy, align 4, !tbaa !33
  %i.hcm = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.hcj
  store float %i.hcl, ptr %i.hcm, align 4, !tbaa !33
  %exitcond2692.not.5 = icmp eq i32 %i.hax, 6
  br i1 %exitcond2692.not.5, label %._crit_edge2155.1, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hcn = load float, ptr %i.bed, align 32, !tbaa !33
  %i.hco = load ptr, ptr %i.bef, align 8, !tbaa !171
  %i.hcp = add nsw i64 %i.hav, 134                ; 2 uses
  %i.hcq = getelementptr inbounds [4 x i8], ptr %i.hco, i64 %i.hcp
  store float %i.hcn, ptr %i.hcq, align 4, !tbaa !33
  %i.hcr = load float, ptr %i.beg, align 32, !tbaa !33
  %i.hcs = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.hcp
  store float %i.hcr, ptr %i.hcs, align 4, !tbaa !33
  %exitcond2692.not.6 = icmp eq i32 %i.hax, 7
  br i1 %exitcond2692.not.6, label %._crit_edge2155.1, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hct = load float, ptr %i.bel, align 4, !tbaa !33
  %i.hcu = load ptr, ptr %i.ben, align 8, !tbaa !171
  %i.hcv = add nsw i64 %i.hav, 135                ; 2 uses
  %i.hcw = getelementptr inbounds [4 x i8], ptr %i.hcu, i64 %i.hcv
  store float %i.hct, ptr %i.hcw, align 4, !tbaa !33
  %i.hcx = load float, ptr %i.beo, align 4, !tbaa !33
  %i.hcy = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.hcv
  store float %i.hcx, ptr %i.hcy, align 4, !tbaa !33
  br label %._crit_edge2155.1

._crit_edge2155.1:                                ; preds = %._crit_edge2155, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt
  %i.hcz = add nsw i64 %i.hav, 256                ; 2 uses
  %i.hda = load float, ptr %i.bes, align 4, !tbaa !33
  %i.hdb = load ptr, ptr %i.beu, align 8, !tbaa !171
  %i.hdc = getelementptr inbounds [4 x i8], ptr %i.hdb, i64 %i.hcz
  store float %i.hda, ptr %i.hdc, align 4, !tbaa !33
  %i.hdd = load float, ptr %i.bev, align 4, !tbaa !33
  %i.hde = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.hcz
  store float %i.hdd, ptr %i.hde, align 4, !tbaa !33
  %exitcond2688.not = icmp slt i32 %i.hax, 2
  br i1 %exitcond2688.not, label %._crit_edge2155.2, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge2155.1
  %i.hdf = load float, ptr %i.bfa, align 4, !tbaa !33
  %i.hdg = load ptr, ptr %i.bfc, align 8, !tbaa !171
  %i.hdh = add nsw i64 %i.hav, 257                ; 2 uses
  %i.hdi = getelementptr inbounds [4 x i8], ptr %i.hdg, i64 %i.hdh
  store float %i.hdf, ptr %i.hdi, align 4, !tbaa !33
  %i.hdj = load float, ptr %i.bfd, align 4, !tbaa !33
  %i.hdk = getelementptr inbounds [4 x i8], ptr %i.btg, i64 %i.hdh
  store float %i.hdj, ptr %i.hdk, align 4, !tbaa !33
  %exitcond2688.not.1 = icmp eq i32 %i.hax, 2
  br i1 %exitcond2688.not.1, label %._crit_edge2155.2, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hdl = load float, ptr %i.bfi, align 4, !tbaa !33
  %i.hdm = load ptr, ptr %i.bfk, align 8, !tbaa !171
  %i.hdn = add nsw i64 %i.hav, 258                ; 2 uses
  %i.hdo = getelementptr inbounds [4 x i8], ptr %i.hdm, i64 %i.hdn
end_hunk_2
