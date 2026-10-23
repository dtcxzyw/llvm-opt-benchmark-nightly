Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dpll_mgr?download=true
inline.NumInlined: 679
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@intel_dpll_enable:bb.a
  br i1 %.not84, label %bb.d, label %.critedge, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.l = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ]
  %i.m = tail call ptr @dev_driver_string(ptr noundef %i.l) #14 ; 0 uses
  %i.n = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.2, i32 283, i32 2321, i64 16) #13, !srcloc !41
  %i.o = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i95 = icmp eq ptr %i.o, null
  br i1 %.not.i95, label %__drm_to_dev.exit96, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  br label %__drm_to_dev.exit96

__drm_to_dev.exit96:                              ; preds = %__drm_to_dev.exit, %bb.f
  %i.r = phi ptr [ %i.q, %bb.f ], [ null, %__drm_to_dev.exit ]
  %i.s = tail call ptr @dev_driver_string(ptr noundef %i.r) #14
  %i.t = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i97 = icmp eq ptr %i.t, null
  br i1 %.not.i97, label %__drm_to_dev.exit98, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit96
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  br label %__drm_to_dev.exit98

__drm_to_dev.exit98:                              ; preds = %__drm_to_dev.exit96, %bb.g
  %i.w = phi ptr [ %i.v, %bb.g ], [ null, %__drm_to_dev.exit96 ] ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i99 = icmp eq ptr %i.y, null
  br i1 %.not.i99, label %bb.h, label %dev_name.exit102

bb.h:                                             ; preds = %__drm_to_dev.exit98
  %.val.i101 = load ptr, ptr %i.w, align 8
  br label %dev_name.exit102

dev_name.exit102:                                 ; preds = %__drm_to_dev.exit98, %bb.h
  %.0.i100 = phi ptr [ %.val.i101, %bb.h ], [ %i.y, %__drm_to_dev.exit98 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.n, ptr noundef %i.s, ptr noundef %.0.i100, ptr noundef @.str.8) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !42
  br label %bb.ak

.critedge:                                        ; preds = %bb.c
  %i.z = getelementptr i8, ptr %i.e, i64 3360     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.z) #14
  %i.aa = getelementptr i8, ptr %i.g, i64 93      ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1             ; 3 uses
  %i.ac = load i8, ptr %i.g, align 8
  %i.ad = and i8 %i.ac, %i.h
  %.not85 = icmp eq i8 %i.ad, 0
  br i1 %.not85, label %bb.i, label %.critedge89, !prof !24

bb.i:                                             ; preds = %.critedge
  %i.ae = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i103 = icmp eq ptr %i.ae, null
  br i1 %.not.i103, label %__drm_to_dev.exit104, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  br label %__drm_to_dev.exit104

__drm_to_dev.exit104:                             ; preds = %bb.i, %bb.j
  %i.ah = phi ptr [ %i.ag, %bb.j ], [ null, %bb.i ]
  %i.ai = tail call ptr @dev_driver_string(ptr noundef %i.ah) #14 ; 0 uses
  %i.aj = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.2, i32 289, i32 2321, i64 16) #13, !srcloc !43
  %i.ak = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i111 = icmp eq ptr %i.ak, null
  br i1 %.not.i111, label %__drm_to_dev.exit112, label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit104
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  br label %__drm_to_dev.exit112

__drm_to_dev.exit112:                             ; preds = %__drm_to_dev.exit104, %bb.k
  %i.an = phi ptr [ %i.am, %bb.k ], [ null, %__drm_to_dev.exit104 ]
  %i.ao = tail call ptr @dev_driver_string(ptr noundef %i.an) #14
  %i.ap = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i113 = icmp eq ptr %i.ap, null
  br i1 %.not.i113, label %__drm_to_dev.exit114, label %bb.l

bb.l:                                             ; preds = %__drm_to_dev.exit112
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %__drm_to_dev.exit114

__drm_to_dev.exit114:                             ; preds = %__drm_to_dev.exit112, %bb.l
  %i.as = phi ptr [ %i.ar, %bb.l ], [ null, %__drm_to_dev.exit112 ] ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i115 = icmp eq ptr %i.au, null
  br i1 %.not.i115, label %bb.m, label %dev_name.exit118

bb.m:                                             ; preds = %__drm_to_dev.exit114
  %.val.i117 = load ptr, ptr %i.as, align 8
  br label %dev_name.exit118

dev_name.exit118:                                 ; preds = %__drm_to_dev.exit114, %bb.m
  %.0.i116 = phi ptr [ %.val.i117, %bb.m ], [ %i.au, %__drm_to_dev.exit114 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.aj, ptr noundef %i.ao, ptr noundef %.0.i116, ptr noundef @.str.9) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !44
  br label %bb.aj

.critedge89:                                      ; preds = %.critedge
  %i.av = and i8 %i.ab, %i.h
  %.not86 = icmp eq i8 %i.av, 0
  br i1 %.not86, label %.critedge91, label %bb.n, !prof !30

bb.n:                                             ; preds = %.critedge89
  %i.aw = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i119 = icmp eq ptr %i.aw, null
  br i1 %.not.i119, label %__drm_to_dev.exit120, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %__drm_to_dev.exit120

__drm_to_dev.exit120:                             ; preds = %bb.n, %bb.o
  %i.az = phi ptr [ %i.ay, %bb.o ], [ null, %bb.n ]
  %i.ba = tail call ptr @dev_driver_string(ptr noundef %i.az) #14 ; 0 uses
  %i.bb = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.2, i32 290, i32 2321, i64 16) #13, !srcloc !45
  %i.bc = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i127 = icmp eq ptr %i.bc, null
  br i1 %.not.i127, label %__drm_to_dev.exit128, label %bb.p

bb.p:                                             ; preds = %__drm_to_dev.exit120
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  br label %__drm_to_dev.exit128

__drm_to_dev.exit128:                             ; preds = %__drm_to_dev.exit120, %bb.p
  %i.bf = phi ptr [ %i.be, %bb.p ], [ null, %__drm_to_dev.exit120 ]
  %i.bg = tail call ptr @dev_driver_string(ptr noundef %i.bf) #14
  %i.bh = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i129 = icmp eq ptr %i.bh, null
  br i1 %.not.i129, label %__drm_to_dev.exit130, label %bb.q

bb.q:                                             ; preds = %__drm_to_dev.exit128
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %__drm_to_dev.exit130

__drm_to_dev.exit130:                             ; preds = %__drm_to_dev.exit128, %bb.q
  %i.bk = phi ptr [ %i.bj, %bb.q ], [ null, %__drm_to_dev.exit128 ] ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i131 = icmp eq ptr %i.bm, null
  br i1 %.not.i131, label %bb.r, label %dev_name.exit134

bb.r:                                             ; preds = %__drm_to_dev.exit130
  %.val.i133 = load ptr, ptr %i.bk, align 8
  br label %dev_name.exit134

dev_name.exit134:                                 ; preds = %__drm_to_dev.exit130, %bb.r
  %.0.i132 = phi ptr [ %.val.i133, %bb.r ], [ %i.bm, %__drm_to_dev.exit130 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bb, ptr noundef %i.bg, ptr noundef %.0.i132, ptr noundef @.str.10) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !46
  br label %bb.aj

.critedge91:                                      ; preds = %.critedge89
  %i.bn = or i8 %i.ab, %i.h                       ; 2 uses
  store i8 %i.bn, ptr %i.aa, align 1
  %i.bo = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i135 = icmp eq ptr %i.bo, null
  br i1 %.not.i135, label %__drm_to_dev.exit136, label %bb.s

bb.s:                                             ; preds = %.critedge91
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %__drm_to_dev.exit136

__drm_to_dev.exit136:                             ; preds = %.critedge91, %bb.s
  %i.br = phi ptr [ %i.bq, %bb.s ], [ null, %.critedge91 ]
  %i.bs = getelementptr i8, ptr %i.g, i64 96      ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = zext i8 %i.bn to i32
  %i.bw = getelementptr i8, ptr %i.g, i64 94      ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 2, !range !26, !noundef !27
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.d, i64 88
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %i.d, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.br, i32 noundef 2, ptr noundef @.str.11, ptr noundef %i.bu, i32 noundef %i.bv, i32 noundef %i.by, i32 noundef %i.ca, ptr noundef %i.cc) #14
  %.not87 = icmp eq i8 %i.ab, 0
  %i.cd = load i8, ptr %i.bw, align 2, !range !26, !noundef !27 ; 2 uses
  br i1 %.not87, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %__drm_to_dev.exit136
  %.not88.not = icmp eq i8 %i.cd, 0
  br i1 %.not88.not, label %bb.u, label %bb.z, !prof !24

bb.u:                                             ; preds = %bb.t
  %i.ce = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i137 = icmp eq ptr %i.ce, null
  br i1 %.not.i137, label %__drm_to_dev.exit138, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  br label %__drm_to_dev.exit138

__drm_to_dev.exit138:                             ; preds = %bb.u, %bb.v
  %i.ch = phi ptr [ %i.cg, %bb.v ], [ null, %bb.u ]
  %i.ci = tail call ptr @dev_driver_string(ptr noundef %i.ch) #14 ; 0 uses
  %i.cj = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.2, i32 301, i32 2321, i64 16) #13, !srcloc !47
  %i.ck = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i145 = icmp eq ptr %i.ck, null
  br i1 %.not.i145, label %__drm_to_dev.exit146, label %bb.w

bb.w:                                             ; preds = %__drm_to_dev.exit138
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  br label %__drm_to_dev.exit146

__drm_to_dev.exit146:                             ; preds = %__drm_to_dev.exit138, %bb.w
  %i.cn = phi ptr [ %i.cm, %bb.w ], [ null, %__drm_to_dev.exit138 ]
  %i.co = tail call ptr @dev_driver_string(ptr noundef %i.cn) #14
  %i.cp = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i147 = icmp eq ptr %i.cp, null
  br i1 %.not.i147, label %__drm_to_dev.exit148, label %bb.x

bb.x:                                             ; preds = %__drm_to_dev.exit146
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  br label %__drm_to_dev.exit148

__drm_to_dev.exit148:                             ; preds = %__drm_to_dev.exit146, %bb.x
  %i.cs = phi ptr [ %i.cr, %bb.x ], [ null, %__drm_to_dev.exit146 ] ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not.i149 = icmp eq ptr %i.cu, null
  br i1 %.not.i149, label %bb.y, label %dev_name.exit152

bb.y:                                             ; preds = %__drm_to_dev.exit148
  %.val.i151 = load ptr, ptr %i.cs, align 8
  br label %dev_name.exit152

dev_name.exit152:                                 ; preds = %__drm_to_dev.exit148, %bb.y
  %.0.i150 = phi ptr [ %.val.i151, %bb.y ], [ %i.cu, %__drm_to_dev.exit148 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cj, ptr noundef %i.co, ptr noundef %.0.i150, ptr noundef @.str.12) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !48
  br label %bb.z

bb.z:                                             ; preds = %dev_name.exit152, %bb.t
  tail call void @assert_dpll(ptr noundef %i.e, ptr noundef nonnull %i.g, i1 noundef zeroext true) #16
  br label %bb.aj

bb.aa:                                            ; preds = %__drm_to_dev.exit136
  %1 = trunc nuw i8 %i.cd to i1
  br i1 %1, label %bb.ab, label %bb.ag, !prof !24

bb.ab:                                            ; preds = %bb.aa
  %i.cv = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i153 = icmp eq ptr %i.cv, null
  br i1 %.not.i153, label %__drm_to_dev.exit154, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  br label %__drm_to_dev.exit154

__drm_to_dev.exit154:                             ; preds = %bb.ab, %bb.ac
  %i.cy = phi ptr [ %i.cx, %bb.ac ], [ null, %bb.ab ]
  %i.cz = tail call ptr @dev_driver_string(ptr noundef %i.cy) #14 ; 0 uses
  %i.da = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.2, i32 305, i32 2321, i64 16) #13, !srcloc !49
  %i.db = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i161 = icmp eq ptr %i.db, null
  br i1 %.not.i161, label %__drm_to_dev.exit162, label %bb.ad

bb.ad:                                            ; preds = %__drm_to_dev.exit154
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  br label %__drm_to_dev.exit162

__drm_to_dev.exit162:                             ; preds = %__drm_to_dev.exit154, %bb.ad
  %i.de = phi ptr [ %i.dd, %bb.ad ], [ null, %__drm_to_dev.exit154 ]
  %i.df = tail call ptr @dev_driver_string(ptr noundef %i.de) #14
  %i.dg = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i163 = icmp eq ptr %i.dg, null
  br i1 %.not.i163, label %__drm_to_dev.exit164, label %bb.ae

bb.ae:                                            ; preds = %__drm_to_dev.exit162
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  br label %__drm_to_dev.exit164

__drm_to_dev.exit164:                             ; preds = %__drm_to_dev.exit162, %bb.ae
  %i.dj = phi ptr [ %i.di, %bb.ae ], [ null, %__drm_to_dev.exit162 ] ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 80
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not.i165 = icmp eq ptr %i.dl, null
  br i1 %.not.i165, label %bb.af, label %dev_name.exit168

bb.af:                                            ; preds = %__drm_to_dev.exit164
  %.val.i167 = load ptr, ptr %i.dj, align 8
  br label %dev_name.exit168

dev_name.exit168:                                 ; preds = %__drm_to_dev.exit164, %bb.af
  %.0.i166 = phi ptr [ %.val.i167, %bb.af ], [ %i.dl, %__drm_to_dev.exit164 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.da, ptr noundef %i.df, ptr noundef %.0.i166, ptr noundef @.str.13) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !50
  br label %bb.ag

bb.ag:                                            ; preds = %dev_name.exit168, %bb.aa
  %i.dm = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i169 = icmp eq ptr %i.dm, null
  br i1 %.not.i169, label %__drm_to_dev.exit170, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  br label %__drm_to_dev.exit170

__drm_to_dev.exit170:                             ; preds = %bb.ag, %bb.ah
  %i.dp = phi ptr [ %i.do, %bb.ah ], [ null, %bb.ag ]
  %i.dq = load ptr, ptr %i.bs, align 8
  %i.dr = load ptr, ptr %i.dq, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dp, i32 noundef 2, ptr noundef @.str.14, ptr noundef %i.dr) #14
  %i.ds = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 20
  %i.du = load i32, ptr %i.dt, align 4            ; 2 uses
  %.not.i171 = icmp eq i32 %i.du, 0
  br i1 %.not.i171, label %_intel_enable_shared_dpll.exit, label %bb.ai

bb.ai:                                            ; preds = %__drm_to_dev.exit170
  %i.dv = tail call ptr @intel_display_power_get(ptr noundef %i.e, i32 noundef %i.du) #14
  %i.dw = getelementptr i8, ptr %i.g, i64 104
  store ptr %i.dv, ptr %i.dw, align 8
  %.pre.i = load ptr, ptr %i.bs, align 8
  br label %_intel_enable_shared_dpll.exit

_intel_enable_shared_dpll.exit:                   ; preds = %__drm_to_dev.exit170, %bb.ai
  %i.dx = phi ptr [ %.pre.i, %bb.ai ], [ %i.ds, %__drm_to_dev.exit170 ]
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr i8, ptr %i.g, i64 4
  tail call void %i.ea(ptr noundef %i.e, ptr noundef nonnull %i.g, ptr noundef %i.eb) #14, !inline_history !40
  store i8 1, ptr %i.bw, align 2
  br label %bb.aj

bb.aj:                                            ; preds = %dev_name.exit134, %dev_name.exit118, %_intel_enable_shared_dpll.exit, %bb.z
  tail call void @mutex_unlock(ptr noundef %i.z) #14
  br label %bb.ak

bb.ak:                                            ; preds = %dev_name.exit102, %bb.aj
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__drm_to_display(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @intel_crtc_joined_pipe_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dpll_disable(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #14
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 12 uses
  %i.f = getelementptr i8, ptr %0, i64 936
  %i.g = load ptr, ptr %i.f, align 8              ; 7 uses
  %i.h = tail call zeroext i8 @intel_crtc_joined_pipe_mask(ptr noundef %0) #14 ; 2 uses
  %i.i = getelementptr i8, ptr %i.e, i64 1168
  %i.j = load i16, ptr %i.i, align 8
  %i.k = icmp ult i16 %i.j, 5
  %i.l = icmp eq ptr %i.g, null
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.e, i64 3360     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.m) #14
  %i.n = getelementptr i8, ptr %i.g, i64 93       ; 3 uses
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = and i8 %i.o, %i.h
  %.not56 = icmp eq i8 %i.p, 0
  %i.q = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null                ; 2 uses
  br i1 %.not56, label %bb.e, label %.critedge, !prof !24

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ]
  %i.u = tail call ptr @dev_driver_string(ptr noundef %i.t) #14 ; 0 uses
  %i.v = getelementptr i8, ptr %i.g, i64 96
  %i.w = getelementptr i8, ptr %i.d, i64 88
  %i.x = getelementptr i8, ptr %i.d, i64 32
  %i.y = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.15, ptr @.str.2, i32 338, i32 2321, i64 16) #13, !srcloc !52
  %i.z = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i61 = icmp eq ptr %i.z, null
  br i1 %.not.i61, label %__drm_to_dev.exit62, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %__drm_to_dev.exit62

__drm_to_dev.exit62:                              ; preds = %__drm_to_dev.exit, %bb.g
  %i.ac = phi ptr [ %i.ab, %bb.g ], [ null, %__drm_to_dev.exit ]
  %i.ad = tail call ptr @dev_driver_string(ptr noundef %i.ac) #14
  %i.ae = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i63 = icmp eq ptr %i.ae, null
  br i1 %.not.i63, label %__drm_to_dev.exit64, label %bb.h

bb.h:                                             ; preds = %__drm_to_dev.exit62
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  br label %__drm_to_dev.exit64

__drm_to_dev.exit64:                              ; preds = %__drm_to_dev.exit62, %bb.h
  %i.ah = phi ptr [ %i.ag, %bb.h ], [ null, %__drm_to_dev.exit62 ] ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i65 = icmp eq ptr %i.aj, null
  br i1 %.not.i65, label %bb.i, label %dev_name.exit68

bb.i:                                             ; preds = %__drm_to_dev.exit64
  %.val.i67 = load ptr, ptr %i.ah, align 8
  br label %dev_name.exit68

dev_name.exit68:                                  ; preds = %__drm_to_dev.exit64, %bb.i
  %.0.i66 = phi ptr [ %.val.i67, %bb.i ], [ %i.aj, %__drm_to_dev.exit64 ]
  %i.ak = load ptr, ptr %i.v, align 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load i32, ptr %i.w, align 8
  %i.an = load ptr, ptr %i.x, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.y, ptr noundef %i.ad, ptr noundef %.0.i66, ptr noundef %i.al, i32 noundef %i.am, ptr noundef %i.an) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !53
  br label %_intel_disable_shared_dpll.exit

.critedge:                                        ; preds = %bb.d
  br i1 %.not.i, label %__drm_to_dev.exit70, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.ao = getelementptr i8, ptr %i.q, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  br label %__drm_to_dev.exit70

__drm_to_dev.exit70:                              ; preds = %.critedge, %bb.j
  %i.aq = phi ptr [ %i.ap, %bb.j ], [ null, %.critedge ]
  %i.ar = getelementptr i8, ptr %i.g, i64 96      ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = zext i8 %i.o to i32
  %i.av = getelementptr i8, ptr %i.g, i64 94      ; 3 uses
  %i.aw = load i8, ptr %i.av, align 2, !range !26, !noundef !27
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = getelementptr i8, ptr %i.d, i64 88
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %i.d, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aq, i32 noundef 2, ptr noundef @.str.16, ptr noundef %i.at, i32 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.az, ptr noundef %i.bb) #14
  tail call void @assert_dpll(ptr noundef %i.e, ptr noundef nonnull %i.g, i1 noundef zeroext true) #16
  %i.bc = load i8, ptr %i.av, align 2, !range !26, !noundef !27
  %.not57.not = icmp eq i8 %i.bc, 0
  br i1 %.not57.not, label %bb.k, label %bb.p, !prof !24

bb.k:                                             ; preds = %__drm_to_dev.exit70
  %i.bd = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i71 = icmp eq ptr %i.bd, null
  br i1 %.not.i71, label %__drm_to_dev.exit72, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %__drm_to_dev.exit72

__drm_to_dev.exit72:                              ; preds = %bb.k, %bb.l
  %i.bg = phi ptr [ %i.bf, %bb.l ], [ null, %bb.k ]
  %i.bh = tail call ptr @dev_driver_string(ptr noundef %i.bg) #14 ; 0 uses
  %i.bi = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.2, i32 347, i32 2321, i64 16) #13, !srcloc !54
  %i.bj = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i79 = icmp eq ptr %i.bj, null
  br i1 %.not.i79, label %__drm_to_dev.exit80, label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit72
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  br label %__drm_to_dev.exit80

__drm_to_dev.exit80:                              ; preds = %__drm_to_dev.exit72, %bb.m
  %i.bm = phi ptr [ %i.bl, %bb.m ], [ null, %__drm_to_dev.exit72 ]
  %i.bn = tail call ptr @dev_driver_string(ptr noundef %i.bm) #14
  %i.bo = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i81 = icmp eq ptr %i.bo, null
  br i1 %.not.i81, label %__drm_to_dev.exit82, label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit80
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %__drm_to_dev.exit82

__drm_to_dev.exit82:                              ; preds = %__drm_to_dev.exit80, %bb.n
  %i.br = phi ptr [ %i.bq, %bb.n ], [ null, %__drm_to_dev.exit80 ] ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i83 = icmp eq ptr %i.bt, null
  br i1 %.not.i83, label %bb.o, label %dev_name.exit86

bb.o:                                             ; preds = %__drm_to_dev.exit82
  %.val.i85 = load ptr, ptr %i.br, align 8
  br label %dev_name.exit86

dev_name.exit86:                                  ; preds = %__drm_to_dev.exit82, %bb.o
  %.0.i84 = phi ptr [ %.val.i85, %bb.o ], [ %i.bt, %__drm_to_dev.exit82 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bi, ptr noundef %i.bn, ptr noundef %.0.i84, ptr noundef @.str.12) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !55
  br label %bb.p

bb.p:                                             ; preds = %dev_name.exit86, %__drm_to_dev.exit70
  %i.bu = xor i8 %i.h, -1
  %i.bv = load i8, ptr %i.n, align 1
  %i.bw = and i8 %i.bv, %i.bu                     ; 2 uses
  store i8 %i.bw, ptr %i.n, align 1
  %.not57 = icmp eq i8 %i.bw, 0
  br i1 %.not57, label %bb.q, label %_intel_disable_shared_dpll.exit

bb.q:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i87 = icmp eq ptr %i.bx, null
  br i1 %.not.i87, label %__drm_to_dev.exit88, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  br label %__drm_to_dev.exit88

__drm_to_dev.exit88:                              ; preds = %bb.q, %bb.r
  %i.ca = phi ptr [ %i.bz, %bb.r ], [ null, %bb.q ]
  %i.cb = load ptr, ptr %i.ar, align 8
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ca, i32 noundef 2, ptr noundef @.str.17, ptr noundef %i.cc) #14
  %i.cd = load ptr, ptr %i.ar, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef %i.e, ptr noundef nonnull %i.g) #14, !inline_history !51
  store i8 0, ptr %i.av, align 2
  %i.ci = load ptr, ptr %i.ar, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 20
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %.not.i89 = icmp eq i32 %i.ck, 0
  br i1 %.not.i89, label %_intel_disable_shared_dpll.exit, label %bb.s

bb.s:                                             ; preds = %__drm_to_dev.exit88
  tail call void @intel_display_power_put_unchecked(ptr noundef %i.e, i32 noundef %i.ck) #14
  br label %_intel_disable_shared_dpll.exit

_intel_disable_shared_dpll.exit:                  ; preds = %bb.s, %__drm_to_dev.exit88, %dev_name.exit68, %bb.p
  tail call void @mutex_unlock(ptr noundef %i.m) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %_intel_disable_shared_dpll.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dpll_crtc_put(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.d = load i8, ptr %2, align 4                 ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr i8, ptr %0, i64 1664       ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw i64 1, %i.h                      ; 2 uses
  %i.j = and i64 %i.i, %i.e
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.i, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.o = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ]
  %i.p = tail call ptr @dev_driver_string(ptr noundef %i.o) #14 ; 0 uses
  %i.q = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.2, i32 485, i32 2321, i64 16) #13, !srcloc !56
  %i.r = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i22 = icmp eq ptr %i.r, null
  br i1 %.not.i22, label %__drm_to_dev.exit23, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  br label %__drm_to_dev.exit23

__drm_to_dev.exit23:                              ; preds = %__drm_to_dev.exit, %bb.f
  %i.u = phi ptr [ %i.t, %bb.f ], [ null, %__drm_to_dev.exit ]
  %i.v = tail call ptr @dev_driver_string(ptr noundef %i.u) #14
  %i.w = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i24 = icmp eq ptr %i.w, null
  br i1 %.not.i24, label %__drm_to_dev.exit25, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit23
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  br label %__drm_to_dev.exit25

__drm_to_dev.exit25:                              ; preds = %__drm_to_dev.exit23, %bb.g
  %i.z = phi ptr [ %i.y, %bb.g ], [ null, %__drm_to_dev.exit23 ] ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i26 = icmp eq ptr %i.ab, null
  br i1 %.not.i26, label %bb.h, label %dev_name.exit29

bb.h:                                             ; preds = %__drm_to_dev.exit25
  %.val.i28 = load ptr, ptr %i.z, align 8
  br label %dev_name.exit29

dev_name.exit29:                                  ; preds = %__drm_to_dev.exit25, %bb.h
  %.0.i27 = phi ptr [ %.val.i28, %bb.h ], [ %i.ab, %__drm_to_dev.exit25 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.q, ptr noundef %i.v, ptr noundef %.0.i27, ptr noundef @.str.18) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !57
  %.pre = load i32, ptr %i.f, align 8
  %.pre32 = load i8, ptr %2, align 4
  %.pre33 = zext nneg i32 %.pre to i64
  %.pre34 = shl nuw i64 1, %.pre33
  br label %bb.i

bb.i:                                             ; preds = %dev_name.exit29, %bb.c
  %.pre-phi35 = phi i64 [ %.pre34, %dev_name.exit29 ], [ %i.i, %bb.c ]
  %i.ac = phi i8 [ %.pre32, %dev_name.exit29 ], [ %i.d, %bb.c ]
  %i.ad = trunc i64 %.pre-phi35 to i8
  %i.ae = xor i8 %i.ad, -1
  %i.af = and i8 %i.ac, %i.ae
  store i8 %i.af, ptr %2, align 4
  %i.ag = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i30 = icmp eq ptr %i.ag, null
  br i1 %.not.i30, label %__drm_to_dev.exit31, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %__drm_to_dev.exit31

__drm_to_dev.exit31:                              ; preds = %bb.i, %bb.j
  %i.aj = phi ptr [ %i.ai, %bb.j ], [ null, %bb.i ]
  %i.ak = getelementptr i8, ptr %0, i64 88
  %i.al = load i32, ptr %i.ak, align 8
end_hunk_0
