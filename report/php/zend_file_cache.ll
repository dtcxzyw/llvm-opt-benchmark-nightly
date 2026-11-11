Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_file_cache?download=true
inline.NumInlined: 51
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zend_file_cache_serialize_class:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %.not1005 = icmp ugt ptr %i.a, %i.f
  br i1 %.not1005, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = icmp uge ptr %i.a, %i.i
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = ptrtoint ptr %i.a to i64
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.o = phi ptr [ %i.n, %bb.e ], [ null, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 50 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50   ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = icmp ule ptr %i.o, %i.r
  tail call void @llvm.assume(i1 %i.s)
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %i.t ; 39 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !127  ; 7 uses
  %.not1007 = icmp eq ptr %i.w, null
  br i1 %.not1007, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71
  %.not1008 = icmp uge ptr %i.w, %i.z             ; 2 uses
  br i1 %.not1008, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.ac = icmp ult ptr %i.w, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call fastcc ptr @zend_file_cache_serialize_interned(ptr noundef nonnull %i.w, ptr noundef %2)
  br label %.sink.split

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60 ; 3 uses
  %.not1009 = icmp ult ptr %i.w, %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.q
  %.not1010 = icmp ugt ptr %i.w, %i.ag
  %or.cond1194 = select i1 %.not1009, i1 true, i1 %.not1010
  br i1 %or.cond1194, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.assume(i1 %.not1008)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ah = ptrtoint ptr %i.w to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.i
  %.sink = phi ptr [ %i.ad, %bb.i ], [ %i.ak, %bb.l ]
  store ptr %.sink, ptr %i.v, align 8, !tbaa !127
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48 ; 11 uses
  %.not1011 = icmp eq ptr %i.am, null
  br i1 %.not1011, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !128
  %i.ap = and i32 %i.ao, 8
  %.not1012 = icmp eq i32 %i.ap, 0
  br i1 %.not1012, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !71
  %.not1013 = icmp uge ptr %i.am, %i.as           ; 2 uses
  br i1 %.not1013, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72
  %i.av = icmp ult ptr %i.am, %i.au
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call fastcc ptr @zend_file_cache_serialize_interned(ptr noundef nonnull %i.am, ptr noundef %2)
  br label %.sink.split1356

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60 ; 3 uses
  %.not1014 = icmp ult ptr %i.am, %i.ay
  br i1 %.not1014, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = load i64, ptr %i.p, align 8, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  %.not1015 = icmp ugt ptr %i.am, %i.ba
  br i1 %.not1015, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @llvm.assume(i1 %.not1013)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = ptrtoint ptr %i.am to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = inttoptr i64 %i.bd to ptr
  br label %.sink.split1356

bb.v:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !60 ; 3 uses
  %.not1016 = icmp ult ptr %i.am, %i.bg
  br i1 %.not1016, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = load i64, ptr %i.p, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  %.not1017 = icmp ugt ptr %i.am, %i.bi
  br i1 %.not1017, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bj = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 184
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !71
  %i.bm = icmp uge ptr %i.am, %i.bl
  tail call void @llvm.assume(i1 %i.bm)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bn = ptrtoint ptr %i.am to i64
  %i.bo = ptrtoint ptr %i.bg to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %.sink.split1356

.sink.split1356:                                  ; preds = %bb.y, %bb.u, %bb.q
  %.sink1357 = phi ptr [ %i.aw, %bb.q ], [ %i.be, %bb.u ], [ %i.bq, %bb.y ]
  store ptr %.sink1357, ptr %i.al, align 8, !tbaa !48
  br label %bb.z

bb.z:                                             ; preds = %.sink.split1356, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  tail call fastcc void @zend_file_cache_serialize_hash(ptr noundef nonnull %i.br, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull @zend_file_cache_serialize_func)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !129 ; 6 uses
  %.not1018 = icmp eq ptr %i.bt, null
  br i1 %.not1018, label %.loopexit1208, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !60 ; 4 uses
  %.not1019 = icmp ult ptr %i.bt, %i.bv
  br i1 %.not1019, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %.not1020 = icmp ugt ptr %i.bt, %i.bx
  br i1 %.not1020, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.by = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 184
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !71
  %i.cb = icmp uge ptr %i.bt, %i.ca
  tail call void @llvm.assume(i1 %i.cb)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cc = ptrtoint ptr %i.bt to i64
  %i.cd = ptrtoint ptr %i.bv to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = inttoptr i64 %i.ce to ptr
  store ptr %i.cf, ptr %i.bs, align 8, !tbaa !129
  %.not1021 = icmp eq ptr %i.bt, %i.bv
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 %i.ce
  %spec.select = select i1 %.not1021, ptr null, ptr %i.cg ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !130 ; 2 uses
  %4 = sext i32 %i.ci to i64
  %.idx = shl nuw nsw i64 %4, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.idx
  %i.ck = icmp sgt i32 %i.ci, 0
  br i1 %i.ck, label %.lr.ph, label %.loopexit1208

.lr.ph:                                           ; preds = %bb.ad, %.lr.ph
  %.18601209 = phi ptr [ %i.cl, %.lr.ph ], [ %spec.select, %bb.ad ] ; 2 uses
  tail call void @zend_file_cache_serialize_zval(ptr noundef %.18601209, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3)
  %i.cl = getelementptr inbounds nuw i8, ptr %.18601209, i64 16 ; 2 uses
  %i.cm = icmp ult ptr %i.cl, %i.cj
  br i1 %i.cm, label %.lr.ph, label %.loopexit1208, !llvm.loop !313

.loopexit1208:                                    ; preds = %.lr.ph, %bb.ad, %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !131 ; 6 uses
  %.not1022 = icmp eq ptr %i.co, null
  br i1 %.not1022, label %.loopexit1207, label %bb.ae

bb.ae:                                            ; preds = %.loopexit1208
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !60 ; 4 uses
  %.not1023 = icmp ult ptr %i.co, %i.cq
  br i1 %.not1023, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = load i64, ptr %i.p, align 8, !tbaa !50
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  %.not1024 = icmp ugt ptr %i.co, %i.cs
  br i1 %.not1024, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ct = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 184
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !71
  %i.cw = icmp uge ptr %i.co, %i.cv
  tail call void @llvm.assume(i1 %i.cw)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cx = ptrtoint ptr %i.co to i64
  %i.cy = ptrtoint ptr %i.cq to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = inttoptr i64 %i.cz to ptr
  store ptr %i.da, ptr %i.cn, align 8, !tbaa !131
  %.not1025 = icmp eq ptr %i.co, %i.cq
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 %i.cz
  %spec.select1195 = select i1 %.not1025, ptr null, ptr %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !132 ; 2 uses
  %5 = sext i32 %i.dd to i64
  %.idx1230 = shl nuw nsw i64 %5, 4
  %i.de = getelementptr inbounds nuw i8, ptr %spec.select1195, i64 %.idx1230
  %i.df = icmp sgt i32 %i.dd, 0
  br i1 %i.df, label %.lr.ph1211, label %.loopexit1207

.lr.ph1211:                                       ; preds = %bb.ah, %.lr.ph1211
  %.18581210 = phi ptr [ %i.dg, %.lr.ph1211 ], [ %spec.select1195, %bb.ah ] ; 2 uses
  tail call void @zend_file_cache_serialize_zval(ptr noundef %.18581210, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3)
  %i.dg = getelementptr inbounds nuw i8, ptr %.18581210, i64 16 ; 2 uses
  %i.dh = icmp ult ptr %i.dg, %i.de
  br i1 %i.dh, label %.lr.ph1211, label %.loopexit1207, !llvm.loop !314

.loopexit1207:                                    ; preds = %.lr.ph1211, %bb.ah, %.loopexit1208
  %i.di = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  tail call fastcc void @zend_file_cache_serialize_hash(ptr noundef nonnull %i.di, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull @zend_file_cache_serialize_class_constant)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.u, i64 504 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !48 ; 7 uses
  %.not1026 = icmp eq ptr %i.dk, null
  br i1 %.not1026, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %.loopexit1207
  %i.dl = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 184
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !71
  %.not1027 = icmp uge ptr %i.dk, %i.dn           ; 2 uses
  br i1 %.not1027, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 192
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !72
  %i.dq = icmp ult ptr %i.dk, %i.dp
  br i1 %i.dq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dr = tail call fastcc ptr @zend_file_cache_serialize_interned(ptr noundef nonnull %i.dk, ptr noundef %2)
  br label %.sink.split1358

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !60 ; 3 uses
  %.not1028 = icmp ult ptr %i.dk, %i.dt
  br i1 %.not1028, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = load i64, ptr %i.p, align 8, !tbaa !50
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.du
  %.not1029 = icmp ugt ptr %i.dk, %i.dv
  br i1 %.not1029, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  tail call void @llvm.assume(i1 %.not1027)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dw = ptrtoint ptr %i.dk to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = inttoptr i64 %i.dy to ptr
  br label %.sink.split1358

.sink.split1358:                                  ; preds = %bb.ak, %bb.ao
  %.sink1359 = phi ptr [ %i.dz, %bb.ao ], [ %i.dr, %bb.ak ]
  store ptr %.sink1359, ptr %i.dj, align 8, !tbaa !48
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split1358, %.loopexit1207
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 496 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !133 ; 7 uses
  %.not1030 = icmp eq ptr %i.eb, null
  br i1 %.not1030, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ec = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 184
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !71
  %.not1031 = icmp uge ptr %i.eb, %i.ee           ; 2 uses
  br i1 %.not1031, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 192
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !72
  %i.eh = icmp ult ptr %i.eb, %i.eg
  br i1 %i.eh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ei = tail call fastcc ptr @zend_file_cache_serialize_interned(ptr noundef nonnull %i.eb, ptr noundef %2)
  br label %.sink.split1360

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !60 ; 3 uses
  %.not1032 = icmp ult ptr %i.eb, %i.ek
  br i1 %.not1032, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.el = load i64, ptr %i.p, align 8, !tbaa !50
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.el
  %.not1033 = icmp ugt ptr %i.eb, %i.em
  br i1 %.not1033, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  tail call void @llvm.assume(i1 %.not1031)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.en = ptrtoint ptr %i.eb to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = inttoptr i64 %i.ep to ptr
  br label %.sink.split1360

.sink.split1360:                                  ; preds = %bb.as, %bb.aw
  %.sink1361 = phi ptr [ %i.eq, %bb.aw ], [ %i.ei, %bb.as ]
  store ptr %.sink1361, ptr %i.ea, align 8, !tbaa !133
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split1360, %bb.ap
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 472 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !134 ; 7 uses
  %.not1034 = icmp eq ptr %i.es, null
  br i1 %.not1034, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.et = load i64, ptr %i.p, align 8, !tbaa !50  ; 2 uses
  %i.eu = inttoptr i64 %i.et to ptr
  %.not1035 = icmp ugt ptr %i.es, %i.eu
  br i1 %.not1035, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !60 ; 4 uses
  %.not1036 = icmp ult ptr %i.es, %i.ew
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.et
  %.not1037 = icmp ugt ptr %i.es, %i.ex
  %or.cond = select i1 %.not1036, i1 true, i1 %.not1037
  br i1 %or.cond, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ey = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 184
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !71
  %i.fb = icmp uge ptr %i.es, %i.fa
  tail call void @llvm.assume(i1 %i.fb)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.fc = ptrtoint ptr %i.es to i64
  %i.fd = ptrtoint ptr %i.ew to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 2 uses
  %i.ff = inttoptr i64 %i.fe to ptr
  store ptr %i.ff, ptr %i.er, align 8, !tbaa !134
  %.not1038 = icmp eq ptr %i.es, %i.ew
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 %i.fe
  %spec.select1196 = select i1 %.not1038, ptr null, ptr %i.fg
  tail call fastcc void @zend_file_cache_serialize_hash(ptr noundef %spec.select1196, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull @zend_file_cache_serialize_attribute)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ay, %bb.ax
  %i.fh = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  tail call fastcc void @zend_file_cache_serialize_hash(ptr noundef nonnull %i.fh, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull @zend_file_cache_serialize_prop_info)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.u, i64 248 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !135 ; 6 uses
  %.not1039 = icmp eq ptr %i.fj, null
  br i1 %.not1039, label %.loopexit1206, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !60 ; 6 uses
  %.not1040 = icmp ult ptr %i.fj, %i.fl
  br i1 %.not1040, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fm = load i64, ptr %i.p, align 8, !tbaa !50
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fm
  %.not1041 = icmp ugt ptr %i.fj, %i.fn
  br i1 %.not1041, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.fo = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 184
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !71
  %i.fr = icmp uge ptr %i.fj, %i.fq
  tail call void @llvm.assume(i1 %i.fr)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.fs = ptrtoint ptr %i.fj to i64
  %i.ft = ptrtoint ptr %i.fl to i64               ; 6 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 2 uses
  %i.fv = inttoptr i64 %i.fu to ptr
  store ptr %i.fv, ptr %i.fi, align 8, !tbaa !135
  %.not1042 = icmp eq ptr %i.fj, %i.fl
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 %i.fu ; 4 uses
  %spec.select1197 = select i1 %.not1042, ptr null, ptr %i.fw ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !130 ; 3 uses
  %.not1231 = icmp eq i32 %i.fy, 0
  br i1 %.not1231, label %.loopexit1206, label %.lr.ph1213

.lr.ph1213:                                       ; preds = %bb.bg
end_hunk_0
begin_hunk_1_@zend_file_cache_serialize_op_array:bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 184
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !71
  %i.fm = icmp uge ptr %i.fd, %i.fl
  tail call void @llvm.assume(i1 %i.fm)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.fn = ptrtoint ptr %i.fd to i64
  %i.fo = ptrtoint ptr %i.fh to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 2 uses
  %i.fq = inttoptr i64 %i.fp to ptr
  store ptr %i.fq, ptr %i.fc, align 8, !tbaa !203
  %.not806 = icmp eq ptr %i.fd, %i.fh
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 %i.fp
  %spec.select825 = select i1 %.not806, ptr null, ptr %i.fr
  tail call fastcc void @zend_file_cache_serialize_hash(ptr noundef %spec.select825, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @zend_file_cache_serialize_attribute)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bl, %bb.bk
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !204 ; 5 uses
  %.not807 = icmp eq ptr %i.ft, null
  br i1 %.not807, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !60 ; 3 uses
  %.not808 = icmp ult ptr %i.ft, %i.fv
  br i1 %.not808, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fw = load i64, ptr %i.e, align 8, !tbaa !50
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  %.not809 = icmp ugt ptr %i.ft, %i.fx
  br i1 %.not809, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.fy = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 184
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !71
  %i.gb = icmp uge ptr %i.ft, %i.ga
  tail call void @llvm.assume(i1 %i.gb)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.gc = ptrtoint ptr %i.ft to i64
  %i.gd = ptrtoint ptr %i.fv to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = inttoptr i64 %i.ge to ptr
  store ptr %i.gf, ptr %i.fs, align 8, !tbaa !204
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bp
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !205 ; 5 uses
  %.not810 = icmp eq ptr %i.gh, null
  br i1 %.not810, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !60 ; 3 uses
  %.not811 = icmp ult ptr %i.gh, %i.gj
  br i1 %.not811, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gk = load i64, ptr %i.e, align 8, !tbaa !50
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gk
  %.not812 = icmp ugt ptr %i.gh, %i.gl
  br i1 %.not812, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.gm = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 184
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !71
  %i.gp = icmp uge ptr %i.gh, %i.go
  tail call void @llvm.assume(i1 %i.gp)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.gq = ptrtoint ptr %i.gh to i64
  %i.gr = ptrtoint ptr %i.gj to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = inttoptr i64 %i.gs to ptr
  store ptr %i.gt, ptr %i.gg, align 8, !tbaa !205
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bu
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !206 ; 5 uses
  %.not813 = icmp eq ptr %i.gv, null
  br i1 %.not813, label %bb.go, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !60 ; 3 uses
  %.not814 = icmp ult ptr %i.gv, %i.gx
  br i1 %.not814, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gy = load i64, ptr %i.e, align 8, !tbaa !50
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gy
  %.not815 = icmp ugt ptr %i.gv, %i.gz
  br i1 %.not815, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ha = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 184
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !71
  %i.hd = icmp uge ptr %i.gv, %i.hc
  tail call void @llvm.assume(i1 %i.hd)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.he = ptrtoint ptr %i.gv to i64
  %i.hf = ptrtoint ptr %i.gx to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = inttoptr i64 %i.hg to ptr
  store ptr %i.hh, ptr %i.gu, align 8, !tbaa !206
  br label %bb.go

bb.ce:                                            ; preds = %bb.c
  %i.hi = load ptr, ptr %i.c, align 8, !tbaa !192 ; 2 uses
  tail call void @zend_shared_alloc_register_xlat_entry(ptr noundef %i.hi, ptr noundef %i.hi) #15
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.b
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !195 ; 6 uses
  %.not692 = icmp eq ptr %i.hk, null
  br i1 %.not692, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !60 ; 4 uses
  %.not693 = icmp ult ptr %i.hk, %i.hm
  br i1 %.not693, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hn = load i64, ptr %i.e, align 8, !tbaa !50
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  %.not694 = icmp ugt ptr %i.hk, %i.ho
  br i1 %.not694, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.hp = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 184
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !71
  %i.hs = icmp uge ptr %i.hk, %i.hr
  tail call void @llvm.assume(i1 %i.hs)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.ht = ptrtoint ptr %i.hk to i64
  %i.hu = ptrtoint ptr %i.hm to i64
  %i.hv = sub i64 %i.ht, %i.hu                    ; 2 uses
  %i.hw = inttoptr i64 %i.hv to ptr
  store ptr %i.hw, ptr %i.hj, align 8, !tbaa !195
  %.not695 = icmp eq ptr %i.hk, %i.hm
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 %i.hv
  %spec.select826 = select i1 %.not695, ptr null, ptr %i.hx
  tail call fastcc void @zend_file_cache_serialize_hash(ptr noundef %spec.select826, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @zend_file_cache_serialize_zval)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cf
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !196 ; 6 uses
  %.not696 = icmp eq ptr %i.hz, null
  br i1 %.not696, label %.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !60 ; 4 uses
  %.not697 = icmp ult ptr %i.hz, %i.ib
  br i1 %.not697, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ic = load i64, ptr %i.e, align 8, !tbaa !50
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ic
  %.not698 = icmp ugt ptr %i.hz, %i.id
  br i1 %.not698, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ie = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 184
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !71
  %i.ih = icmp uge ptr %i.hz, %i.ig
  tail call void @llvm.assume(i1 %i.ih)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.ii = ptrtoint ptr %i.hz to i64
  %i.ij = ptrtoint ptr %i.ib to i64
  %i.ik = sub i64 %i.ii, %i.ij                    ; 2 uses
  %i.il = inttoptr i64 %i.ik to ptr               ; 2 uses
  store ptr %i.il, ptr %i.hy, align 8, !tbaa !196
  %.not699 = icmp eq ptr %i.hz, %i.ib
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 %i.ik
  %spec.select827 = select i1 %.not699, ptr null, ptr %i.im ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.io = load i32, ptr %i.in, align 8, !tbaa !207 ; 2 uses
  %4 = sext i32 %i.io to i64
  %.idx = shl nuw nsw i64 %4, 4
  %i.ip = getelementptr inbounds nuw i8, ptr %spec.select827, i64 %.idx
  %i.iq = icmp sgt i32 %i.io, 0
  br i1 %i.iq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.co, %.lr.ph
  %.1590839 = phi ptr [ %i.ir, %.lr.ph ], [ %spec.select827, %bb.co ] ; 2 uses
  tail call void @zend_file_cache_serialize_zval(ptr noundef %.1590839, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  %i.ir = getelementptr inbounds nuw i8, ptr %.1590839, i64 16 ; 2 uses
  %i.is = icmp ult ptr %i.ir, %i.ip
  br i1 %i.is, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !328

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pr.pre = load ptr, ptr %i.hy, align 8, !tbaa !196
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.co
  %.pr = phi ptr [ %.pr.pre, %._crit_edge.loopexit ], [ %i.il, %bb.co ] ; 3 uses
  %.not700 = icmp eq ptr %.pr, null
  br i1 %.not700, label %.thread, label %bb.cp

bb.cp:                                            ; preds = %._crit_edge
  %i.it = load i64, ptr %i.e, align 8, !tbaa !50
  %i.iu = inttoptr i64 %i.it to ptr
  %i.iv = icmp ule ptr %.pr, %i.iu
  tail call void @llvm.assume(i1 %i.iv)
  %i.iw = ptrtoint ptr %.pr to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 %i.iw
  %i.iy = ptrtoint ptr %i.ix to i64
  br label %.thread

.thread:                                          ; preds = %bb.ck, %._crit_edge, %bb.cp
  %.0586 = phi i64 [ %i.iy, %bb.cp ], [ 0, %._crit_edge ], [ 0, %bb.ck ] ; 2 uses
  %i.iz = load ptr, ptr %i.c, align 8, !tbaa !192 ; 6 uses
  %.not701 = icmp eq ptr %i.iz, null
  br i1 %.not701, label %.thread819, label %bb.cq

bb.cq:                                            ; preds = %.thread
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !60 ; 4 uses
  %.not702 = icmp ult ptr %i.iz, %i.jb
  br i1 %.not702, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jc = load i64, ptr %i.e, align 8, !tbaa !50
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jc
  %.not703 = icmp ugt ptr %i.iz, %i.jd
  br i1 %.not703, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.je = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 184
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !71
  %i.jh = icmp uge ptr %i.iz, %i.jg
  tail call void @llvm.assume(i1 %i.jh)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.ji = ptrtoint ptr %i.iz to i64
  %i.jj = ptrtoint ptr %i.jb to i64
  %i.jk = sub i64 %i.ji, %i.jj                    ; 2 uses
  %i.jl = inttoptr i64 %i.jk to ptr
  store ptr %i.jl, ptr %i.c, align 8, !tbaa !192
  %.not704 = icmp eq ptr %i.iz, %i.jb
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 %i.jk
  %spec.select834 = select i1 %.not704, ptr null, ptr %i.jm
  br label %.thread819

.thread819:                                       ; preds = %bb.ct, %.thread
  %.0587 = phi ptr [ null, %.thread ], [ %spec.select834, %bb.ct ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !208 ; 2 uses
  %i.jp = zext i32 %i.jo to i64
  %.idx851 = shl nuw nsw i64 %i.jp, 5
  %i.jq = getelementptr inbounds nuw i8, ptr %.0587, i64 %.idx851
  %.not852 = icmp eq i32 %i.jo, 0
  br i1 %.not852, label %._crit_edge842, label %.lr.ph841

.lr.ph841:                                        ; preds = %.thread819
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 432
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph841, %bb.dg
  %.1588840 = phi ptr [ %.0587, %.lr.ph841 ], [ %i.lp, %bb.dg ] ; 13 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.1588840, i64 28 ; 2 uses
  %i.jt = load i8, ptr %i.js, align 4, !tbaa !209
  %i.ju = icmp eq i8 %i.jt, -119
  br i1 %i.ju, label %bb.cv, label %bb.db

bb.cv:                                            ; preds = %bb.cu
  %i.jv = getelementptr inbounds i8, ptr %.1588840, i64 -4
  %i.jw = load i8, ptr %i.jv, align 4, !tbaa !209
  %i.jx = icmp eq i8 %i.jw, -46
  br i1 %i.jx, label %bb.cw, label %bb.db

bb.cw:                                            ; preds = %bb.cv
  %i.jy = getelementptr inbounds nuw i8, ptr %.1588840, i64 8
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !48
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds i8, ptr %.1588840, i64 %i.ka ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !48 ; 7 uses
  %.not764 = icmp eq ptr %i.kc, null
  br i1 %.not764, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kd = load i64, ptr %i.e, align 8, !tbaa !50  ; 2 uses
  %i.ke = inttoptr i64 %i.kd to ptr
  %.not765 = icmp ugt ptr %i.kc, %i.ke
  br i1 %.not765, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.kf = load ptr, ptr %i.jr, align 8, !tbaa !60 ; 4 uses
  %.not766 = icmp ult ptr %i.kc, %i.kf
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kd
  %.not767 = icmp ugt ptr %i.kc, %i.kg
  %or.cond816 = select i1 %.not766, i1 true, i1 %.not767
  br i1 %or.cond816, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.kh = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 184
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !71
  %i.kk = icmp uge ptr %i.kc, %i.kj
  tail call void @llvm.assume(i1 %i.kk)
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.kl = ptrtoint ptr %i.kc to i64
  %i.km = ptrtoint ptr %i.kf to i64
  %i.kn = sub i64 %i.kl, %i.km                    ; 2 uses
  %i.ko = inttoptr i64 %i.kn to ptr
  store ptr %i.ko, ptr %i.kb, align 8, !tbaa !48
  %.not768 = icmp eq ptr %i.kc, %i.kf
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 %i.kn
  %spec.select828 = select i1 %.not768, ptr null, ptr %i.kp
  tail call fastcc void @zend_file_cache_serialize_hash(ptr noundef %spec.select828, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @zend_file_cache_serialize_attribute)
  br label %bb.db

bb.db:                                            ; preds = %bb.cw, %bb.cx, %bb.da, %bb.cv, %bb.cu
  %i.kq = getelementptr inbounds nuw i8, ptr %.1588840, i64 29
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !210
  %i.ks = icmp eq i8 %i.kr, 1
  br i1 %i.ks, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.kt = getelementptr inbounds nuw i8, ptr %.1588840, i64 8 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !48
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds i8, ptr %.1588840, i64 %i.kv
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = sub i64 %i.kx, %.0586
  %i.kz = lshr exact i64 %i.ky, 4
  %i.la = trunc i64 %i.kz to i32
  store i32 %i.la, ptr %i.kt, align 8, !tbaa !48
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.lb = getelementptr inbounds nuw i8, ptr %.1588840, i64 30
  %i.lc = load i8, ptr %i.lb, align 2, !tbaa !211
  %i.ld = icmp eq i8 %i.lc, 1
  br i1 %i.ld, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.le = getelementptr inbounds nuw i8, ptr %.1588840, i64 12 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !48
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds i8, ptr %.1588840, i64 %i.lg ; 2 uses
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = sub i64 %i.li, %.0586
  %i.lk = lshr exact i64 %i.lj, 4
  %i.ll = trunc i64 %i.lk to i32
  store i32 %i.ll, ptr %i.le, align 4, !tbaa !48
  %i.lm = load i8, ptr %i.js, align 4, !tbaa !209
  %i.ln = icmp eq i8 %i.lm, 61
  br i1 %i.ln, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  store i32 0, ptr %i.lo, align 4, !tbaa !48
  tail call void @zend_vm_set_opcode_handler(ptr noundef nonnull %.1588840) #15
  br label %bb.dg

bb.dg:                                            ; preds = %bb.de, %bb.df, %bb.dd
  tail call void @zend_serialize_opcode_handler(ptr noundef nonnull %.1588840) #15
  %i.lp = getelementptr inbounds nuw i8, ptr %.1588840, i64 32 ; 2 uses
  %i.lq = icmp ult ptr %i.lp, %i.jq
  br i1 %i.lq, label %bb.cu, label %._crit_edge842, !llvm.loop !329

._crit_edge842:                                   ; preds = %bb.dg, %.thread819
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !197 ; 6 uses
  %.not705 = icmp eq ptr %i.ls, null
  br i1 %.not705, label %.loopexit838, label %bb.dh

bb.dh:                                            ; preds = %._crit_edge842
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !60 ; 4 uses
  %.not706 = icmp ult ptr %i.ls, %i.lu
  br i1 %.not706, label %bb.dj, label %bb.di

end_hunk_1
begin_hunk_2_@zend_file_cache_unserialize_class:bb.a
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.q, i64 %i.v, i1 false)
  store i32 1, ptr %i.w, align 4, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 470, ptr %i.y, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit

zend_file_cache_unserialize_interned.exit:        ; preds = %bb.c, %bb.d, %bb.g
  %.015.i = phi ptr [ %i.q, %bb.c ], [ %i.w, %bb.g ], [ %i.r, %bb.d ]
  store ptr %.015.i, ptr %i.h, align 8, !tbaa !127
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !50
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = icmp ule ptr %i.i, %i.ab
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.j ; 2 uses
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !127
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !48 ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  %i.aj = or i32 %i.ai, 320
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !48
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ak = or i32 %i.ai, 64
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !48
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !127
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !48
  %i.ao = and i32 %i.an, -257
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !127
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !48
  %i.as = and i32 %i.ar, -33
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %zend_file_cache_unserialize_interned.exit, %bb.k, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 6 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !128
  %i.av = and i32 %i.au, 4
  %.not656 = icmp eq i32 %i.av, 0
  br i1 %.not656, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !127 ; 2 uses
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = tail call i32 @zend_accel_get_class_name_map_ptr(ptr noundef %i.az) #15 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @zend_alloc_ce_cache(ptr noundef %i.az) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !48 ; 5 uses
  %.not657 = icmp eq ptr %i.bc, null
  br i1 %.not657, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load i32, ptr %i.at, align 4, !tbaa !128
  %i.be = and i32 %i.bd, 8
  %.not658 = icmp eq i32 %i.be, 0
  br i1 %.not658, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.bf = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bg = and i64 %i.bf, 1
  %.not659 = icmp eq i64 %i.bg, 0
  br i1 %.not659, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !54, !range !17, !noundef !18
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.bl = and i64 %i.bf, -2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl ; 5 uses
  br i1 %i.bj, label %zend_file_cache_unserialize_interned.exit732, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = tail call ptr @accel_new_interned_string(ptr noundef %i.bm) #15 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.bm
  br i1 %i.bo, label %bb.u, label %zend_file_cache_unserialize_interned.exit732

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !47
  %i.br = add i64 %i.bq, 25                       ; 2 uses
  %i.bs = tail call ptr @zend_shared_alloc(i64 noundef %i.br) #15 ; 5 uses
  %.not.i731 = icmp eq ptr %i.bs, null
  br i1 %.not.i731, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.bt, i32 noundef -1) #20
  unreachable

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr nonnull align 8 %i.bm, i64 %i.br, i1 false)
  store i32 1, ptr %i.bs, align 4, !tbaa !51
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 470, ptr %i.bu, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit732

zend_file_cache_unserialize_interned.exit732:     ; preds = %bb.s, %bb.t, %bb.w
  %.015.i730 = phi ptr [ %i.bm, %bb.s ], [ %i.bs, %bb.w ], [ %i.bn, %bb.t ]
  store ptr %.015.i730, ptr %i.bb, align 8, !tbaa !48
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !50
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = icmp ule ptr %i.bc, %i.bx
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.bf ; 2 uses
  store ptr %i.bz, ptr %i.bb, align 8, !tbaa !48
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !54, !range !17, !noundef !18
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !48 ; 2 uses
  br i1 %i.cc, label %bb.z, label %bb.y, !prof !90

bb.y:                                             ; preds = %bb.x
  %i.cf = or i32 %i.ce, 320
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !48
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cg = or i32 %i.ce, 64
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !48
  %i.ch = load ptr, ptr %i.bb, align 8, !tbaa !48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !48
  %i.ck = and i32 %i.cj, -257
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !48
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.cl = load ptr, ptr %i.bb, align 8, !tbaa !48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !48
  %i.co = and i32 %i.cn, -33
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !48
  br label %bb.ac

bb.ab:                                            ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !50
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = icmp ule ptr %i.bc, %i.cr
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = ptrtoint ptr %i.bc to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ct
  store ptr %i.cu, ptr %i.bb, align 8, !tbaa !48
  br label %bb.ac

bb.ac:                                            ; preds = %zend_file_cache_unserialize_interned.exit732, %bb.aa, %bb.ab, %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.cv, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_func, ptr noundef nonnull @zend_function_dtor)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !129 ; 3 uses
  %.not660 = icmp eq ptr %i.cx, null
  br i1 %.not660, label %.loopexit773, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !50
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = icmp ule ptr %i.cx, %i.da
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = ptrtoint ptr %i.cx to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc ; 3 uses
  store ptr %i.dd, ptr %i.cw, align 8, !tbaa !129
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.df = load i32, ptr %i.de, align 8, !tbaa !130 ; 2 uses
  %3 = sext i32 %i.df to i64
  %.idx = shl nuw nsw i64 %3, 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx
  %i.dh = icmp sgt i32 %i.df, 0
  br i1 %i.dh, label %.lr.ph, label %.loopexit773

.lr.ph:                                           ; preds = %bb.ad, %.lr.ph
  %.0598774 = phi ptr [ %i.di, %.lr.ph ], [ %i.dd, %bb.ad ] ; 2 uses
  tail call void @zend_file_cache_unserialize_zval(ptr noundef %.0598774, ptr noundef nonnull %1, ptr noundef %2)
  %i.di = getelementptr inbounds nuw i8, ptr %.0598774, i64 16 ; 2 uses
  %i.dj = icmp ult ptr %i.di, %i.dg
  br i1 %i.dj, label %.lr.ph, label %.loopexit773, !llvm.loop !342

.loopexit773:                                     ; preds = %.lr.ph, %bb.ad, %bb.ac
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !131 ; 3 uses
  %.not661 = icmp eq ptr %i.dl, null
  br i1 %.not661, label %.loopexit772, label %bb.ae

bb.ae:                                            ; preds = %.loopexit773
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !50
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = icmp ule ptr %i.dl, %i.do
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = ptrtoint ptr %i.dl to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %i.dq ; 3 uses
  store ptr %i.dr, ptr %i.dk, align 8, !tbaa !131
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !132 ; 2 uses
  %4 = sext i32 %i.dt to i64
  %.idx795 = shl nuw nsw i64 %4, 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx795
  %i.dv = icmp sgt i32 %i.dt, 0
  br i1 %i.dv, label %.lr.ph776, label %.loopexit772

.lr.ph776:                                        ; preds = %bb.ae, %.lr.ph776
  %.0597775 = phi ptr [ %i.dw, %.lr.ph776 ], [ %i.dr, %bb.ae ] ; 2 uses
  tail call void @zend_file_cache_unserialize_zval(ptr noundef %.0597775, ptr noundef nonnull %1, ptr noundef %2)
  %i.dw = getelementptr inbounds nuw i8, ptr %.0597775, i64 16 ; 2 uses
  %i.dx = icmp ult ptr %i.dw, %i.du
  br i1 %i.dx, label %.lr.ph776, label %.loopexit772, !llvm.loop !343

.loopexit772:                                     ; preds = %.lr.ph776, %bb.ae, %.loopexit773
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.dy, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_class_constant, ptr noundef null)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 504 ; 5 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !48 ; 3 uses
  %.not662 = icmp eq ptr %i.ea, null
  br i1 %.not662, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %.loopexit772
  %i.eb = ptrtoint ptr %i.ea to i64               ; 3 uses
  %i.ec = and i64 %i.eb, 1
  %.not663 = icmp eq i64 %i.ec, 0
  br i1 %.not663, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.eh = and i64 %i.eb, -2
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh ; 5 uses
  br i1 %i.ef, label %zend_file_cache_unserialize_interned.exit735, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ej = tail call ptr @accel_new_interned_string(ptr noundef %i.ei) #15 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ei
  br i1 %i.ek, label %bb.ai, label %zend_file_cache_unserialize_interned.exit735

bb.ai:                                            ; preds = %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !47
  %i.en = add i64 %i.em, 25                       ; 2 uses
  %i.eo = tail call ptr @zend_shared_alloc(i64 noundef %i.en) #15 ; 5 uses
  %.not.i734 = icmp eq ptr %i.eo, null
  br i1 %.not.i734, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.ep, i32 noundef -1) #20
  unreachable

bb.ak:                                            ; preds = %bb.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eo, ptr nonnull align 8 %i.ei, i64 %i.en, i1 false)
  store i32 1, ptr %i.eo, align 4, !tbaa !51
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 470, ptr %i.eq, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit735

zend_file_cache_unserialize_interned.exit735:     ; preds = %bb.ag, %bb.ah, %bb.ak
  %.015.i733 = phi ptr [ %i.ei, %bb.ag ], [ %i.eo, %bb.ak ], [ %i.ej, %bb.ah ]
  store ptr %.015.i733, ptr %i.dz, align 8, !tbaa !48
  br label %bb.ap

bb.al:                                            ; preds = %bb.af
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.es = load i64, ptr %i.er, align 8, !tbaa !50
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = icmp ule ptr %i.ea, %i.et
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb ; 2 uses
  store ptr %i.ev, ptr %i.dz, align 8, !tbaa !48
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 4 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !48 ; 2 uses
  br i1 %i.ey, label %bb.an, label %bb.am, !prof !90

bb.am:                                            ; preds = %bb.al
  %i.fb = or i32 %i.fa, 320
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !48
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.fc = or i32 %i.fa, 64
  store i32 %i.fc, ptr %i.ez, align 4, !tbaa !48
  %i.fd = load ptr, ptr %i.dz, align 8, !tbaa !48
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !48
  %i.fg = and i32 %i.ff, -257
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !48
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.fh = load ptr, ptr %i.dz, align 8, !tbaa !48
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !48
  %i.fk = and i32 %i.fj, -33
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !48
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit772, %bb.ao, %zend_file_cache_unserialize_interned.exit735
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 496 ; 5 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !133 ; 3 uses
  %.not664 = icmp eq ptr %i.fm, null
  br i1 %.not664, label %bb.ba, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fn = ptrtoint ptr %i.fm to i64               ; 3 uses
  %i.fo = and i64 %i.fn, 1
  %.not665 = icmp eq i64 %i.fo, 0
  br i1 %.not665, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !54, !range !17, !noundef !18
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !53
  %i.ft = and i64 %i.fn, -2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft ; 5 uses
  br i1 %i.fr, label %zend_file_cache_unserialize_interned.exit738, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fv = tail call ptr @accel_new_interned_string(ptr noundef %i.fu) #15 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fu
  br i1 %i.fw, label %bb.at, label %zend_file_cache_unserialize_interned.exit738

bb.at:                                            ; preds = %bb.as
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !47
  %i.fz = add i64 %i.fy, 25                       ; 2 uses
  %i.ga = tail call ptr @zend_shared_alloc(i64 noundef %i.fz) #15 ; 5 uses
  %.not.i737 = icmp eq ptr %i.ga, null
  br i1 %.not.i737, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.gb, i32 noundef -1) #20
  unreachable

bb.av:                                            ; preds = %bb.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ga, ptr nonnull align 8 %i.fu, i64 %i.fz, i1 false)
  store i32 1, ptr %i.ga, align 4, !tbaa !51
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 470, ptr %i.gc, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit738

zend_file_cache_unserialize_interned.exit738:     ; preds = %bb.ar, %bb.as, %bb.av
  %.015.i736 = phi ptr [ %i.fu, %bb.ar ], [ %i.ga, %bb.av ], [ %i.fv, %bb.as ]
  store ptr %.015.i736, ptr %i.fl, align 8, !tbaa !133
  br label %bb.ba

bb.aw:                                            ; preds = %bb.aq
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !50
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = icmp ule ptr %i.fm, %i.gf
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 %i.fn ; 2 uses
  store ptr %i.gh, ptr %i.fl, align 8, !tbaa !133
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !54, !range !17, !noundef !18
  %i.gk = trunc nuw i8 %i.gj to i1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 3 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !48 ; 2 uses
  br i1 %i.gk, label %bb.ay, label %bb.ax, !prof !90

bb.ax:                                            ; preds = %bb.aw
  %i.gn = or i32 %i.gm, 320
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !48
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.go = or i32 %i.gm, 64
  store i32 %i.go, ptr %i.gl, align 4, !tbaa !48
  %i.gp = load ptr, ptr %i.fl, align 8, !tbaa !133
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !48
  %i.gs = and i32 %i.gr, -257
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !48
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.gt = load ptr, ptr %i.fl, align 8, !tbaa !133
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !48
  %i.gw = and i32 %i.gv, -33
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !48
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ap, %bb.az, %zend_file_cache_unserialize_interned.exit738
  %i.gx = getelementptr inbounds nuw i8, ptr %i.g, i64 472 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !134 ; 7 uses
  %.not666 = icmp eq ptr %i.gy, null
  br i1 %.not666, label %bb.bg, label %bb.bb

end_hunk_2
begin_hunk_3_@zend_file_cache_unserialize_op_array:bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fk ; 5 uses
  br i1 %i.fi, label %zend_file_cache_unserialize_interned.exit544, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fm = tail call ptr @accel_new_interned_string(ptr noundef %i.fl) #15 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fl
  br i1 %i.fn, label %bb.ba, label %zend_file_cache_unserialize_interned.exit544

bb.ba:                                            ; preds = %bb.az
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !47
  %i.fq = add i64 %i.fp, 25                       ; 2 uses
  %i.fr = tail call ptr @zend_shared_alloc(i64 noundef %i.fq) #15 ; 5 uses
  %.not.i543 = icmp eq ptr %i.fr, null
  br i1 %.not.i543, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void @zend_accel_schedule_restart_if_necessary(i32 noundef 0) #15
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  tail call void @siglongjmp(ptr noundef %i.fs, i32 noundef -1) #20
  unreachable

bb.bc:                                            ; preds = %bb.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fr, ptr nonnull align 8 %i.fl, i64 %i.fq, i1 false)
  store i32 1, ptr %i.fr, align 4, !tbaa !51
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 470, ptr %i.ft, align 4, !tbaa !48
  br label %zend_file_cache_unserialize_interned.exit544

zend_file_cache_unserialize_interned.exit544:     ; preds = %bb.ay, %bb.az, %bb.bc
  %.015.i542 = phi ptr [ %i.fl, %bb.ay ], [ %i.fr, %bb.bc ], [ %i.fm, %bb.az ]
  store ptr %.015.i542, ptr %i.fd, align 8, !tbaa !202
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ax
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !50
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = icmp ule ptr %i.fe, %i.fw
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 %i.ff ; 2 uses
  store ptr %i.fy, ptr %i.fd, align 8, !tbaa !202
  %i.fz = load i8, ptr %i.a, align 8, !tbaa !54, !range !17, !noundef !18
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 3 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !48 ; 2 uses
  br i1 %i.ga, label %bb.bf, label %bb.be, !prof !90

bb.be:                                            ; preds = %bb.bd
  %i.gd = or i32 %i.gc, 320
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !48
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.ge = or i32 %i.gc, 64
  store i32 %i.ge, ptr %i.gb, align 4, !tbaa !48
  %i.gf = load ptr, ptr %i.fd, align 8, !tbaa !202
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !48
  %i.gi = and i32 %i.gh, -257
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !48
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.gj = load ptr, ptr %i.fd, align 8, !tbaa !202
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !48
  %i.gm = and i32 %i.gl, -33
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !48
  br label %bb.bh

bb.bh:                                            ; preds = %zend_file_cache_unserialize_interned.exit544, %bb.bg, %bb.aw
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !203 ; 7 uses
  %.not531 = icmp eq ptr %i.go, null
  br i1 %.not531, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gp = load ptr, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %.not532 = icmp ult ptr %i.go, %i.gp
  br i1 %.not532, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gr
  %.not533 = icmp ugt ptr %i.go, %i.gs
  br i1 %.not533, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.gt = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 184
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !71
  %.not534 = icmp ult ptr %i.go, %i.gv
  br i1 %.not534, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 192
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !72
  %i.gy = icmp ult ptr %i.go, %i.gx
  br i1 %i.gy, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !50
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = icmp ule ptr %i.go, %i.hb
  tail call void @llvm.assume(i1 %i.hc)
  %i.hd = ptrtoint ptr %i.go to i64
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 %i.hd ; 2 uses
  store ptr %i.he, ptr %i.gn, align 8, !tbaa !203
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.he, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_attribute, ptr noundef null)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bj, %bb.bh
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !204 ; 3 uses
  %.not536 = icmp eq ptr %i.hg, null
  br i1 %.not536, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !50
  %i.hj = inttoptr i64 %i.hi to ptr
  %i.hk = icmp ule ptr %i.hg, %i.hj
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = ptrtoint ptr %i.hg to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 %i.hl
  store ptr %i.hm, ptr %i.hf, align 8, !tbaa !204
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !205 ; 3 uses
  %.not537 = icmp eq ptr %i.ho, null
  br i1 %.not537, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !50
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = icmp ule ptr %i.ho, %i.hr
  tail call void @llvm.assume(i1 %i.hs)
  %i.ht = ptrtoint ptr %i.ho to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ht
  store ptr %i.hu, ptr %i.hn, align 8, !tbaa !205
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !206 ; 3 uses
  %.not538 = icmp eq ptr %i.hw, null
  br i1 %.not538, label %bb.ft, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !50
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = icmp ule ptr %i.hw, %i.hz
  tail call void @llvm.assume(i1 %i.ia)
  %i.ib = ptrtoint ptr %i.hw to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 %i.ib
  store ptr %i.ic, ptr %i.hv, align 8, !tbaa !206
  br label %bb.ft

bb.bt:                                            ; preds = %bb.l
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !195 ; 3 uses
  %.not476 = icmp eq ptr %i.ie, null
  br i1 %.not476, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !50
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = icmp ule ptr %i.ie, %i.ih
  tail call void @llvm.assume(i1 %i.ii)
  %i.ij = ptrtoint ptr %i.ie to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 %i.ij ; 2 uses
  store ptr %i.ik, ptr %i.id, align 8, !tbaa !195
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.ik, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_zval, ptr noundef nonnull @zval_ptr_dtor)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !196 ; 3 uses
  %.not477 = icmp eq ptr %i.im, null
  br i1 %.not477, label %.loopexit563, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.io = load i64, ptr %i.in, align 8, !tbaa !50
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = icmp ule ptr %i.im, %i.ip
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = ptrtoint ptr %i.im to i64
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 %i.ir ; 3 uses
  store ptr %i.is, ptr %i.il, align 8, !tbaa !196
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !207 ; 2 uses
  %3 = sext i32 %i.iu to i64
  %.idx = shl nuw nsw i64 %3, 4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 %.idx
  %i.iw = icmp sgt i32 %i.iu, 0
  br i1 %i.iw, label %.lr.ph, label %.loopexit563

.lr.ph:                                           ; preds = %bb.bw, %.lr.ph
  %.0416564 = phi ptr [ %i.ix, %.lr.ph ], [ %i.is, %bb.bw ] ; 2 uses
  tail call void @zend_file_cache_unserialize_zval(ptr noundef %.0416564, ptr noundef nonnull %1, ptr noundef %2)
  %i.ix = getelementptr inbounds nuw i8, ptr %.0416564, i64 16 ; 2 uses
  %i.iy = icmp ult ptr %i.ix, %i.iv
  br i1 %i.iy, label %.lr.ph, label %.loopexit563, !llvm.loop !353

.loopexit563:                                     ; preds = %.lr.ph, %bb.bw, %bb.bv
  %i.iz = load ptr, ptr %i.s, align 8, !tbaa !192 ; 3 uses
  %.not478 = icmp eq ptr %i.iz, null
  br i1 %.not478, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.loopexit563
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !50
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = icmp ule ptr %i.iz, %i.jc
  tail call void @llvm.assume(i1 %i.jd)
  %i.je = ptrtoint ptr %i.iz to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 %i.je ; 2 uses
  store ptr %i.jf, ptr %i.s, align 8, !tbaa !192
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.loopexit563
  %i.jg = phi ptr [ %i.jf, %bb.bx ], [ null, %.loopexit563 ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !208 ; 2 uses
  %i.jj = zext i32 %i.ji to i64
  %.idx576 = shl nuw nsw i64 %i.jj, 5
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.idx576
  %.not577 = icmp eq i32 %i.ji, 0
  br i1 %.not577, label %._crit_edge, label %.lr.ph566

.lr.ph566:                                        ; preds = %bb.by
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph566, %bb.cl
  %.0415565 = phi ptr [ %i.jg, %.lr.ph566 ], [ %i.lj, %bb.cl ] ; 12 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0415565, i64 29
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !210
  %i.jo = icmp eq i8 %i.jn, 1
  br i1 %i.jo, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.jp = load ptr, ptr %i.il, align 8, !tbaa !196
  %i.jq = getelementptr inbounds nuw i8, ptr %.0415565, i64 8 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !48
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.jp, i64 %i.js
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = ptrtoint ptr %.0415565 to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = trunc i64 %i.jw to i32
  store i32 %i.jx, ptr %i.jq, align 8, !tbaa !48
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.jy = getelementptr inbounds nuw i8, ptr %.0415565, i64 30
  %i.jz = load i8, ptr %i.jy, align 2, !tbaa !211
  %i.ka = icmp eq i8 %i.jz, 1
  br i1 %i.ka, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kb = load ptr, ptr %i.il, align 8, !tbaa !196
  %i.kc = getelementptr inbounds nuw i8, ptr %.0415565, i64 12 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !48
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.kb, i64 %i.ke
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %.0415565 to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = trunc i64 %i.ki to i32
  store i32 %i.kj, ptr %i.kc, align 4, !tbaa !48
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.kk = getelementptr inbounds nuw i8, ptr %.0415565, i64 28
  %i.kl = load i8, ptr %i.kk, align 4, !tbaa !209
  %i.km = icmp eq i8 %i.kl, -119
  br i1 %i.km, label %bb.ce, label %bb.cl

bb.ce:                                            ; preds = %bb.cd
  %i.kn = getelementptr inbounds i8, ptr %.0415565, i64 -4
  %i.ko = load i8, ptr %i.kn, align 4, !tbaa !209
  %i.kp = icmp eq i8 %i.ko, -46
  br i1 %i.kp, label %bb.cf, label %bb.cl

bb.cf:                                            ; preds = %bb.ce
  %i.kq = getelementptr inbounds nuw i8, ptr %.0415565, i64 8
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !48
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds i8, ptr %.0415565, i64 %i.ks ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !48 ; 7 uses
  %.not513 = icmp eq ptr %i.ku, null
  br i1 %.not513, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kv = load ptr, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %.not514 = icmp ult ptr %i.ku, %i.kv
  br i1 %.not514, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kw = load i64, ptr %i.jl, align 8, !tbaa !50
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kw
  %.not515 = icmp ugt ptr %i.ku, %i.kx
  br i1 %.not515, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ky = load ptr, ptr @accel_shared_globals, align 8, !tbaa !64 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 184
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !71
  %.not516 = icmp ult ptr %i.ku, %i.la
  br i1 %.not516, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 192
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !72
  %i.ld = icmp ult ptr %i.ku, %i.lc
  br i1 %i.ld, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.le = load i64, ptr %i.jl, align 8, !tbaa !50
  %i.lf = inttoptr i64 %i.le to ptr
  %i.lg = icmp ule ptr %i.ku, %i.lf
  tail call void @llvm.assume(i1 %i.lg)
  %i.lh = ptrtoint ptr %i.ku to i64
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 %i.lh ; 2 uses
  store ptr %i.li, ptr %i.kt, align 8, !tbaa !48
  tail call fastcc void @zend_file_cache_unserialize_hash(ptr noundef nonnull %i.li, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @zend_file_cache_unserialize_attribute, ptr noundef null)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cf, %bb.ch, %bb.cj, %bb.ck, %bb.ce, %bb.cd
  tail call void @zend_deserialize_opcode_handler(ptr noundef nonnull %.0415565) #15
  %i.lj = getelementptr inbounds nuw i8, ptr %.0415565, i64 32 ; 2 uses
  %i.lk = icmp ult ptr %i.lj, %i.jk
  br i1 %i.lk, label %bb.bz, label %._crit_edge, !llvm.loop !354

._crit_edge:                                      ; preds = %bb.cl, %bb.by
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !193 ; 3 uses
  %.not479 = icmp eq ptr %i.lm, null
  br i1 %.not479, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !50
  %i.lp = inttoptr i64 %i.lo to ptr
  %i.lq = icmp ule ptr %i.lm, %i.lp
  tail call void @llvm.assume(i1 %i.lq)
  %i.lr = ptrtoint ptr %i.lm to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 %i.lr
  store ptr %i.ls, ptr %i.ll, align 8, !tbaa !193
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %._crit_edge
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !197 ; 3 uses
  %.not480 = icmp eq ptr %i.lu, null
  br i1 %.not480, label %.loopexit562, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 3 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !50
  %i.lx = inttoptr i64 %i.lw to ptr
  %i.ly = icmp ule ptr %i.lu, %i.lx
  tail call void @llvm.assume(i1 %i.ly)
  %i.lz = ptrtoint ptr %i.lu to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 %i.lz ; 3 uses
  store ptr %i.ma, ptr %i.lt, align 8, !tbaa !197
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !212
  %i.md = zext i32 %i.mc to i64
  %.idx578 = shl nuw nsw i64 %i.md, 5
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !213 ; 2 uses
  %i.mg = and i32 %i.mf, 8192
  %.not481 = icmp eq i32 %i.mg, 0
  %.0414.idx = select i1 %.not481, i64 0, i64 -32 ; 2 uses
  %i.mh = lshr i32 %i.mf, 9
  %i.mi = and i32 %i.mh, 32
  %.0413.idx = zext nneg i32 %i.mi to i64
  %i.mj = add nuw nsw i64 %.idx578, %.0413.idx    ; 2 uses
  %.0413 = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mj
  %i.mk = icmp slt i64 %.0414.idx, %i.mj
  br i1 %i.mk, label %.lr.ph569.preheader, label %.loopexit562

.lr.ph569.preheader:                              ; preds = %bb.co
  %.0414 = getelementptr inbounds i8, ptr %i.ma, i64 %.0414.idx
  br label %.lr.ph569

.lr.ph569:                                        ; preds = %.lr.ph569.preheader, %bb.dd
  %.1567 = phi ptr [ %i.od, %bb.dd ], [ %.0414, %.lr.ph569.preheader ] ; 7 uses
  %i.ml = load ptr, ptr %.1567, align 8, !tbaa !216 ; 8 uses
  %i.mm = load ptr, ptr %i.u, align 8, !tbaa !60  ; 2 uses
end_hunk_3
