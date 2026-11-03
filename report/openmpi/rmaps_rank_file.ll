Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/rmaps_rank_file?download=true
begin_hunk_0_@prte_rmaps_rf_map:bb.a
  call void @pmix_obj_run_constructors(ptr noundef @rankmap)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fr = call i32 @pmix_pointer_array_init(ptr noundef @rankmap, i32 noundef 64, i32 noundef 2147483647, i32 noundef 64)
  store i32 %i.fr, ptr %i.p, align 4
  %i.fs = load i32, ptr %i.p, align 4
  %i.ft = icmp ne i32 0, %i.fs
  br i1 %i.ft, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @pmix_obj_run_destructors(ptr noundef @rankmap)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 -1, ptr %i.a, align 4
  br label %bb.ka

bb.bl:                                            ; preds = %bb.bh
  %i.fu = load ptr, ptr %i.u, align 8
  %i.fv = call i32 @prte_rmaps_rank_file_parse(ptr noundef %i.fu) ; 2 uses
  store i32 %i.fv, ptr %i.p, align 4
  %i.fw = icmp ne i32 0, %i.fv
  br i1 %i.fw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.bn:                                            ; preds = %bb.bl
  store i32 0, ptr %i.e, align 4
  br label %bb.bo

bb.bo:                                            ; preds = %bb.hz, %bb.bn
  %i.fx = load i32, ptr %i.e, align 4
  %i.fy = load ptr, ptr %i.b, align 8
  %46 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.fy, i32 0, i32 8
  %i.fz = load ptr, ptr %46, align 8
  %47 = getelementptr inbounds nuw %struct.pmix_pointer_array_t, ptr %i.fz, i32 0, i32 3
  %i.ga = load i32, ptr %47, align 8
  %i.gb = icmp slt i32 %i.fx, %i.ga
  br i1 %i.gb, label %bb.bp, label %bb.ia

bb.bp:                                            ; preds = %bb.bo
  %i.gc = load ptr, ptr %i.b, align 8
  %48 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.gc, i32 0, i32 8
  %i.gd = load ptr, ptr %48, align 8
  %i.ge = load i32, ptr %i.e, align 4
  %i.gf = call ptr @pmix_pointer_array_get_item(ptr noundef %i.gd, i32 noundef %i.ge)
  store ptr %i.gf, ptr %i.d, align 8
  %i.gg = load ptr, ptr %i.d, align 8
  %i.gh = icmp eq ptr null, %i.gg
  br i1 %i.gh, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  br label %bb.hz

bb.br:                                            ; preds = %bb.bp
  %i.gi = load ptr, ptr %i.b, align 8
  %i.gj = load ptr, ptr %i.d, align 8
  %i.gk = load ptr, ptr %i.c, align 8
  %49 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.gk, i32 0, i32 11
  %i.gl = load i16, ptr %49, align 2
  %i.gm = load i8, ptr %i.t, align 1
  %i.gn = icmp ne i8 %i.gm, 0
  %i.go = call i32 @prte_rmaps_base_get_target_nodes(ptr noundef %2, ptr noundef %i.l, ptr noundef %i.gi, ptr noundef %i.gj, i16 noundef zeroext %i.gl, i1 noundef zeroext %i.gn, i1 noundef zeroext false, i1 noundef zeroext true)
  store i32 %i.go, ptr %i.p, align 4
  %i.gp = load i32, ptr %i.p, align 4
  %i.gq = icmp ne i32 0, %i.gp
  br i1 %i.gq, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gr = load i32, ptr %i.p, align 4
  %i.gs = icmp ne i32 -43, %i.gr
  br i1 %i.gs, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.gt = load i32, ptr %i.p, align 4
  %i.gu = call ptr @prte_strerror(i32 noundef %i.gt)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.gu, ptr noundef @.str.9, i32 noundef 228)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  br label %bb.ji

bb.bx:                                            ; preds = %bb.br
  store i8 0, ptr %i.t, align 1
  %i.gv = load ptr, ptr %i.d, align 8
  %50 = getelementptr inbounds nuw %struct.prte_app_context_t, ptr %i.gv, i32 0, i32 11
  %i.gw = load i8, ptr %50, align 8
  %i.gx = zext i8 %i.gw to i32
  %i.gy = and i32 %i.gx, 4
  %i.gz = icmp ne i32 %i.gy, 0
  br i1 %i.gz, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.ha = load i32, ptr @num_ranks, align 4
  %i.hb = load ptr, ptr %i.d, align 8
  %51 = getelementptr inbounds nuw %struct.prte_app_context_t, ptr %i.hb, i32 0, i32 4
  store i32 %i.ha, ptr %51, align 8
  %i.hc = load ptr, ptr %i.d, align 8
  %52 = getelementptr inbounds nuw %struct.prte_app_context_t, ptr %i.hc, i32 0, i32 4
  %i.hd = load i32, ptr %52, align 8
  %i.he = icmp eq i32 0, %i.hd
  br i1 %i.he, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.hf = load ptr, ptr %i.u, align 8
  %i.hg = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.10, i32 noundef 1, ptr noundef %i.hf) ; 0 uses
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.ca:                                            ; preds = %bb.by
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  store i32 0, ptr %i.f, align 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ha, %bb.cb
  %i.hh = load i32, ptr %i.f, align 4
  %i.hi = load ptr, ptr %i.d, align 8
  %53 = getelementptr inbounds nuw %struct.prte_app_context_t, ptr %i.hi, i32 0, i32 4
  %i.hj = load i32, ptr %53, align 8
  %i.hk = icmp slt i32 %i.hh, %i.hj
  br i1 %i.hk, label %bb.cd, label %bb.hb

bb.cd:                                            ; preds = %bb.cc
  %i.hl = load i32, ptr %i.k, align 4
  %i.hm = load i32, ptr %i.f, align 4
  %i.hn = add i32 %i.hl, %i.hm
  store i32 %i.hn, ptr %i.j, align 4
  %i.ho = load i32, ptr %i.j, align 4
  %i.hp = call ptr @pmix_pointer_array_get_item(ptr noundef @rankmap, i32 noundef %i.ho)
  store ptr %i.hp, ptr %i.m, align 8
  %i.hq = load ptr, ptr %i.m, align 8
  %i.hr = icmp eq ptr null, %i.hq
  br i1 %i.hr, label %bb.ce, label %bb.dd

bb.ce:                                            ; preds = %bb.cd
  %i.hs = load ptr, ptr %i.c, align 8
  %54 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.hs, i32 0, i32 4
  %i.ht = load ptr, ptr %54, align 8
  %i.hu = icmp ne ptr null, %i.ht
  br i1 %i.hu, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.hv = load ptr, ptr %i.c, align 8
  %55 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.hv, i32 0, i32 4
  %i.hw = load ptr, ptr %55, align 8
  store ptr %i.hw, ptr %i.s, align 8
  br label %bb.ck

bb.cg:                                            ; preds = %bb.ce
  %i.hx = load ptr, ptr @prte_hwloc_default_cpu_list, align 8
  %i.hy = icmp ne ptr null, %i.hx
  br i1 %i.hy, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.hz = load ptr, ptr @prte_hwloc_default_cpu_list, align 8
  store ptr %i.hz, ptr %i.s, align 8
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.ia = load i32, ptr %i.j, align 4
  %i.ib = load ptr, ptr %i.u, align 8
  %i.ic = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.11, i32 noundef 1, i32 noundef %i.ia, ptr noundef %i.ib) ; 0 uses
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.cj:                                            ; preds = %bb.ch
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cf
  store ptr null, ptr %i.g, align 8
  %56 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %2, i32 0, i32 1
  %57 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %56, i32 0, i32 1
  %i.id = load ptr, ptr %57, align 8
  store ptr %i.id, ptr %i.h, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cp, %bb.ck
  %i.ie = load ptr, ptr %i.h, align 8
  %58 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %2, i32 0, i32 1
  %i.if = icmp ne ptr %i.ie, %58
  br i1 %i.if, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.ig = load ptr, ptr %i.h, align 8
  %59 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.ig, i32 0, i32 12
  %i.ih = load i32, ptr %59, align 4
  %i.ii = load ptr, ptr %i.h, align 8
  %60 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.ii, i32 0, i32 8
  %i.ij = load i16, ptr %60, align 8
  %i.ik = zext i16 %i.ij to i32
  %i.il = icmp sle i32 %i.ih, %i.ik
  br i1 %i.il, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.im = load ptr, ptr %i.h, align 8
  store ptr %i.im, ptr %i.g, align 8
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.in = load ptr, ptr %i.h, align 8
  %61 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.in, i32 0, i32 1
  %i.io = load ptr, ptr %61, align 8
  store ptr %i.io, ptr %i.h, align 8
  br label %bb.cl, !llvm.loop !5

bb.cq:                                            ; preds = %bb.co, %bb.cl
  %i.ip = load ptr, ptr %i.g, align 8
  %i.iq = icmp eq ptr null, %i.ip
  br i1 %i.iq, label %bb.cr, label %bb.cy

bb.cr:                                            ; preds = %bb.cq
  store i32 -1, ptr %i.f, align 4
  %62 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %2, i32 0, i32 1
  %63 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %62, i32 0, i32 1
  %i.ir = load ptr, ptr %63, align 8
  store ptr %i.ir, ptr %i.h, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cw, %bb.cr
  %i.is = load ptr, ptr %i.h, align 8
  %64 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %2, i32 0, i32 1
  %i.it = icmp ne ptr %i.is, %64
  br i1 %i.it, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.iu = load ptr, ptr %i.h, align 8
  %65 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.iu, i32 0, i32 8
  %i.iv = load i16, ptr %65, align 8
  %i.iw = zext i16 %i.iv to i32
  %i.ix = load i32, ptr %i.f, align 4
  %i.iy = icmp ult i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.iz = load ptr, ptr %i.h, align 8
  %66 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.iz, i32 0, i32 8
  %i.ja = load i16, ptr %66, align 8
  %i.jb = zext i16 %i.ja to i32
  store i32 %i.jb, ptr %i.f, align 4
  %i.jc = load ptr, ptr %i.h, align 8
  store ptr %i.jc, ptr %i.g, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jd = load ptr, ptr %i.h, align 8
  %67 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.jd, i32 0, i32 1
  %i.je = load ptr, ptr %67, align 8
  store ptr %i.je, ptr %i.h, align 8
  br label %bb.cs, !llvm.loop !6

bb.cx:                                            ; preds = %bb.cs
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cq
  %i.jf = load ptr, ptr %i.g, align 8
  %i.jg = icmp eq ptr null, %i.jf
  br i1 %i.jg, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  br label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jh = call ptr @prte_strerror(i32 noundef -2)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.jh, ptr noundef @.str.9, i32 noundef 287)
  br label %bb.db

bb.db:                                            ; preds = %bb.da
  store i32 -2, ptr %i.p, align 4
  br label %bb.ji

bb.dc:                                            ; preds = %bb.cy
  br label %bb.eg

bb.dd:                                            ; preds = %bb.cd
  %i.ji = load ptr, ptr %i.m, align 8
  %68 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.ji, i32 0, i32 2
  %i.jj = getelementptr inbounds nuw [64 x i8], ptr %68, i64 0, i64 0
  %i.jk = call i64 @strlen(ptr noundef %i.jj) #17
  %i.jl = icmp ult i64 0, %i.jk
  br i1 %i.jl, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.jm = load ptr, ptr %i.m, align 8
  %69 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.jm, i32 0, i32 2
  %i.jn = getelementptr inbounds nuw [64 x i8], ptr %69, i64 0, i64 0
  store ptr %i.jn, ptr %i.s, align 8
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  store ptr null, ptr %i.s, align 8
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  store ptr null, ptr %i.g, align 8
  %70 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %2, i32 0, i32 1
  %71 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %70, i32 0, i32 1
  %i.jo = load ptr, ptr %71, align 8
  store ptr %i.jo, ptr %i.h, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %bb.ee, %bb.dg
  %i.jp = load ptr, ptr %i.h, align 8
  %72 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %2, i32 0, i32 1
  %i.jq = icmp ne ptr %i.jp, %72
  br i1 %i.jq, label %bb.di, label %bb.ef

bb.di:                                            ; preds = %bb.dh
  %i.jr = load ptr, ptr %i.m, align 8
  %73 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.jr, i32 0, i32 1
  %i.js = load ptr, ptr %73, align 8
  %i.jt = icmp ne ptr null, %i.js
  br i1 %i.jt, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.ju = load ptr, ptr %i.h, align 8
  %i.jv = load ptr, ptr %i.m, align 8
  %74 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.jv, i32 0, i32 1
  %i.jw = load ptr, ptr %74, align 8
  %i.jx = call zeroext i1 @prte_quickmatch(ptr noundef %i.ju, ptr noundef %i.jw)
  br i1 %i.jx, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.jy = load ptr, ptr %i.h, align 8
  store ptr %i.jy, ptr %i.g, align 8
  br label %bb.ef

bb.dl:                                            ; preds = %bb.dj, %bb.di
  %i.jz = load ptr, ptr %i.m, align 8
  %75 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.jz, i32 0, i32 1
  %i.ka = load ptr, ptr %75, align 8
  %i.kb = icmp ne ptr null, %i.ka
  br i1 %i.kb, label %bb.dm, label %bb.ec

bb.dm:                                            ; preds = %bb.dl
  %i.kc = load ptr, ptr %i.m, align 8
  %76 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.kc, i32 0, i32 1
  %i.kd = load ptr, ptr %76, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 0
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = sext i8 %i.kf to i32
  %i.kh = icmp eq i32 43, %i.kg
  br i1 %i.kh, label %bb.dn, label %bb.ec

bb.dn:                                            ; preds = %bb.dm
  %i.ki = load ptr, ptr %i.m, align 8
  %77 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.ki, i32 0, i32 1
  %i.kj = load ptr, ptr %77, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 1
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = sext i8 %i.kl to i32
  %i.kn = icmp eq i32 110, %i.km
  br i1 %i.kn, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ko = load ptr, ptr %i.m, align 8
  %78 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.ko, i32 0, i32 1
  %i.kp = load ptr, ptr %78, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 1
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = sext i8 %i.kr to i32
  %i.kt = icmp eq i32 78, %i.ks
  br i1 %i.kt, label %bb.dp, label %bb.ec

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.ku = load ptr, ptr %i.m, align 8
  %79 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.ku, i32 0, i32 1
  %i.kv = load ptr, ptr %79, align 8
  %i.kw = call ptr @strtok(ptr noundef %i.kv, ptr noundef @.str.12) #18
  %i.kx = call i32 @atoi(ptr noundef %i.kw) #17
  store i32 %i.kx, ptr %i.n, align 4
  %i.ky = load i32, ptr %i.n, align 4
  %i.kz = call i64 @pmix_list_get_size(ptr noundef %2)
  %i.la = trunc i64 %i.kz to i32
  %i.lb = icmp sge i32 %i.ky, %i.la
  br i1 %i.lb, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lc = load i32, ptr %i.n, align 4
  %i.ld = icmp sgt i32 0, %i.lc
  br i1 %i.ld, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.le = load ptr, ptr %i.m, align 8
  %80 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.le, i32 0, i32 1
  %i.lf = load ptr, ptr %80, align 8
  %i.lg = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.13, i32 noundef 1, ptr noundef %i.lf) ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.lh = call ptr @prte_strerror(i32 noundef -5)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.lh, ptr noundef @.str.9, i32 noundef 314)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i32 -5, ptr %i.a, align 4
  br label %bb.ka

bb.du:                                            ; preds = %bb.dq
  %i.li = call ptr @pmix_list_get_first(ptr noundef %2)
  store ptr %i.li, ptr %i.i, align 8
  store i32 0, ptr %i.o, align 4
  br label %bb.dv

bb.dv:                                            ; preds = %bb.ea, %bb.du
  %i.lj = load i32, ptr %i.o, align 4
  %i.lk = load i32, ptr %i.n, align 4
  %i.ll = icmp slt i32 %i.lj, %i.lk
  br i1 %i.ll, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %i.lm = load ptr, ptr %i.i, align 8
  %i.ln = icmp ne ptr %i.lm, null
  br i1 %i.ln, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.lo = load ptr, ptr %i.i, align 8
  %81 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.lo, i32 0, i32 1
  %i.lp = load ptr, ptr %81, align 8
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.lq = phi ptr [ %i.lp, %bb.dx ], [ null, %bb.dy ]
  store ptr %i.lq, ptr %i.i, align 8
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.lr = load i32, ptr %i.o, align 4
  %i.ls = add nsw i32 %i.lr, 1
  store i32 %i.ls, ptr %i.o, align 4
  br label %bb.dv, !llvm.loop !7

bb.eb:                                            ; preds = %bb.dv
  %i.lt = load ptr, ptr %i.i, align 8
  store ptr %i.lt, ptr %i.g, align 8
  br label %bb.ef

bb.ec:                                            ; preds = %bb.do, %bb.dm, %bb.dl
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.lu = load ptr, ptr %i.h, align 8
  %82 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.lu, i32 0, i32 1
  %i.lv = load ptr, ptr %82, align 8
  store ptr %i.lv, ptr %i.h, align 8
  br label %bb.dh, !llvm.loop !8

bb.ef:                                            ; preds = %bb.eb, %bb.dk, %bb.dh
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.dc
  %i.lw = load ptr, ptr %i.g, align 8
  %i.lx = icmp eq ptr null, %i.lw
  br i1 %i.lx, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ly = load ptr, ptr %i.m, align 8
  %83 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.ly, i32 0, i32 1
  %i.lz = load ptr, ptr %83, align 8
  %i.ma = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.14, i32 noundef 1, ptr noundef %i.lz) ; 0 uses
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.ei:                                            ; preds = %bb.eg
  %i.mb = load ptr, ptr %i.c, align 8
  %84 = getelementptr inbounds nuw %struct.prte_rmaps_options_t, ptr %i.mb, i32 0, i32 7
  %i.mc = load i8, ptr %84, align 1
  %i.md = icmp ne i8 %i.mc, 0
  br i1 %i.md, label %bb.em, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.me = load ptr, ptr %i.b, align 8
  %i.mf = load ptr, ptr %i.g, align 8
  %i.mg = load ptr, ptr %i.c, align 8
  %i.mh = call i32 @prte_rmaps_base_check_support(ptr noundef %i.me, ptr noundef %i.mf, ptr noundef %i.mg)
  store i32 %i.mh, ptr %i.p, align 4
  %i.mi = load i32, ptr %i.p, align 4
  %i.mj = icmp ne i32 0, %i.mi
  br i1 %i.mj, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.mk = load i32, ptr %i.p, align 4
  store i32 %i.mk, ptr %i.a, align 4
  br label %bb.ka

bb.el:                                            ; preds = %bb.ej
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ei
  %i.ml = load ptr, ptr %i.b, align 8
  %i.mm = load ptr, ptr %i.g, align 8
  %i.mn = load ptr, ptr %i.c, align 8
  call void @prte_rmaps_base_get_cpuset(ptr noundef %i.ml, ptr noundef %i.mm, ptr noundef %i.mn)
  %i.mo = load ptr, ptr %i.b, align 8
  %i.mp = load ptr, ptr %i.d, align 8
  %i.mq = load ptr, ptr %i.g, align 8
  %i.mr = load ptr, ptr %i.c, align 8
  %i.ms = call zeroext i1 @prte_rmaps_base_check_avail(ptr noundef %i.mo, ptr noundef %i.mp, ptr noundef %i.mq, ptr noundef %2, ptr noundef null, ptr noundef %i.mr)
  br i1 %i.ms, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.mt = load ptr, ptr %i.m, align 8
  %85 = getelementptr inbounds nuw %struct.prte_rmaps_rank_file_map_t, ptr %i.mt, i32 0, i32 1
  %i.mu = load ptr, ptr %85, align 8
  %i.mv = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.6, ptr noundef @.str.14, i32 noundef 1, ptr noundef %i.mu) ; 0 uses
  store i32 -43, ptr %i.p, align 4
  br label %bb.ji

bb.eo:                                            ; preds = %bb.em
  %i.mw = load ptr, ptr %i.b, align 8
  %i.mx = load ptr, ptr %i.d, align 8
  %i.my = load ptr, ptr %i.g, align 8
  %i.mz = load ptr, ptr %i.c, align 8
  %i.na = call i32 @prte_rmaps_base_check_oversubscribed(ptr noundef %i.mw, ptr noundef %i.mx, ptr noundef %i.my, ptr noundef %i.mz)
  store i32 %i.na, ptr %i.p, align 4
  %i.nb = load i32, ptr %i.p, align 4
  %i.nc = icmp ne i32 0, %i.nb
  br i1 %i.nc, label %bb.ep, label %bb.ey

bb.ep:                                            ; preds = %bb.eo
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.nd = load ptr, ptr %i.q, align 8
  store ptr %i.nd, ptr %i.ab, align 8
  %i.ne = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.nf = call i32 @pthread_mutex_lock(ptr noundef %i.ne) #18
  %i.ng = icmp eq i32 %i.nf, 35
  br i1 %i.ng, label %bb.er, label %pmix_obj_update.exit7

bb.er:                                            ; preds = %bb.eq
  %i.nh = call ptr @__errno_location() #19
  store i32 35, ptr %i.nh, align 4
  call void @perror(ptr noundef nonnull @.str.31) #20
  call void @abort() #21
  unreachable

pmix_obj_update.exit7:                            ; preds = %bb.eq
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 48 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 8
  %i.nk = add nsw i32 %i.nj, -1                   ; 2 uses
  store i32 %i.nk, ptr %i.ni, align 8
  %i.nl = call i32 @pthread_mutex_unlock(ptr noundef %i.ne) #18 ; 0 uses
  %i.nm = icmp eq i32 0, %i.nk
  br i1 %i.nm, label %bb.es, label %bb.ew

bb.es:                                            ; preds = %pmix_obj_update.exit7
  %i.nn = load ptr, ptr %i.ab, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.nn)
  %i.no = load ptr, ptr %i.ab, align 8
  %86 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.no, i32 0, i32 3
  %87 = getelementptr inbounds nuw %struct.pmix_tma, ptr %86, i32 0, i32 5
  %i.np = load ptr, ptr %87, align 8
  %i.nq = icmp ne ptr null, %i.np
  br i1 %i.nq, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.nr = load ptr, ptr %i.ab, align 8
  %88 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.nr, i32 0, i32 3
  %i.ns = load ptr, ptr %i.q, align 8
  call void @pmix_tma_free(ptr noundef %88, ptr noundef %i.ns)
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.nt = load ptr, ptr %i.q, align 8
  call void @free(ptr noundef %i.nt) #18
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  store ptr null, ptr %i.q, align 8
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %pmix_obj_update.exit7
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  br label %bb.ji

bb.ey:                                            ; preds = %bb.eo
  %i.nu = load ptr, ptr %i.b, align 8
  %i.nv = load ptr, ptr %i.d, align 8
  %89 = getelementptr inbounds nuw %struct.prte_app_context_t, ptr %i.nv, i32 0, i32 2
  %i.nw = load i32, ptr %89, align 8
  %i.nx = load ptr, ptr %i.g, align 8
  %i.ny = load ptr, ptr %i.c, align 8
  %i.nz = call ptr @prte_rmaps_base_setup_proc(ptr noundef %i.nu, i32 noundef %i.nw, ptr noundef %i.nx, ptr noundef null, ptr noundef %i.ny)
  store ptr %i.nz, ptr %i.q, align 8
  %i.oa = load ptr, ptr %i.q, align 8
  %i.ob = icmp eq ptr null, %i.oa
  br i1 %i.ob, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.oc = call ptr @prte_strerror(i32 noundef -2)
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef @.str.8, ptr noundef %i.oc, ptr noundef @.str.9, i32 noundef 351)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store i32 -2, ptr %i.p, align 4
  br label %bb.ji

bb.fc:                                            ; preds = %bb.ey
  %i.od = load i32, ptr %i.j, align 4
  %i.oe = load ptr, ptr %i.q, align 8
  %90 = getelementptr inbounds nuw %struct.prte_proc_t, ptr %i.oe, i32 0, i32 1
  %91 = getelementptr inbounds nuw %struct.pmix_proc, ptr %90, i32 0, i32 1
  store i32 %i.od, ptr %91, align 8
  %i.of = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.og = call i32 @pthread_mutex_lock(ptr noundef %i.of) #18
  %i.oh = icmp eq i32 %i.og, 35
  br i1 %i.oh, label %bb.fd, label %pmix_obj_update.exit6

bb.fd:                                            ; preds = %bb.fc
  %i.oi = call ptr @__errno_location() #19
  store i32 35, ptr %i.oi, align 4
  call void @perror(ptr noundef nonnull @.str.31) #20
  call void @abort() #21
  unreachable

pmix_obj_update.exit6:                            ; preds = %bb.fc
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 48 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 8
  %i.ol = add nsw i32 %i.ok, 1
  store i32 %i.ol, ptr %i.oj, align 8
  %i.om = call i32 @pthread_mutex_unlock(ptr noundef %i.of) #18 ; 0 uses
  %i.on = load ptr, ptr %i.b, align 8
  %92 = getelementptr inbounds nuw %struct.prte_job_t, ptr %i.on, i32 0, i32 13
  %i.oo = load ptr, ptr %92, align 8
  %i.op = load ptr, ptr %i.q, align 8
  %93 = getelementptr inbounds nuw %struct.prte_proc_t, ptr %i.op, i32 0, i32 1
  %94 = getelementptr inbounds nuw %struct.pmix_proc, ptr %93, i32 0, i32 1
  %i.oq = load i32, ptr %94, align 8
  %i.or = load ptr, ptr %i.q, align 8
  %i.os = call i32 @pmix_pointer_array_set_item(ptr noundef %i.oo, i32 noundef %i.oq, ptr noundef %i.or)
  store i32 %i.os, ptr %i.p, align 4
  %i.ot = load i32, ptr %i.p, align 4
  %i.ou = icmp ne i32 0, %i.ot
  br i1 %i.ou, label %bb.fe, label %bb.fr

bb.fe:                                            ; preds = %pmix_obj_update.exit6
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ov = load i32, ptr %i.p, align 4
  %i.ow = icmp ne i32 -43, %i.ov
  br i1 %i.ow, label %bb.fg, label %bb.fh
end_hunk_0
