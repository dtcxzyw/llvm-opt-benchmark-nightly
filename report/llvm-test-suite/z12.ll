Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z12?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@MinSize:bb.a
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nl
  %i.cap = getelementptr inbounds nuw i8, ptr %.213871957, i64 41 ; 2 uses
  %i.caq = load i8, ptr %i.cap, align 1, !tbaa !8
  %.not1673 = icmp eq i8 %i.caq, 0
  br i1 %.not1673, label %bb.oc, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.car = getelementptr inbounds nuw i8, ptr %.213871957, i64 32
  %i.cas = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.car) #8 ; 7 uses
  %i.cat = load i32, ptr %i.bro, align 4
  %i.cau = and i32 %i.cat, 4095
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cas, i64 40 ; 6 uses
  %i.caw = load i32, ptr %i.cav, align 8
  %i.cax = and i32 %i.caw, -4096
  %i.cay = or disjoint i32 %i.cax, %i.cau         ; 2 uses
  store i32 %i.cay, ptr %i.cav, align 8
  %i.caz = load i32, ptr %i.bro, align 4
  %i.cba = and i32 %i.caz, 4190208
  %i.cbb = and i32 %i.cay, -4190209
  %i.cbc = or disjoint i32 %i.cbb, %i.cba         ; 2 uses
  store i32 %i.cbc, ptr %i.cav, align 8
  %i.cbd = load i32, ptr %i.bro, align 4
  %i.cbe = and i32 %i.cbd, 4194304
  %i.cbf = and i32 %i.cbc, -4194305
  %i.cbg = or disjoint i32 %i.cbf, %i.cbe         ; 2 uses
  store i32 %i.cbg, ptr %i.cav, align 8
  %i.cbh = load i32, ptr %i.bro, align 4
  %i.cbi = lshr i32 %i.cbh, 1
  %i.cbj = and i32 %i.cbi, 528482304
  %i.cbk = and i32 %i.cbg, -528482305
  %i.cbl = or disjoint i32 %i.cbj, %i.cbk         ; 2 uses
  store i32 %i.cbl, ptr %i.cav, align 8
  %i.cbm = load i8, ptr %i.bnv, align 4
  %i.cbn = and i8 %i.cbm, 3
  %i.cbo = icmp eq i8 %i.cbn, 2
  %i.cbp = select i1 %i.cbo, i32 -2147483648, i32 0
  %i.cbq = and i32 %i.cbl, 536870911
  %i.cbr = or disjoint i32 %i.cbq, %i.cbp
  %i.cbs = or disjoint i32 %i.cbr, 536870912
  store i32 %i.cbs, ptr %i.cav, align 8
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cas, i64 48
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cas, i64 56
  store i32 0, ptr %i.cbu, align 8, !tbaa !8
  store i32 0, ptr %i.cbt, align 8, !tbaa !8
  %i.cbv = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 3 uses
  %i.cbw = zext i8 %i.cbv to i32                  ; 2 uses
  store i32 %i.cbw, ptr @zz_size, align 4, !tbaa !7
  %i.cbx = zext i8 %i.cbv to i64
  %i.cby = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cbx
  %i.cbz = load ptr, ptr %i.cby, align 8, !tbaa !66 ; 4 uses
  %i.cca = icmp eq ptr %i.cbz, null
  br i1 %i.cca, label %bb.np, label %bb.nq

bb.np:                                            ; preds = %bb.no
  %i.ccb = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.ccc = tail call ptr @GetMemory(i32 noundef %i.cbw, ptr noundef %i.ccb) #8
  br label %bb.nr

bb.nq:                                            ; preds = %bb.no
  store ptr %i.cbz, ptr @zz_hold, align 8, !tbaa !66
  %i.ccd = load ptr, ptr %i.cbz, align 8, !tbaa !8
  %i.cce = zext i8 %i.cbv to i64
  %i.ccf = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cce
  store ptr %i.ccd, ptr %i.ccf, align 8, !tbaa !66
  br label %bb.nr

bb.nr:                                            ; preds = %bb.np, %bb.nq
  %i.ccg = phi ptr [ %i.ccc, %bb.np ], [ %i.cbz, %bb.nq ] ; 13 uses
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccg, i64 32
  store i8 0, ptr %i.cch, align 8, !tbaa !8
  %i.cci = getelementptr inbounds nuw i8, ptr %i.ccg, i64 24
  store ptr %i.ccg, ptr %i.cci, align 8, !tbaa !8
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.ccg, i64 16
  store ptr %i.ccg, ptr %i.ccj, align 8, !tbaa !8
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccg, i64 8
  store ptr %i.ccg, ptr %i.cck, align 8, !tbaa !8
  store ptr %i.ccg, ptr %i.ccg, align 8, !tbaa !8
  store ptr %i.ccg, ptr @xx_link, align 8, !tbaa !66
  store ptr %i.ccg, ptr @zz_res, align 8, !tbaa !66
  %i.ccl = load ptr, ptr %i.bnz, align 8, !tbaa !8 ; 4 uses
  store ptr %i.ccl, ptr @zz_hold, align 8, !tbaa !66
  %i.ccm = icmp eq ptr %i.ccl, null
  br i1 %i.ccm, label %.thread2354, label %bb.ns

.thread2354:                                      ; preds = %bb.nr
  store ptr %i.cas, ptr @zz_hold, align 8, !tbaa !66
  br label %bb.nt

bb.ns:                                            ; preds = %bb.nr
  %i.ccn = load ptr, ptr %i.ccl, align 8, !tbaa !8
  store ptr %i.ccn, ptr @zz_tmp, align 8, !tbaa !66
  %i.cco = load ptr, ptr %i.ccg, align 8, !tbaa !8
  store ptr %i.cco, ptr %i.ccl, align 8, !tbaa !8
  %i.ccp = load ptr, ptr @zz_hold, align 8, !tbaa !66
  %i.ccq = load ptr, ptr @zz_res, align 8, !tbaa !66 ; 2 uses
  %i.ccr = load ptr, ptr %i.ccq, align 8, !tbaa !8
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccr, i64 8
  store ptr %i.ccp, ptr %i.ccs, align 8, !tbaa !8
  %i.cct = load ptr, ptr @zz_tmp, align 8, !tbaa !66 ; 2 uses
  store ptr %i.cct, ptr %i.ccq, align 8, !tbaa !8
  %i.ccu = load ptr, ptr @zz_res, align 8, !tbaa !66
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.cct, i64 8
  store ptr %i.ccu, ptr %i.ccv, align 8, !tbaa !8
  %.pre2107 = load ptr, ptr @xx_link, align 8, !tbaa !66 ; 3 uses
  store ptr %.pre2107, ptr @zz_res, align 8, !tbaa !66
  store ptr %i.cas, ptr @zz_hold, align 8, !tbaa !66
  %i.ccw = icmp eq ptr %.pre2107, null
  br i1 %i.ccw, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %.thread2354, %bb.ns
  %i.ccx = phi ptr [ %i.ccg, %.thread2354 ], [ %.pre2107, %bb.ns ] ; 2 uses
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.cas, i64 16 ; 2 uses
  %i.ccz = load ptr, ptr %i.ccy, align 8, !tbaa !8 ; 3 uses
  store ptr %i.ccz, ptr @zz_tmp, align 8, !tbaa !66
  %i.cda = getelementptr inbounds nuw i8, ptr %i.ccx, i64 16 ; 2 uses
  %i.cdb = load ptr, ptr %i.cda, align 8, !tbaa !8 ; 2 uses
  store ptr %i.cdb, ptr %i.ccy, align 8, !tbaa !8
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.cdb, i64 24
  store ptr %i.cas, ptr %i.cdc, align 8, !tbaa !8
  store ptr %i.ccz, ptr %i.cda, align 8, !tbaa !8
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.ccz, i64 24
  store ptr %i.ccx, ptr %i.cdd, align 8, !tbaa !8
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.ns
  %i.cde = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 1), align 1, !tbaa !8 ; 3 uses
  %i.cdf = zext i8 %i.cde to i32                  ; 2 uses
  store i32 %i.cdf, ptr @zz_size, align 4, !tbaa !7
  %i.cdg = zext i8 %i.cde to i64
  %i.cdh = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cdg
  %i.cdi = load ptr, ptr %i.cdh, align 8, !tbaa !66 ; 4 uses
  %i.cdj = icmp eq ptr %i.cdi, null
  br i1 %i.cdj, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %bb.nu
  %i.cdk = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.cdl = tail call ptr @GetMemory(i32 noundef %i.cdf, ptr noundef %i.cdk) #8 ; 2 uses
  store ptr %i.cdl, ptr @zz_hold, align 8, !tbaa !66
  br label %bb.nx

bb.nw:                                            ; preds = %bb.nu
  store ptr %i.cdi, ptr @zz_hold, align 8, !tbaa !66
  %i.cdm = load ptr, ptr %i.cdi, align 8, !tbaa !8
  %i.cdn = zext i8 %i.cde to i64
  %i.cdo = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cdn
  store ptr %i.cdm, ptr %i.cdo, align 8, !tbaa !66
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nv, %bb.nw
  %i.cdp = phi ptr [ %i.cdl, %bb.nv ], [ %i.cdi, %bb.nw ] ; 15 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdp, i64 32
  store i8 1, ptr %i.cdq, align 8, !tbaa !8
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdp, i64 16 ; 3 uses
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdp, i64 24
  store ptr %i.cdp, ptr %i.cds, align 8, !tbaa !8
  store ptr %i.cdp, ptr %i.cdr, align 8, !tbaa !8
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cdp, i64 8
  store ptr %i.cdp, ptr %i.cdt, align 8, !tbaa !8
  store ptr %i.cdp, ptr %i.cdp, align 8, !tbaa !8
  %i.cdu = load i8, ptr %i.cap, align 1, !tbaa !8
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdp, i64 40 ; 2 uses
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdp, i64 41
  store i8 %i.cdu, ptr %i.cdw, align 1, !tbaa !8
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdp, i64 42
  store i8 0, ptr %i.cdx, align 2, !tbaa !8
  %i.cdy = load i32, ptr %i.cdv, align 8          ; 2 uses
  %i.cdz = and i32 %i.cdy, -1610612737
  %i.cea = or disjoint i32 %i.cdz, 536870912
  store i32 %i.cea, ptr %i.cdv, align 8
  %i.ceb = load i16, ptr %i.bnv, align 4
  %i.cec = and i16 %i.ceb, 128
  %i.ced = getelementptr inbounds nuw i8, ptr %i.cdp, i64 44 ; 6 uses
  %i.cee = load i16, ptr %i.ced, align 4
  %i.cef = and i16 %i.cee, -129
  %i.ceg = or disjoint i16 %i.cef, %i.cec         ; 2 uses
  store i16 %i.ceg, ptr %i.ced, align 4
  %i.ceh = load i16, ptr %i.bnv, align 4
  %i.cei = and i16 %i.ceh, 256
  %i.cej = and i16 %i.ceg, -257
  %i.cek = or disjoint i16 %i.cej, %i.cei         ; 2 uses
  store i16 %i.cek, ptr %i.ced, align 4
  %i.cel = load i16, ptr %i.bnv, align 4
  %i.cem = and i16 %i.cel, 512
  %i.cen = and i16 %i.cek, -513
  %i.ceo = or disjoint i16 %i.cen, %i.cem         ; 2 uses
  store i16 %i.ceo, ptr %i.ced, align 4
  %i.cep = load i16, ptr %i.bnv, align 4
  %i.ceq = and i16 %i.cep, 7168
  %i.cer = and i16 %i.ceo, -7169
  %i.ces = or disjoint i16 %i.cer, %i.ceq         ; 2 uses
  store i16 %i.ces, ptr %i.ced, align 4
  %i.cet = load i16, ptr %i.bnv, align 4
  %i.ceu = and i16 %i.cet, -8192
  %i.cev = and i16 %i.ces, 8191
  %i.cew = or disjoint i16 %i.cev, %i.ceu
  store i16 %i.cew, ptr %i.ced, align 4
  %i.cex = load i16, ptr %i.brn, align 2, !tbaa !8
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cdp, i64 46
  %i.cez = trunc i32 %i.cdy to i16
  %4 = lshr i16 %i.cez, 8
  %i.cfa = mul i16 %i.cex, %4
  store i16 %i.cfa, ptr %i.cey, align 2, !tbaa !8
  %i.cfb = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 3 uses
  %i.cfc = zext i8 %i.cfb to i32                  ; 2 uses
  store i32 %i.cfc, ptr @zz_size, align 4, !tbaa !7
  %i.cfd = zext i8 %i.cfb to i64
  %i.cfe = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cfd
  %i.cff = load ptr, ptr %i.cfe, align 8, !tbaa !66 ; 4 uses
  %i.cfg = icmp eq ptr %i.cff, null
  br i1 %i.cfg, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  %i.cfh = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.cfi = tail call ptr @GetMemory(i32 noundef %i.cfc, ptr noundef %i.cfh) #8
  br label %bb.oa

bb.nz:                                            ; preds = %bb.nx
  store ptr %i.cff, ptr @zz_hold, align 8, !tbaa !66
  %i.cfj = load ptr, ptr %i.cff, align 8, !tbaa !8
  %i.cfk = zext i8 %i.cfb to i64
  %i.cfl = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cfk
  store ptr %i.cfj, ptr %i.cfl, align 8, !tbaa !66
  br label %bb.oa

bb.oa:                                            ; preds = %bb.ny, %bb.nz
  %i.cfm = phi ptr [ %i.cfi, %bb.ny ], [ %i.cff, %bb.nz ] ; 13 uses
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfm, i64 32
  store i8 0, ptr %i.cfn, align 8, !tbaa !8
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfm, i64 24
  store ptr %i.cfm, ptr %i.cfo, align 8, !tbaa !8
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.cfm, i64 16
  store ptr %i.cfm, ptr %i.cfp, align 8, !tbaa !8
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8
  store ptr %i.cfm, ptr %i.cfq, align 8, !tbaa !8
  store ptr %i.cfm, ptr %i.cfm, align 8, !tbaa !8
  store ptr %i.cfm, ptr @xx_link, align 8, !tbaa !66
  store ptr %i.cfm, ptr @zz_res, align 8, !tbaa !66
  %i.cfr = load ptr, ptr %i.bnz, align 8, !tbaa !8
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfr, i64 8
  %i.cft = load ptr, ptr %i.cfs, align 8, !tbaa !8 ; 4 uses
  store ptr %i.cft, ptr @zz_hold, align 8, !tbaa !66
  %i.cfu = icmp eq ptr %i.cft, null
  br i1 %i.cfu, label %.thread2355, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.cfv = load ptr, ptr %i.cft, align 8, !tbaa !8
  store ptr %i.cfv, ptr @zz_tmp, align 8, !tbaa !66
  %i.cfw = load ptr, ptr %i.cfm, align 8, !tbaa !8
  store ptr %i.cfw, ptr %i.cft, align 8, !tbaa !8
  %i.cfx = load ptr, ptr @zz_hold, align 8, !tbaa !66
  %i.cfy = load ptr, ptr @zz_res, align 8, !tbaa !66 ; 2 uses
  %i.cfz = load ptr, ptr %i.cfy, align 8, !tbaa !8
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cfz, i64 8
  store ptr %i.cfx, ptr %i.cga, align 8, !tbaa !8
  %i.cgb = load ptr, ptr @zz_tmp, align 8, !tbaa !66 ; 2 uses
  store ptr %i.cgb, ptr %i.cfy, align 8, !tbaa !8
  %i.cgc = load ptr, ptr @zz_res, align 8, !tbaa !66
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.cgb, i64 8
  store ptr %i.cgc, ptr %i.cgd, align 8, !tbaa !8
  %.pre2108 = load ptr, ptr @xx_link, align 8, !tbaa !66 ; 2 uses
  %i.cge = icmp eq ptr %.pre2108, null
  br i1 %i.cge, label %bb.oc, label %.thread2355

.thread2355:                                      ; preds = %bb.oa, %bb.ob
  %i.cgf = phi ptr [ %.pre2108, %bb.ob ], [ %i.cfm, %bb.oa ] ; 2 uses
  %i.cgg = load ptr, ptr %i.cdr, align 8, !tbaa !8 ; 3 uses
  store ptr %i.cgg, ptr @zz_tmp, align 8, !tbaa !66
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cgf, i64 16 ; 2 uses
  %i.cgi = load ptr, ptr %i.cgh, align 8, !tbaa !8 ; 2 uses
  store ptr %i.cgi, ptr %i.cdr, align 8, !tbaa !8
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.cgi, i64 24
  store ptr %i.cdp, ptr %i.cgj, align 8, !tbaa !8
  store ptr %i.cgg, ptr %i.cgh, align 8, !tbaa !8
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cgg, i64 24
  store ptr %i.cgf, ptr %i.cgk, align 8, !tbaa !8
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %.thread2355, %bb.nn
  %i.cgl = load ptr, ptr %i.bts, align 8, !tbaa !8 ; 7 uses
  store ptr %i.cgl, ptr @xx_link, align 8, !tbaa !66
  store ptr %i.cgl, ptr @zz_hold, align 8, !tbaa !66
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cgl, i64 8
  %i.cgn = load ptr, ptr %i.cgm, align 8, !tbaa !8 ; 3 uses
  %i.cgo = icmp eq ptr %i.cgn, %i.cgl
  br i1 %i.cgo, label %.thread1804, label %bb.od

.thread1804:                                      ; preds = %bb.oc
  store ptr %i.cgl, ptr @zz_res, align 8, !tbaa !66
  store ptr %.11383, ptr @zz_hold, align 8, !tbaa !66
  br label %bb.oe

bb.od:                                            ; preds = %bb.oc
  store ptr %i.cgn, ptr @zz_res, align 8, !tbaa !66
  %i.cgp = load ptr, ptr %i.cgl, align 8, !tbaa !8
  store ptr %i.cgp, ptr %i.cgn, align 8, !tbaa !8
  %i.cgq = load ptr, ptr @zz_res, align 8, !tbaa !66
  %i.cgr = load ptr, ptr @zz_hold, align 8, !tbaa !66 ; 5 uses
  %i.cgs = load ptr, ptr %i.cgr, align 8, !tbaa !8
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgs, i64 8
  store ptr %i.cgq, ptr %i.cgt, align 8, !tbaa !8
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.cgr, i64 8
  store ptr %i.cgr, ptr %i.cgu, align 8, !tbaa !8
  store ptr %i.cgr, ptr %i.cgr, align 8, !tbaa !8
  %.pr1803 = load ptr, ptr @xx_link, align 8, !tbaa !66 ; 3 uses
  store ptr %.pr1803, ptr @zz_res, align 8, !tbaa !66
  store ptr %.11383, ptr @zz_hold, align 8, !tbaa !66
  %i.cgv = icmp eq ptr %.pr1803, null
  br i1 %i.cgv, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %.thread1804, %bb.od
  %i.cgw = phi ptr [ %i.cgl, %.thread1804 ], [ %.pr1803, %bb.od ]
  %i.cgx = load ptr, ptr %.11383, align 8, !tbaa !8
  store ptr %i.cgx, ptr @zz_tmp, align 8, !tbaa !66
  %i.cgy = load ptr, ptr %i.cgw, align 8, !tbaa !8
  store ptr %i.cgy, ptr %.11383, align 8, !tbaa !8
  %i.cgz = load ptr, ptr @zz_hold, align 8, !tbaa !66
  %i.cha = load ptr, ptr @zz_res, align 8, !tbaa !66 ; 2 uses
  %i.chb = load ptr, ptr %i.cha, align 8, !tbaa !8
  %i.chc = getelementptr inbounds nuw i8, ptr %i.chb, i64 8
  store ptr %i.cgz, ptr %i.chc, align 8, !tbaa !8
  %i.chd = load ptr, ptr @zz_tmp, align 8, !tbaa !66 ; 2 uses
  store ptr %i.chd, ptr %i.cha, align 8, !tbaa !8
  %i.che = load ptr, ptr @zz_res, align 8, !tbaa !66
  %i.chf = getelementptr inbounds nuw i8, ptr %i.chd, i64 8
  store ptr %i.che, ptr %i.chf, align 8, !tbaa !8
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %bb.od
  %i.chg = load i16, ptr %i.bnu, align 8
  %i.chh = and i16 %i.chg, 128
  %i.chi = load i16, ptr %i.brr, align 4
  %i.chj = and i16 %i.chi, -129
  %i.chk = or disjoint i16 %i.chj, %i.chh         ; 2 uses
  store i16 %i.chk, ptr %i.brr, align 4
  %i.chl = load i16, ptr %i.bnu, align 8
  %i.chm = and i16 %i.chl, 256
  %i.chn = and i16 %i.chk, -257
  %i.cho = or disjoint i16 %i.chn, %i.chm         ; 2 uses
  store i16 %i.cho, ptr %i.brr, align 4
  %i.chp = load i16, ptr %i.bnu, align 8
  %i.chq = and i16 %i.chp, 512
  %i.chr = and i16 %i.cho, -513
  %i.chs = or disjoint i16 %i.chr, %i.chq         ; 2 uses
  store i16 %i.chs, ptr %i.brr, align 4
  %i.cht = load i16, ptr %i.bnu, align 8
  %i.chu = and i16 %i.cht, 7168
  %i.chv = and i16 %i.chs, -7169
  %i.chw = or disjoint i16 %i.chv, %i.chu         ; 2 uses
  store i16 %i.chw, ptr %i.brr, align 4
  %i.chx = load i16, ptr %i.bnu, align 8
  %i.chy = and i16 %i.chx, -8192
  %i.chz = and i16 %i.chw, 8191
  %i.cia = or disjoint i16 %i.chz, %i.chy
  store i16 %i.cia, ptr %i.brr, align 4
  %i.cib = load i16, ptr %i.brm, align 2, !tbaa !8
  %i.cic = getelementptr inbounds nuw i8, ptr %.213871957, i64 46
  %i.cid = load i8, ptr %i.brt, align 2, !tbaa !8
  %narrow = tail call i8 @llvm.umax.i8(i8 %i.cid, i8 1)
  %spec.select1740 = zext i8 %narrow to i16
  %i.cie = mul i16 %i.cib, %spec.select1740
  store i16 %i.cie, ptr %i.cic, align 2, !tbaa !8
  br label %bb.og

bb.og:                                            ; preds = %bb.of, %bb.ms, %bb.mr, %bb.mp
  %.21384 = phi ptr [ %.11383, %bb.of ], [ %.013821958, %bb.ms ], [ %.013821958, %bb.mr ], [ %.013821958, %bb.mp ] ; 7 uses
  %.51426.in1947 = getelementptr inbounds nuw i8, ptr %.414251956, i64 8
  %.514261948 = load ptr, ptr %.51426.in1947, align 8, !tbaa !8 ; 3 uses
  %.not16741949 = icmp eq ptr %.514261948, %0
  br i1 %.not16741949, label %.loopexit1842, label %.preheader1841

.preheader1841:                                   ; preds = %bb.og, %.critedge18
  %.514261952 = phi ptr [ %.51426, %.critedge18 ], [ %.514261948, %bb.og ] ; 4 uses
  %.41951 = phi i32 [ %.5, %.critedge18 ], [ 1, %bb.og ] ; 3 uses
  %.313881950 = phi ptr [ %.41389, %.critedge18 ], [ null, %bb.og ] ; 4 uses
  br label %bb.oh

bb.oh:                                            ; preds = %.preheader1841, %bb.oh
  %.51426.pn = phi ptr [ %.27, %bb.oh ], [ %.514261952, %.preheader1841 ]
  %.27.in = getelementptr inbounds nuw i8, ptr %.51426.pn, i64 16
  %.27 = load ptr, ptr %.27.in, align 8, !tbaa !8 ; 6 uses
  %i.cif = getelementptr inbounds nuw i8, ptr %.27, i64 32
  %i.cig = load i8, ptr %i.cif, align 8, !tbaa !8 ; 2 uses
  switch i8 %i.cig, label %bb.ol [
    i8 0, label %bb.oh
    i8 1, label %bb.oi
    i8 9, label %bb.ok
  ]

bb.oi:                                            ; preds = %bb.oh
  %.not1677 = icmp eq i32 %.41951, 0
  br i1 %.not1677, label %.critedge18, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.cih = getelementptr inbounds nuw i8, ptr %.27, i64 44
  %i.cii = load i16, ptr %i.cih, align 4
  %i.cij = lshr i16 %i.cii, 9
  %.lobit = and i16 %i.cij, 1
  %i.cik = zext nneg i16 %.lobit to i32
  br label %.critedge18

bb.ok:                                            ; preds = %bb.oh
end_hunk_0
